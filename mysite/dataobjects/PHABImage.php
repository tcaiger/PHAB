<?php


class PHABImage extends Image {

    public function generateReSample(Image_Backend $backend, $w, $h) {
        return $backend->croppedResize($w, $h);
    }

    public function generatePHABPad(Image_Backend $backend, $w, $h) {
        return $backend->paddedResize($w, $h);
    }
}