package com.tencent.liteav.live;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.V2TXLivePlayer;
import com.tencent.live2.V2TXLivePlayerObserver;
import com.tencent.live2.impl.V2TXLiveDefInner;
import com.tencent.live2.impl.V2TXLivePlayerImpl;
import com.tencent.live2.impl.V2TXLiveProperty;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.microedition.khronos.egl.EGLContext;
import org.json.JSONArray;
import org.json.JSONObject;
@JNINamespace("liteav")
/* loaded from: classes4.dex */
public class V2TXLivePlayerJni extends V2TXLivePlayer {
    private static final String TAG = "V2TXLivePlayerJni";
    private GLConstants.PixelBufferType mBufferType;
    private DisplayTarget mDisplayTarget;
    private Boolean mEnableCustomRendering;
    private Boolean mEnableExtensionCallback;
    private Boolean mIsPauseAudio;
    private Boolean mIsPauseVideo;
    private Float mMax;
    private Float mMin;
    private V2TXLivePlayerObserver mObserver;
    private GLConstants.PixelFormatType mPixelFormatType;
    private V2TXLivePlayerImpl mProxy;
    private Rotation mRotation;
    private GLConstants.GLScaleType mScaleType;
    private Boolean mShowDebugView;
    private Integer mVolume;
    private Integer mVolumeIntervalMs;
    protected long mNativeV2TXLivePlayerJni = 0;
    private boolean mClearLastImage = true;
    private Object mGLContext = null;
    private Set<Integer> mSEIPayloadSet = new HashSet();
    private HashMap<String, Object> mPropertyMap = new HashMap<>();

    /* renamed from: com.tencent.liteav.live.V2TXLivePlayerJni$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f31220a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f31221b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f31222c;

        /* renamed from: d  reason: collision with root package name */
        static final /* synthetic */ int[] f31223d;

        /* renamed from: e  reason: collision with root package name */
        static final /* synthetic */ int[] f31224e;

