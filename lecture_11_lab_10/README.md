


### Results

| <p align="center"><img src="/lecture_11_lab_10/dark_house_result.png"/><br/>Dark House</p> |
| ---------------------------------------------------------------------------------- |


---

## Low-Light Image Enhancement Demo

This tutorial shows how to apply a **pretrained “Learning to See in the Dark” (SID-style)** deep learning model in MATLAB without requiring the complete SID dataset or training the model yourself.
The script loads a ready-made low-light enhancement network, generates a dark and noisy image, and then uses the model to enhance and denoise it.

---

### **1. Load the Network**

```matlab
load(modelFile, "netTrained");
```

This loads a deep neural network that mimics a camera pipeline for extremely low-light enhancement.

### **2. Load a Normal RGB Image**

The script reads an example image (`dark_house.png`), resizes it, and converts it to `single` precision.

### **3. Simulate a Dark + Noisy Image**

To avoid needing real RAW low-light data:

* The brightness is drastically reduced (multiplied by `0.03`).
* Gaussian noise is added.

This creates a fake low-light version of the image without real RAW data.

### **4. Create a Fake RAW 4-Channel Input**

The SID model expects a 4-channel RAW-like input.
Since we don’t have real RAW images, the script:

* Converts the RGB image to grayscale.
* Replicates it into 4 channels.

### **5. Convert to `dlarray` and Send to GPU (optional)**

The input is wrapped in a format the network understands (`SSCB`) and optionally moved to the GPU for faster inference.

### **6. Run the Model**

```matlab
out = predict(netTrained, input);
```

This produces an enhanced 3-channel RGB output.

### **7. Convert the Output Back to a Normal Image**

The network output is gathered from GPU/dlarray format and converted to `uint8`.

### **8. Display Results**

The script shows three images side by side:

1. **Original image**
2. **Simulated dark + noisy version**
3. **Network’s enhanced output**

---

## Run the code

1. Clone the git repository

```bash
git clone https://github.com/mariyahaider100/Mathematical-Algorithm
cd lecture_11_lab_10
```

2. Run the main script:

---