︠c760994e-ee84-4873-88d5-7e1eead36ac2︠
def switch_check(k=1000):
    doors = [1,2,3]
    win_count , loss_count, trial = 0, 0, 0
    while trial < k:
        winner = randint(1,3)
        pick = randint(1,3)
        for door in doors:
            if door != winner and door != pick:
                open = door
                break
        for door in doors:
            if door != pick and door != open:
                new = door
                break
        if new == winner:
            win_count = win_count + 1
        else:
            loss_count = loss_count + 1
        trial = trial + 1
    print "%d wins and %d losses" % (win_count, loss_count)

switch_check(10^6)
︡eef35e04-e646-4303-b22b-42f61f2714c7︡{"stdout":"666947 wins and 333053 losses"}︡{"stdout":"\n"}︡
︠492bf055-992b-4bc7-a976-80ef9de4f412︠

︠784cc39e-f893-4865-a255-28cf5882f297︠

︠2010e376-0c4e-49a6-91f0-dccb1f345965︠
def stay_check(k=1000):
    doors = [1,2,3]
    win_count , loss_count, trial = 0, 0, 0
    while trial < k:
        winner = randint(1,3)
        pick = randint(1,3)
        for door in doors:
            if door != winner and door != pick:
                open = door
                break
        if pick == winner:
            win_count = win_count + 1
        else:
            loss_count = loss_count + 1
        trial = trial + 1
    print "%d wins and %d losses" % (win_count, loss_count)

stay_check(10^6)
︡711b9a1d-51c2-4f62-a0d2-edd7e97496f9︡{"stdout":"333306 wins and 666694 losses"}︡{"stdout":"\n"}︡
︠261ebfb7-5842-4107-b3b8-a48986944900︠









