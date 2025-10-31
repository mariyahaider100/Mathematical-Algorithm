# Results

| <p align="center"><img src="/lecture_8_lab_6/Lab_6_Figure_1.png"/><br/>Figure 1</p> |
| ---------------------------------------------------------------------------------- |

---

### Section 1 – Load Image

In this step, I loaded a **fabric image** and converted it to **grayscale**.  
Working with a single channel simplifies computation and makes image processing operations faster and easier to visualize.

---

### Section 2 – Noise Removal (Pre-Processing)

To remove unwanted noise, I applied a **median filter**.  
This non-linear filter smooths the image while **preserving sharp edges**, preventing the blurring that often occurs with linear filters.

---

### Section 3 – Contrast Enhancement

Next, I used the **`imadjust`** function to enhance image contrast.  
This stretches the pixel intensity range, making **dark regions darker** and **bright regions brighter**, resulting in a clearer and more balanced image.

---

### Section 4 – Feature Extraction (Edges or Frequency)

I used the **Canny edge detector** to extract edges and significant patterns from the fabric texture.  
It highlights **boundaries, patterns, and fine details**, helping identify important structural features.

---

### Section 5 – Frequency-Domain Filtering (Optional)

As an optional step, I applied a **low-pass filter in the frequency domain**.  
This filter retains **low-frequency components** (smooth areas) and removes **high-frequency noise**, producing a cleaner and more uniform image.

---

### Section 6 – Visualization

Finally, I displayed all stages — original, filtered, enhanced, and edge-detected images — side by side for comparison.  
This visual summary clearly demonstrates how the image improves at each stage of the pipeline.

---

### Report

1. The complete pipeline includes **noise reduction**, **contrast enhancement**, **edge detection**, and **frequency filtering**.  
2. Each operation applies **digital signal processing (DSP)** concepts such as filtering and frequency transformation.  
3. The final output appears **cleaner and more detailed**, though further tuning of parameters (like filter size or threshold levels) could enhance the performance even more.

---
