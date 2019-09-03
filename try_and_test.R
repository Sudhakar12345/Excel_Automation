
makepresser=function(n){force(n);function(){cat("Hit me ",n," times/n")}}
m1 = makepresser(1)
m1()

f.frame <- tktoplevel()
bs = list()
for(i in 1:10){
  bs[[i]]=tkbutton(f.frame,command=makepresser(i))
  tkpack(bs[[i]])
}

######### Welcome Message Widget
library("tcltk")
img <- tclVar()
tclimg <- tkimage.create("photo", img, file = "C:/Users/Sudhakar/Documents/R/automation_model/Excel_Automation/auto.png")
tt <- tktoplevel()
button.widget <- tkbutton(tt, text = "Click me!", image = tclimg, compound = "top",
                          command = function() tkmessageBox(message = "Hello Welcome to the Automation World!"))



tkgrid(button.widget)


root <- tktoplevel()
button <- tkbutton(root, text="hello")
tkpack(button)
tkconfigure(button, text="goodbye")


########### 

tt <- tktoplevel()
label.widget <- tklabel(tt, text = "Hello, World!")
button.widget <- tkbutton(tt, text = "Push",
                          command = function()cat("OW!\n"))
tkpack(label.widget, button.widget) # geometry manager
# see Tk-commands

## Push the button and then...

tkdestroy(tt)

## test for themed widgets
if(as.character(tcl("info", "tclversion")) >= "8.5") {
  # make use of themed widgets
  # list themes
  as.character(tcl("ttk::style", "theme", "names"))
  # select a theme -- here pre-XP windows
  tcl("ttk::style", "theme", "use", "winnative")
} else {
  # use Tk 8.0 widgets
}

## End(Not run)

require(tcltk)
mydialog <- function(){
  xvar <- tclVar("")       
  yvar <- tclVar("")
  zvar <- tclVar("")
  tt <- tktoplevel()
  tkwm.title(tt,"MYTEST")
  x.entry <- tkentry(tt, textvariable=xvar)
  y.entry <- tkentry(tt, textvariable=yvar)
  z.entry <- tkentry(tt, textvariable=zvar)
  reset <- function() {
    tclvalue(xvar)<-""
    tclvalue(yvar)<-""         
      tclvalue(zvar)<-""        }
  reset.but <- tkbutton(tt, text="Reset", command=reset)
  submit <- function() {
    x <- as.numeric(tclvalue(xvar))
    y <- as.numeric(tclvalue(yvar))
    z <- as.numeric(tclvalue(zvar))
    tkmessageBox(message=paste("x + y + z = ", x+y+z, ""))  }
  submit.but <- tkbutton(tt, text="submit", command=submit)       
  quit.but <- tkbutton(tt, text = "Close Session",  command = function() {    
    q()          
    tkdestroy()           
  })       
  tkgrid(tklabel(tt,text="Put your variables.."),columnspan=3, pady = 10)       
  tkgrid(tklabel(tt,text="x variable"), x.entry, pady= 10, padx= 10)       
  tkgrid(tklabel(tt,text="y variable"), y.entry, pady= 10, padx= 10)       
  tkgrid(tklabel(tt,text="z variable"), z.entry, pady= 10, padx= 10)       
  tkgrid(submit.but, reset.but, quit.but, pady= 10, padx= 10)}
mydialog()


### Edit dataframe
library(tcltk2)
tk2edit(data, title = "Matrix Editor", header = NULL,
        maxHeight = 600, maxWidth = 800, fontsize = 9)
