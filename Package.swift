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
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "MintegralAdapterTarget",
      targets: ["MintegralAdapterTarget"]
    )
  ],
  dependencies: [
    .package(
      url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git",
      exact: "7.7.9"
    )
  ],
  targets: [
    .target(
      name: "MintegralAdapterTarget",
      dependencies: [
        .target(name: "MintegralAdapter"),
        .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
      ],
      path: "MintegralAdapterTarget"
    ),
    .binaryTarget(
      name: "MintegralAdapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/mintegral/MintegralAdapter-7.7.9.1.zip",
      checksum: "1af4a03c3e2b1f6cac5bd9a209ab6de992cd0f4ebb55884cb8980958140f816a"
    ),
  ]
)
