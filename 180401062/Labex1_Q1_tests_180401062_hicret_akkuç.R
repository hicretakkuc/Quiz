library(testthat)

rm(list = ls())

if (file.exists("~/MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("~/MapsThatChangedOurWorld_StoryMap_Data.csv")
}

source("180401062/Labex1_Q1_180401062_hicret_akkuç.R")

test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur.",{
  file_name <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
  expect_true(file.exists(file_name), 
              sprintf("Dosya aktif dizinde mevcut değil.", file_name))
  
  
  
})
