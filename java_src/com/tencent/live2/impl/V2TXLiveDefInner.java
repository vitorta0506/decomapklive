package com.tencent.live2.impl;
/* loaded from: classes4.dex */
public class V2TXLiveDefInner {

    /* loaded from: classes4.dex */
    public static class SurfaceSize {
        public int height;
        public int width;

        public SurfaceSize(int i9, int i10) {
            this.width = i9;
            this.height = i10;
        }

        public String toString() {
            return "[width:" + this.width + "][height:" + this.height + "]";
        }
    }

    /* loaded from: classes4.dex */
    public static class TXLivePropertyKey {
        public static final String kV2EnableAGC = "enableAGC";
        public static final String kV2EnableANS = "enableANS";
        public static final String kV2EnableCameraZoom = "enableCameraZoom";
        public static final String kV2EnableRTMPAcc = "enableRTMPAcc";
        public static final String kV2EnableRealtimeMode = "enableRealtimeMode";
        public static final String kV2SetAudioRoute = "setAudioRoute";
        public static final String kV2SetFramework = "setFramework";
        public static final String kV2SetLEBEnvironment = "setLEBEnvironment";
        public static final String kV2SetOpenGLContext = "setOpenGLContext";
        public static final String kV2SetPreferLocalIPStack = "setPreferLocalIPStack";
        public static final String kV2SetSurface = "setSurface";
        public static final String kV2SetSurfaceSize = "setSurfaceSize";
    }
}
