library(UsingR)
library(ggplot2)
data(galton)

shinyServer(
    function(input, output) {
        output$wPlot <- renderPlot({
            dd0 <- rweibull(1000000,shape = 5, scale = 1)
            plot(density(dd0)
                 ,main="Density plots for the weibull distribution"
                 ,xlab="x",xlim=c(0,3),ylim=c(0,2.5),col="red")
            
            inshape <- input$shape
            inscale <- input$scale
            dd <- rweibull(1000000,shape = inshape, scale = inscale)
            lines(density(dd),col="blue")
            legend(2,2,c("sh= 5,sc= 1",paste("sh=",inshape,"sc=",inscale)),col=c("red","blue"),lty=1,box.lty=0)
        })
        
    }
)