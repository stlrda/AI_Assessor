library(caret)
library(kernlab)

debugging <- TRUE
ratio_of_data_for_training <- 0.8

if (debugging == TRUE) {
        # for repeatable selection of training data
        default_random_seed <- 12345
        set.seed(default_random_seed)
}

# not sure what the "y" is going to be
trainIndex <- createDataPartition(data$assessed_value, 
                                  p = ratio_of_data_for_training, 
                                  list = FALSE, 
                                  times = 1)

training <- data[trainIndex, ]
testing <- data[~trainIndex, ]

# template for getting the model
modelFit <- train(y ~., data = training, method = "glm")