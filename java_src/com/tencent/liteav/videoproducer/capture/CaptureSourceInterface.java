package com.tencent.liteav.videoproducer.capture;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import java.util.Locale;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public abstract class CaptureSourceInterface {
    private static final String TAG = "CaptureSourceInterface";

    /* renamed from: com.tencent.liteav.videoproducer.capture.CaptureSourceInterface$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32480a;

        static {
            int[] iArr = new int[SourceType.values().length];
            f32480a = iArr;
            try {
                iArr[SourceType.CAMERA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32480a[SourceType.SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32480a[SourceType.VIRTUAL_CAMERA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class CaptureParams {

        /* renamed from: b  reason: collision with root package name */
        public int f32481b;

        /* renamed from: c  reason: collision with root package name */
        public int f32482c;

        /* renamed from: d  reason: collision with root package name */
        public int f32483d;

        /* renamed from: e  reason: collision with root package name */
        public Rect f32484e;

        public CaptureParams() {
        }

        public CaptureParams(CaptureParams captureParams) {
            this.f32481b = captureParams.f32481b;
            this.f32482c = captureParams.f32482c;
            this.f32483d = captureParams.f32483d;
            this.f32484e = captureParams.f32484e;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof CaptureParams) {
                CaptureParams captureParams = (CaptureParams) obj;
                return this.f32481b == captureParams.f32481b && this.f32482c == captureParams.f32482c && this.f32483d == captureParams.f32483d;
            }
            return false;
        }

        @NonNull
        public String toString() {
            return String.format(Locale.ENGLISH, "size: %dx%d, fps: %d", Integer.valueOf(this.f32482c), Integer.valueOf(this.f32483d), Integer.valueOf(this.f32481b));
        }
    }

    /* loaded from: classes4.dex */
    public interface CaptureSourceListener {
        void onCameraTouchEnable(boolean z10);

        void onCameraZoomEnable(boolean z10);

        void onCaptureError();

        void onCaptureFirstFrame();

        void onFrameAvailable(CaptureSourceInterface captureSourceInterface, PixelFrame pixelFrame);

        void onScreenDisplayOrientationChanged(boolean z10);

        void onStartFinish(boolean z10);
    }

    /* loaded from: classes4.dex */
    public enum SourceType {
        NONE(0),
        CAMERA(1),
        SCREEN(2),
        VIRTUAL_CAMERA(3),
        CUSTOM(4);
        

        /* renamed from: f  reason: collision with root package name */
        private static final SourceType[] f32490f = values();
        private final int mValue;

        SourceType(int i9) {
            this.mValue = i9;
        }

        public static SourceType a(int i9) {
            SourceType[] sourceTypeArr;
            for (SourceType sourceType : f32490f) {
                if (sourceType.mValue == i9) {
                    return sourceType;
                }
            }
            return NONE;
        }
    }

    @CalledByNative
    static CaptureSourceInterface create(SourceType sourceType, IVideoReporter iVideoReporter, Handler handler) {
        if (handler != null && handler.getLooper() != null) {
            Looper looper = handler.getLooper();
            Context applicationContext = ContextUtils.getApplicationContext();
            int i9 = AnonymousClass1.f32480a[sourceType.ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return null;
                    }
                    return new VirtualCamera(looper, iVideoReporter);
                }
                return new ScreenCapturer(applicationContext, looper, iVideoReporter);
            }
            return new t(iVideoReporter, looper);
        }
        LiteavLog.e(TAG, "create capture source instance with invalid handler ".concat(String.valueOf(handler)));
        return null;
    }

    @CalledByNative
    public abstract void pause();

    @CalledByNative
    public abstract void resume();

    @CalledByNative
    public abstract void setCaptureCloudConfig(CaptureCloudConfig captureCloudConfig);

    @CalledByNative
    public abstract void start(Object obj, CaptureParams captureParams, CaptureSourceListener captureSourceListener);

    @CalledByNative
    public abstract void stop();

    @CalledByNative
    public abstract void updateParams(CaptureParams captureParams);
}
