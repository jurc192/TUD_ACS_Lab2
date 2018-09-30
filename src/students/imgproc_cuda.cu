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

#include "imgproc_cuda.hpp"

/* You could use this file to implement seperate basic effects */
Histogram getHistogramCUDA(const Image *src)
{
    std::cout << "Hello from getHistogramCUDA!\n";
<<<<<<< HEAD
    std::cout << "Image witdh: " << src->width << "\n";
    std::cout << "Image height: " << src->height << "\n";

    Histogram hist;

    return hist;
=======
    std::cout << "Image witdh: " << src->witdh << "\n";
    std::cout << "Image height: " << src->height << "\n";

    return nullptr;
>>>>>>> ec33721774860c87fe75f2d3b5d7dbf0c984c9f2
}