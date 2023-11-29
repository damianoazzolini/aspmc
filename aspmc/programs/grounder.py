def ground(control, program_str = None, program_files = []):
    if program_str != None:
        # program_str += "\n#show internal_algebraic/6.\n#show qr/0.nqr:- not qr.\n#show qr/0."
        # print(program_str)
        control.add("base", [], program_str)
    for path in program_files:
        with open(path) as file_:
            control.add("base", [], file_.read())
    control.ground([('base', [])])
    return control


