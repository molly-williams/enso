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

    expect_that(function_name(dataset, function_parameter=x)$output, equals(y))

    expect_that(predict_precip(fake_oni_data, ONI=1)$prediction, equals(1))


    expect_that(spring_summary(clim_data, spring_months=4)$mean_springT, equals(0.5))
    expect_that(spring_summary(clim_data, spring_months=1)$mean_springT, equals(1))
    expect_true(spring_summary(clim_data, spring_months=c(1:4))$coldest_springT > -10)
  }
)
