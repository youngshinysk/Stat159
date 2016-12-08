library(testthat)

advertising = read.csv('../data/Advertising.csv')
adv_regression = lm(Sales ~ TV + Radio + Newspaper, data = advertising)
mtcars_regression = lm(mpg ~ disp + hp, data = mtcars)

source('functions/regression-functions.R')

context("Checking RSS function")

test_that("RSS for mtcars", {
  mtcars_rss = rss(mtcars_regression)
  expect_equal(mtcars_rss, sum(mtcars_regression$residuals^2))
  expect_type(mtcars_rss, 'double')
  expect_length(mtcars_rss, 1)
})

context("Checking TSS function")

test_that("TSS for mtcars", {
  mtcars_tss = tss(mtcars_regression)
  expect_equal(mtcars_tss, sum((mtcars$mpg - mean(mtcars$mpg))^2))
  expect_type(mtcars_tss, 'double')
  expect_length(mtcars_tss, 1)
})

context("RSE function")

test_that("RSE for mtcars", {
  mtcars_rse = rse(mtcars_regression)
  expect_equal(mtcars_rse, summary(mtcars_regression)$sigma)
  expect_type(mtcars_rse, 'double')
  expect_length(mtcars_rse, 1)
})

context("R^2 function")

test_that("R^2 for mtcars", {
  mtcars_r2 = rsquared(mtcars_regression)
  expect_equal(mtcars_r2, summary(mtcars_regression)$r.squared)
  expect_type(mtcars_r2, 'double')
  expect_length(mtcars_r2, 1)
})

context("F-statistic function")

test_that("F-statistic for mtcars", {
  mtcars_fstat = fstat(mtcars_regression)
  expect_equal(round(mtcars_fstat,4), 43.0946)
  expect_type(mtcars_fstat, 'double')
  expect_length(mtcars_fstat, 1)
})
