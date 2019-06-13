test_that(
  "test_oni_data",
  {
    fake_oni_data =
      as.data.frame(
        cbind(
          month = c(1:12),
          PRCP  = runif(12, min=0, max=5),
          TAVG  = runif(12, min=0, max=30),
          ONI  = runif(12, min=-3, max=3)
        )
      )

    expect_true(predict_precip(fake_oni_data, ONI=1)$"Rainfall Prediction" > 0)
    expect_true(enso_extremes(fake_oni_data)$"Minimum" >= -3)
    expect_true(enso_extremes(fake_oni_data)$"Maximum" <= 3)
  }
)
