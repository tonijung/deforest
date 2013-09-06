/*merge UN urban/rural population data*/
clear
use "C:\Users\tjung\Dropbox\Brempong\data\forest\UN_f03.dta", clear
merge m:m country yr using "C:\Users\tjung\Dropbox\Brempong\data\forest\UN_f04.dta"
drop _merge
merge m:m countrycode yr using "C:\Users\tjung\Dropbox\Brempong\data\forest\UN_f05.dta"
drop _merge
reorder yr country countrycode un_f03 un_f04 un_f05
sort yr country
ren countrycode un_cc
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
drop if bob==0
drop bob
sort country yr
ren countrycode fao_cc
save "C:\Users\tjung\Dropbox\Brempong\data\FAOSTAT-AfricaForest.dta"
clear



/*merge both datasets*/
clear
use "C:\Users\tjung\Dropbox\Brempong\data\UN_UrbanData.dta", clear
merge m:m yr country using "C:\Users\tjung\Dropbox\Brempong\data\FAOSTAT-AfricaForest.dta"
drop element element_code _merge un_cc fao_cc
reorder yr country un_f03 un_f04 un_f05 country_area forest_area land_area un_cc fao_cc
sort country yr
save "C:\Users\tjung\Dropbox\Brempong\data\merged.dta"
clear

/*add UN Country Codes*/
gen un_country_code=.
replace un_country_code=12 if country=="Algeria"
replace un_country_code=24 if country=="Angola"
replace un_country_code=204 if country=="Benin"
replace un_country_code=72 if country=="Botswana"
replace un_country_code=854 if country=="Burkina Faso"
replace un_country_code=108 if country=="Burundi"
replace un_country_code=120 if country=="Cameroon"
replace un_country_code=132 if country=="Cape Verde"
replace un_country_code=140 if country=="Central African Republic"
replace un_country_code=148 if country=="Chad"
replace un_country_code=174 if country=="Comoros"
replace un_country_code=178 if country=="Congo"
replace un_country_code=384 if country=="Cote d'Ivoire"
replace un_country_code=180 if country=="Democratic Republic of the Congo"
replace un_country_code=262 if country=="Djibouti"
replace un_country_code=818 if country=="Egypt"
replace un_country_code=226 if country=="Equatorial Guinea"
replace un_country_code=232 if country=="Eritrea"
replace un_country_code=231 if country=="Ethiopia"
replace un_country_code=266 if country=="Gabon"
replace un_country_code=270 if country=="Gambia"
replace un_country_code=288 if country=="Ghana"
replace un_country_code=324 if country=="Guinea"
replace un_country_code=624 if country=="Guinea-Bissau"
replace un_country_code=404 if country=="Kenya"
replace un_country_code=426 if country=="Lesotho"
replace un_country_code=430 if country=="Liberia"
replace un_country_code=434 if country=="Libya"
replace un_country_code=450 if country=="Madagascar"
replace un_country_code=454 if country=="Malawi"
replace un_country_code=466 if country=="Mali"
replace un_country_code=478 if country=="Mauritania"
replace un_country_code=480 if country=="Mauritius"
replace un_country_code=175 if country=="Mayotte"
replace un_country_code=504 if country=="Morocco"
replace un_country_code=508 if country=="Mozambique"
replace un_country_code=516 if country=="Namibia"
replace un_country_code=562 if country=="Niger"
replace un_country_code=566 if country=="Nigeria"
replace un_country_code=638 if country=="Réunion"
replace un_country_code=646 if country=="Rwanda"
replace un_country_code=654 if country=="Saint Helena"
replace un_country_code=678 if country=="Sao Tome and Principe"
replace un_country_code=686 if country=="Senegal"
replace un_country_code=690 if country=="Seychelles"
replace un_country_code=694 if country=="Sierra Leone"
replace un_country_code=706 if country=="Somalia"
replace un_country_code=710 if country=="South Africa"
replace un_country_code=728 if country=="South Sudan"
replace un_country_code=729 if country=="Sudan"
replace un_country_code=748 if country=="Swaziland"
replace un_country_code=768 if country=="Togo"
replace un_country_code=788 if country=="Tunisia"
replace un_country_code=800 if country=="Uganda"
replace un_country_code=834 if country=="United Republic of Tanzania"
replace un_country_code=732 if country=="Western Sahara"
replace un_country_code=894 if country=="Zambia"
replace un_country_code=716 if country=="Zimbabwe"
reorder yr country un_country_code
save "C:\Users\tjung\Dropbox\Brempong\data\merged.dta", replace
clear

