## Overview

In this lab, I experimented with **frequency-domain filtering** on grayscale images using the 2D Fast Fourier Transform (`fft2`). The purpose was to understand the connection between **spatial convolution and frequency-domain multiplication**, compare **ideal and Gaussian low-pass filters**, and observe the behavior of **high-pass filtering**.

---

## 1) Log-Magnitude Spectrum

The log-magnitude spectrum helps display the frequency content of an image.  

**Code snippet:**  
```matlab
F = fft2(I);
Fshift = fftshift(F);
S = log(1 + abs(Fshift));
imshow(S,[]);
```

**Screenshot:**  
![Log-magnitude spectrum](figures/log_magnitude_spectrum.png)

**Explanation:**  
`fftshift` moves the low-frequency components to the center of the spectrum. Bright regions represent dominant frequency components.

---

## 2) Low-Pass Filtering in Frequency Domain

Two filters were implemented: **Ideal circular low-pass** and **Gaussian low-pass**.

* **Ideal LP:** Uses a hard cutoff (`D <= D0`) and introduces **ringing artifacts (Gibbs phenomenon)**.  
* **Gaussian LP:** Applies a smooth transition (`exp(-D^2/(2*sigma^2))`), resulting in a cleaner, smoother image.

**Code snippet:**  
```matlab
G_ideal = ifft2(ifftshift(H_ideal_LP .* Fshift));
G_gauss = ifft2(ifftshift(H_gauss_LP .* Fshift));
```

**Screenshot:**  
![Original | Ideal LP | Gaussian LP](figures/LP_comparison.png)

**Explanation:**  
The ideal low-pass filter produces sharper transitions but causes rippling artifacts, while the Gaussian low-pass provides smoother and more natural results.

---

## 3) High-Pass Filtering via Complement

A **high-pass filter** was created by subtracting the Gaussian low-pass filter from 1, which enhances edges and fine details.

**Code snippet:**  
```matlab
H_gauss_HP = 1 - H_gauss_LP;
G_hp = real(ifft2(ifftshift(H_gauss_HP .* Fshift)));
G_hp = mat2gray(G_hp);
```

**Screenshot:**  
![Original | Gaussian HP](figures/HP_result.png)

**Explanation:**  
High-pass filtering emphasizes high-frequency areas, highlighting edges and textures.

---

## 4) Spatial vs Frequency-Domain Gaussian LP

To confirm the **convolution theorem**, I compared Gaussian filtering in the spatial domain and the frequency domain.

**Code snippet:**  
```matlab
g1d = fspecial('gaussian',[1 7], 1.2);
I_spatial_gauss = imfilter(I, g1d'*g1d, 'replicate');
```

**Screenshot:**  
![Spatial vs Frequency Gaussian LP](figures/spatial_vs_freq_gauss.png)

**Explanation:**  
Both outputs appeared nearly identical, proving that **convolution in the spatial domain = multiplication in the frequency domain**.

---

## 5) Reflections

1. **Why does the ideal LP cause ringing?**  
   Sharp frequency cutoffs introduce discontinuities, resulting in oscillations (Gibbs phenomenon).  

2. **Purpose of `fftshift`:**  
   It centers the zero-frequency component for easier spectrum visualization.  

3. **When is frequency-domain filtering better?**  
   It’s more efficient for large images or non-separable filters, as FFT-based convolution is computationally faster.

---

## Notes

* All figures are saved under the `figures/` directory.  
* If no image is found, the script automatically loads `cameraman.tif`.  
* This lab demonstrates the trade-offs between ideal and Gaussian filters and validates the relationship between spatial and frequency-domain operations.
