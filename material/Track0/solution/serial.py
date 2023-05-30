from time import perf_counter, sleep


def read_list():
    l = []
    with open("list.dat","r") as infile:
        l = list(map(int,infile.read().split()))
    return l

def count3s(l, count):
    for i in range(len(l)):
        if l[i] == 3:
            sleep(1.e-3)
            count[0] += 1
    

if __name__ == '__main__':
    l = read_list()
    
    count = [0]
    t_start = perf_counter()
    count3s(l, count)
    t_stop = perf_counter()

    print("Time: {0} s.".format(t_stop-t_start))
    print("Number of 3s counted: {0}".format(count[0]))
    
