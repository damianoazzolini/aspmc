[1;31m Missing package libc6:i386. [0m
[0;32m Installing missing packages. [0m

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

Reading package lists...
Building dependency tree...
Reading state information...
E: Unable to locate package libc6:i386
[0;32m Installing python modules. [0m
[0;32m Downloading git submodules. [0m
[0;32m Compiling sharpSAT-TD. [0m
mkdir: cannot create directory ‘bin’: File exists
-- The C compiler identification is GNU 9.4.0
-- The CXX compiler identification is GNU 9.4.0
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
CMake Warning:
  Manually-specified variables were not used by the project:

    NDEBUG


-- Build files have been written to: /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build
make: Warning: File 'Makefile' has modification time 0.56 s in the future
/usr/bin/cmake -S/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td -B/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build --check-build-system CMakeFiles/Makefile.cmake 0
/usr/bin/cmake -E cmake_progress_start /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/CMakeFiles /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/CMakeFiles/progress.marks
make -f CMakeFiles/Makefile2 all
make[1]: Entering directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
make[1]: Warning: File 'CMakeFiles/Makefile2' has modification time 0.65 s in the future
make -f flowcutter/CMakeFiles/libflowcutter.dir/build.make flowcutter/CMakeFiles/libflowcutter.dir/depend
make -f CMakeFiles/sharpSAT.dir/build.make CMakeFiles/sharpSAT.dir/depend
make[2]: Entering directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
make[2]: Warning: File 'CMakeFiles/sharpSAT.dir/flags.make' has modification time 0.43 s in the future
make[2]: Entering directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
make[2]: Warning: File 'flowcutter/CMakeFiles/libflowcutter.dir/flags.make' has modification time 0.5 s in the future
cd /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build && /usr/bin/cmake -E cmake_depends "Unix Makefiles" /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/CMakeFiles/sharpSAT.dir/DependInfo.cmake --color=
cd /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build && /usr/bin/cmake -E cmake_depends "Unix Makefiles" /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/flowcutter /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/flowcutter/CMakeFiles/libflowcutter.dir/DependInfo.cmake --color=
Scanning dependencies of target libflowcutter
make[2]: warning:  Clock skew detected.  Your build may be incomplete.
make[2]: Leaving directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
make -f flowcutter/CMakeFiles/libflowcutter.dir/build.make flowcutter/CMakeFiles/libflowcutter.dir/build
make[2]: Entering directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
make[2]: Warning: File 'flowcutter/CMakeFiles/libflowcutter.dir/flags.make' has modification time 0.18 s in the future
[  7%] Building CXX object flowcutter/CMakeFiles/libflowcutter.dir/cell.cpp.o
cd /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/flowcutter && /usr/bin/c++    -std=c++11 -O3 -Wall -Wextra -Wshadow -Wfatal-errors -Wno-sign-compare -Wno-literal-suffix   -o CMakeFiles/libflowcutter.dir/cell.cpp.o -c /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/cell.cpp
[ 14%] Building CXX object flowcutter/CMakeFiles/libflowcutter.dir/greedy_order.cpp.o
cd /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/flowcutter && /usr/bin/c++    -std=c++11 -O3 -Wall -Wextra -Wshadow -Wfatal-errors -Wno-sign-compare -Wno-literal-suffix   -o CMakeFiles/libflowcutter.dir/greedy_order.cpp.o -c /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp
[ 21%] Building CXX object flowcutter/CMakeFiles/libflowcutter.dir/list_graph.cpp.o
cd /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/flowcutter && /usr/bin/c++    -std=c++11 -O3 -Wall -Wextra -Wshadow -Wfatal-errors -Wno-sign-compare -Wno-literal-suffix   -o CMakeFiles/libflowcutter.dir/list_graph.cpp.o -c /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/list_graph.cpp
Scanning dependencies of target sharpSAT
make[2]: warning:  Clock skew detected.  Your build may be incomplete.
make[2]: Leaving directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
make -f CMakeFiles/sharpSAT.dir/build.make CMakeFiles/sharpSAT.dir/build
make[2]: Entering directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
make[2]: Warning: File 'CMakeFiles/sharpSAT.dir/progress.make' has modification time 0.086 s in the future
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:1:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h: In constructor ‘ArrayIDIDFunc::ArrayIDIDFunc(const IDFunc&, int)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h:154:3: warning: declaration of ‘image_count_’ shadows a member of ‘ArrayIDIDFunc’ [-Wshadow]
  154 |   : ArrayIDFunc<int>(f), image_count_(image_count_){}
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h:184:6: note: shadowed declaration is here
  184 |  int image_count_;
      |      ^~~~~~~~~~~~
[ 28%] Building CXX object flowcutter/CMakeFiles/libflowcutter.dir/tree_decomposition.cpp.o
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:3:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator~(BitIDFunc)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:100:18: warning: redundant move in return statement [-Wredundant-move]
  100 |  return std::move(f);
      |         ~~~~~~~~~^~~
cd /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/flowcutter && /usr/bin/c++    -std=c++11 -O3 -Wall -Wextra -Wshadow -Wfatal-errors -Wno-sign-compare -Wno-literal-suffix   -o CMakeFiles/libflowcutter.dir/tree_decomposition.cpp.o -c /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:100:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator^(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:137:18: warning: redundant move in return statement [-Wredundant-move]
  137 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:137:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator|(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:142:18: warning: redundant move in return statement [-Wredundant-move]
  142 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:142:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator&(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:147:18: warning: redundant move in return statement [-Wredundant-move]
  147 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:147:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc and_not(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:152:18: warning: redundant move in return statement [-Wredundant-move]
  152 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:152:18: note: remove ‘std::move’ call
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/list_graph.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/list_graph.cpp:1:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h: In constructor ‘ArrayIDIDFunc::ArrayIDIDFunc(const IDFunc&, int)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h:154:3: warning: declaration of ‘image_count_’ shadows a member of ‘ArrayIDIDFunc’ [-Wshadow]
  154 |   : ArrayIDFunc<int>(f), image_count_(image_count_){}
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h:184:6: note: shadowed declaration is here
  184 |  int image_count_;
      |      ^~~~~~~~~~~~
[ 35%] Building CXX object CMakeFiles/sharpSAT.dir/src/main.cpp.o
/usr/bin/c++    -std=c++11 -O3 -Wall -Wextra -Wshadow -Wfatal-errors -Wno-sign-compare -Wno-literal-suffix   -o CMakeFiles/sharpSAT.dir/src/main.cpp.o -c /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/src/main.cpp
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:5:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h: In constructor ‘kway_min_id_heap<keyT, k, key_orderT>::kway_min_id_heap(int, kway_min_id_heap<keyT, k, key_orderT>::key_order_type)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:18:82: warning: declaration of ‘order’ shadows a member of ‘kway_min_id_heap<keyT, k, key_orderT>’ [-Wshadow]
   18 |  explicit kway_min_id_heap(int id_count, key_order_type order = key_order_type()):
      |                                                                                  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h: In constructor ‘kway_min_id_heap<keyT, k, key_orderT>::kway_min_id_heap(kway_min_id_heap<keyT, k, key_orderT>::key_order_type)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:24:68: warning: declaration of ‘order’ shadows a member of ‘kway_min_id_heap<keyT, k, key_orderT>’ [-Wshadow]
   24 |  explicit kway_min_id_heap(key_order_type order = key_order_type()):
      |                                                                    ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h: In constructor ‘kway_max_id_heap<keyT, k, key_orderT>::inverted_order::inverted_order(kway_max_id_heap<keyT, k, key_orderT>::key_order_type)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:487:39: warning: declaration of ‘order’ shadows a member of ‘kway_max_id_heap<keyT, k, key_orderT>::inverted_order’ [-Wshadow]
  487 |   inverted_order(key_order_type order):order(std::move(order)){}
      |                                       ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:491:18: note: shadowed declaration is here
  491 |   key_order_type order;
      |                  ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp: In constructor ‘CountOutputIterator<T>::CountOutputIterator(int&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:43:28: warning: declaration of ‘n’ shadows a member of ‘CountOutputIterator<T>’ [-Wshadow]
   43 |  CountOutputIterator(int&n):
      |                            ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:56:6: note: shadowed declaration is here
   56 |  int*n;
      |      ^
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:1:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h: In constructor ‘ArrayIDIDFunc::ArrayIDIDFunc(const IDFunc&, int)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h:154:3: warning: declaration of ‘image_count_’ shadows a member of ‘ArrayIDIDFunc’ [-Wshadow]
  154 |   : ArrayIDFunc<int>(f), image_count_(image_count_){}
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h:184:6: note: shadowed declaration is here
  184 |  int image_count_;
      |      ^~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp: In instantiation of ‘CountOutputIterator<T>::CountOutputIterator(int&) [with T = int]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:122:34:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:43:2: warning: declaration of ‘n’ shadows a member of ‘CountOutputIterator<int>’ [-Wshadow]
   43 |  CountOutputIterator(int&n):
      |  ^~~~~~~~~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:56:6: note: shadowed declaration is here
   56 |  int*n;
      |      ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:44:9: warning: declaration of ‘n’ shadows a member of ‘CountOutputIterator<int>’ [-Wshadow]
   44 |   n(&n){};
      |         ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:56:6: note: shadowed declaration is here
   56 |  int*n;
      |      ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:44:9: warning: declaration of ‘n’ shadows a member of ‘CountOutputIterator<int>’ [-Wshadow]
   44 |   n(&n){};
      |         ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:56:6: note: shadowed declaration is here
   56 |  int*n;
      |      ^
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:5:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h: In instantiation of ‘min_id_heap<keyT, key_orderT>::min_id_heap(int, min_id_heap<keyT, key_orderT>::key_order_type) [with keyT = int; key_orderT = std::less<int>; min_id_heap<keyT, key_orderT>::key_order_type = std::less<int>]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:138:31:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:505:11: warning: declaration of ‘order’ shadows a member of ‘min_id_heap<int>’ [-Wshadow]
  505 |  explicit min_id_heap(int id_count, key_order_type order = key_order_type())
      |           ^~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:506:43: warning: declaration of ‘order’ shadows a member of ‘min_id_heap<int>’ [-Wshadow]
  506 |   :super_type(id_count, std::move(order)){}
      |                                           ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:506:43: warning: declaration of ‘order’ shadows a member of ‘min_id_heap<int>’ [-Wshadow]
  506 |   :super_type(id_count, std::move(order)){}
      |                                           ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h: In instantiation of ‘kway_min_id_heap<keyT, k, key_orderT>::kway_min_id_heap(int, kway_min_id_heap<keyT, k, key_orderT>::key_order_type) [with keyT = int; int k = 4; key_orderT = std::less<int>; kway_min_id_heap<keyT, k, key_orderT>::key_order_type = std::less<int>]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:506:41:   required from ‘min_id_heap<keyT, key_orderT>::min_id_heap(int, min_id_heap<keyT, key_orderT>::key_order_type) [with keyT = int; key_orderT = std::less<int>; min_id_heap<keyT, key_orderT>::key_order_type = std::less<int>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/greedy_order.cpp:138:31:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:18:11: warning: declaration of ‘order’ shadows a member of ‘kway_min_id_heap<int, 4, std::less<int> >’ [-Wshadow]
   18 |  explicit kway_min_id_heap(int id_count, key_order_type order = key_order_type()):
      |           ^~~~~~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:22:2: warning: declaration of ‘order’ shadows a member of ‘kway_min_id_heap<int, 4, std::less<int> >’ [-Wshadow]
   22 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:22:2: warning: declaration of ‘order’ shadows a member of ‘kway_min_id_heap<int, 4, std::less<int> >’ [-Wshadow]
   22 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/permutation.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/sort_arc.h:6,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:7,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/list_graph.cpp:3:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator~(BitIDFunc)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:100:18: warning: redundant move in return statement [-Wredundant-move]
  100 |  return std::move(f);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:100:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator^(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:137:18: warning: redundant move in return statement [-Wredundant-move]
  137 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:137:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator|(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:142:18: warning: redundant move in return statement [-Wredundant-move]
  142 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:142:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator&(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:147:18: warning: redundant move in return statement [-Wredundant-move]
  147 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:147:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc and_not(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:152:18: warning: redundant move in return statement [-Wredundant-move]
  152 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:152:18: note: remove ‘std::move’ call
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/list_graph.cpp:3:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h: In constructor ‘SymmetricHead<Tail, Head>::SymmetricHead(Tail, Head)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:42:37: warning: declaration of ‘head’ shadows a member of ‘SymmetricHead<Tail, Head>’ [-Wshadow]
   42 |  SymmetricHead(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:56:7: note: shadowed declaration is here
   56 |  Head head;
      |       ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:42:37: warning: declaration of ‘tail’ shadows a member of ‘SymmetricHead<Tail, Head>’ [-Wshadow]
   42 |  SymmetricHead(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:55:7: note: shadowed declaration is here
   55 |  Tail tail;
      |       ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h: In constructor ‘SymmetricTail<Tail, Head>::SymmetricTail(Tail, Head)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:67:37: warning: declaration of ‘head’ shadows a member of ‘SymmetricTail<Tail, Head>’ [-Wshadow]
   67 |  SymmetricTail(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:81:7: note: shadowed declaration is here
   81 |  Head head;
      |       ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:67:37: warning: declaration of ‘tail’ shadows a member of ‘SymmetricTail<Tail, Head>’ [-Wshadow]
   67 |  SymmetricTail(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:80:7: note: shadowed declaration is here
   80 |  Tail tail;
      |       ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:7:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h: In constructor ‘kway_min_id_heap<keyT, k, key_orderT>::kway_min_id_heap(int, kway_min_id_heap<keyT, k, key_orderT>::key_order_type)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:18:82: warning: declaration of ‘order’ shadows a member of ‘kway_min_id_heap<keyT, k, key_orderT>’ [-Wshadow]
   18 |  explicit kway_min_id_heap(int id_count, key_order_type order = key_order_type()):
      |                                                                                  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h: In constructor ‘kway_min_id_heap<keyT, k, key_orderT>::kway_min_id_heap(kway_min_id_heap<keyT, k, key_orderT>::key_order_type)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:24:68: warning: declaration of ‘order’ shadows a member of ‘kway_min_id_heap<keyT, k, key_orderT>’ [-Wshadow]
   24 |  explicit kway_min_id_heap(key_order_type order = key_order_type()):
      |                                                                    ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h: In constructor ‘kway_max_id_heap<keyT, k, key_orderT>::inverted_order::inverted_order(kway_max_id_heap<keyT, k, key_orderT>::key_order_type)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:487:39: warning: declaration of ‘order’ shadows a member of ‘kway_max_id_heap<keyT, k, key_orderT>::inverted_order’ [-Wshadow]
  487 |   inverted_order(key_order_type order):order(std::move(order)){}
      |                                       ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:491:18: note: shadowed declaration is here
  491 |   key_order_type order;
      |                  ^~~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:8:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator~(BitIDFunc)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:100:18: warning: redundant move in return statement [-Wredundant-move]
  100 |  return std::move(f);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:100:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator^(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:137:18: warning: redundant move in return statement [-Wredundant-move]
  137 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:137:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator|(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:142:18: warning: redundant move in return statement [-Wredundant-move]
  142 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:142:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator&(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:147:18: warning: redundant move in return statement [-Wredundant-move]
  147 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:147:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc and_not(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:152:18: warning: redundant move in return statement [-Wredundant-move]
  152 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:152:18: note: remove ‘std::move’ call
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:7,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:9:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h: In constructor ‘SymmetricHead<Tail, Head>::SymmetricHead(Tail, Head)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:42:37: warning: declaration of ‘head’ shadows a member of ‘SymmetricHead<Tail, Head>’ [-Wshadow]
   42 |  SymmetricHead(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:56:7: note: shadowed declaration is here
   56 |  Head head;
      |       ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:42:37: warning: declaration of ‘tail’ shadows a member of ‘SymmetricHead<Tail, Head>’ [-Wshadow]
   42 |  SymmetricHead(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:55:7: note: shadowed declaration is here
   55 |  Tail tail;
      |       ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h: In constructor ‘SymmetricTail<Tail, Head>::SymmetricTail(Tail, Head)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:67:37: warning: declaration of ‘head’ shadows a member of ‘SymmetricTail<Tail, Head>’ [-Wshadow]
   67 |  SymmetricTail(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:81:7: note: shadowed declaration is here
   81 |  Head head;
      |       ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:67:37: warning: declaration of ‘tail’ shadows a member of ‘SymmetricTail<Tail, Head>’ [-Wshadow]
   67 |  SymmetricTail(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:80:7: note: shadowed declaration is here
   80 |  Tail tail;
      |       ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp: In function ‘void print_tree_decompostion_of_order(std::ostream&, ArrayIDIDFunc, ArrayIDIDFunc, const ArrayIDIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:124:19: warning: declaration of ‘std::vector<int> tail’ shadows a parameter [-Wshadow]
  124 |   std::vector<int>tail, head, weight;
      |                   ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:13:71: note: shadowed declaration is here
   13 | void print_tree_decompostion_of_order(std::ostream&out, ArrayIDIDFunc tail, ArrayIDIDFunc head, const ArrayIDIDFunc&order){
      |                                                         ~~~~~~~~~~~~~~^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:124:25: warning: declaration of ‘std::vector<int> head’ shadows a parameter [-Wshadow]
  124 |   std::vector<int>tail, head, weight;
      |                         ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:13:91: note: shadowed declaration is here
   13 | void print_tree_decompostion_of_order(std::ostream&out, ArrayIDIDFunc tail, ArrayIDIDFunc head, const ArrayIDIDFunc&order){
      |                                                                             ~~~~~~~~~~~~~~^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp: In function ‘void print_tree_decompostion_of_multilevel_partition(std::ostream&, const ArrayIDIDFunc&, const ArrayIDIDFunc&, const ArrayIDIDFunc&, const std::vector<Cell>&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:189:92: warning: unused parameter ‘tail’ [-Wunused-parameter]
  189 | void print_tree_decompostion_of_multilevel_partition(std::ostream&out, const ArrayIDIDFunc&tail, const ArrayIDIDFunc&head, const ArrayIDIDFunc&to_input_node_id, const std::vector<Cell>&cell_list){
      |                                                                        ~~~~~~~~~~~~~~~~~~~~^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:189:118: warning: unused parameter ‘head’ [-Wunused-parameter]
  189 | void print_tree_decompostion_of_multilevel_partition(std::ostream&out, const ArrayIDIDFunc&tail, const ArrayIDIDFunc&head, const ArrayIDIDFunc&to_input_node_id, const std::vector<Cell>&cell_list){
      |                                                                                                  ~~~~~~~~~~~~~~~~~~~~^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/id_multi_func.h:7,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:10:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/chain.h: In instantiation of ‘typename std::enable_if<(is_mutable_id_id_func<FT>::value && is_id_id_func<R>::value), L>::type chain(L, const R&) [with L = ArrayIDIDFunc; R = ArrayIDIDFunc; typename std::enable_if<(is_mutable_id_id_func<FT>::value && is_id_id_func<R>::value), L>::type = ArrayIDIDFunc]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:17:30:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/chain.h:35:20: warning: redundant move in return statement [-Wredundant-move]
   35 |  return std::move(l);
      |                    ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/chain.h:35:20: note: remove ‘std::move’ call
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:7:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h: In instantiation of ‘kway_max_id_heap<keyT, k, key_orderT>::inverted_order::inverted_order(kway_max_id_heap<keyT, k, key_orderT>::key_order_type) [with keyT = int; int k = 4; key_orderT = std::less<int>; kway_max_id_heap<keyT, k, key_orderT>::key_order_type = std::less<int>]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:407:19:   required from ‘kway_max_id_heap<keyT, k, key_orderT>::kway_max_id_heap(int, kway_max_id_heap<keyT, k, key_orderT>::key_order_type) [with keyT = int; int k = 4; key_orderT = std::less<int>; kway_max_id_heap<keyT, k, key_orderT>::key_order_type = std::less<int>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:520:41:   required from ‘max_id_heap<keyT, key_orderT>::max_id_heap(int, max_id_heap<keyT, key_orderT>::key_order_type) [with keyT = int; key_orderT = std::less<int>; max_id_heap<keyT, key_orderT>::key_order_type = std::less<int>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:157:30:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:487:3: warning: declaration of ‘order’ shadows a member of ‘kway_max_id_heap<int, 4, std::less<int> >::inverted_order’ [-Wshadow]
  487 |   inverted_order(key_order_type order):order(std::move(order)){}
      |   ^~~~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:491:18: note: shadowed declaration is here
  491 |   key_order_type order;
      |                  ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:487:64: warning: declaration of ‘order’ shadows a member of ‘kway_max_id_heap<int, 4, std::less<int> >::inverted_order’ [-Wshadow]
  487 |   inverted_order(key_order_type order):order(std::move(order)){}
      |                                                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:491:18: note: shadowed declaration is here
  491 |   key_order_type order;
      |                  ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:487:64: warning: declaration of ‘order’ shadows a member of ‘kway_max_id_heap<int, 4, std::less<int> >::inverted_order’ [-Wshadow]
  487 |   inverted_order(key_order_type order):order(std::move(order)){}
      |                                                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:491:18: note: shadowed declaration is here
  491 |   key_order_type order;
      |                  ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h: In instantiation of ‘kway_min_id_heap<keyT, k, key_orderT>::kway_min_id_heap(int, kway_min_id_heap<keyT, k, key_orderT>::key_order_type) [with keyT = int; int k = 4; key_orderT = kway_max_id_heap<int, 4, std::less<int> >::inverted_order; kway_min_id_heap<keyT, k, key_orderT>::key_order_type = kway_max_id_heap<int, 4, std::less<int> >::inverted_order]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:407:51:   required from ‘kway_max_id_heap<keyT, k, key_orderT>::kway_max_id_heap(int, kway_max_id_heap<keyT, k, key_orderT>::key_order_type) [with keyT = int; int k = 4; key_orderT = std::less<int>; kway_max_id_heap<keyT, k, key_orderT>::key_order_type = std::less<int>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:520:41:   required from ‘max_id_heap<keyT, key_orderT>::max_id_heap(int, max_id_heap<keyT, key_orderT>::key_order_type) [with keyT = int; key_orderT = std::less<int>; max_id_heap<keyT, key_orderT>::key_order_type = std::less<int>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tree_decomposition.cpp:157:30:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:18:11: warning: declaration of ‘order’ shadows a member of ‘kway_min_id_heap<int, 4, kway_max_id_heap<int, 4, std::less<int> >::inverted_order>’ [-Wshadow]
   18 |  explicit kway_min_id_heap(int id_count, key_order_type order = key_order_type()):
      |           ^~~~~~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:22:2: warning: declaration of ‘order’ shadows a member of ‘kway_min_id_heap<int, 4, kway_max_id_heap<int, 4, std::less<int> >::inverted_order>’ [-Wshadow]
   22 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:22:2: warning: declaration of ‘order’ shadows a member of ‘kway_min_id_heap<int, 4, kway_max_id_heap<int, 4, std::less<int> >::inverted_order>’ [-Wshadow]
   22 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/heap.h:368:17: note: shadowed declaration is here
  368 |  key_order_type order;
      |                 ^~~~~
[ 42%] Building CXX object CMakeFiles/sharpSAT.dir/src/preprocessor/graph.cpp.o
/usr/bin/c++    -std=c++11 -O3 -Wall -Wextra -Wshadow -Wfatal-errors -Wno-sign-compare -Wno-literal-suffix   -o CMakeFiles/sharpSAT.dir/src/preprocessor/graph.cpp.o -c /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/src/preprocessor/graph.cpp
[ 50%] Building CXX object CMakeFiles/sharpSAT.dir/src/preprocessor/subsumer.cpp.o
/usr/bin/c++    -std=c++11 -O3 -Wall -Wextra -Wshadow -Wfatal-errors -Wno-sign-compare -Wno-literal-suffix   -o CMakeFiles/sharpSAT.dir/src/preprocessor/subsumer.cpp.o -c /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/src/preprocessor/subsumer.cpp
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/src/mpfr/mpreal.h:125,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/src/structures.h:20,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/src/statistics.h:17,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/src/solver.h:12,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/src/main.cpp:1:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/src/mpfr/mpreal.h: In copy constructor ‘mpfr::mpreal::mpreal(const mpfr::mpreal&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/src/mpfr/mpreal.h:590:27: error: no matching function for call to ‘mpfr::mpreal::mpfr_srcptr(mpfr_srcptr)’
  590 |     mpfr_init2(mpfr_ptr(),mpfr_get_prec(u.mpfr_srcptr()));
      |                           ^~~~~~~~~~~~~
compilation terminated due to -Wfatal-errors.
make[2]: *** [CMakeFiles/sharpSAT.dir/build.make:66: CMakeFiles/sharpSAT.dir/src/main.cpp.o] Error 1
make[2]: *** Waiting for unfinished jobs....
[ 57%] Linking CXX static library liblibflowcutter.a
cd /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/flowcutter && /usr/bin/cmake -P CMakeFiles/libflowcutter.dir/cmake_clean_target.cmake
cd /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/flowcutter && /usr/bin/cmake -E cmake_link_script CMakeFiles/libflowcutter.dir/link.txt --verbose=1
/usr/bin/ar qc liblibflowcutter.a  CMakeFiles/libflowcutter.dir/cell.cpp.o CMakeFiles/libflowcutter.dir/greedy_order.cpp.o CMakeFiles/libflowcutter.dir/list_graph.cpp.o CMakeFiles/libflowcutter.dir/tree_decomposition.cpp.o
/usr/bin/ranlib liblibflowcutter.a
make[2]: warning:  Clock skew detected.  Your build may be incomplete.
make[2]: Leaving directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
[ 57%] Built target libflowcutter
make -f CMakeFiles/flow_cutter_pace17.dir/build.make CMakeFiles/flow_cutter_pace17.dir/depend
make[2]: Entering directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
cd /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build && /usr/bin/cmake -E cmake_depends "Unix Makefiles" /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build/CMakeFiles/flow_cutter_pace17.dir/DependInfo.cmake --color=
Scanning dependencies of target flow_cutter_pace17
make[2]: Leaving directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
make -f CMakeFiles/flow_cutter_pace17.dir/build.make CMakeFiles/flow_cutter_pace17.dir/build
make[2]: Entering directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
make[2]: Warning: File 'CMakeFiles/flow_cutter_pace17.dir/depend.make' has modification time 0.72 s in the future
[ 64%] Building CXX object CMakeFiles/flow_cutter_pace17.dir/flowcutter/pace.cpp.o
/usr/bin/c++    -std=c++11 -O3 -Wall -Wextra -Wshadow -Wfatal-errors -Wno-sign-compare -Wno-literal-suffix   -o CMakeFiles/flow_cutter_pace17.dir/flowcutter/pace.cpp.o -c /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/list_graph.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:3:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h: In constructor ‘ArrayIDIDFunc::ArrayIDIDFunc(const IDFunc&, int)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h:154:3: warning: declaration of ‘image_count_’ shadows a member of ‘ArrayIDIDFunc’ [-Wshadow]
  154 |   : ArrayIDFunc<int>(f), image_count_(image_count_){}
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/array_id_func.h:184:6: note: shadowed declaration is here
  184 |  int image_count_;
      |      ^~~~~~~~~~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/permutation.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/sort_arc.h:6,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:7,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:4:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator~(BitIDFunc)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:100:18: warning: redundant move in return statement [-Wredundant-move]
  100 |  return std::move(f);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:100:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator^(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:137:18: warning: redundant move in return statement [-Wredundant-move]
  137 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:137:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator|(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:142:18: warning: redundant move in return statement [-Wredundant-move]
  142 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:142:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc operator&(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:147:18: warning: redundant move in return statement [-Wredundant-move]
  147 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:147:18: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In function ‘BitIDFunc and_not(BitIDFunc, const BitIDFunc&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:152:18: warning: redundant move in return statement [-Wredundant-move]
  152 |  return std::move(l);
      |         ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:152:18: note: remove ‘std::move’ call
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:4:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h: In constructor ‘SymmetricHead<Tail, Head>::SymmetricHead(Tail, Head)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:42:37: warning: declaration of ‘head’ shadows a member of ‘SymmetricHead<Tail, Head>’ [-Wshadow]
   42 |  SymmetricHead(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:56:7: note: shadowed declaration is here
   56 |  Head head;
      |       ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:42:37: warning: declaration of ‘tail’ shadows a member of ‘SymmetricHead<Tail, Head>’ [-Wshadow]
   42 |  SymmetricHead(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:55:7: note: shadowed declaration is here
   55 |  Tail tail;
      |       ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h: In constructor ‘SymmetricTail<Tail, Head>::SymmetricTail(Tail, Head)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:67:37: warning: declaration of ‘head’ shadows a member of ‘SymmetricTail<Tail, Head>’ [-Wshadow]
   67 |  SymmetricTail(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:81:7: note: shadowed declaration is here
   81 |  Head head;
      |       ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:67:37: warning: declaration of ‘tail’ shadows a member of ‘SymmetricTail<Tail, Head>’ [-Wshadow]
   67 |  SymmetricTail(Tail tail, Head head):
      |                                     ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:80:7: note: shadowed declaration is here
   80 |  Tail tail;
      |       ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:8:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In constructor ‘flow_cutter::Graph<Tail, Head, BackArc, Capacity, OutArc>::Graph(Tail, Head, BackArc, Capacity, OutArc)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:26:4: warning: declaration of ‘out_arc’ shadows a member of ‘flow_cutter::Graph<Tail, Head, BackArc, Capacity, OutArc>’ [-Wshadow]
   26 |   ):
      |    ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:37:10: note: shadowed declaration is here
   37 |   OutArc out_arc;
      |          ^~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:26:4: warning: declaration of ‘capacity’ shadows a member of ‘flow_cutter::Graph<Tail, Head, BackArc, Capacity, OutArc>’ [-Wshadow]
   26 |   ):
      |    ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:36:12: note: shadowed declaration is here
   36 |   Capacity capacity;
      |            ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:26:4: warning: declaration of ‘back_arc’ shadows a member of ‘flow_cutter::Graph<Tail, Head, BackArc, Capacity, OutArc>’ [-Wshadow]
   26 |   ):
      |    ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:35:11: note: shadowed declaration is here
   35 |   BackArc back_arc;
      |           ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:26:4: warning: declaration of ‘head’ shadows a member of ‘flow_cutter::Graph<Tail, Head, BackArc, Capacity, OutArc>’ [-Wshadow]
   26 |   ):
      |    ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:34:8: note: shadowed declaration is here
   34 |   Head head;
      |        ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:26:4: warning: declaration of ‘tail’ shadows a member of ‘flow_cutter::Graph<Tail, Head, BackArc, Capacity, OutArc>’ [-Wshadow]
   26 |   ):
      |    ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:33:8: note: shadowed declaration is here
   33 |   Tail tail;
      |        ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:8:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In lambda function:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:851:115: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  851 |     auto my_score_pierce_node = [&](int x, int side, bool causes_augmenting_path, int source_dist, int target_dist){
      |                                                                                                                   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:850:10: note: shadowed declaration is here
  850 |     auto&x = cutter_list[i];
      |          ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In lambda function:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:899:116: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  899 |      auto my_score_pierce_node = [&](int x, int side, bool causes_augmenting_path, int source_dist, int target_dist){
      |                                                                                                                    ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:898:11: note: shadowed declaration is here
  898 |      auto x = std::move(cutter_list[i]);
      |           ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In constructor ‘flow_cutter::PierceNodeScore::PierceNodeScore(flow_cutter::Config)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:982:33: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::PierceNodeScore’ [-Wshadow]
  982 |   PierceNodeScore(Config config): config(config){
      |                                 ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:990:10: note: shadowed declaration is here
  990 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In constructor ‘flow_cutter::PierceNodeScore::PierceNodeScore(flow_cutter::Config)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:988:3: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::PierceNodeScore’ [-Wshadow]
  988 |   }
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:990:10: note: shadowed declaration is here
  990 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In constructor ‘flow_cutter::PierceNodeScore::PierceNodeScore(flow_cutter::Config)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:988:3: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::PierceNodeScore’ [-Wshadow]
  988 |   }
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:990:10: note: shadowed declaration is here
  990 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In member function ‘int flow_cutter::PierceNodeScore::operator()(int, int, bool, int, int, int) const’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:993:102: warning: unused parameter ‘cutter_id’ [-Wunused-parameter]
  993 |   int operator()(int x, int side, bool causes_augmenting_path, int source_dist, int target_dist, int cutter_id)const{
      |                                                                                                  ~~~~^~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In constructor ‘flow_cutter::SimpleCutter<Graph>::SimpleCutter(const Graph&, flow_cutter::Config)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1050:49: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::SimpleCutter<Graph>’ [-Wshadow]
 1050 |   SimpleCutter(const Graph&graph, Config config):
      |                                                 ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1124:10: note: shadowed declaration is here
 1124 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1050:49: warning: declaration of ‘graph’ shadows a member of ‘flow_cutter::SimpleCutter<Graph>’ [-Wshadow]
 1050 |   SimpleCutter(const Graph&graph, Config config):
      |                                                 ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1121:15: note: shadowed declaration is here
 1121 |   const Graph&graph;
      |               ^~~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:8:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h: In function ‘int flow_cutter::expanded_graph::original_arc_to_expanded_inter_arc(int, bool, int)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:27:80: warning: unused parameter ‘original_arc_count’ [-Wunused-parameter]
   27 |   inline int original_arc_to_expanded_inter_arc(int x, bool tail_out_flag, int original_arc_count){ return 2*x+tail_out_flag; }
      |                                                                            ~~~~^~~~~~~~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h: In constructor ‘flow_cutter::expanded_graph::OutArcIter<OriginalOutArc>::OutArcIter(int, bool, flow_cutter::expanded_graph::OutArcIter<OriginalOutArc>::OriginalOutArcIter)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:128:79: warning: declaration of ‘base_iter’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<OriginalOutArc>’ [-Wshadow]
  128 |    OutArcIter(int intra_arc, bool node_out_flag, OriginalOutArcIter base_iter):
      |                                                                               ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:160:23: note: shadowed declaration is here
  160 |    OriginalOutArcIter base_iter;
      |                       ^~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:128:79: warning: declaration of ‘node_out_flag’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<OriginalOutArc>’ [-Wshadow]
  128 |    OutArcIter(int intra_arc, bool node_out_flag, OriginalOutArcIter base_iter):
      |                                                                               ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:159:9: note: shadowed declaration is here
  159 |    bool node_out_flag;
      |         ^~~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:128:79: warning: declaration of ‘intra_arc’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<OriginalOutArc>’ [-Wshadow]
  128 |    OutArcIter(int intra_arc, bool node_out_flag, OriginalOutArcIter base_iter):
      |                                                                               ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:158:8: note: shadowed declaration is here
  158 |    int intra_arc;
      |        ^~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h: In function ‘std::vector<flow_cutter::SourceTargetPair> flow_cutter::expanded_graph::expand_source_target_pair_list(std::vector<flow_cutter::SourceTargetPair>)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:289:20: warning: redundant move in return statement [-Wredundant-move]
  289 |    return std::move(p);
      |           ~~~~~~~~~^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:289:20: note: remove ‘std::move’ call
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:9:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h: In constructor ‘flow_cutter::ComputeSeparator::ComputeSeparator(flow_cutter::Config)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:15:43: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::ComputeSeparator’ [-Wshadow]
   15 |   explicit ComputeSeparator(Config config):config(config){}
      |                                           ^
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:9:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:203:10: note: shadowed declaration is here
  203 |   Config config;
      |          ^~~~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:9:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h: In constructor ‘flow_cutter::ComputeSeparator::ComputeSeparator(flow_cutter::Config)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:15:59: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::ComputeSeparator’ [-Wshadow]
   15 |   explicit ComputeSeparator(Config config):config(config){}
      |                                                           ^
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:9:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:203:10: note: shadowed declaration is here
  203 |   Config config;
      |          ^~~~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:9:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h: In constructor ‘flow_cutter::ComputeSeparator::ComputeSeparator(flow_cutter::Config)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:15:59: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::ComputeSeparator’ [-Wshadow]
   15 |   explicit ComputeSeparator(Config config):config(config){}
      |                                                           ^
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:9:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:203:10: note: shadowed declaration is here
  203 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h: In constructor ‘flow_cutter::ComputeSeparatorList::ComputeSeparatorList(flow_cutter::Config)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:210:47: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::ComputeSeparatorList’ [-Wshadow]
  210 |   explicit ComputeSeparatorList(Config config):config(config){}
      |                                               ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:277:10: note: shadowed declaration is here
  277 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h: In constructor ‘flow_cutter::ComputeSeparatorList::ComputeSeparatorList(flow_cutter::Config)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:210:63: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::ComputeSeparatorList’ [-Wshadow]
  210 |   explicit ComputeSeparatorList(Config config):config(config){}
      |                                                               ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:277:10: note: shadowed declaration is here
  277 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h: In constructor ‘flow_cutter::ComputeSeparatorList::ComputeSeparatorList(flow_cutter::Config)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:210:63: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::ComputeSeparatorList’ [-Wshadow]
  210 |   explicit ComputeSeparatorList(Config config):config(config){}
      |                                                               ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:277:10: note: shadowed declaration is here
  277 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp: In function ‘void check_multilevel_partition_invariants(const Tail&, const Head&, const std::vector<Cell>&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:62:122: warning: declaration of ‘head’ shadows a global declaration [-Wshadow]
   62 | void check_multilevel_partition_invariants(const Tail&tail, const Head&head, const std::vector<Cell>&multilevel_partition){
      |                                                                                                                          ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:21: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |                     ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:62:122: warning: declaration of ‘tail’ shadows a global declaration [-Wshadow]
   62 | void check_multilevel_partition_invariants(const Tail&tail, const Head&head, const std::vector<Cell>&multilevel_partition){
      |                                                                                                                          ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:15: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |               ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp: In function ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:102:182: warning: declaration of ‘head’ shadows a global declaration [-Wshadow]
  102 | void compute_multilevel_partition(const Tail&tail, const Head&head, const ComputeSeparator&compute_separator, int smallest_known_treewidth, const OnNewMP&on_new_multilevel_partition){
      |                                                                                                                                                                                      ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:21: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |                     ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:102:182: warning: declaration of ‘tail’ shadows a global declaration [-Wshadow]
  102 | void compute_multilevel_partition(const Tail&tail, const Head&head, const ComputeSeparator&compute_separator, int smallest_known_treewidth, const OnNewMP&on_new_multilevel_partition){
      |                                                                                                                                                                                      ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:15: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |               ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:242:15: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  242 |      for(auto&x:new_cell_interior_node_list)
      |               ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:237:12: note: shadowed declaration is here
  237 |    for(int x=0; x<interior_node_count; ++x){
      |            ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:253:16: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  253 |       for(auto x:new_cell.separator_node_list)
      |                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:237:12: note: shadowed declaration is here
  237 |    for(int x=0; x<interior_node_count; ++x){
      |            ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp: In lambda function:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:259:21: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  259 |         [&](int x)->bool{
      |                     ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:237:12: note: shadowed declaration is here
  237 |    for(int x=0; x<interior_node_count; ++x){
      |            ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp: In function ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&)’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:268:16: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  268 |       for(auto x:new_cell.separator_node_list)
      |                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:237:12: note: shadowed declaration is here
  237 |    for(int x=0; x<interior_node_count; ++x){
      |            ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp: In lambda function:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:344:18: warning: unused parameter ‘y’ [-Wunused-parameter]
  344 |   [&](int x, int y){
      |              ~~~~^
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/permutation.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/sort_arc.h:6,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/multi_arc.h:7,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:4:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In instantiation of ‘TinyIntIDFunc<bit_count>::TinyIntIDFunc(const IDFunc&, typename std::enable_if<is_id_func<IDFunc>::value, void>::type*) [with IDFunc = LambdaIDFunc<flow_cutter::BasicCutter::dump_state() const::<lambda(int)> >; int bit_count = 1; typename std::enable_if<is_id_func<IDFunc>::value, void>::type = void]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:461:4:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:28:99: warning: unused parameter ‘dummy’ [-Wunused-parameter]
   28 |  TinyIntIDFunc(const IDFunc&other, typename std::enable_if<is_id_func<IDFunc>::value, void>::type*dummy=0)
      |                                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In instantiation of ‘TinyIntIDFunc<bit_count>::TinyIntIDFunc(const IDFunc&, typename std::enable_if<is_id_func<IDFunc>::value, void>::type*) [with IDFunc = LambdaIDFunc<flow_cutter::BasicCutter::dump_state() const::<lambda(int)> >; int bit_count = 1; typename std::enable_if<is_id_func<IDFunc>::value, void>::type = void]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:461:4:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:28:99: warning: unused parameter ‘dummy’ [-Wunused-parameter]
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In instantiation of ‘TinyIntIDFunc<bit_count>::TinyIntIDFunc(const IDFunc&, typename std::enable_if<is_id_func<IDFunc>::value, void>::type*) [with IDFunc = LambdaIDFunc<flow_cutter::BasicCutter::dump_state() const::<lambda(int)> >; int bit_count = 1; typename std::enable_if<is_id_func<IDFunc>::value, void>::type = void]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:461:4:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:28:99: warning: unused parameter ‘dummy’ [-Wunused-parameter]
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In instantiation of ‘TinyIntIDFunc<bit_count>::TinyIntIDFunc(const IDFunc&, typename std::enable_if<is_id_func<IDFunc>::value, void>::type*) [with IDFunc = LambdaIDFunc<flow_cutter::BasicCutter::dump_state() const::<lambda(int)> >; int bit_count = 1; typename std::enable_if<is_id_func<IDFunc>::value, void>::type = void]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:461:4:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:28:99: warning: unused parameter ‘dummy’ [-Wunused-parameter]
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h: In instantiation of ‘TinyIntIDFunc<bit_count>::TinyIntIDFunc(const IDFunc&, typename std::enable_if<is_id_func<IDFunc>::value, void>::type*) [with IDFunc = LambdaIDFunc<flow_cutter::BasicCutter::dump_state() const::<lambda(int)> >; int bit_count = 1; typename std::enable_if<is_id_func<IDFunc>::value, void>::type = void]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:461:4:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/tiny_id_func.h:28:99: warning: unused parameter ‘dummy’ [-Wunused-parameter]
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:6:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/chain.h: In instantiation of ‘typename std::enable_if<(is_mutable_id_id_func<FT>::value && is_id_id_func<R>::value), L>::type chain(L, const R&) [with L = ArrayIDIDFunc; R = ArrayIDIDFunc; typename std::enable_if<(is_mutable_id_id_func<FT>::value && is_id_id_func<R>::value), L>::type = ArrayIDIDFunc]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:343:24:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/chain.h:35:20: warning: redundant move in return statement [-Wredundant-move]
   35 |  return std::move(l);
      |                    ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/chain.h:35:20: note: remove ‘std::move’ call
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp: In instantiation of ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:242:6: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  242 |      for(auto&x:new_cell_interior_node_list)
      |      ^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:237:12: note: shadowed declaration is here
  237 |    for(int x=0; x<interior_node_count; ++x){
      |            ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:253:7: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  253 |       for(auto x:new_cell.separator_node_list)
      |       ^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:237:12: note: shadowed declaration is here
  237 |    for(int x=0; x<interior_node_count; ++x){
      |            ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:259:9: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  259 |         [&](int x)->bool{
      |         ^~~~~~~~~~~~~~~~~
  260 |          for(auto xy:inv_tail(x))
      |          ~~~~~~~~~~~~~~~~~~~~~~~~
  261 |           if(in_child_cell(head(xy)))
      |           ~~~~~~~~~~~~~~~~~~~~~~~~~~~
  262 |            return false;
      |            ~~~~~~~~~~~~~
  263 |          return true;
      |          ~~~~~~~~~~~~
  264 |         }
      |         ~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:237:12: note: shadowed declaration is here
  237 |    for(int x=0; x<interior_node_count; ++x){
      |            ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:268:7: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  268 |       for(auto x:new_cell.separator_node_list)
      |       ^~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:237:12: note: shadowed declaration is here
  237 |    for(int x=0; x<interior_node_count; ++x){
      |            ^
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:13:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h: In instantiation of ‘NodeContractionGraph::NodeContractionGraph(const Tail&, const Head&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:170:23:   required from ‘int compute_chordal_supergraph(const Tail&, const Head&, const OnNewArc&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; OnNewArc = compute_max_bag_size_of_order(const ArrayIDIDFunc&)::<lambda(int, int)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:352:2:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:145:2: warning: declaration of ‘head’ shadows a global declaration [-Wshadow]
  145 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:21: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |                     ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:13:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:145:2: warning: declaration of ‘tail’ shadows a global declaration [-Wshadow]
  145 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:15: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |               ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:13:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:145:2: warning: declaration of ‘head’ shadows a global declaration [-Wshadow]
  145 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:21: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |                     ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:13:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:145:2: warning: declaration of ‘tail’ shadows a global declaration [-Wshadow]
  145 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:15: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |               ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:13:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h: In instantiation of ‘EdgeContractionGraph::EdgeContractionGraph(const Tail&, const Head&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:142:47:   required from ‘NodeContractionGraph::NodeContractionGraph(const Tail&, const Head&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:170:23:   required from ‘int compute_chordal_supergraph(const Tail&, const Head&, const OnNewArc&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; OnNewArc = compute_max_bag_size_of_order(const ArrayIDIDFunc&)::<lambda(int, int)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:352:2:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:125:2: warning: declaration of ‘head’ shadows a global declaration [-Wshadow]
  125 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:21: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |                     ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:13:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:125:2: warning: declaration of ‘tail’ shadows a global declaration [-Wshadow]
  125 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:15: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |               ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:13:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:125:2: warning: declaration of ‘head’ shadows a global declaration [-Wshadow]
  125 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:21: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |                     ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:13:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/contraction_graph.h:125:2: warning: declaration of ‘tail’ shadows a global declaration [-Wshadow]
  125 |  }
      |  ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:32:15: note: shadowed declaration is here
   32 | ArrayIDIDFunc tail, head;
      |               ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:8:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘flow_cutter::Graph<Tail, Head, BackArc, Capacity, OutArc>::Graph(Tail, Head, BackArc, Capacity, OutArc) [with Tail = flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >; Head = flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >; BackArc = flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >; Capacity = flow_cutter::expanded_graph::Capacity; OutArc = flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> >]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:211:4:   required from ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<OriginalTail>, flow_cutter::expanded_graph::Head<Head>, flow_cutter::expanded_graph::BackArc<BackArc>, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<OutArc> > flow_cutter::expanded_graph::make_graph(Tail, Head, BackArc, OutArc) [with Tail = ConstRefIDIDFunc<ArrayIDIDFunc>; Head = ConstRefIDIDFunc<ArrayIDIDFunc>; BackArc = ConstRefIDIDFunc<ArrayIDIDFunc>; OutArc = ConstRefIDFunc<RangeIDIDMultiFunc>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:60:54:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:20:3: warning: declaration of ‘out_arc’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   20 |   Graph(
      |   ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:37:10: note: shadowed declaration is here
   37 |   OutArc out_arc;
      |          ^~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:20:3: warning: declaration of ‘capacity’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   20 |   Graph(
      |   ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:36:12: note: shadowed declaration is here
   36 |   Capacity capacity;
      |            ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:20:3: warning: declaration of ‘back_arc’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   20 |   Graph(
      |   ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:35:11: note: shadowed declaration is here
   35 |   BackArc back_arc;
      |           ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:20:3: warning: declaration of ‘head’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   20 |   Graph(
      |   ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:34:8: note: shadowed declaration is here
   34 |   Head head;
      |        ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:20:3: warning: declaration of ‘tail’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   20 |   Graph(
      |   ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:33:8: note: shadowed declaration is here
   33 |   Tail tail;
      |        ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘out_arc’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:37:10: note: shadowed declaration is here
   37 |   OutArc out_arc;
      |          ^~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘capacity’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:36:12: note: shadowed declaration is here
   36 |   Capacity capacity;
      |            ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘back_arc’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:35:11: note: shadowed declaration is here
   35 |   BackArc back_arc;
      |           ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘head’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:34:8: note: shadowed declaration is here
   34 |   Head head;
      |        ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘tail’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:33:8: note: shadowed declaration is here
   33 |   Tail tail;
      |        ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘out_arc’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:37:10: note: shadowed declaration is here
   37 |   OutArc out_arc;
      |          ^~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘capacity’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:36:12: note: shadowed declaration is here
   36 |   Capacity capacity;
      |            ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘back_arc’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:35:11: note: shadowed declaration is here
   35 |   BackArc back_arc;
      |           ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘head’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:34:8: note: shadowed declaration is here
   34 |   Head head;
      |        ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘tail’ shadows a member of ‘flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:33:8: note: shadowed declaration is here
   33 |   Tail tail;
      |        ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:8:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘flow_cutter::SimpleCutter<Graph>::SimpleCutter(const Graph&, flow_cutter::Config) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1129:10:   required from ‘flow_cutter::SimpleCutter<Graph> flow_cutter::make_simple_cutter(const Graph&, flow_cutter::Config) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:67:38:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1050:3: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > > >’ [-Wshadow]
 1050 |   SimpleCutter(const Graph&graph, Config config):
      |   ^~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1124:10: note: shadowed declaration is here
 1124 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1050:3: warning: declaration of ‘graph’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > > >’ [-Wshadow]
 1050 |   SimpleCutter(const Graph&graph, Config config):
      |   ^~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1121:15: note: shadowed declaration is here
 1121 |   const Graph&graph;
      |               ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1052:3: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > > >’ [-Wshadow]
 1052 |   }
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1124:10: note: shadowed declaration is here
 1124 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1052:3: warning: declaration of ‘graph’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > > >’ [-Wshadow]
 1052 |   }
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1121:15: note: shadowed declaration is here
 1121 |   const Graph&graph;
      |               ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1052:3: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > > >’ [-Wshadow]
 1052 |   }
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1124:10: note: shadowed declaration is here
 1124 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1052:3: warning: declaration of ‘graph’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > > >’ [-Wshadow]
 1052 |   }
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1121:15: note: shadowed declaration is here
 1121 |   const Graph&graph;
      |               ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1068:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:72:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:851:33: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  851 |     auto my_score_pierce_node = [&](int x, int side, bool causes_augmenting_path, int source_dist, int target_dist){
      |                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  852 |      return score_pierce_node(x, side, causes_augmenting_path, source_dist, target_dist, i);
      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  853 |     };
      |     ~                            
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:850:10: note: shadowed declaration is here
  850 |     auto&x = cutter_list[i];
      |          ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::BreadthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1072:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:72:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:851:33: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  851 |     auto my_score_pierce_node = [&](int x, int side, bool causes_augmenting_path, int source_dist, int target_dist){
      |                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  852 |      return score_pierce_node(x, side, causes_augmenting_path, source_dist, target_dist, i);
      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  853 |     };
      |     ~                            
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:850:10: note: shadowed declaration is here
  850 |     auto&x = cutter_list[i];
      |          ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘bool flow_cutter::MultiCutter::advance(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, bool) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1087:156:   required from ‘bool flow_cutter::SimpleCutter<Graph>::advance() [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:95:10:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:899:34: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  899 |      auto my_score_pierce_node = [&](int x, int side, bool causes_augmenting_path, int source_dist, int target_dist){
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  900 |       return score_pierce_node(x, side, causes_augmenting_path, source_dist, target_dist, i);
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  901 |      };
      |      ~                            
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:898:11: note: shadowed declaration is here
  898 |      auto x = std::move(cutter_list[i]);
      |           ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘bool flow_cutter::MultiCutter::advance(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, bool) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::BreadthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1090:152:   required from ‘bool flow_cutter::SimpleCutter<Graph>::advance() [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:95:10:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:899:34: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  899 |      auto my_score_pierce_node = [&](int x, int side, bool causes_augmenting_path, int source_dist, int target_dist){
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  900 |       return score_pierce_node(x, side, causes_augmenting_path, source_dist, target_dist, i);
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  901 |      };
      |      ~                            
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:898:11: note: shadowed declaration is here
  898 |      auto x = std::move(cutter_list[i]);
      |           ^
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:8:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘flow_cutter::Graph<Tail, Head, BackArc, Capacity, OutArc>::Graph(Tail, Head, BackArc, Capacity, OutArc) [with Tail = ConstRefIDIDFunc<ArrayIDIDFunc>; Head = ConstRefIDIDFunc<ArrayIDIDFunc>; BackArc = ConstRefIDIDFunc<ArrayIDIDFunc>; Capacity = ConstIntIDFunc<1>; OutArc = ConstRefIDFunc<RangeIDIDMultiFunc>]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:61:105:   required from ‘flow_cutter::Graph<Tail, Head, BackArc, Capacity, OutArc> flow_cutter::make_graph(Tail, Head, BackArc, Capacity, OutArc) [with Tail = ConstRefIDIDFunc<ArrayIDIDFunc>; Head = ConstRefIDIDFunc<ArrayIDIDFunc>; BackArc = ConstRefIDIDFunc<ArrayIDIDFunc>; Capacity = ConstIntIDFunc<1>; OutArc = ConstRefIDFunc<RangeIDIDMultiFunc>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:103:42:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:20:3: warning: declaration of ‘out_arc’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   20 |   Graph(
      |   ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:37:10: note: shadowed declaration is here
   37 |   OutArc out_arc;
      |          ^~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:20:3: warning: declaration of ‘capacity’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   20 |   Graph(
      |   ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:36:12: note: shadowed declaration is here
   36 |   Capacity capacity;
      |            ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:20:3: warning: declaration of ‘back_arc’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   20 |   Graph(
      |   ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:35:11: note: shadowed declaration is here
   35 |   BackArc back_arc;
      |           ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:20:3: warning: declaration of ‘head’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   20 |   Graph(
      |   ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:34:8: note: shadowed declaration is here
   34 |   Head head;
      |        ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:20:3: warning: declaration of ‘tail’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   20 |   Graph(
      |   ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:33:8: note: shadowed declaration is here
   33 |   Tail tail;
      |        ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘out_arc’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:37:10: note: shadowed declaration is here
   37 |   OutArc out_arc;
      |          ^~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘capacity’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:36:12: note: shadowed declaration is here
   36 |   Capacity capacity;
      |            ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘back_arc’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:35:11: note: shadowed declaration is here
   35 |   BackArc back_arc;
      |           ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘head’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:34:8: note: shadowed declaration is here
   34 |   Head head;
      |        ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘tail’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:33:8: note: shadowed declaration is here
   33 |   Tail tail;
      |        ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘out_arc’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:37:10: note: shadowed declaration is here
   37 |   OutArc out_arc;
      |          ^~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘capacity’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:36:12: note: shadowed declaration is here
   36 |   Capacity capacity;
      |            ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘back_arc’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:35:11: note: shadowed declaration is here
   35 |   BackArc back_arc;
      |           ^~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘head’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:34:8: note: shadowed declaration is here
   34 |   Head head;
      |        ^~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:31:32: warning: declaration of ‘tail’ shadows a member of ‘flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
   31 |    out_arc(std::move(out_arc)){}
      |                                ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:33:8: note: shadowed declaration is here
   33 |   Tail tail;
      |        ^~~~
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:4,
                 from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:8:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘flow_cutter::SimpleCutter<Graph>::SimpleCutter(const Graph&, flow_cutter::Config) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1129:10:   required from ‘flow_cutter::SimpleCutter<Graph> flow_cutter::make_simple_cutter(const Graph&, flow_cutter::Config) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:111:38:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1050:3: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
 1050 |   SimpleCutter(const Graph&graph, Config config):
      |   ^~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1124:10: note: shadowed declaration is here
 1124 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1050:3: warning: declaration of ‘graph’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
 1050 |   SimpleCutter(const Graph&graph, Config config):
      |   ^~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1121:15: note: shadowed declaration is here
 1121 |   const Graph&graph;
      |               ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1052:3: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
 1052 |   }
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1124:10: note: shadowed declaration is here
 1124 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1052:3: warning: declaration of ‘graph’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
 1052 |   }
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1121:15: note: shadowed declaration is here
 1121 |   const Graph&graph;
      |               ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1052:3: warning: declaration of ‘config’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
 1052 |   }
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1124:10: note: shadowed declaration is here
 1124 |   Config config;
      |          ^~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1052:3: warning: declaration of ‘graph’ shadows a member of ‘flow_cutter::SimpleCutter<flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> > >’ [-Wshadow]
 1052 |   }
      |   ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1121:15: note: shadowed declaration is here
 1121 |   const Graph&graph;
      |               ^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1068:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:116:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:851:33: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  851 |     auto my_score_pierce_node = [&](int x, int side, bool causes_augmenting_path, int source_dist, int target_dist){
      |                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  852 |      return score_pierce_node(x, side, causes_augmenting_path, source_dist, target_dist, i);
      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  853 |     };
      |     ~                            
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:850:10: note: shadowed declaration is here
  850 |     auto&x = cutter_list[i];
      |          ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::BreadthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1072:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:116:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:851:33: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  851 |     auto my_score_pierce_node = [&](int x, int side, bool causes_augmenting_path, int source_dist, int target_dist){
      |                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  852 |      return score_pierce_node(x, side, causes_augmenting_path, source_dist, target_dist, i);
      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  853 |     };
      |     ~                            
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:850:10: note: shadowed declaration is here
  850 |     auto&x = cutter_list[i];
      |          ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘bool flow_cutter::MultiCutter::advance(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, bool) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1087:156:   required from ‘bool flow_cutter::SimpleCutter<Graph>::advance() [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:140:10:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:899:34: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  899 |      auto my_score_pierce_node = [&](int x, int side, bool causes_augmenting_path, int source_dist, int target_dist){
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  900 |       return score_pierce_node(x, side, causes_augmenting_path, source_dist, target_dist, i);
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  901 |      };
      |      ~                            
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:898:11: note: shadowed declaration is here
  898 |      auto x = std::move(cutter_list[i]);
      |           ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘bool flow_cutter::MultiCutter::advance(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, bool) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::BreadthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1090:152:   required from ‘bool flow_cutter::SimpleCutter<Graph>::advance() [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:140:10:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:899:34: warning: declaration of ‘x’ shadows a previous local [-Wshadow]
  899 |      auto my_score_pierce_node = [&](int x, int side, bool causes_augmenting_path, int source_dist, int target_dist){
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  900 |       return score_pierce_node(x, side, causes_augmenting_path, source_dist, target_dist, i);
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  901 |      };
      |      ~                            
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:898:11: note: shadowed declaration is here
  898 |      auto x = std::move(cutter_list[i]);
      |           ^
make[2]: Leaving directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
make[1]: *** [CMakeFiles/Makefile2:128: CMakeFiles/sharpSAT.dir/all] Error 2
make[1]: *** Waiting for unfinished jobs....
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘static void flow_cutter::DistanceAwareCutter::compute_hop_distance_from(const Graph&, flow_cutter::TemporaryData&, int, ArrayIDFunc<int>&) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:767:30:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1068:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:72:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:740:33: warning: unused parameter ‘x’ [-Wunused-parameter]
  740 |    auto was_node_seen = [&](int x){return false;};
      |                             ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:741:27: warning: unused parameter ‘x’ [-Wunused-parameter]
  741 |    auto see_node = [](int x){ return true; };
      |                       ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:750:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  750 |    auto on_new_arc = [&](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘static void flow_cutter::DistanceAwareCutter::compute_hop_distance_from(const Graph&, flow_cutter::TemporaryData&, int, ArrayIDFunc<int>&) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:767:30:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1068:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:116:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:740:33: warning: unused parameter ‘x’ [-Wunused-parameter]
  740 |    auto was_node_seen = [&](int x){return false;};
      |                             ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:741:27: warning: unused parameter ‘x’ [-Wunused-parameter]
  741 |    auto see_node = [](int x){ return true; };
      |                       ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:750:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  750 |    auto on_new_arc = [&](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::BasicCutter::grow_reachable_sets(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:422:4:   required from ‘void flow_cutter::BasicCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::SourceTargetPair) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:761:4:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1068:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:72:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:624:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  624 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:640:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  640 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:642:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  642 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::BasicCutter::grow_assimilated_sets(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:423:4:   required from ‘void flow_cutter::BasicCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::SourceTargetPair) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:761:4:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1068:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:72:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:659:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  659 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:661:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  661 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:666:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  666 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:668:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  668 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::BasicCutter::grow_reachable_sets(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:422:4:   required from ‘void flow_cutter::BasicCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::SourceTargetPair) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:761:4:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::BreadthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1072:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:72:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:624:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  624 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:640:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  640 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:642:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  642 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::BasicCutter::grow_assimilated_sets(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:423:4:   required from ‘void flow_cutter::BasicCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::SourceTargetPair) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:761:4:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::BreadthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1072:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:72:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:659:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  659 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:661:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  661 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:666:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  666 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:668:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  668 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::BasicCutter::grow_reachable_sets(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:422:4:   required from ‘void flow_cutter::BasicCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::SourceTargetPair) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:761:4:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1068:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:116:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:624:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  624 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:640:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  640 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:642:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  642 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::BasicCutter::grow_assimilated_sets(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:423:4:   required from ‘void flow_cutter::BasicCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::SourceTargetPair) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:761:4:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1068:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:116:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:659:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  659 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:661:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  661 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:666:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  666 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:668:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  668 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::BasicCutter::grow_reachable_sets(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:422:4:   required from ‘void flow_cutter::BasicCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::SourceTargetPair) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:761:4:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::BreadthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1072:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:116:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:624:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  624 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:640:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  640 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:642:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  642 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::BasicCutter::grow_assimilated_sets(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:423:4:   required from ‘void flow_cutter::BasicCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::SourceTargetPair) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:761:4:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::BreadthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::BreadthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1072:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:116:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:659:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  659 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:661:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  661 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:666:32: warning: unused parameter ‘x’ [-Wunused-parameter]
  666 |     auto on_new_node = [&](int x){return true;};
      |                            ~~~~^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:668:30: warning: unused parameter ‘xy’ [-Wunused-parameter]
  668 |     auto on_new_arc = [](int xy){};
      |                          ~~~~^~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::BasicNodeSet::set_extra_node(const Graph&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:267:4:   required from ‘void flow_cutter::AssimilatedNodeSet::set_extra_node(const Graph&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:417:4:   required from ‘void flow_cutter::BasicCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::SourceTargetPair) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:761:4:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1068:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:72:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:225:35: warning: unused parameter ‘graph’ [-Wunused-parameter]
  225 |   void set_extra_node(const Graph&graph, int x){
      |                       ~~~~~~~~~~~~^~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h: In instantiation of ‘void flow_cutter::BasicNodeSet::set_extra_node(const Graph&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:267:4:   required from ‘void flow_cutter::AssimilatedNodeSet::set_extra_node(const Graph&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:417:4:   required from ‘void flow_cutter::BasicCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::SourceTargetPair) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:761:4:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1068:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstRefIDIDFunc<ArrayIDIDFunc>, ConstIntIDFunc<1>, ConstRefIDFunc<RangeIDIDMultiFunc> >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:116:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:225:35: warning: unused parameter ‘graph’ [-Wunused-parameter]
In file included from /mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:8:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h: In instantiation of ‘flow_cutter::expanded_graph::OutArcIter<OriginalOutArc>::OutArcIter(int, bool, flow_cutter::expanded_graph::OutArcIter<OriginalOutArc>::OriginalOutArcIter) [with OriginalOutArc = ConstRefIDFunc<RangeIDIDMultiFunc>; flow_cutter::expanded_graph::OutArcIter<OriginalOutArc>::OriginalOutArcIter = CountIterator]’:
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:185:5:   required from ‘Range<flow_cutter::expanded_graph::OutArcIter<OriginalOutArc> > flow_cutter::expanded_graph::OutArc<OriginalOutArc>::operator()(int) const [with OriginalOutArc = ConstRefIDFunc<RangeIDIDMultiFunc>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:123:5:   required from ‘void flow_cutter::BreadthFirstSearch::operator()(const Graph&, flow_cutter::TemporaryData&, int, const WasNodeSeen&, const SeeNode&, const ShouldFollowArc&, const OnNewArc&) const [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; WasNodeSeen = flow_cutter::DistanceAwareCutter::compute_hop_distance_from(const Graph&, flow_cutter::TemporaryData&, int, ArrayIDFunc<int>&) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]::<lambda(int)>; SeeNode = flow_cutter::DistanceAwareCutter::compute_hop_distance_from(const Graph&, flow_cutter::TemporaryData&, int, ArrayIDFunc<int>&) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]::<lambda(int)>; ShouldFollowArc = flow_cutter::DistanceAwareCutter::compute_hop_distance_from(const Graph&, flow_cutter::TemporaryData&, int, ArrayIDFunc<int>&) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]::<lambda(int)>; OnNewArc = flow_cutter::DistanceAwareCutter::compute_hop_distance_from(const Graph&, flow_cutter::TemporaryData&, int, ArrayIDFunc<int>&) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]::<lambda(int)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:751:24:   required from ‘static void flow_cutter::DistanceAwareCutter::compute_hop_distance_from(const Graph&, flow_cutter::TemporaryData&, int, ArrayIDFunc<int>&) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:767:30:   required from ‘void flow_cutter::DistanceAwareCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, flow_cutter::DistanceType, flow_cutter::SourceTargetPair, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:855:5:   required from ‘void flow_cutter::MultiCutter::init(const Graph&, flow_cutter::TemporaryData&, const SearchAlgorithm&, const ScorePierceNode&, flow_cutter::DistanceType, const std::vector<flow_cutter::SourceTargetPair>&, int, bool) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >; SearchAlgorithm = flow_cutter::PseudoDepthFirstSearch; ScorePierceNode = flow_cutter::PierceNodeScore]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/flow_cutter.h:1068:5:   required from ‘void flow_cutter::SimpleCutter<Graph>::init(const std::vector<flow_cutter::SourceTargetPair>&, int) [with Graph = flow_cutter::Graph<flow_cutter::expanded_graph::Tail<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Head<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::BackArc<ConstRefIDIDFunc<ArrayIDIDFunc> >, flow_cutter::expanded_graph::Capacity, flow_cutter::expanded_graph::OutArc<ConstRefIDFunc<RangeIDIDMultiFunc> > >]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/separator.h:72:6:   required from ‘std::vector<int> flow_cutter::ComputeSeparator::operator()(const Tail&, const Head&) const [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:212:42:   required from ‘void compute_multilevel_partition(const Tail&, const Head&, const ComputeSeparator&, int, const OnNewMP&) [with Tail = ArrayIDIDFunc; Head = ArrayIDIDFunc; ComputeSeparator = flow_cutter::ComputeSeparator; OnNewMP = main(int, char**)::<lambda(const std::vector<Cell>&, bool)>]’
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/pace.cpp:470:128:   required from here
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:128:4: warning: declaration of ‘base_iter’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
  128 |    OutArcIter(int intra_arc, bool node_out_flag, OriginalOutArcIter base_iter):
      |    ^~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:160:23: note: shadowed declaration is here
  160 |    OriginalOutArcIter base_iter;
      |                       ^~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:128:4: warning: declaration of ‘node_out_flag’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
  128 |    OutArcIter(int intra_arc, bool node_out_flag, OriginalOutArcIter base_iter):
      |    ^~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:159:9: note: shadowed declaration is here
  159 |    bool node_out_flag;
      |         ^~~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:128:4: warning: declaration of ‘intra_arc’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
  128 |    OutArcIter(int intra_arc, bool node_out_flag, OriginalOutArcIter base_iter):
      |    ^~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:158:8: note: shadowed declaration is here
  158 |    int intra_arc;
      |        ^~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:129:78: warning: declaration of ‘base_iter’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
  129 |     intra_arc(intra_arc), node_out_flag(node_out_flag), base_iter(base_iter){}
      |                                                                              ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:160:23: note: shadowed declaration is here
  160 |    OriginalOutArcIter base_iter;
      |                       ^~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:129:78: warning: declaration of ‘node_out_flag’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
  129 |     intra_arc(intra_arc), node_out_flag(node_out_flag), base_iter(base_iter){}
      |                                                                              ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:159:9: note: shadowed declaration is here
  159 |    bool node_out_flag;
      |         ^~~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:129:78: warning: declaration of ‘intra_arc’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
  129 |     intra_arc(intra_arc), node_out_flag(node_out_flag), base_iter(base_iter){}
      |                                                                              ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:158:8: note: shadowed declaration is here
  158 |    int intra_arc;
      |        ^~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:129:78: warning: declaration of ‘base_iter’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
  129 |     intra_arc(intra_arc), node_out_flag(node_out_flag), base_iter(base_iter){}
      |                                                                              ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:160:23: note: shadowed declaration is here
  160 |    OriginalOutArcIter base_iter;
      |                       ^~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:129:78: warning: declaration of ‘node_out_flag’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
  129 |     intra_arc(intra_arc), node_out_flag(node_out_flag), base_iter(base_iter){}
      |                                                                              ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:159:9: note: shadowed declaration is here
  159 |    bool node_out_flag;
      |         ^~~~~~~~~~~~~
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:129:78: warning: declaration of ‘intra_arc’ shadows a member of ‘flow_cutter::expanded_graph::OutArcIter<ConstRefIDFunc<RangeIDIDMultiFunc> >’ [-Wshadow]
  129 |     intra_arc(intra_arc), node_out_flag(node_out_flag), base_iter(base_iter){}
      |                                                                              ^
/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/flowcutter/node_flow_cutter.h:158:8: note: shadowed declaration is here
  158 |    int intra_arc;
      |        ^~~~~~~~~
[ 71%] Linking CXX executable flow_cutter_pace17
/usr/bin/cmake -E cmake_link_script CMakeFiles/flow_cutter_pace17.dir/link.txt --verbose=1
/usr/bin/c++  -std=c++11 -O3 -Wall -Wextra -Wshadow -Wfatal-errors -Wno-sign-compare -Wno-literal-suffix  -static CMakeFiles/flow_cutter_pace17.dir/flowcutter/pace.cpp.o  -o flow_cutter_pace17  flowcutter/liblibflowcutter.a 
make[2]: warning:  Clock skew detected.  Your build may be incomplete.
make[2]: Leaving directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
[ 71%] Built target flow_cutter_pace17
make[1]: Leaving directory '/mnt/c/Users/damia/Desktop/Ricerca/Repos/aspmc_devel/aspmc/aspmc/external/sharpsat-td/build'
make: *** [Makefile:87: all] Error 2
cp: cannot stat 'build/sharpSAT': No such file or directory
[0;32m Done! [0m
