###### Automation HomePage ########################################

################# Written by ######################################

#########******* Sudhakar Gowda ********################################

##############################################################################

######### Set the Path before you start
# setwd("C:/Users/Sudhakar/Documents/R/automation_model/Excel_Automation")


######### packages are used #####################################
source("Required_Packages.R")
##################################################################
Home <- function()
{
  z = menu(c("Load Dataset","View Dataset", "Rename or Remove Columns","Treating Missing Values",
             "Treating Categorical Variables","Build Models",
             "Plot the Data","Quit"),graphics = T, title="Select What do you want to do")
  if(z == 1) {source("load_data.R")} 
  #return(data)
  #data1 = as.data.frame(return(data))}
  else if(z == 2){source("View_data.R")}
  else if(z == 9){source("Row_column_Editor.R")}
  else if(z == 3){source("Modify_Columns.R")}
  else if(z == 4){source("Treat_missing_data.R")}
  else if(z == 5){source("Treat_categorical_data.R")}
  else if(z == 6){source("Build_models.R")}
  else if(z == 7){source("Plot.R")}
  else if(z == 8){quit()}
  else if(z != 1 || 2 || 3 || 4 || 5 || 6 || 7){ print("You Enter Wrong Option , You Redirect to Home Page",source("Home_Page.R"))}
  return(data)
}
Home()
