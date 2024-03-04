package com.tencent.liteav.live;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import com.tencent.liteav.audio.TXAudioEffectManager;
import com.tencent.liteav.audio.TXAudioEffectManagerImpl;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.beauty.TXBeautyManager;
import com.tencent.liteav.beauty.TXBeautyManagerImpl;
import com.tencent.liteav.device.TXDeviceManager;
import com.tencent.liteav.device.TXDeviceManagerImpl;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.V2TXLivePusher;
import com.tencent.live2.V2TXLivePusherObserver;
import com.tencent.live2.impl.V2TXLiveDefInner;
import com.tencent.live2.impl.V2TXLiveProperty;
import com.tencent.live2.impl.a.b;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.lang.ref.WeakReference;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import org.json.JSONObject;
@JNINamespace("liteav")
/* loaded from: classes4.dex */
public class V2TXLivePusherJni extends V2TXLivePusher {
    private static final String TAG = "V2TXLivePusherJni";
    private TXAudioEffectManager mAudioEffectManager;
    private TXBeautyManager mBeautyManager;
    private TXDeviceManager mDeviceManager;
    private long mNativeV2TXLivePusherJni;
    private V2TXLivePusherObserver mObserver;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.live.V2TXLivePusherJni$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f31225a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f31226b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f31227c;

        /* renamed from: d  reason: collision with root package name */
        static final /* synthetic */ int[] f31228d;

        /* renamed from: e  reason: collision with root package name */
        static final /* synthetic */ int[] f31229e;

