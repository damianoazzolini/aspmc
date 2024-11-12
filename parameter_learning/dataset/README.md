# How to Generate Interpretations
Run with:
```
python3 generate_interpretations.py --help

```
Example:
```
python3 generate_interpretations.py -p smokers -s 4 -n 6 -l 3
```
where `-s` specifies the size of the dataset, `-n` the number of interpretations to generate, and `-l` the length of the interpretation (number of literals).

Examples:
```
python3 generate_interpretations.py -p smokers -s 4 -n 6 -l 2
python3 generate_interpretations.py -p paths -s 10 -n 6 -l 5
python3 generate_interpretations.py -p shop -s 10 -n 6 -l 5
python3 generate_interpretations.py -p coloring -s 4 -n 6
```