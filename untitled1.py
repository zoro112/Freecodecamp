from typing import List
from collections import Counter
import math

def totalFruit( fruits: List[int]) -> int:
        l=0
        ll=[]
        for i in fruits:
            if i not in ll and ll and len(set(ll))==2:
                l=max(l,len(ll))
            ll.append(i)
            while len(set(ll))>2:
                ll.pop(0)
        l=max(l,len(ll))
        return l
fruits =[1,0,1,4,1,4,1,2,3]
print(totalFruit(fruits))