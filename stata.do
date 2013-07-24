use "C:\Users\tjung\Dropbox\Brempong\data\forest\UN_f03.dta", clear
merge m:m country yr using "C:\Users\tjung\Dropbox\Brempong\data\forest\UN_f04.dta"
drop _merge
merge m:m countrycode yr using "C:\Users\tjung\Dropbox\Brempong\data\forest\UN_f05.dta"
drop _merge
reorder yr country countrycode un_f03 un_f04 un_f05
sort yr country
save "C:\Users\tjung\Dropbox\Brempong\data\forest\UN_Forest.dta"
