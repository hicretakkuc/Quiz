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


test_that("Test : maps adlı değişken Global Workspace’de mevcuttur.", {
  expect_true(exists("maps", envir = .GlobalEnv), info = "maps adlı değişken mevcut değil.")
})

test_that("Test : maps nesnesi bir data.frame'dir.", {
  expect_is(maps, "data.frame", info = "maps nesnesi bir data.frame değil.")
})

test_that("Test : maps adlı data.frame'in ilk sütunu 'City' olmalıdır.", {
  expect_equal(colnames(maps)[1], "City", info = "İlk sütun 'City' değil.")
})

test_that("Test : maps adlı data.frame'in 5. sütununun adında 'Title' kelimesi geçmelidir.", {
  expect_true(grepl("Title", colnames(maps)[5], fixed = TRUE), info = "5. sütunun adında 'Title' kelimesi geçmiyor.")
})

test_that("Test : Latitude adlı sütun numeric değerlerden oluşmalıdır.", {
  expect_is(maps$Latitude, "numeric", info = "Latitude sütunu numeric değerlerden oluşmuyor.")
})

