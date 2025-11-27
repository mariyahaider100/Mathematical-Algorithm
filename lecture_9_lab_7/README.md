**Author:** Mariya Haider 

**Course:** Mathematical Algorithms (DSP) 




# Results

| <p align="center"><img src="/lecture_9_lab_7/figure_7.png"/><br/>Figure 1</p> |
| ---------------------------------------------------------------------------------- |


## 1. Objective

This study explores how various image denoising techniques perform when a clean image is corrupted by **Gaussian noise**. The objectives include:

* Introducing Gaussian noise to a grayscale image.

* Evaluating image quality through MSE, PSNR, and SSIM metrics.

* Comparing the performance of classic filters (Mean, Median, Gaussian Blur) against a pre-trained AI-based DnCNN model.

Presenting both numerical results and visual comparisons of the processed images.
---

## 2. Noise Modeling

Gaussian noise was added to the original grayscale image:

[
I_{noisy} = I_{original} + N(0, \sigma^2)
]

In this experiment:

* Noise standard deviation: **σ = 0.04**
* MATLAB function used: `imnoise(originalImage, 'gaussian', 0, σ²)`

---

## 3. Filters Compared

| Filter            | Type       | Description                                                                    |
| ----------------- | ---------- | ------------------------------------------------------------------------------ |
| **Mean Filter**   | Linear     | Averages neighborhood pixels, smooths noise but blurs edges.                   |
| **Median Filter** | Non-linear | Preserves edges better, commonly used for salt-and-pepper noise.               |
| **Gaussian Blur** | Linear     | Weighted smoothing, reduces noise softly but still causes blurring.            |
| **DnCNN**         | AI / CNN   | Deep learning model trained to remove Gaussian noise while preserving texture. |

---

## 4. Image Quality Metrics

The following metrics were computed:

* **MSE (Mean Square Error)** – lower is better
* **PSNR (Peak Signal-to-Noise Ratio)** – higher is better
* **SSIM (Structural Similarity Index)** – higher is better (closer to original image structure)

```matlab
mseVal = immse(filteredImage, originalImage);
psnrVal = psnr(filteredImage, originalImage);
ssimVal = ssim(filteredImage, originalImage);
```

---

## 5. Visual Observation Results

### **Original vs. Noisy**

* The noisy image looks speckled, and the fine details and contrast are noticeably degraded.

### **Mean Filter**

* Noise is partially diminished.

* Noticeable blurring is introduced.

* Edges lose their sharpness.

### **Median Filter**

* Retains edges more effectively than the Mean filter.
* Performs well for impulse noise, but less efficient against Gaussian noise.
* Offers modest improvement, though some details are still lost.

### **Gaussian Blur**

* Produces a smooth and visually pleasing result.
* However, edges still lose sharpness.
* Some fine textures are washed out.

### **AI-Based DnCNN (Best Result)**

* **Noise is removed effectively** while **preserving small details and edges**.
* Produces the **highest PSNR and SSIM** values.
* Looks **closest to the original image** compared to traditional methods.

---

## 6. Conclusion

| Method         | Noise Removal         | Edge Preservation | Overall Effectiveness |
| -------------- | --------------------- | ----------------- | --------------------- |
| Mean Filter    | Moderate              | Poor              | Low                   |
| Median Filter  | Moderate for Gaussian | Good              | Medium                |
| Gaussian Blur  | Moderate              | Medium            | Medium                |
| **AI (DnCNN)** | **Excellent**         | **Excellent**     | **High (Best)**       |



---
