Read Me Developing Data Products Course Project
===============================================

Script: server.R and ui.R was compiled and tested on a PC using R Version 3.1.1.

The script above generate a shiny app for the course Developing Data Projects.
The resulting shiny application can be fould online at http://saysarah.shinyapps.io/DataProducts/

This application uses the diamonds dataset in R to generate plots of selected variables. (input and output)

1.  The user may input a username in the top textbox (left menu bar), the inputted name will be printed on the top right upon hitting the return button. (displayed over the graph)

2.  The user may select input and output variables via drop down menu (left menu bar) and the corresponding plot will be generated on the right.

3.  The user may choose to include a smooth regression curve through a radio box selection (left menu bar), if selected, the smooth curve fit will be included on the plot on the right.

4. Finally the user may input a sample size in the numeric box field (numeric value). The sample number corresponds to the number of rows selected from the database. The plot will be modified to only include points corresponding to the inputted sample size. The default value for this field is 53940, (the total sample size in the database)


