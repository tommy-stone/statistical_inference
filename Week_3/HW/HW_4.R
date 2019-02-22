library(dplyr)
data("mtcars")
#setup a t test to test that the 4 cyl and 6 cyl mpg have the same mpg
#H_0 = mpg
mtcars_4cyl <- mtcars %>% filter(mtcars$cyl == 4) 
mtcars_6cyl <- mtcars %>% filter(mtcars$cyl == 6) 
mpg_4cyl <- mtcars_4cyl$mpg
mpg_6cyl <- mtcars_6cyl$mpg
t.test(x=mpg_4cyl,y=mpg_6cyl,var.equal = FALSE)
#We reject the null hypothesis that mean(mpg_4cyl) == mean(mpg_6cyl)