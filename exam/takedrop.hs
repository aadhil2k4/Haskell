fili xs = [filter isdigit xs]

fil2 xss= [fili xs|xs<-xss]

main =do
    print(fil2 ['Helllo12','b34','dd00'])