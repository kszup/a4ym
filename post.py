### Found at http://bouncybouncy.net/blog/2011/04/17/playing-with-blogofile/ ###

#!/usr/bin/env python
import datetime
import os
import re
#from the config file
date_format= "%Y/%m/%d %H:%M:%S"

fmt="""---
categories: %(cats)s
date: %(date)s
title: %(title)s
---"""

def get_existing():
    numbered = [x for x in os.listdir("_posts") if x.split("_")[0].isdigit()]
    numbers = [int(x.split("_")[0]) for x in numbered]
    numbers.sort()
    return numbers


def main():
    last = get_existing()[-1]
    next = "%03d" % (last + 1)

    date = datetime.datetime.now().strftime(date_format)
    title = raw_input("Title: ")
    cats = raw_input("cats: ")
    slug = re.sub("[ ?]", " ", title).lower() #from blogofile
    fn = "_posts/%s_%s.markdown" % (next, slug)
    
    f = open(fn, 'w')
    f.write(fmt % locals())
    f.close()
    os.system("vi " + fn)
    os.system("git add " + fn)

if __name__ == "__main__":
    main()