/*delete commas from FAO data, convert to string*/
use "C:\Users\tjung\Dropbox\Brempong\data\merged.dta", clear
gen var=subinstr(country_area, ",", "", .)
drop country_area
destring var, gen(country_area)
drop var
gen var=subinstr(forest_area, ",", "", .)
drop forest_area
destring var, gen(forest_area)
drop var
gen var=subinstr(land_area, ",", "", .)
drop land_area
destring var, gen(land_area)
drop var
save "C:\Users\tjung\Dropbox\Brempong\data\merged.dta", replace
clear

/*clean FAOSTAT wood charcoal data*/
clear
set more off
use "C:\Users\tjung\Dropbox\Brempong\data\wood charcoal (FAOSTAT)\wc_production.dta", clear
merge m:m country year using "C:\Users\tjung\Dropbox\Brempong\data\wood charcoal (FAOSTAT)\wc_importval.dta"
drop _merge
merge m:m country year using "C:\Users\tjung\Dropbox\Brempong\data\wood charcoal (FAOSTAT)\wc_importquant.dta"
drop _merge
merge m:m country year using "C:\Users\tjung\Dropbox\Brempong\data\wood charcoal (FAOSTAT)\wc_exportval.dta"
drop _merge
merge m:m country year using "C:\Users\tjung\Dropbox\Brempong\data\wood charcoal (FAOSTAT)\wc_exportquant.dta"
drop _merge
save "C:\Users\tjung\Dropbox\Brempong\data\wood charcoal (FAOSTAT)\wood_char.dta"
ren year yr
ren production wc_prod
ren importvalue wc_importval
ren importquantity wc_importquant
ren exportvalue wc_exportval
ren exportquant wc_exportquant
save "C:\Users\tjung\Dropbox\Brempong\data\wood charcoal (FAOSTAT)\wood_char.dta", replace
gen bob=0
replace bob=1 if country=="Côte d'Ivoire"
replace country="Cote d'Ivoire" if bob==1
drop bob
gen bob=0
replace bob=1 if country=="Ethiopia PDR"
replace country="Ethiopia" if bob==1
drop bob
gen bob=0
replace bob=1 if country=="Sudan (former)"
replace country="Sudan" if bob==1
drop bob
save "C:\Users\tjung\Dropbox\Brempong\data\wood charcoal (FAOSTAT)\wood_char.dta", replace
/*add un country codes*/
clear

/*merge wood charoal data to original merged dataset*/
clear
use C:\Users\tjung\Dropbox\Brempong\data\merged.dta 
gen bob=0
replace bob=1 if country=="Côte d'Ivoire"
replace country="Cote d'Ivoire" if bob==1
drop bob
replace un_country_code=384 if country=="Cote d'Ivoire"
merge m:m yr un_country_code using "C:\Users\tjung\Dropbox\Brempong\data\wood charcoal (FAOSTAT)\wood_char.dta"
drop _merge
merge m:m yr un_country_code using "C:\Users\tjung\Dropbox\Brempong\data\wb_database.dta"
drop _merge
/*check for duplicates*/
by country yr: gen dup=cond(_N==1,0,_n)
sort dup
drop dup
reorder yr country un_country_code pop_urban pop_rural pop_total country_area forest_area land_area wb_elec_consum_capita wb_elec_prod wb_pop_urban_growth wb_pop_rural_growth wb_pop_growth wb_pop_total wb_pop_rural wb_pop_urban wb_pop_density
save "C:\Users\tjung\Dropbox\Brempong\data\mergedV3.dta", replace
clear

/*make into time series dataset & create deforest variable*/
clear
use "C:\Users\tjung\Dropbox\Brempong\data\mergedV3.dta", clear
sort un_country_code yr
tsset un_country_code yr
by un_country_code: g deforest=100*(forest_area[_n]-forest_area[_n-1])/forest_area[_n-1]
reorder yr country un_country_code pop_urban pop_rural pop_total country_area land_area forest_area deforest
save "C:\Users\tjung\Dropbox\Brempong\data\mergedV3.dta", replace
clear


/*start regressions*/
log using "C:\Users\tjung\Dropbox\Brempong\data\July-23.smcl"
xtreg....

log close
