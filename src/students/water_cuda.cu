// Copyright 2018 Delft University of Technology
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <iostream>

#include "../baseline/water.hpp"

#include "water_cuda.hpp"

// Added by JUR:
#include "imgproc_cuda.hpp"



std::shared_ptr<Histogram> runHistogramStageCUDA(const Image *previous, const WaterEffectOptions *options) {
  
  std::cout << "runHistogramCUDA!\n";
  // auto hist = std::make_shared<Histogram>(getHistogram(previous));

  // // Optionally save the intermediate histogram as an image
  // if (options->save_intermediate) {
  //   auto hist_img = hist->toImage();
  //   hist_img->toPNG("output/" + options->img_name + "_histogramCUDA.png");
  // }
  // return hist;
  return nullptr;
}


/*
  JUR: Main function that executes pipeline functions based on selected options
*/
std::shared_ptr<Image> runWaterEffectCUDA(const Image *src, const WaterEffectOptions *options) {
   
   std::cout << "waterEffect CUDA!\n";
   
   // Stage timer
   Timer ts;

   // Smart pointers to intermediate images:
   std::shared_ptr<Histogram> hist;
   std::shared_ptr<Image> img_result;
 
   // Histogram stage
   if (options->histogram) {
     std::cout << "Running histogram stage @CUDA!\n";

     ts.start();
     hist = runHistogramStageCUDA(src, options);
     ts.stop();
     std::cout << "Stage: Histogram:        " << ts.seconds() << " s." << std::endl;
   }
 
   // Contrast enhancement stage
   if (options->enhance) {
     std::cout << "Enhancment stage @CUDA not yet implemented!\n";
   }
 
   // Ripple effect stage
   if (options->ripple) {
     std::cout << "Ripple stage @CUDA not yet implemented!\n";
   }
 
   // Gaussian blur stage
   if (options->blur) {
     std::cout << "Blur stage @CUDA not yet implemented!\n";
   }
 
   return img_result;
}