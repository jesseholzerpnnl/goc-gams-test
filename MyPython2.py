'''
MyPython2.py

Entry to Python/GAMS benchmark solver, untimed portion.
Syntax:

$ python MyPython1.py CON INL RAW ROP TIMELIMIT SCOREMETHOD NETWORKMODEL

nothing yet
currently all processing is done in MyPython1.py
This includes writing solution1.txt and solution2.txt
Later we should set it up so that MyPython1.py includes only the processing
that is necessary to write solution1.txt
so that the time to generate the contingency solutions
is not counted toward the run time.
'''

# built in imports
import sys
    
def main():
    
    args = sys.argv

    raw_name = args[1]
    rop_name = args[2]
    inl_name = args[3]
    con_name = args[4]
    time_limit = args[5]
    score_method = args[6]
    network_model = args[7]

    sol1_name = 'solution1.txt'
    sol2_name = 'solution2.txt'

    print('\nPython/GAMS benchmark solver')
    print('MyPython2.py')

if __name__ == '__main__':
    main()
