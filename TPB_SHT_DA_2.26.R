install.packages("dplyr")
library(dplyr)

summary(bbx)
###make baby tables for group averages across TPB constructs
group_avgs_ssb_a_t1_t2 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, b5_tpbq_ssb_a, w1_tpbq_ssb_a) %>%
  mutate(avgs_a_t1_t2 = mean(b5_tpbq_ssb_a - w1_tpbq_ssb_a, na.rm = T))

group_avgs_ssb_sn_t1_t2 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, b5_tpbq_ssb_sn, w1_tpbq_ssb_sn) %>%
  mutate(avgs_sn_t1_t2 = mean(b5_tpbq_ssb_sn - w1_tpbq_ssb_sn, na.rm = T))

group_avgs_ssb_pbc_t1_t2 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, b5_tpbq_ssb_pbc, w1_tpbq_ssb_pbc) %>%
  mutate(avgs_pbc_t1_t2 = mean(b5_tpbq_ssb_pbc - w1_tpbq_ssb_pbc, na.rm = T))

group_avgs_ssb_bi_t1_t2 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, b5_tpbq_ssb_bi, w1_tpbq_ssb_bi) %>%
  mutate(avgs_bi_t1_t2 = mean(b5_tpbq_ssb_bi - w1_tpbq_ssb_bi, na.rm = T))

group_avgs_ssb_a_t2_t3 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, b5_tpbq_ssb_a, w2_tpbq_ssb_a) %>%
  mutate(avgs_a_t2_t3 = mean(w2_tpbq_ssb_a - b5_tpbq_ssb_a, na.rm = T))

group_avgs_ssb_sn_t2_t3 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, b5_tpbq_ssb_sn, w2_tpbq_ssb_sn) %>%
  mutate(avgs_sn_t2_t3 = mean(w2_tpbq_ssb_sn - b5_tpbq_ssb_sn, na.rm = T))

group_avgs_ssb_pbc_t2_t3 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, b5_tpbq_ssb_pbc, w2_tpbq_ssb_pbc) %>%
  mutate(avgs_pbc_t2_t3 = mean(w2_tpbq_ssb_pbc - b5_tpbq_ssb_pbc, na.rm = T))

group_avgs_ssb_bi_t2_t3 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, b5_tpbq_ssb_bi, w2_tpbq_ssb_bi) %>%
  mutate(avgs_bi_t2_t3 = mean(w2_tpbq_ssb_bi - b5_tpbq_ssb_bi, na.rm = T))

group_avgs_ssb_a_t1_t3 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, w1_tpbq_ssb_a, w2_tpbq_ssb_a) %>%
  mutate(avgs_a_t1_t3 = mean(w2_tpbq_ssb_a - w1_tpbq_ssb_a, na.rm = T))

group_avgs_ssb_sn_t1_t3 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, w1_tpbq_ssb_sn, w2_tpbq_ssb_sn) %>%
  mutate(avgs_sn_t1_t3 = mean(w2_tpbq_ssb_sn - w1_tpbq_ssb_sn, na.rm = T))

group_avgs_ssb_pbc_t1_t3 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, w1_tpbq_ssb_pbc, w2_tpbq_ssb_pbc) %>%
  mutate(avgs_pbc_t1_t3 = mean(w2_tpbq_ssb_pbc - w1_tpbq_ssb_pbc, na.rm = T))

group_avgs_ssb_bi_t1_t3 <- bbx2 %>% group_by(Sweet) %>% 
  select(`Participant ID (bbx_###)` ,Sweet, w1_tpbq_ssb_bi, w2_tpbq_ssb_bi) %>%
  mutate(avgs_bi_t1_t3 = mean(w2_tpbq_ssb_bi - w1_tpbq_ssb_bi, na.rm = T))

### Getting rid of NA observations

group_avgs_ssb_a_t1_t2 <- subset(group_avgs_ssb_a_t1_t2, !is.na(group_avgs_ssb_a_t1_t2$`Participant ID (bbx_###)`))
group_avgs_ssb_sn_t1_t2 <- subset(group_avgs_ssb_sn_t1_t2, !is.na(group_avgs_ssb_sn_t1_t2$`Participant ID (bbx_###)`))
group_avgs_ssb_pbc_t1_t2 <- subset(group_avgs_ssb_pbc_t1_t2, !is.na(group_avgs_ssb_pbc_t1_t2$`Participant ID (bbx_###)`))
group_avgs_ssb_bi_t1_t2 <- subset(group_avgs_ssb_bi_t1_t2, !is.na(group_avgs_ssb_bi_t1_t2$`Participant ID (bbx_###)`))

