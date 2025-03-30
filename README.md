
# GOAMLP: A Novel Optimization Algorithm for Intrusion Detection Systems (IDS)

## Introduction
GOAMLP (Genetic Optimized Adaptive Multi-Layer Perceptron) is a novel machine learning algorithm specifically designed to optimize Intrusion Detection Systems (IDS) by leveraging genetic algorithms. This repository contains the implementation of the GOAMLP algorithm along with datasets and evaluation metrics. 

The GOAMLP algorithm aims to enhance the accuracy, sensitivity, and specificity of IDS by integrating genetic optimization with multi-layer perceptron networks. The project is based on the paper published by Farshid Bagheri and collaborators, where the results demonstrate significant improvements compared to existing methods.

🔗 **Link to the published paper:** [IEEE Xplore](https://ieeexplore.ieee.org/document/9272378)

---

## Algorithm Overview
The GOAMLP algorithm integrates Genetic Optimization techniques with MLP (Multi-Layer Perceptron) to enhance IDS performance. The primary objective is to minimize error rates while maximizing detection accuracy.

### Key Features:
- High accuracy and sensitivity for intrusion detection.
- Genetic optimization to improve model adaptability.
- Applicable to various IDS datasets, including KDD and UNSW-NB15.
- Efficient computational performance with reduced error rates.

---

## Directory Structure

```
GOAMLP/
├── data/                   # Datasets (KDD, UNSW-NB15)
├── src/                    # Source code for GOAMLP algorithm
│   ├── CostNetwork.m       # Cost function for network optimization
│   ├── IDSGOA20.m          # Genetic optimization algorithm
│   ├── Main.m              # Main script to run the algorithm
│   ├── GOAMLP_2020_codes.txt # Explanation of datasets and preprocessing steps
│   └── DS.mat              # Processed data used for the algorithm
├── results/                # Output metrics and evaluation
├── models/                 # Trained models and configurations
├── GOAMLP.jpg              # Visualization of the algorithm architecture
├── GOAMLP_Full_Picture.png # Comprehensive diagram of the algorithm flow
├── README.md               # Project documentation
└── GOAMLP_FinalVersion.pdf # Full paper for reference
```

---

## How to Run (MATLAB)

1. Clone the repository:
   ```bash
   git clone https://github.com/Farshidbagheri/GOAMLP.git
   cd GOAMLP
   ```

2. Open MATLAB and set the directory to the `src/` folder of this repository.

3. Load the datasets (Make sure the datasets are located in the `data/` folder):
   - `NSLKDD1.txt`
   - `NSLKDD2.txt`
   - `normalKDD1.txt`
   - Files should be loaded using MATLAB functions such as `load()` or `importdata()`.

4. Run the main script in MATLAB:
   ```matlab
   run('Main.m')
   ```

5. View the results:
   - Results will be saved in the `results/` folder.
   - MATLAB console will display the evaluation metrics.

---

## Evaluation Metrics
The performance of GOAMLP is evaluated using the following metrics:
- **Accuracy:** Measures the correct detection rate.
- **Sensitivity:** Reflects the model’s ability to identify positive instances.
- **Specificity:** Assesses the model’s ability to detect negative instances.
- **Mean Squared Error (MSE):** Quantifies the prediction error.
- **Root Mean Squared Error (RMSE):** Measures the standard deviation of prediction errors.

### Experimental Results from the Paper
The GOAMLP algorithm demonstrated superior performance with the following results:


| Metric       | GOAMLP     | SVM       | DT        |
|--------------|------------|-----------|-----------|
| Accuracy     | 95.41%     | 89.67%    | 87.23%    |
| Sensitivity  | 93.17%     | 85.43%    | 84.78%    |
| Specificity  | 89.25%     | 82.34%    | 80.12%    |
| MSE          | 0.094      | 0.217     | 0.301     |
| RMSE         | 0.307      | 0.466     | 0.549     |


Refer to **Figures 7-10 and Tables 4-5** in the paper for detailed comparisons.

---

## Available Resources
Here are various platforms where this research work is accessible:

- 🔗 **IEEE Xplore:** [GOAMLP Publication](https://ieeexplore.ieee.org/document/9272378)
- 🔗 **ResearchGate:** [GOAMLP on ResearchGate](https://www.researchgate.net/publication/346444445_GOAMLP_Network_Intrusion_Detection_With_Multilayer_Perceptron_and_Grasshopper_Optimization_Algorithm_Impact_Factor_4_H_Index_86)
- 🔗 **Case Commons:** [GOAMLP on Case Commons](https://commons.case.edu/studentworks/21/)
- 🔗 **Google Scholar:** [Farshid Bagheri Citations](https://scholar.google.com/citations?user=cnkhpngAAAAJ&hl=en)

---

## Citation
If you use this work in your research, please cite:
```
S. Moghanian, F. B. Saravi, G. Javidi, and E. O. Sheybani, "GOAMLP: Network Intrusion
Detection with Multilayer Perceptron and Grasshopper Optimization Algorithm," in IEEE
Access, vol. 8, pp. 215202-215213, 2020. Available at: [IEEE Xplore](https://ieeexplore.ieee.org/document/9272378)
```

---

## Further Information
For more details about the implementation or to explore the dataset, please take a look at the original publication or visit the official GitHub page.

---

## Contributors
- Farshid Bagheri: Conceptualization, Original Idea, Algorithm Design, Implementation, and Manuscript Preparation.
- Collaborators: Data Analysis, Evaluation, and Review.
- Special Acknowledgment: Professor Ehsan Sheybani, University of South Florida, for valuable guidance and mentorship.

---

## Contact
For questions or collaborations, please contact [Farshid Bagheri](https://github.com/Farshidbagheri). 
