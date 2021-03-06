︠c0a6f6c8-e77c-4177-8e02-3ab69c4e1b62︠
import csv

f = open('MnMs-fall13-03.csv', 'Ur')
mm_data = csv.reader(f, dialect='excel')
data =  [row for row in mm_data]
f.close()

data
︡b4e3ed4a-5af8-41f1-a8db-ad86b41b0980︡{"stdout":"[['red', 'total'], ['6', '17'], ['6', '16'], ['10', '18'], ['4', '17'], ['8', '17'], ['5', '16'], ['7', '19'], ['6', '17'], ['6', '16'], ['5', '17'], ['11', '16'], ['9', '17'], ['5', '17'], ['7', '18'], ['12', '18'], ['6', '16'], ['8', '17'], ['6', '16'], ['8', '17'], ['8', '19'], ['8', '17'], ['4', '16'], ['7', '17'], ['11', '19'], ['9', '16'], ['5', '15'], ['8', '17'], ['7', '17'], ['6', '17'], ['7', '17'], ['7', '17'], ['6', '15'], ['10', '15'], ['7', '17'], ['5', '17'], ['5', '16'], ['4', '17'], ['8', '16'], ['9', '17'], ['7', '18'], ['8', '16'], ['4', '17'], ['7', '17'], ['5', '17'], ['5', '16'], ['7', '17'], ['5', '17'], ['6', '10'], ['12', '18'], ['6', '17'], ['5', '17'], ['2', '18'], ['8', '19'], ['5', '17'], ['7', '18'], ['5', '18'], ['4', '16'], ['1', '15'], ['6', '17'], ['4', '16'], ['7', '17'], ['8', '16'], ['7', '18'], ['3', '16'], ['7', '18'], ['6', '19'], ['4', '17'], ['10', '19'], ['6', '17'], ['5', '17'], ['8', '18'], ['4', '17'], ['7', '17'], ['7', '18'], ['5', '17'], ['9', '16'], ['7', '16'], ['7', '15'], ['8', '17']]\n"}︡
︠940a8383-ae89-4feb-a1cb-c2bfa1211006︠
red_count = [int(entry[0]) for entry in data[1:]]

red_count
︡6e69f488-23f7-456f-9882-4b19c1f35756︡{"stdout":"[6, 6, 10, 4, 8, 5, 7, 6, 6, 5, 11, 9, 5, 7, 12, 6, 8, 6, 8, 8, 8, 4, 7, 11, 9, 5, 8, 7, 6, 7, 7, 6, 10, 7, 5, 5, 4, 8, 9, 7, 8, 4, 7, 5, 5, 7, 5, 6, 12, 6, 5, 2, 8, 5, 7, 5, 4, 1, 6, 4, 7, 8, 7, 3, 7, 6, 4, 10, 6, 5, 8, 4, 7, 7, 5, 9, 7, 7, 8]\n"}︡
︠d70d2b13-2308-481c-8af5-751743330c61︠
total_count = [int(entry[1]) for entry in data[1:]]

total_count
︡6d7657cd-2ba8-4f90-9f5e-8e1c044a2f15︡{"stdout":"[17, 16, 18, 17, 17, 16, 19, 17, 16, 17, 16, 17, 17, 18, 18, 16, 17, 16, 17, 19, 17, 16, 17, 19, 16, 15, 17, 17, 17, 17, 17, 15, 15, 17, 17, 16, 17, 16, 17, 18, 16, 17, 17, 17, 16, 17, 17, 10, 18, 17, 17, 18, 19, 17, 18, 18, 16, 15, 17, 16, 17, 16, 18, 16, 18, 19, 17, 19, 17, 17, 18, 17, 17, 18, 17, 16, 16, 15, 17]\n"}︡
︠25b90979-3d7d-4c5f-ab89-c1a5bb966eae︠
percents = [n(100*int(entry[0])/int(entry[1]), digits=4) for entry in data[1:]]
percents
︡32142009-9375-436f-923c-300150067855︡{"stdout":"[35.29, 37.50, 55.56, 23.53, 47.06, 31.25, 36.84, 35.29, 37.50, 29.41, 68.75, 52.94, 29.41, 38.89, 66.67, 37.50, 47.06, 37.50, 47.06, 42.11, 47.06, 25.00, 41.18, 57.89, 56.25, 33.33, 47.06, 41.18, 35.29, 41.18, 41.18, 40.00, 66.67, 41.18, 29.41, 31.25, 23.53, 50.00, 52.94, 38.89, 50.00, 23.53, 41.18, 29.41, 31.25, 41.18, 29.41, 60.00, 66.67, 35.29, 29.41, 11.11, 42.11, 29.41, 38.89, 27.78, 25.00, 6.667, 35.29, 25.00, 41.18, 50.00, 38.89, 18.75, 38.89, 31.58, 23.53, 52.63, 35.29, 29.41, 44.44, 23.53, 41.18, 38.89, 29.41, 56.25, 43.75, 46.67, 47.06]\n"}︡
︠3483571b-4511-4999-b95c-0a6c8ec3fcde︠
len(percents)
︡4254a9f5-9e2d-4171-88c3-cc16764b38b3︡{"stdout":"79\n"}︡
︠9035f2ec-e774-4c7c-a973-f478a8d037e9︠
import matplotlib.pyplot as plt
plt.hist(percents, bins=14, range=(5.,75.))
plt.savefig('percentages.png')
plt.close()
︡b60e424e-bfad-4f15-a88f-c894b13153ec︡{"stdout":"(array([ 1,  1,  1,  5, 13,  5, 17, 14,  7,  6,  4,  1,  4,  0]), array([  5.,  10.,  15.,  20.,  25.,  30.,  35.,  40.,  45.,  50.,  55.,\n        60.,  65.,  70.,  75.]), <a list of 14 Patch objects>)\n"}︡
︠c2b7444c-f188-4d7c-bd5a-a777410667e6︠
plt.hist(total_count, bins=5, range=(14.5,19.5))
plt.savefig('count.png')
plt.close()
︡0a4758e7-6c6e-4d12-ac9f-74f326ac52a4︡{"stdout":"(array([ 5, 18, 37, 12,  6]), array([ 14.5,  15.5,  16.5,  17.5,  18.5,  19.5]), <a list of 5 Patch objects>)\n"}︡
︠8c217ba2-9c67-42e3-933e-738e5ba3b433︠
plt.hist(red_count, bins=12, range=(0.5,12.5))
plt.savefig('red.png')
plt.close()
︡3a16bc71-2603-41c5-9201-4c1cac9c0715︡{"stdout":"(array([ 1,  1,  1,  8, 14, 13, 18, 12,  4,  3,  2,  2]), array([  0.5,   1.5,   2.5,   3.5,   4.5,   5.5,   6.5,   7.5,   8.5,\n         9.5,  10.5,  11.5,  12.5]), <a list of 12 Patch objects>)\n"}︡
︠c6ae8280-544c-43b2-8173-9d8dc13efff8︠
7/17.n()
︡fbb03fe9-4427-4486-ac1b-dfae9791c962︡{"stdout":"0.411764705882353\n"}︡
︠7fcfc5f8-c5e3-4212-aedd-7b1aaae1adc4︠









