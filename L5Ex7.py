with open('L5Ex7.txt') as my_f:
    num = 0
    firm = 'qwe'
    all_profits = 0
    dict_firms = {}
    while firm != '':
        firm = my_f.readline()
        if firm == '':
            break
        firm = firm.split()
        profit = (int(firm[2]) - int(firm[3]))
        if profit > 0:
            all_profits += profit
            num += 1
            print(f'{firm[0]} получила прибыть {profit}')
        else:
            print(f'{firm[0]} получила убыток {profit}')
        dict_firm = {firm[0]: profit}
        dict_firms.update(dict_firm)
    average_profit = "%.2f" % (all_profits / num)
    print('Средняя прибыль: ', average_profit)
    dict_ave_prof = {'average_profit': average_profit}
    final_list = [dict_firms, dict_ave_prof]
    print(final_list)

import json
with open("L5Ex7.json", "w") as json_write_f:
    json.dump(final_list, json_write_f)
