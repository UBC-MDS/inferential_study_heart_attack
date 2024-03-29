# Project Proposal for the inferential analysis on factors relate with presence of heart disease

This project attempts to find the association between the probability of heart attack and various demographic or medical factors of the patient. We attempt to use hypothesis testing on several demographic and medical factors between people who are not diagnosed with heart disease and those who are diagnosed with heart disease to make inference on whether certain factor are associated with presence of heart disease. 

### Contributors:
- Kelly Wu
- Bruce Wu
- Zilong Yi
- Stepan Zaiatc

## Dataset

The dataset used in this project is the heart disease data set from the UCI machine learning repository. The original unprocessed source data files includes 76 features about the patents from 4 regions (Cleveland, Hungary, Switzerland, and the VA Long Beach). The unprocessed data contains lots of unidentified values, missing values and uncleaned data for many features. Among the data files from the 4 regions, only the data from Cleveland has been cleaned and became widely used by the data science community. The source dataset was created by Robert Detrano at V.A. Medical Center, Long Beach and Cleveland Clinic Foundation. The cleaned Cleveland data is sourced from the UCI machine learning repository (Dua and Graff 2017) and can be found [here](https://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.cleveland.data). 
This dataset contains 14 features that deemed to be relevant by the ML researchers. In this project, we will use the cleaned and processed Cleveland data set to conduct an inferential study on factors that could be associated with presence of heart disease. 

The python script for downloading the database is located in the src folder of this repository. To replicate this analysis, clone this GitHub repository (git clone), install the dependencies listed below in the "Dependencies" section, and run the following commands at the command line from the root directory of this project:

```
python src/download_file.py --url="https://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.cleveland.data" --out_file="data/raw/processed.cleveland.csv"
```

### Research Question & Planned Analysis

Our research question: what factor(s) are associated with presence of heart disease? This is an inferential research question. To answer this question, we will need to answer a following sub-questions:
- Does any numerical feature distribute differently between people with and without heart disease?
- Does any categorical feature is frequently occurred among people with heart disease?
- Do we have statistically significant evidence to state that the observed trend is not due to chance?
- If we do find a factor that shows statistical significance, how large is its effect on the probability of presence of heart disease? 

We have the following columns available from the dataset :
- 1. age  
- 2. sex 
- 3. cp: chest pain type 
- 4. trestbps: resting blood pressure (in mm Hg)
- 5. chol: serum cholestoral in mg/dl
- 6. fbs: fasting blood sugar > 120 mg/dl
- 7. estecg: resting electrocardiographic results
- 8. thalach: maximum heart rate achieved
- 9. exang: exercise induced angina (0 = no, 1 = yes)
- 10. oldpeak = ST depression induced by exercise relative to rest
- 11. slope: the slope of the peak exercise ST segment
- 12. ca: number of major vessels (0-3) colored by flourosopy
- 13. thal: defect(3 = normal; 6 = fixed defect; 7 = reversable defect)
- 14. target: diagnosis of heart disease

Our planned analysis includes the following steps and methods. 

During EDA:
- We will visualize the numerical features with overlaying histograms to compare the distribution of these features between the two groups. We will also compare the summary statistics (e.g. mean, standard deviation) of numeric features between the two groups. We will also examine the correlation between each pair of numerical features to get an idea of it colinearity would affect the investigation later on. 

- Also, for categorical features, we will do cross-tabulations to see the frequency of each categories between the two groups. We will also create bar charts to visualize if any category is often frequently occur in the group with heart disease.

- With EDA, we would be able to get an idea of which factors to further examine.



Our analysis well be driven by the observations we found during exploratory data analysis (EDA file available [here](https://github.com/UBC-MDS/heart_attack_gr12/blob/main/doc/EDA_group_12.ipynb).

In later analysis, we are going to conduct hypothesis testing to investigate a the identified potentially factors that could possibly associates with presence of heart attack. Specifically, 
- For numeric features, we will first check the central tendency, then conduct hypothesis testing. For example, maximum heart rate achieved is an variable of interest. We will first investigate the central tendency of maximum heart rate achieved of the two groups by estimating the average with sample means. We will also use bootstrapping method to provide precision measure for our estimate. Then we will conduct one-sided hypothesis testing with permutation to test our hypothesis. Our null hypothesis is that the average maximum heart rate achieved are the same between people with heart disease and without heart disease. Our alternative hypothesis is that the average maximum heart rate achieved is lower for people with heart disease than that of people without heart disease.
- For categorical features, we could conduct Chi-square test to see if the factor and the presence of heart disease are independent. 


### Sharing the results
We will conduct the analysis in Jupyter notebook format and publish the result on GitHub for open access. Our repository would contain the raw data file, the .ipynb notebook that includes all the technical details on how the analysis evolved throughout the process, and a final report that summarize the major findings and reports the our conclusion. 

We will document our thinking process and the method of our analysis in the notebook using markdown and code comments to sure that our analysis is reproducible and auditable.

In the final report, we will convey the major finding with a table of summary statistics (sample mean, standard error, 95% boootstrap CI) as long as the hypothesis test results (test statistics, p-values). Also, histograms and bar charts will be provided in the report to visualize how the distribution varies between the two group of patients.

## Dependencies

Note on reproducing the analysis: our the analysis is conducted with the following packages.

#### Python 3.10.6 and Python packages:

- docopt==0.7.1

- altair_saver==0.1.0

- pandas==1.5.1

- ipython==7.10.1

#### R version 4.2.1 and R packages:

- knitr==1.40

- tidyverse==1.3.2

- ggplot==3.3.6



### Licences
The materials of this inferential analysis on factors relate with presence of heart disease here are licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. If re-using/re-mixing please provide attribution and link to this webpage.

## References

Dua, Dheeru, and Casey Graff. 2019. “UCI Machine Learning Repository.” University of California, Irvine, School of Information; Computer Sciences. http://archive.ics.uci.edu/ml.
