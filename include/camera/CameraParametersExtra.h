/*
 * Copyright (C) 2015 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef CAMERA_PARAMETERS_EXTRA_C 
#define CAMERA_PARAMETERS_EXTRA_C \
const char CameraParameters::SCENE_MODE_BURST[] = "burst"; \
const char CameraParameters::SCENE_MODE_MANUAL[] = "manual"; \
const char CameraParameters::SCENE_MODE_PANORAMA[] = "panorama"; \
const char CameraParameters::SCENE_MODE_PANORAMA_360[] = "panorama360"; \
const char CameraParameters::SCENE_MODE_TEXT[] = "text"; \
const char CameraParameters::SCENE_MODE_ZOE[] = "zoe"; \
const char CameraParameters::ISO_AUTO[] = "auto"; \
const char CameraParameters::ISO_HJR[] = "ISO_HJR"; \
const char CameraParameters::ISO_100[] = "ISO100"; \
const char CameraParameters::ISO_200[] = "ISO200"; \
const char CameraParameters::ISO_400[] = "ISO400"; \
const char CameraParameters::ISO_800[] = "ISO800"; \
const char CameraParameters::ISO_1600[] = "ISO1600"; \
const char CameraParameters::VIDEO_HFR_OFF[] = "off"; \
const char CameraParameters::VIDEO_HFR_2X[] = "60"; \
const char CameraParameters::VIDEO_HFR_3X[] = "90"; \
const char CameraParameters::VIDEO_HFR_4X[] = "120"; \
const char CameraParameters::VIDEO_HFR_5X[] = "150"; \
const char CameraParameters::KEY_FASTVIDEO_FPS60_1080P_SUPPORTED[] = "video-1080p60fps-supported"; \
const char CameraParameters::KEY_SLOW_MOTION_SUPPORTED[] = "video-slow-motion-supported"; \
const char CameraParameters::KEY_SLOW_MOTION_MULTIPLE[] = "slow-motion-x"; \
const char CameraParameters::KEY_SLOW_MOTION_RES[] = "slow-motion-res"; \
const char CameraParameters::KEY_FASTVIDEO_FPS60_SUPPORTED[] = "video-720p60fps-supported"; \
const char CameraParameters::KEY_CONTIBURST_TAKE[] = "take"; \
const char CameraParameters::KEY_CONTIBURST_SUPPORTED_MODE[] = "contiburst-support-mode"; \
const char CameraParameters::KEY_NON_ZSL_MANUAL_MODE[] = "non-zsl-manual-mode"; \
const char CameraParameters::KEY_VIDEO_MODE[] = "video-mode"; \
const char CameraParameters::KEY_FORCE_USE_AUDIO_ENABLED[] = "force-use-audio-enabled"; \
const char CameraParameters::KEY_SLOW_MOTION_VERSION[] = "slow-motion-version"; \
const char CameraParameters::KEY_SAVE_MIRROR[] = "save-mirror"; \
const char CameraParameters::DENOISE_ON[] = "denoise-on"; \
const char CameraParameters::DENOISE_OFF[] = "denoise-off";
#endif
#ifndef CAMERA_PARAMETERS_EXTRA_H
#define CAMERA_PARAMETERS_EXTRA_H \
    static const char SCENE_MODE_BURST[]; \
    static const char SCENE_MODE_MANUAL[]; \
    static const char SCENE_MODE_PANORAMA[]; \
    static const char SCENE_MODE_PANORAMA_360[]; \
    static const char SCENE_MODE_TEXT[]; \
    static const char SCENE_MODE_ZOE[]; \
    static const char ISO_AUTO[]; \
    static const char ISO_HJR[]; \
    static const char ISO_100[]; \
    static const char ISO_200[]; \
    static const char ISO_400[]; \
    static const char ISO_800[]; \
    static const char ISO_1600[]; \
    static const char VIDEO_HFR_OFF[]; \
    static const char VIDEO_HFR_2X[]; \
    static const char VIDEO_HFR_3X[]; \
    static const char VIDEO_HFR_4X[]; \
    static const char VIDEO_HFR_5X[]; \
    static const char KEY_FASTVIDEO_FPS60_1080P_SUPPORTED[]; \
    static const char KEY_SLOW_MOTION_SUPPORTED[]; \
    static const char KEY_SLOW_MOTION_MULTIPLE[]; \
    static const char KEY_SLOW_MOTION_RES[]; \
    static const char KEY_FASTVIDEO_FPS60_SUPPORTED[]; \
    static const char KEY_CONTIBURST_TAKE[]; \
    static const char KEY_CONTIBURST_SUPPORTED_MODE[]; \
    static const char KEY_NON_ZSL_MANUAL_MODE[]; \
    static const char KEY_VIDEO_MODE[]; \
    static const char KEY_FORCE_USE_AUDIO_ENABLED[]; \
    static const char KEY_SLOW_MOTION_VERSION[]; \
    static const char KEY_SAVE_MIRROR[]; \
    static const char DENOISE_ON[]; \
    static const char DENOISE_OFF[];
#endif