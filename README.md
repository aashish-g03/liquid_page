![LIQUID PAGE](liquid_page.jpg)

[![Pub](https://img.shields.io/pub/v/liquid_page.svg)](https://pub.dartlang.org/packages/liquid_page) 
[![License](https://img.shields.io/badge/licence-BSD-orange.svg)](https://github.com/aashish-g03/liquid_page/blob/main/LICENSE)
[![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/aashish-g03/liquid_page.svg)](https://github.com/aashish-g03/liquid_page)
[![GitHub stars](https://img.shields.io/github/stars/aashish-g03/liquid_page.svg?style=social)](https://github.com/aashish-g03/liquid_page)

An Animated Page Route Tranisiton for Flutter with Liquid Type Page Animations making it a super easy to use and customizable page transition.

![DEMO](liquid_page_demo.gif) 

## Usage

#### Using Liquid Page

Import the package into your code:

```dart
import 'package:liquid_page/liquid_page.dart';
```
## Example

```dart
import 'package:flutter/material.dart';
import 'package:liquid_page/liquid_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Liquid Page Demo'),
        ),
        body: Center(
          child: LiquidPage(
            color1: Colors.red,
            color2: Colors.blue,
            color3: Colors.green,
            lineColor: Colors.white,
            page1:FirstPage(),
            page2:SecondPage(),
            duration: Duration(seconds: 2),
          )
        ),
      ),
    );
  }
}
```

Feel Free to request any missing features or report issues [here](https://github.com/aashish-g03/liquid_page/issues).

## License

```
Copyright (c) 2022, aashish-g03
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```