library(shiny)

shinyUI(fluidPage(

        # Application title
        titlePanel("Questionario STAI"),

        # Sidebar with all the information related to the documentation of STAI, links and authors.
        # There is also at the bottom the output of the results.
        sidebarLayout(
        sidebarPanel(
                
                h3("App creada por:"),
                tags$a("Ming-ya Wang Liu", href=paste0("https://es.linkedin.com/in/mingyawangliu")),
                h3("Github Repository:"),
                tags$a("Link", href=paste0("https://github.com/mingyaaa/STAI-App/")),
                h3("Autores:"), p("Spielberg, C.D., Gorsuch, R.L., y Lushene, R.E. (1982)"), 
                h3("Tiempo de la prueba"), p("15 minutos (aprox)"),
                h3("Instrucciones:"), p("Contesta la primera columna y la segunda columna, en este orden. Recuerda que no hay respuestas correctas e incorrectas. Una vez termines, mira el final de esta columna para ver el resultado"),
                br(),
                br(),
                h3("Ansiedad como estado (A/E)"),
                p("Evalua un estado emocional transitorio, caracterizado por sentimientos subjetivos, conscientemente percibidos, de atencion y aprension y por hiperactividad del sistema nervioso autonomo."),
                h3("Ansiedad como rasgo (A/R)"),
                p("Muestra una propension ansiosa, relativamente estable, que caracteriza a los individuos con tendencia a percibir las situaciones como amenazadoras."),
                br(),
                br(),
                br(),
                h3("Resultados:"),
                p("Solo validos despues de los 2 Submit"),
                textOutput("resultAE"),
                br(),
                textOutput("resultAR")),


        # Main panel, composed by 2 columns. Each column corresponds to one type of anxiety.
        mainPanel(
                column(6,
                selectInput("sex", "Sexo:", c("Hombre" = "H", "Mujer" = "M")),
                h1("Ahora mismo usted..."),
                radioButtons("r1", "Me siento calmado", c( "Nada"=3,"Algo "=2,"Bastante"= 1,"Mucho" = 0)),
                radioButtons("r2", "Me siento seguro", c( "Nada"=3,"Algo "=2,"Bastante"= 1,"Mucho" = 0)),
                radioButtons("r3", "Estoy tenso", c( "Nada" = 0, "Algo "= 1,"Bastante"=2,"Mucho"=3)),
                radioButtons("r4", "Estoy contrariado", c( "Nada" = 0, "Algo "= 1,"Bastante"=2,"Mucho"=3)),
                radioButtons("r5", "Me siento comodo (estoy a gusto)", c( "Nada"=3,"Algo "=2,"Bastante"= 1,"Mucho" = 0)),
                radioButtons("r6", "Me siento alterado", c( "Nada" = 0, "Algo "= 1,"Bastante"=2,"Mucho"=3)),
                radioButtons("r7", "Estoy preocupado ahora por posibles desgracias futuras", c( "Nada" = 0, "Algo "= 1,"Bastante"=2,"Mucho"=3)),
                radioButtons("r8", "Me siento descansado", c( "Nada"=3,"Algo "=2,"Bastante"= 1,"Mucho" = 0)),
                radioButtons("r9", "Me siento angustiado", c( "Nada" = 0, "Algo "= 1,"Bastante"=2,"Mucho"=3)),
                radioButtons("r10", "Me siento confortable", c( "Nada"=3,"Algo "=2,"Bastante"= 1,"Mucho" = 0)),
                radioButtons("r11", "Tengo confianza en mi mismo", c( "Nada"=3,"Algo "=2,"Bastante"= 1,"Mucho" = 0)),
                radioButtons("r12", "Me siento nervioso", c( "Nada" = 0, "Algo "= 1,"Bastante"=2,"Mucho"=3)),
                radioButtons("r13", "Estoy desasosegado", c( "Nada" = 0, "Algo "= 1,"Bastante"=2,"Mucho"=3)),
                radioButtons("r14", "Me siento muy 'atado' (como oprimido)", c( "Nada" = 0, "Algo "= 1,"Bastante"=2,"Mucho"=3)),
                radioButtons("r15", "Estoy relajado", c( "Nada"=3,"Algo "=2,"Bastante"= 1,"Mucho" = 0)),
                radioButtons("r16", "Me siento satisfecho", c( "Nada"=3,"Algo "=2,"Bastante"= 1,"Mucho" = 0)),
                radioButtons("r17", "Estoy preocupado ", c( "Nada" = 0, "Algo "= 1,"Bastante"=2,"Mucho"=3)),
                radioButtons("r18", "Me siento aturdido y sobreexcitado", c( "Nada"=0,"Algo "= 1,"Bastante"=2,"Mucho"=3)),
                radioButtons("r19", "Me siento alegre", c( "Nada"=3,"Algo "=2,"Bastante"= 1,"Mucho" = 0)),
                radioButtons("r20", "En este momento me siento bien", c( "Nada"=3,"Algo "=2,"Bastante"= 1,"Mucho" = 0)),
                submitButton("Submit answers")
                ),     
           
        column(6,
                br(),
                br(),
                br(),
                h1("Por lo general..."),
                radioButtons("r21", "Me siento bien", c( "Casi nunca"=3,"A veces "=2,"A menudo"= 1,"Casi siempre" = 0)),
                radioButtons("r22", "Me canso rapidamente", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r23", "Siento ganas de llorar", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r24", "Me gustaria ser tan feliz como otros", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r25", "Pierdo oportunidades por no decidirme pronto", c( "Casi nunca"=0,"A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r26", "Me siento descansado", c( "Casi nunca"=3,"A veces "=2,"A menudo"= 1,"Casi siempre" = 0)),
                radioButtons("r27", "Soy una persona tranquila, serena y sosegada", c( "Casi nunca"=3,"A veces "=2,"A menudo"= 1,"Casi siempre" = 0)),
                radioButtons("r28", "Veo que las dificultades se amontonan y no puedo con ellas", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r29", "Me preocupo demasiado por cosas sin importancia", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r30", "Soy feliz", c( "Casi nunca"=3,"A veces "=2,"A menudo"= 1,"Casi siempre" = 0)),
                radioButtons("r31", "Suelo tomar las cosas demasiado seriamente", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r32", "Me siento seguro", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r33", "Me falta confianza en mi mismo", c( "Casi nunca"=3,"A veces "=2,"A menudo"= 1,"Casi siempre" = 0)),
                radioButtons("r34", "No suelo afrontar las crisis o dificultades", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r35", "Me siento triste (melancolico)", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r36", "Estoy satisfecho", c( "Casi nunca"=3,"A veces "=2,"A menudo"= 1,"Casi siempre" = 0)),
                radioButtons("r37", "Me rondan y molestan pensamientos sin importancia", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r38", "Me afectan tanto los desenganos que no puedo olvidarlos", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                radioButtons("r39", "Soy una persona estable", c( "Casi nunca"=3,"A veces "=2,"A menudo"= 1,"Casi siempre" = 0)),
                radioButtons("r40", "Cuando pienso sobre asuntos y preocupaciones actuales me pongo tenso y agitado", c( "Casi nunca" = 0, "A veces "= 1,"A menudo"=2,"Casi siempre"=3)),
                submitButton("Submit answers"),
                p("Vuelve al apartado de Resultados (lateral izquierdo al final)")

    ))
  )
))
