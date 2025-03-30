
# GOAMLP: A Novel Optimization Algorithm for Intrusion Detection Systems (IDS)

## 🌟 Introduction
GOAMLP (Genetic Optimized Adaptive Multi-Layer Perceptron) is a novel machine learning algorithm specifically designed to optimize Intrusion Detection Systems (IDS) by leveraging genetic algorithms. This repository contains the implementation of the GOAMLP algorithm along with datasets and evaluation metrics. 

The GOAMLP algorithm aims to enhance the accuracy, sensitivity, and specificity of IDS by integrating genetic optimization with multi-layer perceptron networks. The project is based on the paper published by Farshid Bagheri and collaborators, where the results demonstrate significant improvements compared to existing methods.

🔗 **Link to the published paper:** [IEEE Xplore](https://ieeexplore.ieee.org/document/9272378)

---

## 🚀 Algorithm Overview
The GOAMLP algorithm integrates Genetic Optimization techniques with MLP (Multi-Layer Perceptron) to enhance IDS performance. The primary objective is to minimize error rates while maximizing detection accuracy.

### 📝 Key Features:
- High accuracy and sensitivity for intrusion detection.
- Genetic optimization to improve model adaptability.
- Applicable to various IDS datasets, including KDD and UNSW-NB15.
- Efficient computational performance with reduced error rates.

---

## 🗂️ Directory Structure

```
GOAMLP/
├── data/                   # Datasets (KDD, UNSW-NB15)
├── src/                    # Source code for GOAMLP algorithm
│   ├── CostNetwork.m       # Cost function for network optimization
│   ├── IDSGOA20.m          # Genetic optimization algorithm
│   └── Main.m              # Main script to run the algorithm
├── results/                # Output metrics and evaluation
├── models/                 # Trained models and configurations
└── README.md               # Project documentation
```

---

## 🧩 How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/Farshidbagheri/GOAMLP.git
   cd GOAMLP
   ```

2. Install the necessary dependencies:
   ```bash
   pip install numpy scipy sklearn
   ```

3. Run the main script:
   ```bash
   matlab -r "run('src/Main.m')"
   ```

4. View the results:
   ```bash
   cat results/output.txt
   ```

---

## 📊 Evaluation Metrics
The performance of GOAMLP is evaluated using the following metrics:
- **Accuracy:** Measures the correct detection rate.
- **Sensitivity:** Reflects the model’s ability to identify positive instances.
- **Specificity:** Assesses the model’s ability to detect negative instances.
- **Mean Squared Error (MSE):** Quantifies the prediction error.
- **Root Mean Squared Error (RMSE):** Measures the standard deviation of prediction errors.

### 📝 Experimental Results
The GOAMLP algorithm has demonstrated superior performance compared to traditional methods such as:
- **SVM, Decision Tree (DT), XGBoost, BOW, BOA, HHO.**

| Metric       | GOAMLP     | SVM       | DT        |
|--------------|------------|-----------|-----------|
| Accuracy     | 95.41%     | 89.67%    | 87.23%    |
| Sensitivity  | 93.17%     | 85.43%    | 84.78%    |
| Specificity  | 89.25%     | 82.34%    | 80.12%    |
| MSE          | 0.094      | 0.217     | 0.301     |
| RMSE         | 0.307      | 0.466     | 0.549     |

---

## 🌐 Available Resources
Here are various platforms where this research work is accessible:

- 🔗 **IEEE Xplore:** [GOAMLP Publication](https://ieeexplore.ieee.org/document/9272378)
- 🔗 **ResearchGate:** [GOAMLP on ResearchGate](https://www.researchgate.net/publication/346444445_GOAMLP_Network_Intrusion_Detection_With_Multilayer_Perceptron_and_Grasshopper_Optimization_Algorithm_Impact_Factor_4_H_Index_86)
- 🔗 **Case Western Reserve University Commons:** [GOAMLP on Case Commons](https://commons.case.edu/studentworks/21/)
- 🔗 **Google Scholar:** [Farshid Bagheri Citations](https://scholar.google.com/citations?user=cnkhpngAAAAJ&hl=en)

---

## 📘 Citation
If you use this work in your research, please cite:
```
Bagheri, F. et al. "GOAMLP: A Genetic Optimized Adaptive Multi-Layer Perceptron for IDS." (2025). Available at: [IEEE Xplore](https://ieeexplore.ieee.org/document/9272378)
```

---

## 💡 Further Information
For more details about the implementation or to explore the dataset, please refer to the original publication or visit the official GitHub page.

---

## 📝 Contributors
- Farshid Bagheri - Algorithm Design & Implementation  
- Collaborators - Data Analysis & Evaluation  
- Special Thanks - Case Western Reserve University  

---

## 📫 Contact
For questions or collaborations, please reach out to [Farshid Bagheri](https://github.com/Farshidbagheri). 
