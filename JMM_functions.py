import os


def write_list(outlist, outfile):
    '''
    Takes an input list and writes it to a text file with one item per line
    '''
    with open(outfile, 'w') as f:
        for item in outlist:
            f.write("%s\n" % item)
    return
    

def safe_make_dir(folder):
    '''
    Take a filepath and check to see if it exists and if not create a folder at that locations
    '''
    import os
    if not os.path.exists(folder):
        os.mkdir(folder)
        print('Folder created')
    else:
        print("Folder already exists")
    return
    
    
