fluidPage(
  titlePanel("Does WPJ have a Paw Preference?"),
  mainPanel(
    tabsetPanel(type="tab",
                tabPanel(
                  "Directions",
                  h4("Watch this video!"),
                  mainPanel(HTML('<iframe width="600" height="300" src="https://www.youtube.com/embed/lW9Lmh3D4cY" frameborder="0" allowfullscreen></iframe>'))
                ),
                tabPanel("Your Data",sidebarPanel(numericInput("LR", "Left Paw Boops", 0, min=0, max=50),
                                                  numericInput("RL", "Right Paw Boops", 0, min=0, max=50),
                                                  h4("Boop Sum"),
                                                  h5(textOutput("Sum")),
                                                  h4("Proportion of Boops with Left Paw"),
                                                  h5(textOutput("propLR")),
                                                  h4("Proportion of Boops with Right Paw"),
                                                  h5(textOutput("propRL"))
                ),
                mainPanel(plotOutput("boopplot")
                )),
                tabPanel("Hypothesis Testing",
                         sidebarPanel(
                           h4("Does WPJ have a paw preference?"),
                           h5("Null Hypothesis: No"),
                           h6("He is equally likely to use both paws"),
                           h5("Alternative Hypothesis: Yes"),
                           h6("He has a paw preference"),
                           h5("Binomial Test of our hypothesis"),
                           h6("paw-value ="),
                           h4(textOutput("test")),
                           h5("A paw-value (p-value) of <0.05 causes us to reject the null hypothesis"),
                           width=4),
                         mainPanel(plotOutput("BinDist"),
                                   h4("Green bars occur by chance <5% of the time, blue bars occur by chance 95% of the time IF the null hypothesis is true (no paw preference)"),
                                   h5("Does the number of left boops you recorded fall within the green or the blue?")

                         )
                ))))
