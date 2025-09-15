
#' Bundle model components into a classifyr object
#'
#' @param preprocessor First stage of our model.
#' @param model Second stage of our model.
#' @param target The target column used in training.
#' @param features The feature column names used in training.
#'
#' @returns A classifyr_model object.
#' @keywords internal
bundle_model <- function(preprocessor, model, target, features) {
  message("Bundling models into a single object")
  structure(
    list(
      preprocessor = preprocessor,
      model = model,
      target = target,
      features = features
    ),
    class = c("classifyr_model", "list")
  )
}


#' Print a string representation for our model object
#' @export
#' @keywords internal
print.classifyr_model <- function(x, ...) {
  cat("Classifyr model\n")
  cat("- Target:", x$target, "\n")
  cat("- Features:", paste0(x$features, collapse = ", "), "\n")
}


# Here's an undocumented internal function
model_int <- function(model) {
  as.integer(model[[1]] + model[[2]])
}
