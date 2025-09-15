
test_that("Explanations are consistent", {
  withr::local_seed(137)
  withr::local_message_sink("/dev/null")

  # Known input data
  model <- bundle_model(
    884620,
    281162,
    "Species",
    c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
  )

  preds <- c(
    0.59950, 0.35361, 0.71871, 0.30271, 0.74181,
    0.18397, 0.24049, 0.64508, 0.80329, 0.58749
  )

  # Tested output data
  expect_snapshot(explain(model, preds, iris[1:10,]))
})
