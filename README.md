# 🎧 Analog to Digital Signal Simulation in MATLAB

This project demonstrates how an analog signal (like sound) is transformed into a digital signal that can be stored and processed by computers and phones. Using MATLAB, we simulate each step of the process: **signal creation**, **sampling**, **quantization**, **binary encoding**, and **bitstream generation**.

---

## 📌 What You'll Learn

- How analog signals are represented in MATLAB  
- The importance of sampling frequency (Nyquist theorem)  
- How quantization affects signal quality  
- How binary encoding creates a digital bitstream  
- Visual comparisons of signal fidelity at different settings  

---

## 🧪 Simulation Steps

1. **Analog Signal Creation**  
   Generate a 100 Hz sine wave to represent a pure tone.

2. **Sampling**  
   Sample the signal at different frequencies (150 Hz, 200 Hz, 1000 Hz) to observe aliasing and clarity.

3. **Quantization**  
   Apply different bit depths (3, 4, 6 bits) to see how resolution affects signal accuracy.

4. **Binary Encoding**  
   Convert quantized values into binary strings.

5. **Bitstream Generation**  
   Combine binary codes into a single digital stream.

---

## 📷 Visual Output

The simulation includes plots for:
- Original analog signal  
- Sampled signals at different frequencies  
- Quantized signals at different bit depths  
- Encoded binary samples and bitstream preview  

---

## 🛠️ How to Run

1. Open MATLAB  
2. Clone this repository  
3. Run the main script: `signal_simulation.m`  
4. View the figures and console output  

---

## 📁 Repository Structure
📦 MathAlgo-Assignment1  
 ┣ 📜 MATLAB-Simulation.m   # MATLAB Code for the Simulation  
 ┣ 📜 MATLAB-Testing.m      # MATLAB Code for testing different sampling frequency / bits values  
 ┣ 📁 images/               # Screenshots of plots  
 ┗ 📜 README.md             # This file  

---

## 📎 Related Blog Post

Want a simple explanation of the process?  
Check out the blog post:  
👉 [From Analog to Digital: A Simple Signal Simulation](https://dev.to/simon_chauveau_27459e6bb5/from-analog-to-digital-signal-simulation-1hm0)
