RED='\033[1;31m'
GREEN='\033[0;32m'
NC='\033[0m'
if ! python3 -c 'import sys; assert sys.version_info >= (3,6)' > /dev/null; 
then 
    echo -e "${RED}python 3.6 or higher is required!${NC}";
else
    pkgs='libboost-all-dev libc6:i386 build-essential zlib1g-dev libmpfr-dev libgmp-dev cmake'
    install=false
    for pkg in $pkgs; do
        status="$(dpkg-query -W --showformat='${db:Status-Status}' "$pkg" 2>&1)"
        if [ ! $? = 0 ] || [ ! "$status" = installed ]; then
             echo -e "${RED} Missing package $pkg. ${NC}" 
	     echo -e "${GREEN} Installing missing packages. ${NC}"
             sudo apt install $pkg
        break
        fi
    done
    echo -e "${GREEN} Installing python modules. ${NC}"
    pip install -r requirements.txt > /dev/null
    echo -e "${GREEN} Downloading git submodules. ${NC}"
    git submodule update --init
    if [ ! -f aspmc/external/flow-cutter/flow_cutter_pace17 ];
    then
        echo -e "${GREEN} Compiling flow-cutter. ${NC}"
        cd aspmc/external/flow-cutter/
        g++ -Wall -std=c++11 -O3 -DNDEBUG src/*.cpp -o flow_cutter_pace17 --static
        cd ../../../
    fi
    if [ ! -f aspmc/external/minisat-definitions/bin/defined ] || [ ! -f aspmc/external/minisat-definitions/bin/minisat ];
    then
        echo -e "${GREEN} Compiling minisat-definitions. ${NC}"
        cd aspmc/external/minisat-definitions/
        bash setup.sh static
        cd ../../../
    fi
    if [ ! -f aspmc/external/d4/d4_static ];
    then
        echo -e "${GREEN} Compiling d4. ${NC}"
        cd aspmc/external/d4/
        make -j4 rs
        cd ../../../
    fi
    if [ ! -f aspmc/external/sharpsat-td/bin/sharpSAT ];
    then
        echo -e "${GREEN} Compiling sharpSAT-TD. ${NC}"
        cd aspmc/external/sharpsat-td/
	mkdir bin
        bash setupdev.sh static
        cd ../../../
    fi
    if [ ! -f aspmc/external/preprocessor/bin/sharpSAT ];
    then
        echo -e "${GREEN} Compiling sharpSAT-TD Preprocessor. ${NC}"
        cd aspmc/external/preprocessor/
        bash setupdev.sh static
        cd ../../../
    fi
    if [ ! -f aspmc/external/UWrMaxSAT/uwrmaxsat/build/release/bin/uwrmaxsat ];
    then
        echo -e "${GREEN} Compiling UWrMaxSAT. ${NC}"
        cd aspmc/external/UWrMaxSAT/
        rm -rf cominisatps
        rm -rf 'COMiniSatPS Chandrasekhar DRUP'
        rm -rf COMiniSatPSChandrasekharDRUP.zip
        rm -rf COMiniSatPSChandrasekharDRUP.zip.1
        rm -rf maxpre
        cd uwrmaxsat
        git clean -fdx
        cd ..
        #* 2.1 get COMiniSatPSChandrasekharDRUP.zip:  
        wget https://baldur.iti.kit.edu/sat-competition-2016/solvers/main/COMiniSatPSChandrasekharDRUP.zip  
        #* 2.2 unzip and move:  
        unzip COMiniSatPSChandrasekharDRUP.zip  
        mv 'COMiniSatPS Chandrasekhar DRUP/cominisatps' .  
        #* 2.3 apply uwrmaxsat/cominisatps.patch:  
        cd cominisatps  
        patch -p1 <../uwrmaxsat/cominisatps.patch  
        #* 2.4 compile the SAT solver library:  
        cd simp  
        MROOT=.. make libr  
        cd ..  
        mkdir minisat ; cd minisat ; ln -s ../core ../simp ../mtl ../utils . ; cd ../..

        #3. build the MaxPre preprocessor (if you want to use it - see Comments below):  
        #* 3.1 clone the MaxPre repository:  
        git clone https://github.com/Laakeri/maxpre  
        #* 3.2 compile it as a static library:  
        cd maxpre  
        sed -i 's/-g/-D NDEBUG/' src/Makefile  
        make lib  
        cd ..

        #4. build the SCIP solver library (if you want to use it)  
        #    * 4.1 get sources of scipoptsuite from https://scipopt.org/index.php#download  
        #    * 4.2 untar and build a static library it:  
        #        tar zxvf scipoptsuite-8.0.0.tgz  
        #        cd scipoptsuite-8.0.0  
        #        sed -i "s/add_library(libscip/add_library(libscip STATIC/g" scip/src/CMakeLists.txt  
        #        mkdir build && cd build  
        #        cmake -DNO_EXTERNAL_CODE=on -DSOPLEX=on -DTPI=tny ..  
        #        make libscip  
        #        cd ../..  

        #5. build the UWrMaxSat solver (release version, statically linked):  
        cd uwrmaxsat  
        make config  
        #make r
        #* 5.1 replace the last command with the following one if you do not want to use MAXPRE and SCIP libraries:  
        #MAXPRE= USESCIP=  make r  
        #* 5.2 or with the one below if you do not want to use the MAXPRE library only:  
        #MAXPRE=  make r  
        #* 5.3 or with the one below if you do not want to use the SCIP library only:  
        USESCIP=  make r  
        cd ../../../../
    fi
    if [ ! -f aspmc/external/fvs/src/build/FeedbackVertexSet ];
    then
        echo -e "${GREEN} Compiling Feedback Vertex Set Solver. ${NC}"
        cd aspmc/external/fvs/src
        mkdir build
        cd build
        cmake -DCMAKE_BUILD_TYPE=Release ..
        make
        cd ../../../../../
    fi
    echo -e "${GREEN} Done! ${NC}"
fi
