# Results

| <p align="center"><img src="/lecture_8_lab_5/Lab_5_Figure_1.png"/><br/>Figure 1</p> |
| ---------------------------------------------------------------------------------- |


| <p align="center"><img src="/lecture_8_lab_5/Lab_5_Figure_2.png"/><br/>Figure 2</p> | <p align="center"><img src="/lecture_8_lab_5/Lab_5_Figure_3.png"/><br/>Figure 3</p> |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | 

| <p align="center"><img src="/lecture_8_lab_5/Lab_5_Figure_4.png"/><br/>Figure 4</p> | <p align="center"><img src="/lecture_8_lab_5/Lab_5_Figure_5.png"/><br/>Figure 5</p> |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | 

| <p align="center"><img src="/lecture_8_lab_5/chatgpt.png"/><br/>ChatGPT Generated Image (Class Example)</p> |
| ---------------------------------------------------------------------------------- |

---

### Section 1 – Basic Derivative Filters (Sobel, Prewitt)

In this section, I applied **Sobel** and **Prewitt** filters to highlight edges based on intensity gradients.  
These filters detect points where brightness changes abruptly, effectively marking the **edges and object boundaries** within the image.

---

### Section 2 – Canny Edge Detector (Multi-Stage)

Next, I implemented the **Canny edge detection** algorithm.  
It performs **Gaussian smoothing**, computes the **image gradient**, and applies **non-maximum suppression** and **double thresholding** to produce **thin, clean, and continuous edges**.  
Compared to basic filters, Canny yields more precise and noise-free results.

---

### Section 3 – Laplacian of Gaussian (LoG)

I experimented with the **Laplacian of Gaussian (LoG)** method, which first smooths the image using a Gaussian filter and then applies the Laplacian operator to detect edges.  
LoG can identify both **fine and detailed edges**, though it tends to be more sensitive to noise compared to the Canny detector.

---

### Section 4 – Edge Map → Segmentation (Otsu Thresholding)

To transform the edge map into segmented regions, I used the **Otsu thresholding method**.  
It automatically determines an optimal threshold value from the image histogram, separating the **foreground (objects)** from the **background** and creating a **binary mask**.

---

### Section 5 – Region Labeling and Visualization

Finally, I **labeled connected components** in the binary image and visualized them with distinct colors.  
This process helps **identify, count, and analyze** different segmented objects, providing a clear view of the detected regions.

---

### Reflections

1. **Canny detector superiority:**  
   Among all edge detectors, the **Canny filter** produced the **thinnest and cleanest edges**, thanks to its multi-stage approach with noise reduction and adaptive thresholds.

2. **Comparison with Sobel and Prewitt:**  
   While Sobel and Prewitt are simpler and faster, they are more affected by noise and produce thicker edges. Canny performs better for precise edge detection.

3. **Otsu threshold connection:**  
   The **Otsu method** uses the image histogram to find the most effective threshold, automatically separating dark and bright regions for clear segmentation.

---
