old_f = open('old_file.txt')
new_f = open('new_file.txt', 'w')

new_line = ''
lines = old_f.readlines()
for line in lines:
    line = line.replace('One', 'Один') if line.startswith('One') else line
    line = line.replace('Two', 'Два') if line.startswith('Two') else line
    line = line.replace('Three', 'Три') if line.startswith('Three') else line
    line = line.replace('Four', 'Четыре') if line.startswith('Four') else line
    new_line = new_line + line + '\n'
new_f.write(new_line)

old_f.close()
new_f.close()
