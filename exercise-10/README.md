# Exercise 10 – 5-point & 9-point Moving-Average Filters (MAF)

This project demonstrates how to compute and analyze the **frequency response** and **pole–zero plots** of 5-point and 9-point Moving Average Filters (MAF) using MATLAB.  

---

## Filter Coefficients

- **5-point MAF:**  
  `b1 = [1 1 1 1 1]; a1 = 1;`

- **9-point MAF:**  
  `b2 = [1 1 1 1 1 1 1 1 1]; a2 = 1;`

---

## Steps Performed

1. Define filter coefficients `b1`, `b2`, `a1`, `a2`.
2. Use `freqz` to compute frequency response `[H, w]`.
3. Convert transfer function to zero–pole form using:
   ```matlab
   [z, p, k] = tf2zpk(b, a);
