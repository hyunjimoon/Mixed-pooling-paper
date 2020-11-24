install.packages("forecast")
library(forecast)
w <- read.csv("delivery.csv")['y']
m <- read.csv("restock.csv")['y']
wm <- read.csv("shipment.csv")['y']

wts <- ts(w, frequency=7)
mts <- ts(m, frequency=30)
wmts <- ts(wm,frequency=7)
#msts(x, seasonal.periods=c(48,336)
auto.arima(wts, seasonal = TRUE)
auto.arima(mts, seasonal = TRUE)
auto.arima(wmts, seasonal = TRUE)
#auto.arima(wts, seasonal = TRUE)