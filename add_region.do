clear
set more off
use C:\Users\tjung\Dropbox\Brempong\data\mergedV3.dta 
gen region="bob"
gen region_code=.
replace region="Eastern Africa" if un_country_code==108
replace region="Eastern Africa" if un_country_code==174
replace region="Eastern Africa" if un_country_code==262
replace region="Eastern Africa" if un_country_code==232
replace region="Eastern Africa" if un_country_code==231
replace region="Eastern Africa" if un_country_code==404
replace region="Eastern Africa" if un_country_code==450
replace region="Eastern Africa" if un_country_code==454
replace region="Eastern Africa" if un_country_code==480
replace region="Eastern Africa" if un_country_code==175
replace region="Eastern Africa" if un_country_code==508
replace region="Eastern Africa" if un_country_code==638
replace region="Eastern Africa" if un_country_code==646
replace region="Eastern Africa" if un_country_code==690
replace region="Eastern Africa" if un_country_code==706
replace region="Eastern Africa" if un_country_code==728
replace region="Eastern Africa" if un_country_code==800
replace region="Eastern Africa" if un_country_code==834
replace region="Eastern Africa" if un_country_code==894
replace region="Eastern Africa" if un_country_code==716
replace region="Middle Africa" if un_country_code==24
replace region="Middle Africa" if un_country_code==120
replace region="Middle Africa" if un_country_code==140
replace region="Middle Africa" if un_country_code==148
replace region="Middle Africa" if un_country_code==178
replace region="Middle Africa" if un_country_code==180
replace region="Middle Africa" if un_country_code==226
replace region="Middle Africa" if un_country_code==266
replace region="Middle Africa" if un_country_code==678
replace region="Northern Africa" if un_country_code==12
replace region="Northern Africa" if un_country_code==818
replace region="Northern Africa" if un_country_code==434
replace region="Northern Africa" if un_country_code==504
replace region="Northern Africa" if un_country_code==729
replace region="Northern Africa" if un_country_code==788
replace region="Northern Africa" if un_country_code==732
replace region="Southern Africa" if un_country_code==72
replace region="Southern Africa" if un_country_code==426
replace region="Southern Africa" if un_country_code==516
replace region="Southern Africa" if un_country_code==710
replace region="Southern Africa" if un_country_code==748
replace region="Western Africa" if un_country_code==204
replace region="Western Africa" if un_country_code==854
replace region="Western Africa" if un_country_code==132
replace region="Western Africa" if un_country_code==384
replace region="Western Africa" if un_country_code==270
replace region="Western Africa" if un_country_code==288
replace region="Western Africa" if un_country_code==324
replace region="Western Africa" if un_country_code==624
replace region="Western Africa" if un_country_code==430
replace region="Western Africa" if un_country_code==466
replace region="Western Africa" if un_country_code==478
replace region="Western Africa" if un_country_code==562
replace region="Western Africa" if un_country_code==566
replace region="Western Africa" if un_country_code==654
replace region="Western Africa" if un_country_code==686
replace region="Western Africa" if un_country_code==694
replace region="Western Africa" if un_country_code==768
replace region_code=14 if un_country_code==108
replace region_code=14 if un_country_code==174
replace region_code=14 if un_country_code==262
replace region_code=14 if un_country_code==232
replace region_code=14 if un_country_code==231
replace region_code=14 if un_country_code==404
replace region_code=14 if un_country_code==450
replace region_code=14 if un_country_code==454
replace region_code=14 if un_country_code==480
replace region_code=14 if un_country_code==175
replace region_code=14 if un_country_code==508
replace region_code=14 if un_country_code==638
replace region_code=14 if un_country_code==646
replace region_code=14 if un_country_code==690
replace region_code=14 if un_country_code==706
replace region_code=14 if un_country_code==728
replace region_code=14 if un_country_code==800
replace region_code=14 if un_country_code==834
replace region_code=14 if un_country_code==894
replace region_code=14 if un_country_code==716
replace region_code=17 if un_country_code==24
replace region_code=17 if un_country_code==120
replace region_code=17 if un_country_code==140
replace region_code=17 if un_country_code==148
replace region_code=17 if un_country_code==178
replace region_code=17 if un_country_code==180
replace region_code=17 if un_country_code==226
replace region_code=17 if un_country_code==266
replace region_code=17 if un_country_code==678
replace region_code=15 if un_country_code==12
replace region_code=15 if un_country_code==818
replace region_code=15 if un_country_code==434
replace region_code=15 if un_country_code==504
replace region_code=15 if un_country_code==729
replace region_code=15 if un_country_code==788
replace region_code=15 if un_country_code==732
replace region_code=18 if un_country_code==72
replace region_code=18 if un_country_code==426
replace region_code=18 if un_country_code==516
replace region_code=18 if un_country_code==710
replace region_code=18 if un_country_code==748
replace region_code=11 if un_country_code==204
replace region_code=11 if un_country_code==854
replace region_code=11 if un_country_code==132
replace region_code=11 if un_country_code==384
replace region_code=11 if un_country_code==270
replace region_code=11 if un_country_code==288
replace region_code=11 if un_country_code==324
replace region_code=11 if un_country_code==624
replace region_code=11 if un_country_code==430
replace region_code=11 if un_country_code==466
replace region_code=11 if un_country_code==478
replace region_code=11 if un_country_code==562
replace region_code=11 if un_country_code==566
replace region_code=11 if un_country_code==654
replace region_code=11 if un_country_code==686
replace region_code=11 if un_country_code==694
replace region_code=11 if un_country_code==768
ren un_country_code country_code
reorder yr country country_code region region_code
save "C:\Users\tjung\Dropbox\Brempong\data\mergedV3.dta", replace
clear
