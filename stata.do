/*merge UN urban/rural population data*/
clear
use "C:\Users\tjung\Dropbox\Brempong\data\forest\UN_f03.dta", clear
merge m:m country yr using "C:\Users\tjung\Dropbox\Brempong\data\forest\UN_f04.dta"
drop _merge
merge m:m countrycode yr using "C:\Users\tjung\Dropbox\Brempong\data\forest\UN_f05.dta"
drop _merge
reorder yr country countrycode un_f03 un_f04 un_f05
sort yr country
save "C:\Users\tjung\Dropbox\Brempong\data\forest\UN_Forest.dta"
clear

/*keep only Africa regions in FAO forest data*/
clear
use "C:\Users\tjung\Dropbox\Brempong\data\FAOSTAT-Forest.dta", clear
gen bob=0
replace bob=1 if country=="Algeria"
replace bob=1 if country=="Angola"
replace bob=1 if country=="Benin"
replace bob=1 if country=="Botswana"
replace bob=1 if country=="Burkina Faso"
replace bob=1 if country=="Burundi"
replace bob=1 if country=="Cameroon"
replace bob=1 if country=="Cape Verde"
replace bob=1 if country=="Central African Republic"
replace bob=1 if country=="Chad"
replace bob=1 if country=="Comoros"
replace bob=1 if country=="Congo"
replace bob=1 if country=="Cote d'Ivoire"
replace bob=1 if countrycode==107
replace bob=1 if country=="Democratic Republic of the Congo"
replace bob=1 if country=="Djibouti"
replace bob=1 if country=="Egypt"
replace bob=1 if country=="Equatorial Guinea"
replace bob=1 if country=="Eritrea"
replace bob=1 if country=="Ethiopia"
replace bob=1 if country=="Gabon"
replace bob=1 if country=="Gambia"
replace bob=1 if country=="Ghana"
replace bob=1 if country=="Guinea"
replace bob=1 if country=="Guinea-Bissau"
replace bob=1 if country=="Kenya"
replace bob=1 if country=="Lesotho"
replace bob=1 if country=="Liberia"
replace bob=1 if country=="Libya"
replace bob=1 if country=="Madagascar"
replace bob=1 if country=="Malawi"
replace bob=1 if country=="Mali"
replace bob=1 if country=="Mauritania"
replace bob=1 if country=="Mauritius"
replace bob=1 if country=="Mayotte"
replace bob=1 if country=="Morocco"
replace bob=1 if country=="Mozambique"
replace bob=1 if country=="Namibia"
replace bob=1 if country=="Niger"
replace bob=1 if country=="Nigeria"
replace bob=1 if country=="Réunion"
replace bob=1 if country=="Rwanda"
replace bob=1 if country=="Saint Helena"
replace bob=1 if country=="Sao Tome and Principe"
replace bob=1 if country=="Senegal"
replace bob=1 if country=="Seychelles"
replace bob=1 if country=="Sierra Leone"
replace bob=1 if country=="Somalia"
replace bob=1 if country=="South Africa"
replace bob=1 if country=="South Sudan"
replace bob=1 if country=="Sudan"
replace bob=1 if country=="Swaziland"
replace bob=1 if country=="Togo"
replace bob=1 if country=="Tunisia"
replace bob=1 if country=="Uganda"
replace bob=1 if country=="United Republic of Tanzania"
replace bob=1 if country=="Western Sahara"
replace bob=1 if country=="Zambia"
replace bob=1 if country=="Zimbabwe"
sort bob
clear
