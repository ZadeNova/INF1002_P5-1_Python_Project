# 📈 BullBear Analysis

![Python](https://img.shields.io/badge/Python-3.12-blue?logo=python&logoColor=white)
![Streamlit](https://img.shields.io/badge/Streamlit-App-FF4B4B?logo=streamlit&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)


## 📈 Project Overview

This system performs sophisticated technical analysis on historical stock data, implementing algorithms for trend identification, profitability analysis, and interactive visualization. Built with modular, production-ready code following software engineering best practices.

**BullBear Analysis** is a comprehensive financial dashboard built with Python and Streamlit. It enables users to perform technical analysis on major stock indices and tech giants (AAPL, MSFT, etc.).
The application leverages **TA-Lib** for high-performance technical indicator calculations.

---

## 🚀 Quick Start (Recommended: Docker)

The easiest way to run this application is via Docker. This avoids the complex setup required for the TA-Lib C-library.

### 1. Run the Container
You can pull the pre-built image directly from Docker Hub and run it with a single command:

```bash
docker run -d -p 8501:8501 zadenova/bullbear-analysis:latest
```


## 🚀 Features

* 📈 Detects and visualizes upward/downward streaks in stock prices
* 🕒 Displays longest streaks with start and end dates
* 📐 Display up to five technical indicators
* 🔎 Filter historical stock data by date ranges.
* 💹 Display buy/sell signals on the chart
* ⚡ Powered by Streamlit for an interactive dashboard to display visualization
* 💾 Data sourced from Yahoo Finance (Yfinance)
* 💰 Calculate Portfolio networth from user's stock transactions
---

## 🏗️ Tech Stack

* **Language:** Python 3.10+
* **Frontend:** Streamlit
* **Backend/Data libraries:** Pandas, NumPy, yfinance
* **Version Control:** Git/GitHub

---

## 📂 Project Structure

```
.
.
├── data/                        → Stores datasets and user portfolio data
│   ├── CSV/                     → Cached/stored stock data (e.g., AAPL.csv)
│   └── user_data/               → User-specific data (e.g., portfolio_test.json)
│
├── pages/                       → Streamlit multi-page app scripts
│   └── portfolio_tracker.py
│
├── src/                         → Core source code
│   ├── __init__.py
│   ├── analytics.py             → Financial analytics functions
│   ├── config.py                → Configuration settings
│   ├── data_loader.py           → Data fetching and preprocessing
│   ├── helper.py                → Utility/helper functions
│   ├── run_loader.py            → Script for bulk loading data
│   ├── technical_indicators.py  → Technical analysis functions (TA-Lib)
│   ├── ticker_utils.py          → Ticker symbol management
│   └── visualization.py         → Plotting and charting functions
│
├── tests/                       → Unit tests
│   ├── test_analytics.py
│   └── test_technical_indicators.py
│
├── validation/                  → Validation scripts to compare calculations
│   └── validation.py
│
├── app.py                       → Main Streamlit entry point
├── Dockerfile                   → Docker configuration
├── requirements.txt             → Python dependencies
├── README.md                    → Project documentation
├── .dockerignore                → Docker build exclusion list
└── .gitignore                   → Git ignore rules
```

---

## ⚙️ Installation & Setup

### 1. Clone the repository

```bash
git clone https://github.com/ZadeNova/INF1002_P5-1_Python_Project.git
cd inf1002_p5-1_python_project
```

### 2. Create a virtual environment

```bash
python -m venv venv
source venv/bin/activate   # On Mac/Linux
venv\Scripts\activate      # On Windows
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Run the Streamlit app

```bash
streamlit run app.py
```

---

## 🧪 Validation & Testing


To validate the results:

* Professors can re-run the analysis with sample data provided in `/data/CSV`.
* Validation file is under `validation/validation.py`
* Validation file can be run with:
```bash
python -m validation.validation    # recommended
python -m validation.validation.py
python3 -m validation.validation
```
* Unit tests for test_analytics.py and test_technical_indicators.py can be run with:

```bash
pytest tests/test_analytics.py
pytest tests/test_technical_indicators.py
```

---

## 📊 Example Output

**Longest Downward Streak and Upward Streak for GME:**

<img width="1913" height="961" alt="image" src="https://github.com/user-attachments/assets/db483fd9-59bd-40ac-89dc-9e40c949b31b" />

---

## 👨‍💻 Authors

* **Your Name** – Developer & Researcher
* **(Optional)** 

---

## 📚 References

* [Streamlit Documentation](https://docs.streamlit.io/)
* [yfinance Library](https://pypi.org/project/yfinance/)

---

## 📜 License

This project is for **academic purposes only**.
