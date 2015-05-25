;; Copyright (C) 2015  David Arroyo Menéndez

;; Author: David Arroyo Menéndez <davidam@gnu.org>
;; Maintainer: David Arroyo Menéndez <davidam@gnu.org>

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, 
;; Boston, MA 02110-1301 USA,

;; GD functions
;; file:///usr/share/doc/php-doc/html/ref.image.html

(define-skeleton php-gd_info
  "Insert a gd_info statement. Retrieve information about the currently installed GD library"
  ""
  > "gd_info();" \n
)

(define-skeleton php-getimagesize
  "Insert a getimagesize statement."
  ""
  '(setq filename (skeleton-read "Filename? "))
  '(setq imageinfo (skeleton-read "Image info? "))
  > "getimagesize(" filename ", " imageinfo ");" \n
)

(define-skeleton php-getimagesizefromstring
  "Insert a getimagesizefromstring statement."
  ""
  '(setq imagedata (skeleton-read "Image data? "))
  '(setq imageinfo (skeleton-read "Image info? "))
  > "getimagesizefromstring(" imagedata ", " imageinfo ");" \n
)

(define-skeleton php-image_type_to_extension
  "Insert an image_type_to_extension statement. Get file extension for image type"
  ""
  '(setq imagetype (skeleton-read "Image type?"))
  '(setq include_dot (skeleton-read "Include dot to the extension (TRUE | FALSE)"))
  > "image_type_to_extension(" imagetype ", " include_dot ");" \n
)

(define-skeleton php-image_type_to_mime_type
  "Insert an image_type_to_mime_type statement"
  ""
  '(setq imagetype (skeleton-read "Image type?"))
  > "image_type_to_mime_type(" imagetype ");" \n
) 

(define-skeleton php-image2wbmp
  "Insert an image2wbmp statement. Output image to browser or file"
  ""
  '(setq filename (skeleton-read "Filename? "))
  '(setq image (skeleton-read "Image? "))
  '(setq treshold (skeleton-read "Treshold? "))
  > "image2wbmp(" filename ", " image ", " treshold ");" \n
)

(define-skeleton php-imageaffine
  "Insert an imageaffine statement."
  ""
  '(setq image (skeleton-read "Image? "))
  '(setq affine (skeleton-read "Affine array? "))
  '(setq clip (skeleton-read "Clip? "))
  > "imageaffine(" image ", " affine ", " clip ");" \n
)

(define-skeleton php-imageaffinematrixconcat
  "Insert an imageaffinematrixconcat statement"
  '(setq m1 (skeleton-read "Matrix 1? "))
  '(setq m2 (skeleton-read "Matrix 2? "))
  > "imageaffinematrixconcat(" m1 ", " m2 ");" \n
)

(define-skeleton php-imageaffinematrixget
  "Insert an imageaffinematrixget statement"
  '(setq type (skeleton-read "Type? "))
  '(setq options (skeleton-read "Options? "))
  > "imageaffinematrixget(" m1 ", " m2 ");" \n
)

(define-skeleton php-imagealphablending
  "Insert an imagealphablending statement"
  ""
  '(setq image (skeleton-read "Image? "))
  '(setq blendmode (skeleton-read "Blendmode? (TRUE | FALSE)"))
  > "imagealphablending(" image ", " blendmode ");" \n
)
