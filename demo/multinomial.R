data( iris )
set.seed( 20090415 )

mod <- gbm(Species ~ .,
           data              = iris,
           distribution      = "multinomial",
           n.tree            = 5000,
           shrinkage         = 0.001,
           cv.folds          = 2,
           bag.fraction      = 0.8,
           interaction.depth = 3,
           verbose = FALSE)
gbm.perf( mod, method="cv" )
mod

