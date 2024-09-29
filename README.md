# Analysis of Victim Counts

## Overview

This repo contains all the data and scripts required to analyze victim counts based on age group,gender and crime type. Overall, it was found that young adults have a higher vulnerability in crime, young women are more likely to suffer sexual violence and young men are more likely to suffer property robbery.


## File Structure

The repo is structured as:

-   `data` contains
        the simulated data & 
        the raw data as obtained from X & 
        the cleaned dataset that was constructed.
-   `other` contains details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## How to run
-   Run scripts/00-simulate_data.R to simulate envisioned data
-   Run scripts/01-download_data.R to download raw data from opendatatoronto
-   Run scripts/02-data_cleaning.R to generate cleaned data
-   Render paper/paper.qmd to generate the PDF of the paper



## Statement on LLM usage

Aspects of my R code and paper were assisted with the help of Chat-GPT. The chat history is available in other/llm

