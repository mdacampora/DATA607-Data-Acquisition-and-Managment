library('stringr')
library('tidyr')
raw.data <-"555-1239Moe Szyslak(636) 555-0113Burns, C. Montgomery555-6542Rev. Timothy Lovejoy555 8904Ned Flanders636-555-3226Simpson,Homer5553642Dr. Julius Hibbert"

name <- unlist(str_extract_all(raw.data, "[[:alpha:]., ]{2,}"))
name

phone <- unlist(str_extract_all(raw.data, "\\(?(\\d{3})?\\)?(-| )?\\d{3}(-| )?\\d{4}"))
# removes the prefix from anyone who has one
pop.prefix <- str_trim(sub("[[:alpha:]]{1,}\\.", "" ,name))
pop.prefix

# To switch the names 
fix.homer <-  sub('^(.*),Homer', 'Homer \\1', pop.prefix) 

fix.burns <- sub('^(.*),  Montgomery', 'Montgomery \\1', fix.homer)

clean.names <- fix.burns

df2 <- data.frame(Name=clean.names, Phone=phone)
df2
# Splits the name column to first, last name 
extract(df2, Name, into=c('FirstName', 'LastName'), '(.*)\\s+([^ ]+)$')
###(b) Construct a logical vector indicating whether a character has a title (i.e., Rev. and Dr.).


prefix <- str_detect(name,"[A-Za-z]{2,}\\.")
prefix
#Applying same regex as before but including the "C." in Montgomery Burns
fix1 <-  sub('^(.*),Homer', 'Homer \\1', name) 

fix2 <- sub('^(.*), C. Montgomery', 'C. Montgomery \\1', fix1)

data.frame(Name=fix2, Title=prefix)
###(c) Construct a logical vector indicating whether a character has a second name.

# I changed the params to only pop "Rev." and "Dr."
pop.prefix2 <- str_trim(sub("[[:alpha:]]{2,}\\.", "" ,fix2))

find_middle <- str_detect(pop.prefix2,"\\s[A-Za-z]{2,}\\ ")

df <- data.frame(Name=pop.prefix2, Middle_Name=find_middle)

df
Describe the types of strings that conform to the following regular expressions and construst an example that is matched by the regular expression. 
a. [0-9]+$ - 
test <- c("666-355-3332","HelloW0rld", "Try it on me 2000")
str_extract_all(test, "[0-9]+$")  

b. \b[a-z]{1,4}\b 
any set of lowercase letters of length 1-4 between two spaces

c. .*?.txt$ 
any char of any length 0 or 1 rep ".txt" end of string  
  
d. \d{2}/\d{2}/\d{4} 
date mm/dd/yyyy

e. <(.+?)>.+?</\1> 
  
  
  The following code hides a secret message. Crack it with R and regular expressions. Hint: Some of the characters are more revealing than others! The code snippet is also available in the materials at www.r-datacollection.com.

jumble <- "clcopCow1zmstc0d87wnkig7OvdicpNuggvhryn92Gjuwczi8hqrfpRxs5Aj5dwpn0Tanwo Uwisdij7Lj8kpf03AT5Idr3coc0bt7yczjatOaootj55t3Nj3ne6c4Sfek.r1w1YwwojigO d6vrfUrbz2.2bkAnbhzgv4R9i05zEcrop.wAgnb.SqoU65fPa1otfb7wEm24k6t3sR9zqe5 fy89n6Nd5t9kc4fE905gmc4Rgxo5nhDk! gr"

caps <- unlist(str_extract_all(jumble,"[[:upper:]]"))
caps
str_c(caps, collapse = "" )