        static {
            int[] iArr = new int[Rotation.values().length];
            f31224e = iArr;
            try {
                iArr[Rotation.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31224e[Rotation.ROTATION_90.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31224e[Rotation.ROTATION_180.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31224e[Rotation.ROTATION_270.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[GLConstants.PixelBufferType.values().length];
            f31223d = iArr2;
            try {
                iArr2[GLConstants.PixelBufferType.BYTE_BUFFER.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f31223d[GLConstants.PixelBufferType.BYTE_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f31223d[GLConstants.PixelBufferType.TEXTURE_2D.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[GLConstants.PixelFormatType.values().length];
            f31222c = iArr3;
            try {
                iArr3[GLConstants.PixelFormatType.I420.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f31222c[GLConstants.PixelFormatType.RGBA.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr4 = new int[V2TXLiveDef.V2TXLiveFillMode.values().length];
            f31221b = iArr4;
            try {
                iArr4[V2TXLiveDef.V2TXLiveFillMode.V2TXLiveFillModeFill.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f31221b[V2TXLiveDef.V2TXLiveFillMode.V2TXLiveFillModeScaleFill.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr5 = new int[V2TXLiveDef.V2TXLiveRotation.values().length];
            f31220a = iArr5;
            try {
                iArr5[V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation90.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f31220a[V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation180.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f31220a[V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation270.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public V2TXLivePlayerJni(Context context, V2TXLivePlayerImpl v2TXLivePlayerImpl) {
        this.mProxy = v2TXLivePlayerImpl;
        ContextUtils.initApplicationContext(context.getApplicationContext());
        ContextUtils.setDataDirectorySuffix("liteav");
    }

    private void enableExtensionCallback(boolean z10) {
        synchronized (this) {
            this.mEnableExtensionCallback = Boolean.valueOf(z10);
            if (isNativeValid()) {
                nativeEnableExtensionCallback(this.mNativeV2TXLivePlayerJni, z10);
            }
        }
    }

    @CalledByNative
    public static V2TXLiveDef.V2TXLivePlayerStatistics getJavaV2TXLivePlayerStatistics(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23) {
        V2TXLiveDef.V2TXLivePlayerStatistics v2TXLivePlayerStatistics = new V2TXLiveDef.V2TXLivePlayerStatistics();
        v2TXLivePlayerStatistics.appCpu = i9;
        v2TXLivePlayerStatistics.systemCpu = i10;
        v2TXLivePlayerStatistics.rtt = i11;
        v2TXLivePlayerStatistics.width = i12;
        v2TXLivePlayerStatistics.height = i13;
        v2TXLivePlayerStatistics.fps = i14;
        v2TXLivePlayerStatistics.videoBitrate = i15;
        v2TXLivePlayerStatistics.audioBitrate = i16;
        v2TXLivePlayerStatistics.audioPacketLoss = i17;
        v2TXLivePlayerStatistics.videoPacketLoss = i18;
        v2TXLivePlayerStatistics.jitterBufferDelay = i19;
        v2TXLivePlayerStatistics.audioTotalBlockTime = i20;
        v2TXLivePlayerStatistics.audioBlockRate = i21;
        v2TXLivePlayerStatistics.videoTotalBlockTime = i22;
        v2TXLivePlayerStatistics.videoBlockRate = i23;
        return v2TXLivePlayerStatistics;
    }

    private static ArrayList<V2TXLiveDef.V2TXLiveStreamInfo> getStreamListFormJsonString(String str) {
        ArrayList<V2TXLiveDef.V2TXLiveStreamInfo> arrayList = new ArrayList<>();
        if (str != null && !str.isEmpty()) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i9);
                    arrayList.add(new V2TXLiveDef.V2TXLiveStreamInfo(jSONObject.getInt("width"), jSONObject.getInt("height"), jSONObject.getString("url")));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return arrayList;
    }

    private boolean isNativeValid() {
        return this.mNativeV2TXLivePlayerJni != 0;
    }

    private static native long nativeCreate(WeakReference<V2TXLivePlayerJni> weakReference);

    private static native void nativeDestroy(long j10);

    private static native int nativeEnableCustomRendering(long j10, boolean z10, int i9, int i10);

    private static native void nativeEnableExtensionCallback(long j10, boolean z10);

    private static native int nativeEnableReceiveSeiMessage(long j10, boolean z10, int i9);

    private static native int nativeEnableVolumeEvaluation(long j10, int i9);

    private static native String nativeGetStreamList(long j10);

    private static native int nativeIsPlaying(long j10);

    private static native int nativePauseAudio(long j10);

    private static native int nativePauseVideo(long j10);

    private static native int nativeResumeAudio(long j10);

    private static native int nativeResumeVideo(long j10);

    private static native int nativeSetCacheParams(long j10, float f10, float f11);

    private static native int nativeSetPlayoutVolume(long j10, int i9);

    private static native int nativeSetProperty(long j10, String str, Object obj);

    private static native int nativeSetRenderFillMode(long j10, int i9);

    private static native int nativeSetRenderRotation(long j10, int i9);

    private static native int nativeSetRenderView(long j10, DisplayTarget displayTarget);

    private static native void nativeSetSharedEGLContext(long j10, Object obj);

    private static native void nativeShowDebugView(long j10, boolean z10);

    private static native int nativeSnapshot(long j10);

    private static native int nativeStartPlay(long j10, String str);

    private static native int nativeStopPlay(long j10, boolean z10);

    private static native int nativeSwitchStream(long j10, String str);

    @CalledByNative
    public static V2TXLivePlayerJni weakToStrongReference(WeakReference<V2TXLivePlayerJni> weakReference) {
        return weakReference.get();
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int enableObserveVideoFrame(boolean z10, V2TXLiveDef.V2TXLivePixelFormat v2TXLivePixelFormat, V2TXLiveDef.V2TXLiveBufferType v2TXLiveBufferType) {
        synchronized (this) {
            V2TXLiveDef.V2TXLivePixelFormat v2TXLivePixelFormat2 = V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatI420;
            if (v2TXLivePixelFormat == v2TXLivePixelFormat2 && v2TXLiveBufferType == V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeByteArray) {
                this.mPixelFormatType = GLConstants.PixelFormatType.I420;
                this.mBufferType = GLConstants.PixelBufferType.BYTE_ARRAY;
            } else if (v2TXLivePixelFormat == V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatTexture2D && v2TXLiveBufferType == V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeTexture) {
                this.mPixelFormatType = GLConstants.PixelFormatType.RGBA;
                this.mBufferType = GLConstants.PixelBufferType.TEXTURE_2D;
            } else if (v2TXLivePixelFormat == v2TXLivePixelFormat2 && v2TXLiveBufferType == V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeByteBuffer) {
                this.mPixelFormatType = GLConstants.PixelFormatType.I420;
                this.mBufferType = GLConstants.PixelBufferType.BYTE_BUFFER;
            } else {
                LiteavLog.e(TAG, "Enable custom render failed, invalid params. format:" + v2TXLivePixelFormat + " type:" + v2TXLiveBufferType);
                return -4;
            }
            this.mEnableCustomRendering = Boolean.valueOf(z10);
            if (isNativeValid()) {
                return nativeEnableCustomRendering(this.mNativeV2TXLivePlayerJni, z10, this.mPixelFormatType.getValue(), this.mBufferType.ordinal());
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int enableReceiveSeiMessage(boolean z10, int i9) {
        synchronized (this) {
            if (z10) {
                this.mSEIPayloadSet.add(Integer.valueOf(i9));
            } else {
                this.mSEIPayloadSet.remove(Integer.valueOf(i9));
            }
            if (isNativeValid()) {
                return nativeEnableReceiveSeiMessage(this.mNativeV2TXLivePlayerJni, z10, i9);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int enableVolumeEvaluation(int i9) {
        synchronized (this) {
            this.mVolumeIntervalMs = Integer.valueOf(i9);
            if (isNativeValid()) {
                return nativeEnableVolumeEvaluation(this.mNativeV2TXLivePlayerJni, i9);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public ArrayList<V2TXLiveDef.V2TXLiveStreamInfo> getStreamList() {
        synchronized (this) {
            if (isNativeValid()) {
                return getStreamListFormJsonString(nativeGetStreamList(this.mNativeV2TXLivePlayerJni));
            }
            return new ArrayList<>();
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int isPlaying() {
        synchronized (this) {
            if (isNativeValid()) {
                return nativeIsPlaying(this.mNativeV2TXLivePlayerJni);
            }
            return 0;
        }
    }

    @CalledByNative
    public void onAudioLoading(Bundle bundle) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onAudioLoading(this.mProxy, bundle);
        }
    }

    @CalledByNative
    public void onAudioPlaying(boolean z10, Bundle bundle) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onAudioPlaying(this.mProxy, z10, bundle);
        }
    }

    @CalledByNative
    public void onConnected(Bundle bundle) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onConnected(this.mProxy, bundle);
        }
    }

    @CalledByNative
    public void onError(int i9, String str, Bundle bundle) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onError(this.mProxy, i9, str, bundle);
        }
    }

    @CalledByNative
    public void onNetworkQuality(int i9) {
    }

    @CalledByNative
    public void onPlayEvent(int i9, Bundle bundle) {
    }

    @CalledByNative
    public void onPlayNetStatus(Bundle bundle) {
    }

    @CalledByNative
    public void onPlayoutVolumeUpdate(int i9) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onPlayoutVolumeUpdate(this.mProxy, i9);
        }
    }

    @CalledByNative
    public void onReceiveSeiMessage(int i9, byte[] bArr) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onReceiveSeiMessage(this.mProxy, i9, bArr);
        }
    }

    @CalledByNative
    public void onRenderVideoFrame(PixelFrame pixelFrame) {
        V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame = new V2TXLiveDef.V2TXLiveVideoFrame();
        int i9 = AnonymousClass1.f31222c[pixelFrame.getPixelFormatType().ordinal()];
        if (i9 == 1) {
            v2TXLiveVideoFrame.pixelFormat = V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatI420;
        } else if (i9 != 2) {
            LiteavLog.e(TAG, "Invalid pixelFormat. pixelFormat:" + pixelFrame.getPixelFormatType() + ".");
        } else {
            v2TXLiveVideoFrame.pixelFormat = V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatTexture2D;
        }
        int i10 = AnonymousClass1.f31223d[pixelFrame.getPixelBufferType().ordinal()];
        if (i10 == 1) {
            v2TXLiveVideoFrame.bufferType = V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeByteBuffer;
        } else if (i10 == 2) {
            v2TXLiveVideoFrame.bufferType = V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeByteArray;
        } else if (i10 != 3) {
            LiteavLog.e(TAG, "Invalid bufferType. bufferType:" + pixelFrame.getPixelBufferType() + ".");
        } else {
            v2TXLiveVideoFrame.bufferType = V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeTexture;
        }
        V2TXLiveDef.V2TXLiveTexture v2TXLiveTexture = new V2TXLiveDef.V2TXLiveTexture();
        v2TXLiveTexture.textureId = pixelFrame.getTextureId();
        if (pixelFrame.getGLContext() instanceof EGLContext) {
            v2TXLiveTexture.eglContext10 = (EGLContext) pixelFrame.getGLContext();
        } else if (pixelFrame.getGLContext() instanceof android.opengl.EGLContext) {
            v2TXLiveTexture.eglContext14 = (android.opengl.EGLContext) pixelFrame.getGLContext();
        }
        v2TXLiveVideoFrame.texture = v2TXLiveTexture;
        v2TXLiveVideoFrame.data = pixelFrame.getData();
        v2TXLiveVideoFrame.buffer = pixelFrame.getBuffer();
        v2TXLiveVideoFrame.width = pixelFrame.getWidth();
        v2TXLiveVideoFrame.height = pixelFrame.getHeight();
        int i11 = AnonymousClass1.f31224e[pixelFrame.getRotation().ordinal()];
        if (i11 == 1) {
            v2TXLiveVideoFrame.rotation = 0;
        } else if (i11 == 2) {
            v2TXLiveVideoFrame.rotation = 90;
        } else if (i11 == 3) {
            v2TXLiveVideoFrame.rotation = 180;
        } else if (i11 != 4) {
            v2TXLiveVideoFrame.rotation = 0;
        } else {
            v2TXLiveVideoFrame.rotation = 270;
        }
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onRenderVideoFrame(this.mProxy, v2TXLiveVideoFrame);
        }
    }

    @CalledByNative
    public void onSnapshotComplete(Bitmap bitmap) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onSnapshotComplete(this.mProxy, bitmap);
        }
    }

    @CalledByNative
    public void onStatisticsUpdate(V2TXLiveDef.V2TXLivePlayerStatistics v2TXLivePlayerStatistics) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onStatisticsUpdate(this.mProxy, v2TXLivePlayerStatistics);
        }
    }

    @CalledByNative
    public void onVideoLoading(Bundle bundle) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onVideoLoading(this.mProxy, bundle);
        }
    }

    @CalledByNative
    public void onVideoPlaying(boolean z10, Bundle bundle) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onVideoPlaying(this.mProxy, z10, bundle);
        }
    }

    @CalledByNative
    public void onVideoResolutionChanged(int i9, int i10) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onVideoResolutionChanged(this.mProxy, i9, i10);
        }
    }

    @CalledByNative
    public void onWarning(int i9, String str, Bundle bundle) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.mObserver;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onWarning(this.mProxy, i9, str, bundle);
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int pauseAudio() {
        synchronized (this) {
            this.mIsPauseAudio = Boolean.TRUE;
            if (isNativeValid()) {
                return nativePauseAudio(this.mNativeV2TXLivePlayerJni);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int pauseVideo() {
        synchronized (this) {
            this.mIsPauseVideo = Boolean.TRUE;
            if (isNativeValid()) {
                return nativePauseVideo(this.mNativeV2TXLivePlayerJni);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int resumeAudio() {
        synchronized (this) {
            this.mIsPauseAudio = Boolean.FALSE;
            if (isNativeValid()) {
                return nativeResumeAudio(this.mNativeV2TXLivePlayerJni);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int resumeVideo() {
        synchronized (this) {
            this.mIsPauseVideo = Boolean.FALSE;
            if (isNativeValid()) {
                return nativeResumeVideo(this.mNativeV2TXLivePlayerJni);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setCacheParams(float f10, float f11) {
        synchronized (this) {
            if (f10 < 0.0f || f11 < 0.0f) {
                return -2;
            }
            this.mMin = Float.valueOf(f10);
            this.mMax = Float.valueOf(f11);
            if (isNativeValid()) {
                return nativeSetCacheParams(this.mNativeV2TXLivePlayerJni, f10, f11);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public void setObserver(V2TXLivePlayerObserver v2TXLivePlayerObserver) {
        this.mObserver = v2TXLivePlayerObserver;
        if (v2TXLivePlayerObserver == null || !(v2TXLivePlayerObserver instanceof com.tencent.live2.impl.a.a)) {
            return;
        }
        enableExtensionCallback(true);
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setPlayoutVolume(int i9) {
        synchronized (this) {
            this.mVolume = Integer.valueOf(i9);
            if (isNativeValid()) {
                return nativeSetPlayoutVolume(this.mNativeV2TXLivePlayerJni, i9);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setProperty(String str, Object obj) {
        synchronized (this) {
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1551400628:
                    if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2SetLEBEnvironment)) {
                        c10 = 5;
                        break;
                    }
                    break;
                case -1459700216:
                    if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2SetPreferLocalIPStack)) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case -780243797:
                    if (str.equals(V2TXLiveProperty.kV2EnableHardwareAcceleration)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -525993788:
                    if (str.equals(V2TXLiveProperty.kV2SetHeaders)) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 480042124:
                    if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2SetSurfaceSize)) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 582452376:
                    if (str.equals(V2TXLiveProperty.kV2ClearLastImage)) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 1120433643:
                    if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2SetSurface)) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 1615550654:
                    if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2SetOpenGLContext)) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case 1637676021:
                    if (str.equals(V2TXLiveProperty.kV2MaxNumberOfReconnection)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1694085113:
                    if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2EnableRTMPAcc)) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 1899639930:
                    if (str.equals(V2TXLiveProperty.kV2SecondsBetweenReconnection)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 2013602325:
                    if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2SetAudioRoute)) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 2085561276:
                    if (str.equals(V2TXLiveDefInner.TXLivePropertyKey.kV2SetFramework)) {
                        c10 = 4;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case '\b':
                    synchronized (this) {
                        this.mPropertyMap.put(str, obj);
                        if (isNativeValid()) {
                            nativeSetProperty(this.mNativeV2TXLivePlayerJni, str, obj);
                        }
                        break;
                    }
                case '\t':
                    if (!(obj instanceof Boolean)) {
                        LiteavLog.e(TAG, "setProperty error, key:" + str + ", value:" + obj);
                        return -2;
                    }
                    synchronized (this) {
                        this.mClearLastImage = ((Boolean) obj).booleanValue();
                        break;
                    }
                case '\n':
                    if (obj == null) {
                        synchronized (this) {
                            this.mDisplayTarget = null;
                            if (isNativeValid()) {
                                nativeSetRenderView(this.mNativeV2TXLivePlayerJni, null);
                            }
                        }
                        return 0;
                    } else if (!(obj instanceof Surface)) {
                        LiteavLog.e(TAG, "setProperty error, key:" + str + ", value:" + obj);
                        return -2;
                    } else {
                        synchronized (this) {
                            this.mDisplayTarget = new DisplayTarget((Surface) obj);
                            if (isNativeValid()) {
                                nativeSetRenderView(this.mNativeV2TXLivePlayerJni, this.mDisplayTarget);
                            }
                            break;
                        }
                    }
                case 11:
                    LiteavLog.i(TAG, "set surface size is unnecessary");
                    break;
                case '\f':
                    if (!(obj instanceof EGLContext) && !(obj instanceof android.opengl.EGLContext)) {
                        LiteavLog.e(TAG, "setProperty error, key:" + str + ", value:" + obj);
                        return -2;
                    }
                    synchronized (this) {
                        this.mGLContext = obj;
                        if (isNativeValid()) {
                            nativeSetSharedEGLContext(this.mNativeV2TXLivePlayerJni, this.mGLContext);
                        }
                        break;
                    }
                default:
                    LiteavLog.e(TAG, "setProperty error, key:" + str + ", value:" + obj);
                    return -4;
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderFillMode(V2TXLiveDef.V2TXLiveFillMode v2TXLiveFillMode) {
        synchronized (this) {
            int i9 = AnonymousClass1.f31221b[v2TXLiveFillMode.ordinal()];
            if (i9 == 1) {
                this.mScaleType = GLConstants.GLScaleType.CENTER_CROP;
            } else if (i9 != 2) {
                this.mScaleType = GLConstants.GLScaleType.FIT_CENTER;
            } else {
                this.mScaleType = GLConstants.GLScaleType.FILL;
            }
            if (isNativeValid()) {
                return nativeSetRenderFillMode(this.mNativeV2TXLivePlayerJni, this.mScaleType.mValue);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderRotation(V2TXLiveDef.V2TXLiveRotation v2TXLiveRotation) {
        synchronized (this) {
            int i9 = AnonymousClass1.f31220a[v2TXLiveRotation.ordinal()];
            if (i9 == 1) {
                this.mRotation = Rotation.ROTATION_90;
            } else if (i9 == 2) {
                this.mRotation = Rotation.ROTATION_180;
            } else if (i9 != 3) {
                this.mRotation = Rotation.NORMAL;
            } else {
                this.mRotation = Rotation.ROTATION_270;
            }
            if (isNativeValid()) {
                return nativeSetRenderRotation(this.mNativeV2TXLivePlayerJni, this.mRotation.mValue);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderView(TXCloudVideoView tXCloudVideoView) {
        synchronized (this) {
            if (tXCloudVideoView != null) {
                this.mDisplayTarget = new DisplayTarget(tXCloudVideoView);
            } else {
                this.mDisplayTarget = null;
            }
            if (isNativeValid()) {
                return nativeSetRenderView(this.mNativeV2TXLivePlayerJni, this.mDisplayTarget);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public void showDebugView(boolean z10) {
        synchronized (this) {
            this.mShowDebugView = Boolean.valueOf(z10);
            if (isNativeValid()) {
                nativeShowDebugView(this.mNativeV2TXLivePlayerJni, z10);
            }
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int snapshot() {
        synchronized (this) {
            if (isNativeValid()) {
                return nativeSnapshot(this.mNativeV2TXLivePlayerJni);
            }
            return -3;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int startLivePlay(String str) {
        int nativeStartPlay;
        synchronized (this) {
            if (!isNativeValid()) {
                long nativeCreate = nativeCreate(new WeakReference(this));
                this.mNativeV2TXLivePlayerJni = nativeCreate;
                Boolean bool = this.mShowDebugView;
                if (bool != null) {
                    nativeShowDebugView(nativeCreate, bool.booleanValue());
                }
                Boolean bool2 = this.mEnableExtensionCallback;
                if (bool2 != null) {
                    nativeEnableExtensionCallback(this.mNativeV2TXLivePlayerJni, bool2.booleanValue());
                }
                nativeSetRenderView(this.mNativeV2TXLivePlayerJni, this.mDisplayTarget);
                Rotation rotation = this.mRotation;
                if (rotation != null) {
                    nativeSetRenderRotation(this.mNativeV2TXLivePlayerJni, rotation.mValue);
                }
                GLConstants.GLScaleType gLScaleType = this.mScaleType;
                if (gLScaleType != null) {
                    nativeSetRenderFillMode(this.mNativeV2TXLivePlayerJni, gLScaleType.mValue);
                }
                Boolean bool3 = this.mIsPauseAudio;
                if (bool3 != null) {
                    if (bool3.booleanValue()) {
                        nativePauseAudio(this.mNativeV2TXLivePlayerJni);
                    } else {
                        nativeResumeAudio(this.mNativeV2TXLivePlayerJni);
                    }
                }
                Boolean bool4 = this.mIsPauseVideo;
                if (bool4 != null) {
                    if (bool4.booleanValue()) {
                        nativePauseVideo(this.mNativeV2TXLivePlayerJni);
                    } else {
                        nativeResumeVideo(this.mNativeV2TXLivePlayerJni);
                    }
                }
                Integer num = this.mVolume;
                if (num != null) {
                    nativeSetPlayoutVolume(this.mNativeV2TXLivePlayerJni, num.intValue());
                }
                Float f10 = this.mMin;
                if (f10 != null && this.mMax != null) {
                    nativeSetCacheParams(this.mNativeV2TXLivePlayerJni, f10.floatValue(), this.mMax.floatValue());
                }
                Integer num2 = this.mVolumeIntervalMs;
                if (num2 != null) {
                    nativeEnableVolumeEvaluation(this.mNativeV2TXLivePlayerJni, num2.intValue());
                }
                Boolean bool5 = this.mEnableCustomRendering;
                if (bool5 != null && this.mPixelFormatType != null && this.mBufferType != null) {
                    nativeEnableCustomRendering(this.mNativeV2TXLivePlayerJni, bool5.booleanValue(), this.mPixelFormatType.getValue(), this.mBufferType.ordinal());
                }
                if (this.mSEIPayloadSet.size() > 0) {
                    for (Integer num3 : this.mSEIPayloadSet) {
                        nativeEnableReceiveSeiMessage(this.mNativeV2TXLivePlayerJni, true, num3.intValue());
                    }
                }
                nativeSetSharedEGLContext(this.mNativeV2TXLivePlayerJni, this.mGLContext);
                for (Map.Entry<String, Object> entry : this.mPropertyMap.entrySet()) {
                    nativeSetProperty(this.mNativeV2TXLivePlayerJni, entry.getKey(), entry.getValue());
                }
            }
            nativeStartPlay = nativeStartPlay(this.mNativeV2TXLivePlayerJni, str);
        }
        return nativeStartPlay;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int stopPlay() {
        synchronized (this) {
            if (isNativeValid()) {
                nativeStopPlay(this.mNativeV2TXLivePlayerJni, this.mClearLastImage);
                nativeDestroy(this.mNativeV2TXLivePlayerJni);
                this.mNativeV2TXLivePlayerJni = 0L;
            }
        }
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int switchStream(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                LiteavLog.e(TAG, "Invalid params.");
                return -2;
            } else if (isNativeValid()) {
                return nativeSwitchStream(this.mNativeV2TXLivePlayerJni, str);
            } else {
                return 0;
            }
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderView(TextureView textureView) {
        synchronized (this) {
            if (textureView != null) {
                this.mDisplayTarget = new DisplayTarget(textureView);
            } else {
                this.mDisplayTarget = null;
            }
            if (isNativeValid()) {
                return nativeSetRenderView(this.mNativeV2TXLivePlayerJni, this.mDisplayTarget);
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderView(SurfaceView surfaceView) {
        synchronized (this) {
            if (surfaceView != null) {
                this.mDisplayTarget = new DisplayTarget(surfaceView);
            } else {
                this.mDisplayTarget = null;
            }
            if (isNativeValid()) {
                return nativeSetRenderView(this.mNativeV2TXLivePlayerJni, this.mDisplayTarget);
            }
            return 0;
        }
    }
}
