# Results

| <p align="center"><img src="/lecture_8_lab_4/Lab_4_Figure_1.png"/><br/>Figure 1</p> |
| ---------------------------------------------------------------------------------- |


| <p align="center"><img src="/lecture_8_lab_4/Lab_4_Figure_2.png"/><br/>Figure 2</p> | <p align="center"><img src="/lecture_8_lab_4/Lab_4_Figure_3.png"/><br/>Figure 3</p> |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |

---

### Section 1 – Adding Noise to the Image

In this step, I introduced two types of noise — **Gaussian noise** and **salt & pepper noise** — to the original image.  
This allowed me to observe how each noise type impacts overall image quality and detail visibility.

---

### Section 2 – Measuring Image Quality

Next, I calculated the **Mean Squared Error (MSE)** between the original and noisy images.  
A **higher MSE value** indicates a greater difference, meaning the image is more degraded due to noise.

---

### Section 3 – Linear Filtering (Average & Gaussian)

To reduce noise, I applied **mean** and **Gaussian filters**.  
These linear filters help in smoothing the image but also tend to **blur edges**, reducing sharpness and fine textures.

---

### Section 4 – Non-Linear Filtering (Median)

Here, I used the **median filter**, which replaces each pixel with the **median intensity** of its surrounding neighborhood.  
It is particularly effective for **salt & pepper noise** because it removes isolated black and white spots while **preserving edges** better than linear filters.

---

### Section 5 – Filter Performance Comparison

I compared the **MSE values** after applying different filters to identify which produced the best restoration results.  
The **median filter** performed significantly better on salt & pepper noise, showing lower error and clearer edges compared to the mean and Gaussian filters.

---

### Reflection

1. **Median filter effectiveness:**  
   The median filter efficiently removes salt & pepper noise since it replaces each pixel with the middle intensity from its neighborhood, eliminating extreme black and white dots without excessively blurring edges.

2. **Effect of linear filters:**  
   Average and Gaussian filters reduce noise but at the cost of image clarity. They smooth everything uniformly, causing edges and fine textures to lose definition.

3. **Adaptive filtering improvement:**  
   A more advanced filter could detect whether a pixel belongs to a noisy region or an edge, applying stronger filtering only where necessary.  
   This **adaptive approach** would balance noise reduction with edge preservation for improved visual quality.

---
