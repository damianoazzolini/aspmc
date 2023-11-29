import sys
import decimal
import argparse


def parseWeight(probability_to_convert : 'float | str', precision : int, verbose = True):
    if type(probability_to_convert) == float or type(probability_to_convert) == str:
        probability_to_convert = decimal.Decimal(probability_to_convert)

    assert type(probability_to_convert) == decimal.Decimal, "You must pass a float, string or a Decimal"

    assert precision > 1, "Precision must be at least 2"
    assert probability_to_convert >= decimal.Decimal(0.0), "Weight must not be below 0.0"
    assert probability_to_convert <= decimal.Decimal(1.0), "Weight must not be above 1.0"

    if verbose:
        print("Query for weight %s" % (probability_to_convert))

    weight = int(probability_to_convert*pow(2, precision))
    if int(weight) % 2 == 0:
        weight = int(weight) + 1
    
    # print(weight)
    # weight = weight.quantize(decimal.Decimal("1"))
    # for CEIL, but double the error, set:
    # weight = weight.quantize(decimal.Decimal("1"), rounding=decimal.ROUND_CEILING)
    prec = precision
    if verbose:
        print("weight %3.5f prec %3d" % (weight, prec))

    # while weight % 2 == 0 and prec > 0:
    #     weight = weight/2
    #     prec -= 1

    #     if True:
    #         print("weight %3.5f prec %3d" % (weight, prec))

    if verbose:
        print("for %f returning: weight %3.5f prec %3d" % (probability_to_convert, weight, prec))

    return weight, prec


def integer_to_clauses_new(weight: int, precision: int, index_p: int, verbose=True):
    bin_rep = str(bin(weight))[2:].rjust(precision,"0")
    # bin_rep = "0101"
    # print(weight)
    # print(bin_rep)

    # rules : 'list[str]' = []

    reversed_rep = bin_rep[::-1]
    bin_rep = reversed_rep[1:]
    if verbose:
        print(bin_rep)
    index_aux = 0
    index = len(bin_rep) + 1
    # print(index)
    for bit_val in bin_rep:
        # print("{a" + str(index) + "}.")
        # AND
        if index == (len(bin_rep) + 1):
            if int(bit_val) == 0:
                # r = f"a{index} and a{index + 1}"
                ra = f"aux1_{index_p}:- a{index}_{index_p}, a{index-1}_{index_p}."
                # print(r)
                print(ra)
                # rules.append(r)
            # OR
            else:
                # r = f"a{index} or a{index + 1}"
                ra = f"aux1_{index_p}:- a{index}_{index_p}.\naux1_{index_p}:- a{index - 1}_{index_p}."
                # print(r)
                print(ra)
                # print(r)
                # rules.append(r)
            index = index - 1
        else:
            if int(bit_val) == 0:
                # r = f"a{index} and a{index_aux}"
                ra = f"aux{index_aux + 1}_{index_p}:- a{index}_{index_p}, aux{index_aux}_{index_p}."
                print(ra)
                # rules.append(r)
            else:
                # r = f"a{index} or a{index_aux}"
                ra = f"aux{index_aux + 1}_{index_p}:- a{index }_{index_p}.\naux{index_aux + 1}_{index_p}:- aux{index_aux}_{index_p}."
                # print(r)
                print(ra)
                # print(r)
                # rules.append(r)
                
        index_aux += 1
        index -= 1          
    
    for i in range(1, len(bin_rep) + 2):
        print("{a" + str(i) + f"_{index_p}" + "}.")

    print(f"%:- not aux{index_aux}_{index_p}.")

parser = argparse.ArgumentParser()
parser.add_argument('-p', action='append', nargs='+')
parser.add_argument('--precision', type=int, default=5)
parser.add_argument('--verbose', action='store_true', default=False)


args = parser.parse_args()

   
probs : 'list[float]' = []
for p in args.p[0]:
    probs.append(float(p))

# print(args.p)
prec = 5
expected_as = 1

for index_p, prob in enumerate(probs):
    converted_weight, new_precision = parseWeight(prob, prec, args.verbose)
    if args.verbose:
        representedW = decimal.Decimal(converted_weight)/decimal.Decimal(2**new_precision)
        print(representedW)

    # print(converted_weight)
    # print(new_precision)

    # integer_to_clauses_new(converted_weight, new_precision)

    # integer_to_clauses_new(converted_weight, prec)
    expected_as *= converted_weight
    integer_to_clauses_new(converted_weight, prec, index_p, args.verbose)
    
print(f"%Expected {expected_as} AS")
