
# GOAMLP: Network Intrusion Detection with Multilayer Perceptron and Grasshopper Optimization Algorithm

## Introduction
GOAMLP combines the Grasshopper Optimization Algorithm (GOA) with Multi-Layer Perceptron (MLP) networks to enhance the performance of Intrusion Detection Systems (IDS). GOA is a swarm-based optimization technique inspired by the natural behavior of grasshoppers. This algorithm is known for its strong exploration and exploitation capabilities, making it effective for training neural networks like MLP.

This repository contains the implementation of the GOAMLP algorithm along with datasets and evaluation metrics as described in the published paper.

🔗 **Link to the published paper:** [IEEE Xplore](https://ieeexplore.ieee.org/document/9272378)

---

## Algorithm Overview
The GOAMLP algorithm uses the Grasshopper Optimization Algorithm (GOA) to optimize the weights and biases of a Multi-Layer Perceptron (MLP). This hybrid approach aims to improve the accuracy, sensitivity, and specificity of IDS by finding optimal solutions through the GOA's exploration and exploitation mechanisms.

### 📝 Key Features:
- High accuracy and sensitivity for intrusion detection.
- Grasshopper Optimization Algorithm (GOA) for improved training of MLP.
- Applicable to various IDS datasets, including KDD and UNSW-NB15.
- Efficient computational performance with reduced error rates.

---

## Directory Structure

```
GOAMLP/
├── data/                   # Datasets (KDD, UNSW-NB15)
├── src/                    # Source code for GOAMLP algorithm
│   ├── CostNetwork.m       # Cost function for network optimization
│   ├── IDSGOA20.m          # Grasshopper Optimization Algorithm implementation
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

### 📝 Experimental Results from the Paper
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

## Contributors
- **Farshid Bagheri (Original Author & Lead Developer):** Conceptualization, Original Idea, Algorithm Design, Implementation, and Manuscript Preparation.  
- **Collaborators:** Data Analysis, Evaluation, and Review.  
- **Special Acknowledgment:** Professor Sheybani, University of South Florida, for valuable guidance and mentorship.  

---

## Contact
For questions or collaborations, please contact [Farshid Bagheri](https://github.com/Farshidbagheri). 
