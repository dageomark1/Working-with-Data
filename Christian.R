library(readr)
alli <- read_csv('ALLI.csv')


#for (i in 1:length(alli)) {
  
  #alli[,i] <- as.factor((alli[,i]))
#}

table(alli$VILLAGE)
library(questionr)
freq(alli$VILLAGE)
#prop.table(table(alli$VILLAGE))

# descriptive statistic
library(gtsummary)
stat <- tbl_summary(data = alli,by = VILLAGE ) |>
  add_overall(last = TRUE) %>%
  add_p(test = all_categorical() ~ "fisher.test")

stat
write.table(x = stat,file = 'stat.csv')

library(GGally)
alli <- alli %>%
mutate(AGE=as.factor(AGE)) %>%
mutate(VILLAGE=as.factor(VILLAGE)) %>%
mutate(SEXE=as.factor(SEXE)) %>%
mutate(CHEF_MENAGE=as.factor(CHEF_MENAGE)) %>%
mutate(NIVEAU_INSTRUCTION=as.factor(NIVEAU_INSTRUCTION))

#tab <- ggbivariate(alli, outcome= 'VILLAGE',explanatory = c('AGE'+'SEXE'+
                      #'CHEF_MENAGE'+'NIVEAU_INSTRUCTION'))
#chisq.test(tab)

