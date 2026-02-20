// swift-tools-version:5.6

// Copyright 2025 Google LLC.
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

import PackageDescription

let package = Package(
  name: "MintegralAdapter",
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "MintegralAdapterTarget",
      targets: ["MintegralAdapterTarget"]
    )
  ],
  dependencies: [
    .package(
      url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git",
      exact: "8.0.7"
    ),
    .package(
      url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
      from: "13.0.0"
    ),
  ],
  targets: [
    .target(
      name: "MintegralAdapterTarget",
      dependencies: [
        .target(name: "MintegralAdapter"),
        .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
        .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
      ],
      path: "MintegralAdapterTarget"
    ),
    .binaryTarget(
      name: "MintegralAdapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/mintegral/MintegralAdapter-8.0.7.0.zip",
      checksum: "d232222c8b9cc382cd934a02cf66e8ed81c135ae29ecfa45e87397f063f7e318"
    ),
  ]
)
