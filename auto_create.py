
class file_:
    def __init__(self, path, filter):
        self.path = path
        self.list = []
        self.filter = filter



    def read(self):
        self.list = []
        f = open(self.path)
        for line in f:
            line1 = line.strip('\n')
            self.list.append(line1)
        f.close

    def print(self):
        print(self.list)

    def print1X(self):
        y = 0
        x = 0
        while y < len(self.list):
            print(self.list[x])

            y += 1
            x += 1

    def filterFor(self):
        self.list = []
        f = open(self.path)
        for line in f:
            if self.filter in line:
                line1 = line.strip('\n')
                self.list.append(line1)
        f.close

    def filterOut(self):

        self.list = []
        f = open(self.path)
        for line in f:
            if self.filter in line:
                pass
            else:
                line1 = line.strip('\n')
                self.list.append(line1)
        f.close

    def full(self):
        self.list = []
        f = open(self.path)
        for line in f:
            self.list.append(line)
        f.close
import os




def print_():
    print(name)
    print(T_num)
    print(ingredents)
    print(ingredentsNum)
##########################################################
mainNum = 43
##########################################################
qq = input('Do you want to use the txt? (y/n) |       ')
if qq == 'y':
    t = True
    print('')
else:
    t = False
    print('')

if t == True:
    
    txtList = []



    #######################################################
    txt = file_('list copy.txt','#')
    #######################################################



    txt.read()
    txt.filterOut()



    #######################################################
    data = file_('data auto crafter.txt','#')
    #######################################################




    data.read()
    data.filterOut()

    dataList = []
    data_list = data.list
    for x in data_list:
        if x != '':
            dataList.append(x)

    txt_list = txt.list
    for x in txt_list:
        if x != '':
            txtList.append(x)

    y_1 = 0
    x_1 = 0
    while y_1 < len(txtList):



        data = file_('data auto crafter.txt','#')
        data.read()
        data.filterOut()

        dataList = []
        data_list = data.list
        for x in data_list:
            if x != '':
                dataList.append(x)

        current = txtList[x_1]
        current_1 = current.split(",")
        pNum = current_1[1]
        T_num = current_1[2]
        name = current_1[0]
        if T_num == '1':
            T_num = 1
        if T_num == '2':
            T_num = 2
        if T_num == '3':
            T_num = 3
        if T_num == '4':
            T_num = 4
        if T_num == '5':
            T_num = 5
        if T_num == '6':
            T_num = 6
        if T_num == '7':
            T_num = 7
        if T_num == '8':
            T_num = 8
        if T_num == '9':
            T_num = 9

        ingredents = []
        ingredentsNum = []

        y = 0
        x = 3
        while y < T_num:
            ing = current_1[x]
            x += 1
            ingNum = current_1[x]
            x += 1
            ingredents.append(ing)
            ingredentsNum.append(ingNum)

            ing = ''
            ingNum = ''

            y += 1
        x = 0
        y = 0

        dataList_ = []
        while y < len(dataList):

            current_ = dataList[x]
            current_1 = current_.split(' ')
            current_2 = current_1[0]
            current = current_2.strip(' ')

            dataList_.append(current)

            y += 1
            x += 1
        x = 0
        y = 0




        if name in dataList_:
            pass
            print(f'{name}  {pNum}  {T_num}  {ingredents}  {ingredentsNum}  is in data base\n')
        else:
            #print(f'{name}  {pNum}  {T_num}  {ingredents}  {ingredentsNum}  not in data list')
            
            current_ = dataList[-1]
            print(current_)
            current_1 = current_.split(' ')
            current_2 = current_1[-1]
            current_3 = current_2.strip(' ')
            current = int(current_3)

            #print(type(current))

            mainNum += 1

            print(f'{name}  {pNum}  {T_num}  {ingredents}  {ingredentsNum}  {mainNum} not in data list')

            f = open('data auto crafter.txt', 'a')
            f.write(f'\n{name} {mainNum}')
            f.close

            y = 0
            z = 0

            while y < 0:
                if mainNum > z:
                    pass
                else: 
                    y = 666
                    f = open(f'Auto Crafter 1.1 [DATA]/data/autocrafting/functions/function/files/main{z - 5}-{z - 1}.mcfunction', 'a')
                    f.write(f'\nexecute if score @s type matches {mainNum} as @s at @s run function autocrafting:function/recipes/{name}/main')
                    f.close
                y += 1
                z += 5
            y = 0
            z = 0









            d = f'Auto Crafter 1.1 [DATA]/data/autocrafting/functions/function/recipes/{name}' 
            if not os.path.exists(d):
                os.makedirs(d)




            f = open(f"Auto Crafter 1.1 [DATA]/data/autocrafting/functions/function/setcrafting.mcfunction", "a")
            f.write(f'\n execute if entity @e[type=item, limit=1, sort=nearest, tag=!checked, nbt={{Item:{{id:"minecraft:{name}"}}}}] as @s at @s run function autocrafting:function/recipes/{name}/create')
            f.close


            f = open(f"Auto Crafter 1.1 [DATA]/data/autocrafting/functions/function/recipes/{name}/crafting.mcfunction", "a")
            if T_num == 1:
                f.write(f'\nexecute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count')
                f.write('\n')
                f.write(f'\nexecute if score @s count_in1 matches {ingredentsNum[0]}.. unless block ~ ~ ~ dropper{{Items:[{{Slot:0b}}]}} run tag @s add {name}_crafting')
                f.write('\n')
                f.write(f'\nexecute as @s[tag={name}_crafting] run item replace block ~ ~ ~ container.0 with {name} {pNum}')
                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count double 1 run scoreboard players remove @s count_in1 {ingredentsNum[0]}')
                f.write('\n')
                f.write(f'\ntag @s remove {name}_crafting')
                f.write('\n')
                f.write(f'\nscoreboard players reset @s count_in1')
            if T_num == 2:
                f.write(f'\nexecute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count')
                f.write(f'\nexecute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count')

                f.write('\n')
                f.write(f'\nexecute if score @s count_in1 matches {ingredentsNum[0]}.. if score @s count_in2 matches {ingredentsNum[1]}.. unless block ~ ~ ~ dropper{{Items:[{{Slot:0b}}]}} run tag @s add {name}_crafting')
                f.write('\n')
                f.write(f'\nexecute as @s[tag={name}_crafting] run item replace block ~ ~ ~ container.0 with {name} {pNum}')

                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count double 1 run scoreboard players remove @s count_in1 {ingredentsNum[0]}')
                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count double 1 run scoreboard players remove @s count_in2 {ingredentsNum[1]}')

                f.write('\n')
                f.write(f'\ntag @s remove {name}_crafting')
                f.write('\n')
                f.write(f'\nscoreboard players reset @s count_in1')
                f.write(f'\nscoreboard players reset @s count_in2')
            if T_num == 3:
                
                f.write(f'\nexecute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count')
                f.write(f'\nexecute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count')
                f.write(f'\nexecute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count')
                
                f.write('\n')
                f.write(f'\nexecute if score @s count_in1 matches {ingredentsNum[0]}.. if score @s count_in2 matches {ingredentsNum[1]}.. if score @s count_in3 matches {ingredentsNum[2]}..  unless block ~ ~ ~ dropper{{Items:[{{Slot:0b}}]}} run tag @s add {name}_crafting')
                f.write('\n')
                f.write(f'\nexecute as @s[tag={name}_crafting] run item replace block ~ ~ ~ container.0 with {name} {pNum}')

                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count double 1 run scoreboard players remove @s count_in1 {ingredentsNum[0]}')
                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count double 1 run scoreboard players remove @s count_in2 {ingredentsNum[1]}')
                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count double 1 run scoreboard players remove @s count_in3 {ingredentsNum[2]}')

                f.write('\n')
                f.write(f'\ntag @s remove {name}_crafting')
                f.write('\n')
                f.write(f'\nscoreboard players reset @s count_in1')
                f.write(f'\nscoreboard players reset @s count_in2')
                f.write(f'\nscoreboard players reset @s count_in3')
            if T_num == 4:
                
                f.write(f'\nexecute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count')
                f.write(f'\nexecute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count')
                f.write(f'\nexecute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count')
                f.write(f'\nexecute store result score @s count_in4 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[3]}"}}].Count')

                f.write('\n')
                f.write(f'\nexecute if score @s count_in1 matches {ingredentsNum[0]}.. if score @s count_in2 matches {ingredentsNum[1]}.. if score @s count_in3 matches {ingredentsNum[2]}.. if score @s count_in4 matches {ingredentsNum[3]}.. unless block ~ ~ ~ dropper{{Items:[{{Slot:0b}}]}} run tag @s add {name}_crafting')
                f.write('\n')
                f.write(f'\nexecute as @s[tag={name}_crafting] run item replace block ~ ~ ~ container.0 with {name} {pNum}')

                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count double 1 run scoreboard players remove @s count_in1 {ingredentsNum[0]}')
                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count double 1 run scoreboard players remove @s count_in2 {ingredentsNum[1]}')
                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count double 1 run scoreboard players remove @s count_in3 {ingredentsNum[2]}')
                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[3]}"}}].Count double 1 run scoreboard players remove @s count_in4 {ingredentsNum[3]}1')

                f.write('\n')
                f.write(f'\ntag @s remove {name}_crafting')
                f.write('\n')
                f.write(f'\nscoreboard players reset @s count_in1')
                f.write(f'\nscoreboard players reset @s count_in2')
                f.write(f'\nscoreboard players reset @s count_in3')
                f.write(f'\nscoreboard players reset @s count_in4')
            if T_num == 5:
                f.write(f'\nexecute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count')
                f.write(f'\nexecute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count')
                f.write(f'\nexecute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count')
                f.write(f'\nexecute store result score @s count_in4 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[3]}"}}].Count')
                f.write(f'\nexecute store result score @s count_in5 run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[4]}"}}].Count')

                f.write('\n')
                f.write(f'\nexecute if score @s count_in1 matches {ingredentsNum[0]}.. if score @s count_in2 matches {ingredentsNum[1]}.. if score @s count_in3 matches {ingredentsNum[2]}.. if score @s count_in4 matches {ingredentsNum[3]}.. if score @s count_in5 matches {ingredentsNum[4]}.. unless block ~ ~ ~ dropper{{Items:[{{Slot:0b}}]}} run tag @s add {name}_crafting')
                f.write('\n')
                f.write(f'\nexecute as @s[tag={name}_crafting] run item replace block ~ ~ ~ container.0 with {name} {pNum}')

                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count double 1 run scoreboard players remove @s count_in1 {ingredentsNum[0]}')
                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count double 1 run scoreboard players remove @s count_in2 {ingredentsNum[1]}')
                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count double 1 run scoreboard players remove @s count_in3 {ingredentsNum[2]}')
                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[3]}"}}].Count double 1 run scoreboard players remove @s count_in4 {ingredentsNum[3]}')
                f.write(f'\nexecute as @s[tag={name}_crafting] run execute store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[4]}"}}].Count double 1 run scoreboard players remove @s count_in5 {ingredentsNum[4]}')

                f.write('\n')
                f.write(f'\ntag @s remove {name}_crafting')
                f.write('\n')
                f.write(f'\nscoreboard players reset @s count_in1')
                f.write(f'\nscoreboard players reset @s count_in2')
                f.write(f'\nscoreboard players reset @s count_in3')
                f.write(f'\nscoreboard players reset @s count_in4')
                f.write(f'\nscoreboard players reset @s count_in5')
            f.close

            f = open(f"Auto Crafter 1.1 [DATA]/data/autocrafting/functions/function/recipes/{name}/create.mcfunction", "a")
            f.write(f'\ntag @s remove unset')
            f.write(f'\ntag @s add {name}')
            f.write(f'\nscoreboard players set @s type {mainNum}')
            f.write(f'\nparticle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0.002 10 force')
            f.write(f'\nplaysound minecraft:block.anvil.use master @a[distance=..10]')
            f.write(f'\nitem replace entity @s weapon.mainhand with paper')
            f.write(f'\nexecute as @e[type=item, nbt={{Item:{{id:"minecraft:{name}"}}}}, limit=1, sort=nearest, distance=..1.5] run tag @s add checked')
            f.write(f'\nexecute as @e[type=item, nbt={{Item:{{id:"minecraft:{name}"}}}}, limit=1, sort=nearest, distance=..1.5] run data modify entity @s Motion set value [0.0d, 0.3d, 0.0d]')
            f.close


            f = open(f"Auto Crafter 1.1 [DATA]/data/autocrafting/functions/function/recipes/{name}/getcontent.mcfunction", "a")
            if T_num == 1:
                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[0]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nscoreboard players reset @s adder')
            if T_num == 2:
                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[0]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[1]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nscoreboard players reset @s adder')
            if T_num == 3:
                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[0]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[1]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[2]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count double 1 run scscoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')
            
                f.write(f'\nscoreboard players reset @s adder')
            if T_num == 4:
                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[0]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[1]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[2]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count double 1 run scscoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[3]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[3]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[3]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nscoreboard players reset @s adder')
            if T_num == 5:
                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[0]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[0]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[1]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[1]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[2]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[2]}"}}].Count double 1 run scscoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[3]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[3]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[3]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nexecute if block ~ ~ ~ dropper{{Items:[{{Slot:0b, id:"minecraft:{ingredents[4]}"}}]}} run tag @s add content')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s adder run data get block ~ ~ ~ Items[0].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result score @s count run data get entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[4]}"}}].Count')
                f.write(f'\nexecute if entity @s[tag=content] store result entity @s HandItems[0].tag.content[{{id:"minecraft:{ingredents[4]}"}}].Count double 1 run scoreboard players operation @s count += @s adder')
                f.write(f'\nexecute if entity @s[tag=content] run item replace block ~ ~ ~ container.0 with air')
                f.write(f'\ntag @s remove content')

                f.write(f'\nscoreboard players reset @s adder')
            f.close

            f = open(f"Auto Crafter 1.1 [DATA]/data/autocrafting/functions/function/recipes/{name}/main.mcfunction", "a")
            f.write(f'\nexecute as @s at @s run function autocrafting:function/recipes/{name}/getcontent')
            f.write(f'\nexecute as @s at @s run function autocrafting:function/recipes/{name}/crafting')
            f.close





        y = 0
        x = 0
        y_1 += 1
        x_1 += 1
    x_1 = 0
    y_1 = 0
if t == False:
    T_num = 0


    name = input('What is the minecraft name of the item |       ')
    T_num = input('How many ingredents|      ')

    if T_num == '1':
        T_num = 1
    if T_num == '2':
        T_num = 2
    if T_num == '3':
        T_num = 3
    if T_num == '4':
        T_num = 4
    if T_num == '5':
        T_num = 5
    if T_num == '6':
        T_num = 6
    if T_num == '7':
        T_num = 7
    if T_num == '8':
        T_num = 8
    if T_num == '9':
        T_num = 9





    ingredents = []
    ingredentsNum = []

    y = 0
    x = 0
    while y < T_num:
        ing = input('What is the minecraft name of the first ingredent |       ')
        ingNum = input('How many |       ')

        ingredents.append(ing)
        ingredentsNum.append(ingNum)

        ing = ''
        ingNum = ''

        y += 1
        x += 1
    y = 0
    x = 0

    q = input('Do you want to put in into the pack?|       (y/n)')
    if q == 'y':
        pass

    else:
        print_()

# i love cheese poofs