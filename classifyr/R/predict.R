
#' Generate predictions for a classifyr model
#'
#' @param object A pretrained classifyr model.
#' @param newdata A data frame for making predictions.
#' @param ... Unused arguments.
#' @export
#' @keywords internal
predict.classifyr_model <- function(object, newdata, ...) {
  # These are dummy predictions between 0 and 1
  message("Making predictions for classifyr model")
  withr::with_seed(model_int(object), stats::rbeta(nrow(newdata), 2, 2))
}
