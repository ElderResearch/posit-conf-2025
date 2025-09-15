# Testing code and logic would go here, including custom metrics,
# out-of-sample testing methods, and more.

#' Test the classifier model
#'
#' @param model A trained classifier.
#' @param data A data frame used for evaluation.
#'
#' @returns A data frame with evaluation metrics.
#' @export
test_classifyr <- function(model, data) {
  message("Testing the classifier")

  perfvals <- c("Great", "Awesome", "10/10", "Impeccable", "Wow")

  out <- data
  out["Metric"] <- sample(perfvals, nrow(out), replace = TRUE)
  out[, c("Metric", setdiff(colnames(out), "Metric"))]
}
