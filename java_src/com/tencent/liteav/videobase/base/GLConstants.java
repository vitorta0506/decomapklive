package com.tencent.liteav.videobase.base;

import com.tencent.liteav.base.annotations.CalledByNative;
/* loaded from: classes4.dex */
public interface GLConstants {

    /* renamed from: a  reason: collision with root package name */
    public static final float[] f31727a = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f};

    /* renamed from: b  reason: collision with root package name */
    public static final float[] f31728b = {-1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f};

    /* renamed from: c  reason: collision with root package name */
    public static final float[] f31729c = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};

    /* renamed from: d  reason: collision with root package name */
    public static final float[] f31730d = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};

    /* renamed from: e  reason: collision with root package name */
    public static final float[] f31731e = {1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f};

    /* renamed from: f  reason: collision with root package name */
    public static final float[] f31732f = {0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f};

    /* renamed from: g  reason: collision with root package name */
    public static final float[] f31733g = {1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f};

    /* loaded from: classes4.dex */
    public enum GLScaleType {
        CENTER_CROP(0),
        FIT_CENTER(1),
        FILL(2);
        

        /* renamed from: d  reason: collision with root package name */
        private static final GLScaleType[] f31737d = values();
        public int mValue;

        GLScaleType(int i9) {
            this.mValue = i9;
        }

        public static GLScaleType a(int i9) {
            GLScaleType[] gLScaleTypeArr;
            for (GLScaleType gLScaleType : f31737d) {
                if (gLScaleType.mValue == i9) {
                    return gLScaleType;
                }
            }
            return FIT_CENTER;
        }
    }

    /* loaded from: classes4.dex */
    public enum MirrorMode {
        AUTO(0),
        ENABLE(1),
        DISABLE(2);
        

        /* renamed from: d  reason: collision with root package name */
        private static final MirrorMode[] f31742d = values();
        int mValue;

        MirrorMode(int i9) {
            this.mValue = i9;
        }

        public static MirrorMode a(int i9) {
            MirrorMode[] mirrorModeArr;
            for (MirrorMode mirrorMode : f31742d) {
                if (mirrorMode.mValue == i9) {
                    return mirrorMode;
                }
            }
            return AUTO;
        }
    }

    /* loaded from: classes4.dex */
    public enum Orientation {
        LANDSCAPE(0),
        PORTRAIT(1),
        LANDSCAPE_WITHOUT_ROTATION(2);
        

        /* renamed from: d  reason: collision with root package name */
        private static final Orientation[] f31747d = values();
        int mValue;

        Orientation(int i9) {
            this.mValue = i9;
        }

        public static Orientation a(int i9) {
            Orientation[] orientationArr;
            for (Orientation orientation : f31747d) {
                if (orientation.mValue == i9) {
                    return orientation;
                }
            }
            return PORTRAIT;
        }
    }

    /* loaded from: classes4.dex */
    public enum PixelBufferType {
        BYTE_BUFFER(0),
        TEXTURE_2D(1),
        TEXTURE_OES(2),
        BYTE_ARRAY(3);
        

        /* renamed from: e  reason: collision with root package name */
        private static final PixelBufferType[] f31753e = values();
        public int mValue;

        PixelBufferType(int i9) {
            this.mValue = i9;
        }

        public static PixelBufferType a(int i9) {
            PixelBufferType[] pixelBufferTypeArr;
            for (PixelBufferType pixelBufferType : f31753e) {
                if (pixelBufferType.mValue == i9) {
                    return pixelBufferType;
                }
            }
            return TEXTURE_2D;
        }
    }

    /* loaded from: classes4.dex */
    public enum PixelFormatType {
        I420(0),
        NV12(1),
        NV21(2),
        RGB(3),
        YUY2(4),
        RGBA(5),
        BGR(6),
        YV12(7),
        BGRA(8),
        ARGB(9),
        YUV422P(10),
        UYVY(11),
        YUYV(12),
        JPG(13),
        H264(14),
        MAX(100);
        

        /* renamed from: q  reason: collision with root package name */
        private static final PixelFormatType[] f31771q = values();
        private final int mJniValue;

        PixelFormatType(int i9) {
            this.mJniValue = i9;
        }

        public static PixelFormatType a(int i9) {
            PixelFormatType[] pixelFormatTypeArr;
            for (PixelFormatType pixelFormatType : f31771q) {
                if (pixelFormatType.mJniValue == i9) {
                    return pixelFormatType;
                }
            }
            return null;
        }

        @CalledByNative
        public final int getValue() {
            return this.mJniValue;
        }
    }
}
