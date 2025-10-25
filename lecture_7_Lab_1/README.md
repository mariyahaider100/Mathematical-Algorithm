# Results
| <p align="center"><img src="/lecture_7_lab_1/Lab_1_Figure_1.png"/><br/>Figure 1</p> |
| ---------------------------------------------------------------------------------- |


| <p align="center"><img src="/lecture_7_lab_1/Lab_1_Figure_2.png"/><br/>Figure 2</p> | <p align="center"><img src="/lecture_7_lab_1/Lab_1_Figure_3.png"/><br/>Figure 3</p> | <p align="center"><img src="/lecture_7_lab_1/Lab_1_Figure_4.png"/><br/>Figure 4</p> |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |

| <p align="center"><img src="/lecture_7_lab_1/Lab_1_Figure_5.png"/><br/>Figure 5</p> | <p align="center"><img src="/lecture_7_lab_1/Lab_1_Figure_6.png"/><br/>Figure 6</p> | <p align="center"><img src="/lecture_7_lab_1/Lab_1_Figure_7.png"/><br/>Figure 7</p> |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |



## Image Sampling and Quantization Experiment

### 0) Load and Inspect an Image
I started by loading the image (`peppers.png` or `cameraman.tif`) and converting it to grayscale.  
This helps focus only on brightness (luminance) instead of color, which is important for understanding sampling and quantization.  
I also checked the image size and pixel value range to understand what I’m working with.

---

### 1) Quantization and Dynamic Range
Here, I tested how reducing bit depth affects image quality.  
When I reduced it from **8-bit** to approximately **6-bit** and **4-bit**, I noticed visible banding and loss of smooth gradients.  
The **4-bit** version looked more *posterized*.  
This demonstrates how fewer intensity levels cause visible jumps between shades.

---

### 2) Histogram and Contrast Stretching
I plotted histograms before and after applying contrast stretching.  
The original image had pixel values mostly in the middle range, but after stretching, the histogram spread across the full range (0–255).  
This made the image clearer and improved the visibility of darker and brighter details.

---

### 3) Gamma Correction
In this part, I experimented with nonlinear brightness adjustments.  
When I used **gamma < 1**, the image became brighter; with **gamma > 1**, it became darker.  
Gamma correction doesn’t just stretch contrast — it changes how mid-tones are displayed, which is useful for adjusting perceived brightness.

---

### 4) Sampling and Aliasing
I reduced the image size aggressively (downsampled) and then scaled it back up.  
The result looked blocky and lost fine details.  
This happens because of **aliasing** — when the sampling rate is too low to capture image details (violating the Nyquist theorem).  
It highlights why proper sampling frequency is crucial to avoid visual distortions.

---

### 5) Short Reflections

**1. Bit Depth and Banding:**  
Reducing bit depth caused visible steps or bands in smooth regions.  
Fewer gray levels mean less smooth transitions, resulting in *posterization*.

**2. Contrast Stretching:**  
Stretching expanded the histogram range and revealed hidden details in shadows and highlights.  
The image appeared more dynamic and natural.

**3. Aliasing from Downsampling:**  
Aggressive downsampling removed high-frequency details, which reappeared as jagged or false patterns after resizing.  
This occurs when the sampling rate falls below twice the highest frequency, as explained by the **Nyquist rule**.

---



