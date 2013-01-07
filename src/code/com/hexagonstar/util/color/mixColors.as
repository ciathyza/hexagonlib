/*
 * hexagonlib - Multi-Purpose ActionScript 3 Library.
 *       __    __
 *    __/  \__/  \__    __
 *   /  \__/HEXAGON \__/  \
 *   \__/  \__/  LIBRARY _/
 *            \__/  \__/
 *
 * Licensed under the MIT License
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
package com.hexagonstar.util.color
{
	import com.hexagonstar.types.RGB;
	
	
	/**
	 * Mixes two colors and returns the hexadecimal color value of the result.
	 * 
	 * @param color1
	 * @param color2
	 * @param ratio
	 * @return uint
	 */
    public function mixColors(color1:uint, color2:uint, ratio:Number):uint
	{
		ratio = ratio < 0.0 ? 0.0 : ratio > 1.0 ? 1.0 : ratio;
		var c1:RGB = colorHexToRGB(color1);
		var c2:RGB = colorHexToRGB(color2);
		return colorRGBToHex(new RGB(c1.r * (1 - ratio) + c2.r * ratio,
			c1.g * (1 - ratio) + c2.g * ratio,
			c1.b * (1 - ratio) + c2.b * ratio));
	}
}
