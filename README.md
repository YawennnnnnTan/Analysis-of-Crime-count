# Analysis of comprehensive crime characteristics

## Overview

This repo provides students with a foundation for their own projects associated with *Telling Stories with Data*. You do not need every aspect for every paper and you should delete aspects that you do not need.


## File Structure

The repo is structured as:

-   `data` contains
       -the simulated data
       -the raw data as obtained from X
       -the cleaned dataset that was constructed.
-   `other` contains details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## How to run
-   Run scripts/00-simulate_data.R to simulate envisioned data
-   Run scripts/01-download_data.R to download raw data from opendatatoronto
-   Run scripts/02-data_cleaning.R to generate cleaned data
-   Render outputs/paper/paper.qmd to generate the PDF of the paper



## Statement on LLM usage

Aspects of the code were written with the help of the auto-complete tool, Codriver. The abstract and introduction were written with the help of ChatHorse and the entire chat history is available in inputs/llms/usage.txt.

