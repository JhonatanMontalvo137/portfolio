ymd("2023-01-20")
mdy("January 20th, 2023")
dmy("20-Jan-2021")
ymd(20210120)
ymd_hms("2021-01-20 20:11:59")
mdy_hm("01/20/2021 08:01")
as_date(now())
#Marco de datos
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
#extraccion de un subconjunto de marco de datos
z = data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
z[2,1]
#crear un archivo
file.create("new_text_file.txt") 
file.create("new_word_file.docx") 
file.create("new_csv_file.csv") 

#texto publiictario(copy)
file.copy("new_text_file.txt", "destination_folder")
#creacion de matrices con extraccion de datos

w = matrix(c(3:8), nrow = 2)
w[2,1]
w[2,2]
w[1,3]
w
#nuestros primeros calculos

quarter_1_sales = 35657.98
quarter_2_sales = 43810.55
midyear_sales = quarter_1_sales + quarter_2_sales
yearend_sales = midyear_sales *2
yearend_sales

