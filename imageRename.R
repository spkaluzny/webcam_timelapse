# R script to copy and rename images using names based on their time stamp.
# Run in the directory containing all the original images,
# renamed images copied to NEWDIR.
#
# Where to put the new images:
NEWDIR <- "/home/spk/Pictures/StarDestroyer/ALL_Rename"
stopifnot(dir.exists(NEWDIR))
library("stringr")
lf <- list.files()
fi <- file.info(lf)
stopifnot(all(row.names(fi) == lf))
o <- order(fi$mtime)
fi <- fi[o, ]
newfn <- paste0("SD_", str_pad(seq.int(length(lf)), 5, pad="0"), ".jpg")
file.copy(row.names(fi), file.path(NEWDIR, newfn))
