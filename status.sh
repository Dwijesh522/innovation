#----------------------------------------- Warning ---------------------------------------------------------------------
# It does not work if firefox not already open
#-------------------------------------------------------------------------------------------------------------------------

#-------------------------------------------------------------------------------------------------------------------------
# This scripts automatically checks if there are some updates made by professors on corresponding course website
# If so then it informs the user about the update by opening that website in firefox
# Concept used: Let us say we already have downloaded the html content of website x. Afterwards the prof put some update. 
# It is more likely that its html code will get change. We will compare old html code with new html code. 
# If they are same, it implies no update, if they are different, it implies update.
#-------------------------------------------------------------------------------------------------------------------------

#------------------------------------------- Assumption  -----------------------------------------------------------------
# One copy of each website exists in /home/dwijesh/Documents/webpages
# Script exists in /home/dwijesh
#-------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------- variables --------------------------------------------------------------
# path to old html files
old_os_html_file="/home/dwijesh/Documents/webpages/old_os.html"
old_ml_html_file="/home/dwijesh/Documents/webpages/old_ml.html"
old_par_html_file="/home/dwijesh/Documents/webpages/old_par.html"
# website address
os_website='https://iitd-plos.github.io/os/2020/'
par_website='http://www.cse.iitd.ernet.in/~rijurekha/teaching.html'
ml_website='http://www.cse.iitd.ac.in/~parags/teaching/col774/'
#------------------------------------------------------------------------------------------------------------------------

# ------------------------------------------------  OS  -----------------------------------------------------------------
is_os_updated=false
# Downloading html content of a website named new_os.html
# redirect output of cat command to diff command
# diff commmand output acts as input to wc command that counts the number of characters that are diffent in old and new html files
diffChars=$(diff $old_os_html_file <(wget $os_website -O new_os.html; cat new_os.html) | wc -c)
# compare it with 0, [[  ]] is used for the airthmetic operations
if [[ "$diffChars" != 0 ]]; then
	is_os_updated=true
fi
#-------------------------------------------------------------------------------------------------------------------------

# ------------------------------------------------  par  -----------------------------------------------------------------
is_par_updated=false
# Downloading html content of a website named new_os.html
# redirect output of cat command to diff command
# diff commmand output acts as input to wc command that counts the number of characters that are diffent in old and new html files
diffChars=$(diff $old_par_html_file <(wget $par_website -O new_par.html; cat new_par.html) | wc -c)
# compare it with 0, [[  ]] is used for the airthmetic operations
if [[ "$diffChars" != 0 ]]; then
	is_par_updated=true
fi
#-------------------------------------------------------------------------------------------------------------------------

# ------------------------------------------------  ml  -----------------------------------------------------------------
is_ml_updated=false
# Downloading html content of a website named new_os.html
# redirect output of cat command to diff command
# diff commmand output acts as input to wc command that counts the number of characters that are diffent in old and new html files
diffChars=$(diff $old_ml_html_file <(wget $ml_website -O new_ml.html; cat new_ml.html) | wc -c)
# compare it with 0, [[  ]] is used for the airthmetic operations
if [[ "$diffChars" != 0 ]]; then
	is_ml_updated=true
fi
#-------------------------------------------------------------------------------------------------------------------------



# --------------------------------------------- combined operations -------------------------------------------------------
# openup a common firefox
if [ "$is_os_updated" = true ] || [ "$is_par_updated" = true ] || [ "$is_ml_updated" = true ]; then
	firefox
	# wait for firefox to start
	sleep 2
fi
# if there are some updates then open that website on firefox
if [ "$is_os_updated" = true ]; then
	# move this file to its location to replace the older one with the new one
	mv new_os.html $old_os_html_file
	# open this website on firefox
	firefox $os_website
fi
# if there are some updates then open that website on firefox
if [ "$is_par_updated" = true ]; then
	# move this file to its location to replace the older one with the new one
	mv new_par.html $old_par_html_file
	# open this website on firefox
	firefox $par_website
fi
# if there are some updates then open that website on firefox
if [ "$is_ml_updated" = true ]; then
	# move this file to its location to replace the older one with the new one
	mv new_ml.html $old_ml_html_file
	# open this website on firefox
	firefox $ml_website
fi
# remove html file created by wget command that exists in the current directory. So make sure that no other important html file exists
rm *.html
rm tags
# -------------------------------------------------------------------------------------------------------------------------