group_avgs_ssb_a_t1_t3 <- subset(group_avgs_ssb_a_t1_t3, !is.na(group_avgs_ssb_a_t1_t3$`Participant ID (bbx_###)`))
group_avgs_ssb_sn_t1_t3 <- subset(group_avgs_ssb_sn_t1_t3, !is.na(group_avgs_ssb_sn_t1_t3$`Participant ID (bbx_###)`))
group_avgs_ssb_pbc_t1_t3 <- subset(group_avgs_ssb_pbc_t1_t3, !is.na(group_avgs_ssb_pbc_t1_t3$`Participant ID (bbx_###)`))
group_avgs_ssb_bi_t1_t3 <- subset(group_avgs_ssb_bi_t1_t3, !is.na(group_avgs_ssb_bi_t1_t3$`Participant ID (bbx_###)`))

group_avgs_ssb_a_t2_t3 <- subset(group_avgs_ssb_a_t2_t3, !is.na(group_avgs_ssb_a_t2_t3$`Participant ID (bbx_###)`))
group_avgs_ssb_sn_t2_t3 <- subset(group_avgs_ssb_sn_t2_t3, !is.na(group_avgs_ssb_sn_t2_t3$`Participant ID (bbx_###)`))
group_avgs_ssb_pbc_t2_t3 <- subset(group_avgs_ssb_pbc_t2_t3, !is.na(group_avgs_ssb_pbc_t2_t3$`Participant ID (bbx_###)`))
group_avgs_ssb_bi_t2_t3 <- subset(group_avgs_ssb_bi_t2_t3, !is.na(group_avgs_ssb_bi_t2_t3$`Participant ID (bbx_###)`))

### Once you merge the datasets, drop duplicate variables

group_avgs <- merge(group_avgs_ssb_a_t1_t2[,c(1,2,5)], group_avgs_ssb_a_t2_t3[,c(1,5)], by = 'Participant ID (bbx_###)')

group_avgs <- merge(group_avgs, group_avgs_ssb_a_t1_t3[,c(1,5)], by = 'Participant ID (bbx_###)')

group_avgs <- merge(group_avgs, group_avgs_ssb_sn_t1_t2[,c(1,5)], by = 'Participant ID (bbx_###)')

group_avgs <- merge(group_avgs, group_avgs_ssb_sn_t2_t3[,c(1,5)], by = 'Participant ID (bbx_###)')

group_avgs <- merge(group_avgs, group_avgs_ssb_sn_t1_t3[,c(1,5)], by = 'Participant ID (bbx_###)')

group_avgs <- merge(group_avgs, group_avgs_ssb_pbc_t1_t2[,c(1,5)], by = 'Participant ID (bbx_###)')

group_avgs <- merge(group_avgs, group_avgs_ssb_pbc_t2_t3[,c(1,5)], by = 'Participant ID (bbx_###)')

group_avgs <- merge(group_avgs, group_avgs_ssb_pbc_t1_t3[,c(1,5)], by = 'Participant ID (bbx_###)')

group_avgs <- merge(group_avgs, group_avgs_ssb_bi_t1_t2[,c(1,5)], by = 'Participant ID (bbx_###)')

group_avgs <- merge(group_avgs, group_avgs_ssb_bi_t2_t3[,c(1,5)], by = 'Participant ID (bbx_###)')

group_avgs <- merge(group_avgs, group_avgs_ssb_bi_t1_t3[,c(1,5)], by = 'Participant ID (bbx_###)')

bbx$diff_fh <- bbx$b5_tpbq_ssb_a - bbx$w1_tpbq_ssb_a
#total
hist(bbx$w1_BMI_status)
table(bbx$Sweet)
table(bbx$w1_BMI_status)
table(bbx$race)
table(bbx$ethnicity)
table(bbx$gender)
summary(bbx$adlib_alt, na.rm=TRUE)
summary(bbx$adlib_assigned, na.rm=TRUE)
summary(bbx$age)
summary(bbx$w1_BMI)

#create SSB and USB subsets
ssb<-filter(bbx, Sweet==1)
View(ssb)
usb<-filter(bbx, Sweet==0)
View(usb)

#ssb
hist(ssb$w1_BMI_status)
table(ssb$Sweet)
table(ssb$w1_BMI_status)
table(ssb$race)
table(ssb$ethnicity)
table(ssb$gender)
summary(ssb$adlib_alt, na.rm=TRUE)
summary(ssb$adlib_assigned, na.rm=TRUE)
summary(ssb$age)
summary(ssb$w1_BMI)

#usb
hist(usb$w1_BMI_status)
table(usb$Sweet)
table(usb$w1_BMI_status)
table(usb$race)
table(usb$ethnicity)
table(usb$gender)
summary(usb$adlib_alt, na.rm=TRUE)
summary(usb$adlib_assigned, na.rm=TRUE)
summary(usb$age)
summary(usb$w1_BMI)
rowMeans((bbx$w1_tpbq_ssb_a, bbx$b5_tpbq_ssb_a, bbx$w2_tpbq_ssb_a))
