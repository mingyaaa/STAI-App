library(shiny)


# Define server logic required 
shinyServer(function(input, output){

# We create an output that will be a text with the results of the questionnaire.
  output$resultAE <- renderText({
          
          
          AE <<- as.numeric(input$r1)+as.numeric(input$r2)+
                  as.numeric(input$r3)+as.numeric(input$r4)+as.numeric(input$r5)+
                  as.numeric(input$r6)+as.numeric(input$r7)+as.numeric(input$r8)+
                  as.numeric(input$r9)+as.numeric(input$r10)+as.numeric(input$r11)+
                  as.numeric(input$r12)+as.numeric(input$r13)+as.numeric(input$r14)+
                  as.numeric(input$r15)+as.numeric(input$r16)+as.numeric(input$r17)+
                  as.numeric(input$r18)+as.numeric(input$r19)+as.numeric(input$r20)
          
          AR <<- as.numeric(input$r21)+as.numeric(input$r22)+
                  as.numeric(input$r23)+as.numeric(input$r24)+as.numeric(input$r25)+
                  as.numeric(input$r26)+as.numeric(input$r27)+as.numeric(input$r28)+
                  as.numeric(input$r29)+as.numeric(input$r30)+as.numeric(input$r31)+
                  as.numeric(input$r32)+as.numeric(input$r33)+as.numeric(input$r34)+
                  as.numeric(input$r35)+as.numeric(input$r36)+as.numeric(input$r37)+
                  as.numeric(input$r38)+as.numeric(input$r39)+as.numeric(input$r40)
          
          CAE <<- if (input$sex == "H") 
          {if (AE >= 29 && AE <=60) { print("Alto")} else if 
                  (AE <= 28 && AE >= 14) {print("Media")} else if
                  (AE <= 13 && AE >= 0){print("Bajo")}
          } else if (input$sex == "M") 
          {if (AE >= 32 && AE <=60) { print("Alto")} else if 
                  (AE <= 31 && AE >= 15) {print("Media")} else if
                  (AE <= 14 && AE >= 0){print("Bajo")}
          }
          
          CAR <<- if (input$sex == "H") 
          {if (AR >= 29 && AR <=60) { print("Alto")} else if 
                  (AR <= 28 && AR >= 14) {print("Media")} else if
                  (AR <= 13 && AR >= 0){print("Bajo")}
          } else if (input$sex == "M") 
          {if (AR >= 33 && AR <=60) {print("Alto")} else if 
                  (AR <= 32 && AR >= 17){print("Media")} else if
                  (AR <= 16 && AR >= 0){print("Bajo")}
          }
          
          print(c("ANSIEDAD ESTADO (puntos):", AE,". Nivel:", (CAE), "."))
    
  })
  
  output$resultAR <- renderText({
         print(c("ANSIEDAD RASGO (puntos):", AR,". Nivel", (CAR), "."))})

  })





