
require_relative './CheckReg'

exp = CheckReg.new
print 'Введите идентификатор > '
exp.regexp = gets.to_s
exp.proverka ? ( p 'Идентификатор корректный' ) \
             : ( p 'Идентификатор не корректный' )
