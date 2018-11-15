win_send_mail <- function (to, subject, body, attach, server = "localhost:25",
                           profile = "gmailsmtp", debug = TRUE, log) {
  args <- c(paste0("-to ", '"', to, '"'),
            paste0("-subject ", '"', subject, '"'),
            paste0("-body ", '"', body, '"'),
            paste0("-server ", '"', server, '"'),
            paste0("-p ", '"', profile, '"'))
  if (attach != "") {
    args <- c(args, paste0("-attach ", '"', attach, '"'))
  }
  if (debug) {
    args <- c(args, paste0("-debug -timestamp ", "-log ", '"', log, '"'))
  }
  system2(command = "blat", args = args)
}