        static {
            int[] iArr = new int[GLConstants.PixelBufferType.values().length];
            f31229e = iArr;
            try {
                iArr[GLConstants.PixelBufferType.TEXTURE_2D.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31229e[GLConstants.PixelBufferType.BYTE_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31229e[GLConstants.PixelBufferType.BYTE_BUFFER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[GLConstants.PixelFormatType.values().length];
            f31228d = iArr2;
            try {
                iArr2[GLConstants.PixelFormatType.I420.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31228d[GLConstants.PixelFormatType.RGBA.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[V2TXLiveDef.V2TXLiveBufferType.values().length];
            f31227c = iArr3;
            try {
                iArr3[V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeTexture.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f31227c[V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeByteArray.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f31227c[V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeByteBuffer.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr4 = new int[V2TXLiveDef.V2TXLivePixelFormat.values().length];
            f31226b = iArr4;
            try {
                iArr4[V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatI420.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f31226b[V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatTexture2D.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr5 = new int[V2TXLiveDef.V2TXLiveRotation.values().length];
            f31225a = iArr5;
            try {
                iArr5[V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation90.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f31225a[V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation180.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f31225a[V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation270.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public V2TXLivePusherJni(Context context, int i9) {
        ContextUtils.initApplicationContext(context.getApplicationContext());
        ContextUtils.setDataDirectorySuffix("liteav");
        long nativeCreate = nativeCreate(new WeakReference(this), i9);
        this.mNativeV2TXLivePusherJni = nativeCreate;
        this.mAudioEffectManager = new TXAudioEffectManagerImpl(nativeCreateAudioEffectManager(nativeCreate));
        this.mBeautyManager = new TXBeautyManagerImpl(nativeCreateBeautyManager(this.mNativeV2TXLivePusherJni));
        this.mDeviceManager = new TXDeviceManagerImpl(nativeCreateDeviceManager(this.mNativeV2TXLivePusherJni));
    }

    private static native long nativeCreate(WeakReference<V2TXLivePusherJni> weakReference, int i9);

    private static native long nativeCreateAudioEffectManager(long j10);

    private static native long nativeCreateBeautyManager(long j10);

    private static native long nativeCreateDeviceManager(long j10);

    private static native void nativeDestroy(long j10);

    private static native int nativeEnableCustomAudioCapture(long j10, boolean z10);

    private static native int nativeEnableCustomVideoCapture(long j10, boolean z10);

    private static native int nativeEnableCustomVideoProcess(long j10, boolean z10, int i9, int i10);

    private static native void nativeEnableExtensionCallback(long j10, boolean z10);

    private static native int nativeEnableVolumeEvaluation(long j10, int i9);

    private static native int nativeIsPushing(long j10);

    private static native int nativePauseAudio(long j10);

    private static native int nativePauseVideo(long j10);

    private static native int nativeResumeAudio(long j10);

    private static native int nativeResumeVideo(long j10);

    private static native int nativeSendCustomAudioFrame(long j10, byte[] bArr, int i9, int i10);

    private static native int nativeSendCustomVideoFrame(long j10, PixelFrame pixelFrame);

    private static native int nativeSendSeiMessage(long j10, int i9, byte[] bArr);

    private static native int nativeSetAudioQuality(long j10, int i9);

    private static native void nativeSetDisplayOrientation(long j10, int i9);

    private static native int nativeSetEncoderMirror(long j10, boolean z10);

    private static native int nativeSetMixTranscodingConfig(long j10, String str);

    private static native int nativeSetProperty(long j10, String str, Object obj);

    private static native int nativeSetRenderMirror(long j10, int i9);

    private static native int nativeSetRenderRotation(long j10, int i9);

    private static native int nativeSetRenderView(long j10, DisplayTarget displayTarget);

    private static native int nativeSetVideoQuality(long j10, int i9, int i10, int i11, int i12, int i13);

    private static native int nativeSetVideoQualityEx(long j10, int i9, int i10, int i11, int i12, int i13, int i14);

    private static native int nativeSetWatermark(long j10, Bitmap bitmap, float f10, float f11, float f12);

    private static native void nativeShowDebugView(long j10, boolean z10);

    private static native int nativeSnapshot(long j10);

    private static native int nativeStartCamera(long j10, boolean z10);

    private static native int nativeStartMicrophone(long j10);

    private static native int nativeStartPush(long j10, String str);

    private static native int nativeStartScreenCapture(long j10);

    private static native int nativeStartSystemAudioLoopback(long j10);

    private static native int nativeStartVirtualCamera(long j10, Bitmap bitmap);

    private static native int nativeStopCamera(long j10);

    private static native int nativeStopMicrophone(long j10);

    private static native int nativeStopPush(long j10);

    private static native int nativeStopScreenCapture(long j10);

    private static native int nativeStopSystemAudioLoopback(long j10);

    private static native int nativeStopVirtualCamera(long j10);

    private static boolean pixelFrameToV2VideoFrame(PixelFrame pixelFrame, V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame) {
        int i9 = AnonymousClass1.f31228d[pixelFrame.getPixelFormatType().ordinal()];
        if (i9 == 1) {
            v2TXLiveVideoFrame.pixelFormat = V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatI420;
        } else if (i9 != 2) {
            return false;
        } else {
            v2TXLiveVideoFrame.pixelFormat = V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatTexture2D;
        }
        int i10 = AnonymousClass1.f31229e[pixelFrame.getPixelBufferType().ordinal()];
        if (i10 == 1) {
            v2TXLiveVideoFrame.bufferType = V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeTexture;
            V2TXLiveDef.V2TXLiveTexture v2TXLiveTexture = new V2TXLiveDef.V2TXLiveTexture();
            v2TXLiveVideoFrame.texture = v2TXLiveTexture;
            v2TXLiveTexture.textureId = pixelFrame.getTextureId();
            if (pixelFrame.getGLContext() instanceof EGLContext) {
                v2TXLiveVideoFrame.texture.eglContext10 = (EGLContext) pixelFrame.getGLContext();
            } else if (pixelFrame.getGLContext() instanceof android.opengl.EGLContext) {
                v2TXLiveVideoFrame.texture.eglContext14 = (android.opengl.EGLContext) pixelFrame.getGLContext();
            }
        } else if (i10 == 2) {
            v2TXLiveVideoFrame.bufferType = V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeByteArray;
            v2TXLiveVideoFrame.data = pixelFrame.getData();
        } else if (i10 != 3) {
            return false;
        } else {
            v2TXLiveVideoFrame.bufferType = V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeByteBuffer;
            v2TXLiveVideoFrame.buffer = pixelFrame.getBuffer();
        }
        v2TXLiveVideoFrame.width = pixelFrame.getWidth();
        v2TXLiveVideoFrame.height = pixelFrame.getHeight();
        v2TXLiveVideoFrame.rotation = pixelFrame.getRotation().mValue;
        return true;
    }

    private static boolean v2VideoFrameToPixelFrame(V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame, PixelFrame pixelFrame) {
        int i9 = AnonymousClass1.f31226b[v2TXLiveVideoFrame.pixelFormat.ordinal()];
        if (i9 == 1) {
            pixelFrame.setPixelFormatType(GLConstants.PixelFormatType.I420);
        } else if (i9 != 2) {
            return false;
        } else {
            pixelFrame.setPixelFormatType(GLConstants.PixelFormatType.RGBA);
        }
        int i10 = AnonymousClass1.f31227c[v2TXLiveVideoFrame.bufferType.ordinal()];
        if (i10 == 1) {
            pixelFrame.setPixelBufferType(GLConstants.PixelBufferType.TEXTURE_2D);
            V2TXLiveDef.V2TXLiveTexture v2TXLiveTexture = v2TXLiveVideoFrame.texture;
            if (v2TXLiveTexture == null) {
                return false;
            }
            pixelFrame.setTextureId(v2TXLiveTexture.textureId);
            EGLContext eGLContext = v2TXLiveVideoFrame.texture.eglContext10;
            if (eGLContext != null) {
                pixelFrame.setGLContext(eGLContext);
            }
            android.opengl.EGLContext eGLContext2 = v2TXLiveVideoFrame.texture.eglContext14;
            if (eGLContext2 != null) {
                pixelFrame.setGLContext(eGLContext2);
            }
            if (pixelFrame.getGLContext() == null) {
                EGL10 egl10 = (EGL10) EGLContext.getEGL();
                if (egl10 == null) {
                    return false;
                }
                pixelFrame.setGLContext(egl10.eglGetCurrentContext());
            }
        } else if (i10 == 2) {
            pixelFrame.setPixelBufferType(GLConstants.PixelBufferType.BYTE_ARRAY);
            pixelFrame.setData(v2TXLiveVideoFrame.data);
        } else if (i10 != 3) {
            return false;
        } else {
            pixelFrame.setPixelBufferType(GLConstants.PixelBufferType.BYTE_BUFFER);
            pixelFrame.setBuffer(v2TXLiveVideoFrame.buffer);
        }
        pixelFrame.setWidth(v2TXLiveVideoFrame.width);
        pixelFrame.setHeight(v2TXLiveVideoFrame.height);
        pixelFrame.setRotation(Rotation.a(v2TXLiveVideoFrame.rotation));
        return true;
    }

    @CalledByNative
    public static V2TXLivePusherJni weakToStrongReference(WeakReference<V2TXLivePusherJni> weakReference) {
        return weakReference.get();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int enableCustomAudioCapture(boolean z10) {
        return nativeEnableCustomAudioCapture(this.mNativeV2TXLivePusherJni, z10);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int enableCustomVideoCapture(boolean z10) {
        return nativeEnableCustomVideoCapture(this.mNativeV2TXLivePusherJni, z10);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int enableCustomVideoProcess(boolean z10, V2TXLiveDef.V2TXLivePixelFormat v2TXLivePixelFormat, V2TXLiveDef.V2TXLiveBufferType v2TXLiveBufferType) {
        return nativeEnableCustomVideoProcess(this.mNativeV2TXLivePusherJni, z10, v2TXLivePixelFormat.ordinal(), v2TXLiveBufferType.ordinal());
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int enableVolumeEvaluation(int i9) {
        return nativeEnableVolumeEvaluation(this.mNativeV2TXLivePusherJni, i9);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        release();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public TXAudioEffectManager getAudioEffectManager() {
        return this.mAudioEffectManager;
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public TXBeautyManager getBeautyManager() {
        return this.mBeautyManager;
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public TXDeviceManager getDeviceManager() {
        return this.mDeviceManager;
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int isPushing() {
        return nativeIsPushing(this.mNativeV2TXLivePusherJni);
    }

    @CalledByNative
    public void onCaptureFirstAudioFrame() {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onCaptureFirstAudioFrame();
        }
    }

    @CalledByNative
    public void onCaptureFirstVideoFrame() {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onCaptureFirstVideoFrame();
        }
    }

    @CalledByNative
    public int onCustomPreprocessFrame(PixelFrame pixelFrame, PixelFrame pixelFrame2) {
        V2TXLivePusherObserver v2TXLivePusherObserver;
        V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame = new V2TXLiveDef.V2TXLiveVideoFrame();
        if (pixelFrameToV2VideoFrame(pixelFrame, v2TXLiveVideoFrame)) {
            V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame2 = new V2TXLiveDef.V2TXLiveVideoFrame();
            if (pixelFrameToV2VideoFrame(pixelFrame2, v2TXLiveVideoFrame2) && (v2TXLivePusherObserver = this.mObserver) != null) {
                int onProcessVideoFrame = v2TXLivePusherObserver.onProcessVideoFrame(v2TXLiveVideoFrame, v2TXLiveVideoFrame2);
                if (v2VideoFrameToPixelFrame(v2TXLiveVideoFrame2, pixelFrame2)) {
                    return onProcessVideoFrame;
                }
                return -1;
            }
            return -1;
        }
        return -1;
    }

    @CalledByNative
    public void onEnterRoom(int i9, String str) {
    }

    @CalledByNative
    public void onError(int i9, String str, Bundle bundle) {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onError(i9, str, bundle);
        }
    }

    @CalledByNative
    public void onExitRoom(int i9, String str) {
    }

    @CalledByNative
    public void onGLContextCreated() {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onGLContextCreated();
        }
    }

    @CalledByNative
    public void onGLContextDestroyed() {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onGLContextDestroyed();
        }
    }

    @CalledByNative
    public void onMicrophoneVolumeUpdate(int i9) {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onMicrophoneVolumeUpdate(i9);
        }
    }

    @CalledByNative
    public void onNetworkQuality(int i9) {
    }

    @CalledByNative
    public void onPushEvent(int i9, Bundle bundle) {
    }

    @CalledByNative
    public void onPushNetStatus(Bundle bundle) {
    }

    @CalledByNative
    public void onPushStatusUpdate(int i9, String str, Bundle bundle) {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        V2TXLiveDef.V2TXLivePushStatus v2TXLivePushStatus = V2TXLiveDef.V2TXLivePushStatus.V2TXLivePushStatusDisconnected;
        if (i9 == 0) {
            v2TXLivePushStatus = V2TXLiveDef.V2TXLivePushStatus.V2TXLivePushStatusConnecting;
            str = "connecting to the server.";
        } else if (i9 == 1) {
            v2TXLivePushStatus = V2TXLiveDef.V2TXLivePushStatus.V2TXLivePushStatusConnectSuccess;
            str = "connected to the server successfully.";
        } else if (i9 == 2) {
            v2TXLivePushStatus = V2TXLiveDef.V2TXLivePushStatus.V2TXLivePushStatusReconnecting;
            str = "reconnecting to the server.";
        } else if (i9 == 3) {
            str = "disconnected from the server.";
        }
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onPushStatusUpdate(v2TXLivePushStatus, str, bundle);
        }
    }

    @CalledByNative
    public void onScreenCaptureStarted() {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onScreenCaptureStarted();
        }
    }

    @CalledByNative
    public void onScreenCaptureStoped(int i9) {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onScreenCaptureStopped(i9);
        }
    }

    @CalledByNative
    public void onSetMixTranscodingConfig(int i9, String str) {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onSetMixTranscodingConfig(i9, str);
        }
    }

    @CalledByNative
    public void onSnapshotComplete(Bitmap bitmap) {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onSnapshotComplete(bitmap);
        }
    }

    @CalledByNative
    public void onStatisticsUpdate(int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            V2TXLiveDef.V2TXLivePusherStatistics v2TXLivePusherStatistics = new V2TXLiveDef.V2TXLivePusherStatistics();
            v2TXLivePusherStatistics.appCpu = i9;
            v2TXLivePusherStatistics.systemCpu = i10;
            v2TXLivePusherStatistics.width = i11;
            v2TXLivePusherStatistics.height = i12;
            v2TXLivePusherStatistics.fps = i13;
            v2TXLivePusherStatistics.videoBitrate = i14;
            v2TXLivePusherStatistics.audioBitrate = i15;
            v2TXLivePusherObserver.onStatisticsUpdate(v2TXLivePusherStatistics);
        }
    }

    @CalledByNative
    public void onUserAudioAvailable(String str, boolean z10) {
    }

    @CalledByNative
    public void onUserOffline(String str) {
    }

    @CalledByNative
    public void onUserOnline(String str) {
    }

    @CalledByNative
    public void onUserVideoAvailable(String str, int i9, boolean z10) {
    }

    @CalledByNative
    public void onWarning(int i9, String str, Bundle bundle) {
        V2TXLivePusherObserver v2TXLivePusherObserver = this.mObserver;
        if (v2TXLivePusherObserver != null) {
            v2TXLivePusherObserver.onWarning(i9, str, bundle);
        }
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int pauseAudio() {
        return nativePauseAudio(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int pauseVideo() {
        return nativePauseVideo(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public void release() {
        long j10 = this.mNativeV2TXLivePusherJni;
        if (j10 != 0) {
            nativeDestroy(j10);
            this.mNativeV2TXLivePusherJni = 0L;
        }
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int resumeAudio() {
        return nativeResumeAudio(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int resumeVideo() {
        return nativeResumeVideo(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int sendCustomAudioFrame(V2TXLiveDef.V2TXLiveAudioFrame v2TXLiveAudioFrame) {
        return nativeSendCustomAudioFrame(this.mNativeV2TXLivePusherJni, v2TXLiveAudioFrame.data, v2TXLiveAudioFrame.sampleRate, v2TXLiveAudioFrame.channel);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int sendCustomVideoFrame(V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame) {
        PixelFrame pixelFrame = new PixelFrame();
        if (v2VideoFrameToPixelFrame(v2TXLiveVideoFrame, pixelFrame)) {
            return nativeSendCustomVideoFrame(this.mNativeV2TXLivePusherJni, pixelFrame);
        }
        return -1;
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int sendSeiMessage(int i9, byte[] bArr) {
        return nativeSendSeiMessage(this.mNativeV2TXLivePusherJni, i9, bArr);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int setAudioQuality(V2TXLiveDef.V2TXLiveAudioQuality v2TXLiveAudioQuality) {
        return nativeSetAudioQuality(this.mNativeV2TXLivePusherJni, v2TXLiveAudioQuality.ordinal());
    }

    public void setDisplayOrientation(int i9) {
        nativeSetDisplayOrientation(this.mNativeV2TXLivePusherJni, i9);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int setEncoderMirror(boolean z10) {
        return nativeSetEncoderMirror(this.mNativeV2TXLivePusherJni, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f7  */
    @Override // com.tencent.live2.V2TXLivePusher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int setMixTranscodingConfig(com.tencent.live2.V2TXLiveDef.V2TXLiveTranscodingConfig r9) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.live.V2TXLivePusherJni.setMixTranscodingConfig(com.tencent.live2.V2TXLiveDef$V2TXLiveTranscodingConfig):int");
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public void setObserver(V2TXLivePusherObserver v2TXLivePusherObserver) {
        this.mObserver = v2TXLivePusherObserver;
        if (v2TXLivePusherObserver == null || !(v2TXLivePusherObserver instanceof b)) {
            return;
        }
        nativeEnableExtensionCallback(this.mNativeV2TXLivePusherJni, true);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int setProperty(String str, Object obj) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2119647997:
                if (str.equals(V2TXLiveProperty.kV2EnableHevcEncode)) {
                    c10 = 0;
                    break;
                }
                break;
            case -631683974:
                if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2EnableAGC)) {
                    c10 = 1;
                    break;
                }
                break;
            case -631683741:
                if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2EnableANS)) {
                    c10 = 2;
                    break;
                }
                break;
            case 480042124:
                if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2SetSurfaceSize)) {
                    c10 = 3;
                    break;
                }
                break;
            case 1120433643:
                if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2SetSurface)) {
                    c10 = 4;
                    break;
                }
                break;
            case 1309735633:
                if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2EnableRealtimeMode)) {
                    c10 = 5;
                    break;
                }
                break;
            case 1538362833:
                if (str.equals(V2TXLiveProperty.kV2SetMetaData)) {
                    c10 = 6;
                    break;
                }
                break;
            case 2048424571:
                if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2EnableCameraZoom)) {
                    c10 = 7;
                    break;
                }
                break;
            case 2085561276:
                if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2SetFramework)) {
                    c10 = '\b';
                    break;
                }
                break;
            case 2132058329:
                if (str.equals(V2TXLiveProperty.kV2SetVideoQualityEx)) {
                    c10 = '\t';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 5:
            case 6:
            case 7:
            case '\b':
                return nativeSetProperty(this.mNativeV2TXLivePusherJni, str, obj);
            case 3:
                LiteavLog.i(TAG, "set surface size is unnecessary");
                break;
            case 4:
                if (obj == null) {
                    nativeSetRenderView(this.mNativeV2TXLivePusherJni, null);
                    break;
                } else if (obj instanceof Surface) {
                    nativeSetRenderView(this.mNativeV2TXLivePusherJni, new DisplayTarget((Surface) obj));
                    break;
                } else {
                    LiteavLog.e(TAG, "setProperty error, key:" + str + ", value:" + obj);
                    return -2;
                }
            case '\t':
                if (!(obj instanceof String)) {
                    LiteavLog.e(TAG, "setProperty error, key:" + str + ", value:" + obj);
                    return -2;
                }
                try {
                    JSONObject jSONObject = new JSONObject((String) obj);
                    nativeSetVideoQualityEx(this.mNativeV2TXLivePusherJni, jSONObject.optInt("videoWidth"), jSONObject.optInt("videoHeight"), jSONObject.optInt("videoFps"), jSONObject.optInt("videoBitrate"), jSONObject.optInt("minVideoBitrate"), jSONObject.optInt("videoGop"));
                    break;
                } catch (Exception unused) {
                    Log.e(TAG, "setProperty error, key:" + str + ", value:" + obj);
                    return -2;
                }
            default:
                LiteavLog.e(TAG, "setProperty error, key:" + str + ", value:" + obj);
                return -2;
        }
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int setRenderMirror(V2TXLiveDef.V2TXLiveMirrorType v2TXLiveMirrorType) {
        return nativeSetRenderMirror(this.mNativeV2TXLivePusherJni, v2TXLiveMirrorType.ordinal());
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int setRenderRotation(V2TXLiveDef.V2TXLiveRotation v2TXLiveRotation) {
        Rotation rotation;
        int i9 = AnonymousClass1.f31225a[v2TXLiveRotation.ordinal()];
        if (i9 == 1) {
            rotation = Rotation.ROTATION_90;
        } else if (i9 == 2) {
            rotation = Rotation.ROTATION_180;
        } else if (i9 != 3) {
            rotation = Rotation.NORMAL;
        } else {
            rotation = Rotation.ROTATION_270;
        }
        return nativeSetRenderRotation(this.mNativeV2TXLivePusherJni, rotation.mValue);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int setRenderView(TXCloudVideoView tXCloudVideoView) {
        return nativeSetRenderView(this.mNativeV2TXLivePusherJni, new DisplayTarget(tXCloudVideoView));
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int setVideoQuality(V2TXLiveDef.V2TXLiveVideoEncoderParam v2TXLiveVideoEncoderParam) {
        return nativeSetVideoQuality(this.mNativeV2TXLivePusherJni, v2TXLiveVideoEncoderParam.videoResolution.ordinal(), v2TXLiveVideoEncoderParam.videoResolutionMode.ordinal(), v2TXLiveVideoEncoderParam.videoFps, v2TXLiveVideoEncoderParam.videoBitrate, v2TXLiveVideoEncoderParam.minVideoBitrate);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int setWatermark(Bitmap bitmap, float f10, float f11, float f12) {
        return nativeSetWatermark(this.mNativeV2TXLivePusherJni, bitmap, f10, f11, f12);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public void showDebugView(boolean z10) {
        nativeShowDebugView(this.mNativeV2TXLivePusherJni, z10);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int snapshot() {
        return nativeSnapshot(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int startCamera(boolean z10) {
        return nativeStartCamera(this.mNativeV2TXLivePusherJni, z10);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int startMicrophone() {
        return nativeStartMicrophone(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int startPush(String str) {
        return nativeStartPush(this.mNativeV2TXLivePusherJni, str);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int startScreenCapture() {
        return nativeStartScreenCapture(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int startSystemAudioLoopback() {
        return nativeStartSystemAudioLoopback(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int startVirtualCamera(Bitmap bitmap) {
        return nativeStartVirtualCamera(this.mNativeV2TXLivePusherJni, bitmap);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int stopCamera() {
        return nativeStopCamera(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int stopMicrophone() {
        return nativeStopMicrophone(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int stopPush() {
        return nativeStopPush(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int stopScreenCapture() {
        return nativeStopScreenCapture(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int stopSystemAudioLoopback() {
        return nativeStopSystemAudioLoopback(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int stopVirtualCamera() {
        return nativeStopVirtualCamera(this.mNativeV2TXLivePusherJni);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int setRenderView(TextureView textureView) {
        return nativeSetRenderView(this.mNativeV2TXLivePusherJni, new DisplayTarget(textureView));
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public int setRenderView(SurfaceView surfaceView) {
        return nativeSetRenderView(this.mNativeV2TXLivePusherJni, new DisplayTarget(surfaceView));
    }
}
