
#' Train our example classifier model
#'
#' @param data A data frame with inputs and targets.
#' @param target A column name in data.
#' @param features Column names to use as features.
#'    If `NULL`, use all non-target columns.
#'
#' @returns A `classifyr_model` object.
#' @export
train_classifyr <- function(data, target, features = NULL) {
  # Placeholder prep activities
  DT <- data.table::as.data.table(data) # nolint: object_name_linter.

  if (is.null(features)) {
    features <- setdiff(colnames(DT), target)
  }

  # As a ridiculous placeholder, the 'models' are random integers
  message("Training classifyr model")
  model_part_1 <- sample(1e6, 1)
  model_part_2 <- sample(1e6, 1)

  bundle_model(
    model_part_1,
    model_part_2,
    target = target,
    features = features
  )
}
