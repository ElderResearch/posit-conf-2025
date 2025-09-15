
test_that("Training is reproducible", {
  withr::local_seed(137)
  withr::local_message_sink("/dev/null")

  expect_snapshot(unclass(train_classifyr(iris, target = "Species", features = NULL)))
})
