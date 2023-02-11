id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", 
          "Christy Hickman", "Johnson Harper", 
          "Candace Miller", "Carlson Landy", 
          "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", 
               "Clerical", "Developer", "Programmer", 
               "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

print (employee)

employee %>%separate(name,into = c('first_name' , 'last_name'), sep=' ')%>%
  mutate(salary = id*20.3)

employee %>%
  separate(name,into = c('first_name' , 'last_name'), sep=' ')%>%
  unite(customer_valid_id ,c(first_name,id,last_name),sep = '_')
