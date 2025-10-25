
# Results

| <p align="center"><img src="/lecture_7_lab_2/Lab_2_Figure_1.png"/><br/>Figure 1</p> |
| ---------------------------------------------------------------------------------- |


| <p align="center"><img src="/lecture_7_lab_2/Lab_2_Figure_2.png"/><br/>Figure 2</p> | <p align="center"><img src="/lecture_7_lab_2/Lab_2_Figure_3.png"/><br/>Figure 3</p> | 
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |

| <p align="center"><img src="/lecture_7_lab_2/Lab_2_Figure_4.png"/><br/>Figure 4</p> | <p align="center"><img src="/lecture_7_lab_2/Lab_2_Figure_5.png"/><br/>Figure 5</p> |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | 


## Image Filtering and Convolution Analysis

### 0) Loading the Image
The experiment began with loading `peppers.png` (or `cameraman.tif` if unavailable) and converting it to grayscale.  
Working with grayscale simplifies the filtering process since it isolates brightness variations, allowing a direct study of intensity-based transformations without the influence of color.

---

### 1) Impulse Image and Filter Response
To understand how filters behave, I first created an impulse (delta) image and applied a **3×3 averaging filter** to it.  
The output visualized how each pixel in the kernel affects the final result — essentially revealing the filter’s spatial response pattern.  
This step helps interpret what a filter does before applying it to a real image.

---

### 2) Low-Pass Filtering: Comparing Box and Gaussian Filters
Next, I applied **box filters** of sizes **3×3** and **7×7**, as well as a **Gaussian filter**.  
Increasing the filter size produced stronger blurring but also introduced block-like artifacts in the box-filtered images.  
The Gaussian filter, however, achieved smoother transitions and less distortion.  
Since the Gaussian filter is **separable**, it can be implemented using two 1D filters, which makes it computationally more efficient.

---

### 3) Image Sharpening with Unsharp Masking
In this stage, I performed **unsharp masking** for image enhancement.  
After blurring the image with a Gaussian filter, I subtracted the blurred version from the original to obtain a high-frequency component.  
Adding this component back emphasized edges and fine textures.  
The sharpened result appeared much clearer while retaining the original brightness levels.

---

### 4) Edge Detection Techniques: Sobel and Laplacian
I then explored edge detection using **Sobel** and **Laplacian** operators.  
The Sobel filters, applied in horizontal and vertical directions, highlighted directional edges, while the Laplacian operator emphasized all edges regardless of their orientation.  
This comparison demonstrated the difference between gradient-based and isotropic edge detection methods.

---

### 5) Correlation Versus Convolution
To distinguish between **correlation** and **convolution**, I used MATLAB’s `conv2()` and `imfilter()` functions.  
Although their numerical outputs were nearly identical, the underlying operations differ — convolution flips the kernel before applying it, while correlation does not.  
Recognizing this difference is important when designing or analyzing custom filter kernels.

---

### 6) Handling Image Boundaries
I examined how different boundary handling methods affect filtering results, using the following modes:

- **Replicate:** Extends edge pixels beyond the image border.  
- **Symmetric:** Mirrors the content along the boundary, creating smoother edge continuity.  
- **Circular:** Wraps the image around, which can introduce artificial transitions at corners.  

Each method affects how filters behave near the edges, especially for large kernels.

---

### 7) Reflections

**1. Gaussian vs Box Filters:**  
Gaussian filters offer smoother blurring with fewer artifacts compared to large box filters, which can produce harsh edges.

**2. Efficiency of Separable Filters:**  
By separating a 2D Gaussian into two 1D filters, the computation becomes much faster — reducing complexity from *N²* to *2N* operations.

**3. Impact of Boundary Handling:**  
The way boundaries are treated significantly influences the visual quality of the filtered image.  
The **symmetric** method gives the most natural look, while **replicate** and **circular** methods may introduce visible discontinuities.

---
