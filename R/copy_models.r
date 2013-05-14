#' Copy operating and estimation models while creating folder
#' structure
#'
#' @param model_dir A directory containing the operating or estimation
#' models. Each folder should be named according to a scenario ID.
#' @param iterations The iterations to copy to. The function will
#' create the folders as needed.
#' @param scenarios Which scenarios to copy. Default to taking all
#' available scenarios. You can also supply a vector of character
#' elements specifying which ones to copy.
#' @param type Are you copying operating or estimation models? This
#' affects whether the model folder gets named "om" or "em"
#' @author Sean Anderson, Kelli Johnson
#' @examples \dontrun{
#' dir.create("oms/blockm-cod")
#' dir.create("oms/blockm-fla")
#' copy_models(model_dir = "oms", type = "om", iterations = 1:3)
#' }
#' @export

copy_models <- function(model_dir, iterations = 1:100,
  scenarios = "all available", type = c("om", "em")) {

  type <- type[1]
  if(scenarios[1] == "all available"){
    scenarios <- list.files(model_dir)
  }

  for(sc in scenarios) {
    for(it in iterations) {
      from <- pastef(model_dir, sc)
      to <- pastef(sc, it)
      dir.create(to, showWarnings = FALSE, recursive = TRUE)
      if(file.exists(pastef(to, type))){
        print(paste0(to, "/", type, " already exists; not copying this folder."))
      } else {
        file.copy(from, to, recursive = TRUE)
        file.rename(pastef(to, sc), pastef(to, "om"))
      }
    }
  }
}

