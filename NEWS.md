<!--
This file describes the major changes of bug fixes in the package "tryCatchLog"

For the conventions for files NEWS and ChangeLog in the GNU project see
https://www.gnu.org/prep/standards/standards.html#Documentation
-->

## Version 1.1.0 (June 02, 2018)

* Implemented feature request #10 (allow injection of own logging functions):
  Added function `set.logging.functions()`.
  For details see: https://github.com/aryoda/tryCatchLog/issues/10
* Removed hard dependency from package `futile.logger` (in `Imports` section of `DESCRIPTION` file)
  by implementing a package internal basic logging function `log2console` used as default
  if the package `futile.logger` is not installed
* Dependency of package `futile.logger` is now only `Suggests` in the `DESCRIPTION` file,
  no longer `Imports`
  


## Version 1.0.3 (May 21, 2018)

* Fixes issue #29 (bug): `limitedLabelsCompact` does ignore `maxwidth` argument (logged call stack is too long)
* Refactored R code to improve unit tests (via mocking)
* Fixed typo in function documentation
* Added AppVeyor CI to github repository for automatic builds on Windows (besides the existing ones on Linux)



## Version 1.0.2 (May 8, 2018)

* Official CRAN version (published May 18, 2018)
* Added summary page at the beginning of the vignette to explain the advantages "at a glance"



## Version 1.0.1 (May 5, 2018)

* Vignette is using now `rmarkdown::html_vignette` as output to minimize the HTML file size
* Refactored vignette doc into smaller reusable parts (for slides + "booklet").
* Removed package `revealjs` from "recommended" section in DESCRIPTION file



## Version 1.0.0 (April 26, 2018)

* Added vignette with introduction into error handling with R and the `tryCatchLog` package
* First public release (meant as candidate for CRAN)



## Version 0.9.13 (Dec. 24, 2017)

* stable version now with 100 % unit test code coverage (good release candidate for CRAN submission).
* travis CI builds now against R3.2, current release, old release and devel (dev version)



## Version 0.9.12 (Dec. 17, 2017)

* Fixed `R CMD check` warning (Undocumented code objects: ‘build.log.output’)
* Added github repository to travis CI (automatic building and testing)
* Added github repository codecov.io code coverage report (with badge image in the readme file)
* Improved code coverage (more unit tests)



## Version 0.9.11 (Dec. 12, 2017)

* Fixed bug (issue #21): Silent.warnings (and messages) in `tryLog` and `tryCatchLog` not working for bubbled-up warnings



## Version 0.9.10 (Dec. 10, 2017)

* SEMANTICAL CHANGE: Renamed tryCatchLog argument "dump.errors.to.file"
                     to "write.error.dump.file" to be more precise.
                     THIS BREAKS THE OLD INTERFACE (FUNCTION SIGNATURE!)



## Version 0.9.9 (Dec. 03, 2017)

* Fixed bug #18 (duplicated errors, warnings and messages in stacked `tryCatchLog` calls
* Closes #20 (support for OS-specific newline characters in `build.log.output`)
* Improved documentation of `last.tryCatch.result`
* build.log.output: Added arguments for incl.timestamp + incl.severity
                    as option to suppress redundant output if a logging framework is used
* Open issue: R CMD check results in one warning (false positive: missing documentation entries for `build.log.output`)
 



## Version 0.9.8 (Nov. 23, 2017)

* Exported function `build.log.output` to create a single string suited as logging output from `last.tryCatchLog.result`
* `build.log.output` extended to support not only one but many log entry rows at once
* R CMD check results: 0 errors | 1 warnings | 0 notes: Undocumented code objects:
  ‘build.log.output’ -> is a false positive (reason still unclear)



## Version 0.9.7 (Nov. 22, 2017)

* SEMANTICAL CHANGE: `last.tryCatch.result` returns now a data.frame with separated logging items in columns
* internal refactorings with more unit tests
* R CMD check results: 0 errors | 0 warnings | 0 notes


## Version 0.9.6 (Nov. 18, 2017)

* SEMANTICAL CHANGES: Changed error handler semantics in `tryCatchLog` to be as close to `tryCatch` as possible
* CHANGE OF SIGNATURE: Default value for error handler in `tryCatchLog` removed
* Debugging error handler problem if used in RStudio (`tryCatchLog(log("a")`)
* Renamed `last.tryCatchLog.log` to `last.tryCatchLog.result` (clearer und avoid R CMD CHECK problem)


## Version 0.9.5 (Nov. 18, 2017)

* Added: Function `last.tryCatchLog.log` to retrieve the log output of the call of `tryLog` or `tryCatchLog`
* Fixed bug #17: tryCatchLog throws: Error in value[[3L]](cond) : unused argument (cond)
* NULL as value for error argument throws an explicit error (instead of an implicit deep down in R)
* Improved: Documentation


## Version 0.9.4 (Nov. 28, 2016)

* Added: Parameter `silent.messages` to `tryCatchLog` and `tryLog`
* License: Added the copyright header to each R file to clarify the legal side


## Version 0.9.3 (Nov. 28, 2016)

* Added: Parameter `silent.warnings` to  `tryCatchLog` and `tryLog`


## Version 0.9.2 (Nov. 27, 2016)

* Added: First working version of the `tryLog` function


## Version 0.9.1 (Nov. 20, 2016)

* First stable version with the `tryCatchLog` function as "working horse"
