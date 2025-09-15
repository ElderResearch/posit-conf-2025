
#' Explain a model's predictions
#'
#' @param model The model object to explain.
#' @param preds A vector of model predictions.
#' @param data The source data leading to the predictions.
#'
#' @export
explain <- function(model, preds, data) {
  UseMethod("explain")
}

#' @returns A data frame of explanations.
#' @export
explain.classifyr_model <- function(model, preds, data) {
  message("Explaining model predictions")

  # Explain how we got each prediction :)
  withr::with_seed(model_int(model), {
    ivals <- seq(1, length(preds))
    letters <- sample(LETTERS, length(ivals), replace = TRUE)
    numbers <- sample(seq(10, 99), length(ivals), replace = TRUE)
    msgs <- paste0(
      "Brought to you by the letter ", letters,
      " and the number ", numbers
    )
  })

  data.frame(pred = preds, letter = letters, number = numbers, message = msgs)
}
