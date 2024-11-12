my_list = []

my_list.append(10)
my_list.append(20)
my_list.append(30)
my_list.append(40)
print("after append:", my_list)

my_list.insert(1, 15)
print("after insert:", my_list)

second_list = [50,60,70]
my_list.extend(second_list)
print("list after extension:", my_list)

del my_list[-1]
print(my_list)

my_list.sort()
print("sorted list:", my_list)

position = my_list.index(30)
print(position)