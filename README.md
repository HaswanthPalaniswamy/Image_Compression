# Image Compression using K-means and PSO

## Overview
This project presents a novel approach to image compression by combining K-means clustering with Particle Swarm Optimization (PSO). The method aims to reduce image size while preserving perceptual fidelity, offering a robust alternative to traditional compression techniques such as JPEG and Genetic Algorithms (GA).

---

## Methodology

### Key Phases
1. **Image Initialization:**
   - Load the original image.
   - Determine the parameter 'k' for K-means clustering and initialize cluster centroids randomly.

2. **Particle Swarm Optimization (PSO):**
   - Initialize a population of particles, where each particle represents a centroid configuration.
   - Use a fitness function to measure reconstruction error between the original and compressed images.
   - Update particle velocities and positions iteratively based on personal and global best-known positions.

3. **Cluster Assignment:**
   - Assign pixels to the nearest centroid based on optimal cluster configurations.
   - Replace pixel values with the corresponding cluster centroids to achieve compression.

4. **Evaluation Metrics:**
   - Compression ratio.
   - Perceptual quality metrics: PSNR (Peak Signal-to-Noise Ratio) and SSIM (Structural Similarity Index).

5. **Comparison and Validation:**
   - Perform parameter tuning to optimize results.
   - Compare outcomes with GA and JPEG compression techniques.

---

## Results

### Compression Outcomes
- **Folder Size Comparison:**
  - JPEG: 105 MB
  - PSO (compressed): 86 MB
  - GA (compressed): 92 MB

### Performance Metrics
- **PSNR Comparison:**
  - PSO consistently achieves higher PSNR values compared to GA.
- **Error Analysis:**
  - PSO demonstrates lower reconstruction error than GA.

---

## Advantages
- Superior compression ratio and perceptual quality compared to GA and JPEG.
- Demonstrated reproducibility of results through quantitative analyses.

---

## Future Work
This methodology provides a solid foundation for further advancements in image compression techniques. Possible future enhancements include:
- Exploring alternative clustering algorithms.
- Optimizing PSO parameters for faster convergence.
- Extending the approach to video compression.

---

## Citation
Please reference the methodology and results from this report for academic and research purposes.