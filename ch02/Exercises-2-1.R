library(shiny)

ui <- fluidPage(
  # 1. When space is at a premium, it’s useful to 
  # label text boxes using a placeholder that appears 
  # inside the text entry area. 
  # How do you call textInput() to generate the UI below?
  textInput(inputId = "txtWithPlaceholder",
            label= "Can I meet you?",
            placeholder = "Your name"),
  # 2. Carefully read the documentation for sliderInput() 
  # to figure out how to create a date slider, as shown 
  # below.
  
  sliderInput(inputId = "slDeliveryDate",
              label = "When should we deliver?",
              min = as.Date("2020-09-16","%Y-%m-%d"),
              max = as.Date("2020-09-23","%Y-%m-%d"),
              value=as.Date("2020-09-17"),timeFormat="%Y-%m-%d"),
  
  # 3. Create a slider input to select values 
  # between 0 and 100 where the interval between 
  # each selectable value on the slider is 5. 
  # Then, add animation to the input widget so when 
  # the user presses play the input widget scrolls 
  # through the range automatically.
  sliderInput(inputId = "slNum",
              label = "Number:",
              min = 0,
              max = 100,
              value = 0,
              step = 5,
              animate = TRUE),
  
  # 4. If you have a moderately long list in a 
  # selectInput(), it’s useful to create sub-headings 
  # that break the list up into pieces. 
  # Read the documentation to figure out how. 
  # (Hint: the underlying HTML is called <optgroup>.)
  # Answer: We can make the `choices` argument a list of key-value pairs where the keys
  # represent the sub-headings and the values are lists containing the categorized
  # elements by keys.
  selectInput(
    "siNaijaSoups",
    "Select your favorite nigerian soups:",
    choices =
      list(`south-west` = list('Egusi soup', 'Ewedu', 'Gbegiri', 'Efo riro'),
           `south-south` = list('Banga soup', 'EDIKANG-IKONG', 'Afang soup'),
           `north-east` = list('Miyan Kuka', 'Miyan Taushe','Miyan kubewa'))
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)