# -------------------------------------------------------------   sem 5  ----------------------------------------------------------
COL226="col226"
COL216="col216"
ELL205="ell205"
CVL="cvl"
HUL242="hul242"
COP="cop"
BT="BT"
MARKS="sem4_feedback.txt"
DOWNLOADS="downloads"
SUM_PROJ_2="sum_proj_2"
CC_LEARNING="cc_learning"
OPENMP="openMP"
CV_ASSN1="cv_assn1"
CV_ASSN2="cv_assn2"
CV_ASSN3="cv_assn3"
CV_ASSN4="cv_assn4"
NW_ASSN1="nw_assn1"
NW_ASSN2="nw_assn2"
NW_ASSN3="nw_assn3"
NW_ASSN4="nw_assn4"
AI_ASSN1="ai_assn1"
AI_ASSN2="ai_assn2"
AI_ASSN3="ai_assn3"
AI_ASSN4="ai_assn4"
AI_ASSN5="ai_assn5"
SHARE_IT="share_it"
THIEF_RELIEF="thief_relief"
#------------------------------------------------------------   sem 6   -------------------------------------------------------------
OS="os_code"
PAR_ASSN1="par_assn1"
PAR_ASSN2="par_assn2"
PAR_ASSN3="par_assn3"
PAR_ASSN4="par_assn4"
PAR_ASSN5="par_assn5"
OS_ASSN1="os_assn1"
echo Which directory you want to work in: 

read input

# -------------------------------------------------------------   sem 5  ----------------------------------------------------------
if [[ $input == $COL226 ]]; then
	cd Documents/sem4/col226/
elif [[ $input == $COL216 ]]; then
	cd Documents/sem4/col216/
elif [[ $input == $ELL205 ]]; then
	cd Documents/sem4/ell205/
elif [[ $input == $CVL ]]; then
	cd Documents/sem4/cvl/
elif [[ $input == $HUL242 ]]; then
	cd Documents/sem4/hul242/
elif [[ $input == $COP ]]; then
	cd Documents/sem4/cop/
elif [[ $input == $BT ]]; then
	cd Documents/sem4/BT/
elif [[ $input == $MARKS ]]; then
	cd Documents/sem4/
	vim sem4_feedback.txt
	cd
elif [[ $input == $DOWNLOADS ]]; then
	cd Documents/Downloads/
elif [[ $input == $SUM_PROJ_2 ]]; then
	cd Documents/sum_proj_2/
elif [[ $input == "current" ]]; then
	cd
elif [[ $input == $CC_LEARNING ]]; then
	cd coding/competitiveProg/cc_learning/
elif [[ $input == $OPENMP ]]; then
	cd Documents/sum_proj_2/code/openMP/
elif [[ $input == $CV_ASSN1 ]]; then
	cd Documents/sem5/vision/assns/Vision-assns/assn1
elif [[ $input == $CV_ASSN2 ]]; then
	cd Documents/sem5/vision/assns/Vision-assns/assn2
elif [[ $input == $CV_ASSN3 ]]; then
	cd Documents/sem5/vision/assns/Vision-assns/assn3
elif [[ $input == $CV_ASSN4 ]]; then
	cd Documents/sem5/vision/assns/Vision-assns/assn4
elif [[ $input == $NW_ASSN1 ]]; then
	cd Documents/sem5/networks/assns/assn1/
elif [[ $input == $NW_ASSN2 ]]; then
	cd Documents/sem5/networks/assns/assn2/
elif [[ $input == $NW_ASSN3 ]]; then
	cd Documents/sem5/networks/assns/assn3/
elif [[ $input == $NW_ASSN4 ]]; then
	cd Documents/sem5/networks/assns/assn4/
elif [[ $input == $AI_ASSN1 ]]; then
	cd Documents/sem5/ai/assns/assn1/
elif [[ $input == $AI_ASSN2 ]]; then
	cd Documents/sem5/ai/assns/assn2/
elif [[ $input == $AI_ASSN3 ]]; then
	cd Documents/sem5/ai/assns/assn3/
elif [[ $input == $AI_ASSN4 ]]; then
	cd Documents/sem5/ai/assns/assn4/
elif [[ $input == $AI_ASSN5 ]]; then
	cd Documents/sem5/ai/assns/assn5/
elif [[ $input == $SHARE_IT ]]; then
	cd Documents/.shareIt/ShareIt
elif [[ $input == $THIEF_RELIEF ]]; then
	cd Documents/.thief_relief/Thief_Relief
#------------------------------------------------------------   sem 6   -------------------------------------------------------------
elif [[ $input == $OS ]]; then
	cd Documents/sem6/os/code
elif [[ $input == $PAR_ASSN1 ]]; then
	cd Documents/sem6/par/assns/COL380-Introduction-to-Parallel-and-Distributed-programming/assn1
elif [[ $input == $PAR_ASSN2 ]]; then
	cd Documents/sem6/par/assns/COL380-Introduction-to-Parallel-and-Distributed-programming/assn2
elif [[ $input == $PAR_ASSN3 ]]; then
	cd Documents/sem6/par/assns/COL380-Introduction-to-Parallel-and-Distributed-programming/assn3
elif [[ $input == $PAR_ASSN4 ]]; then
	cd Documents/sem6/par/assns/COL380-Introduction-to-Parallel-and-Distributed-programming/assn4
elif [[ $input == $PAR_ASSN5 ]]; then
	cd Documents/sem6/par/assns/COL380-Introduction-to-Parallel-and-Distributed-programming/assn5
elif [[ $input == $OS_ASSN1 ]]; then
	cd Documents/sem6/os/assns/assn1/hohlabs
else
	echo create a new command for this :]
fi
