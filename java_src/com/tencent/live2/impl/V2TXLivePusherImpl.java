package com.tencent.live2.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.WindowManager;
import com.tencent.liteav.audio.TXAudioEffectManager;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.r;
import com.tencent.liteav.beauty.TXBeautyManager;
import com.tencent.liteav.device.TXDeviceManager;
import com.tencent.liteav.live.V2TXLivePusherJni;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.V2TXLivePusher;
import com.tencent.live2.V2TXLivePusherObserver;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.lang.ref.WeakReference;
/* loaded from: classes4.dex */
public class V2TXLivePusherImpl extends V2TXLivePusher {
    private static final String TAG = "V2TXLivePusherImpl";
    private DisplayOrientationListener mDisplayOrientationListener;
    private V2TXLivePusherJni mImpl;

    /* loaded from: classes4.dex */
    static class DisplayOrientationListener extends OrientationEventListener {
        private Display mDisplay;
        private Orientation mOrientation;
        private WeakReference<V2TXLivePusherImpl> mWeakPusher;

        public DisplayOrientationListener(Context context, WeakReference<V2TXLivePusherImpl> weakReference) {
            super(context);
            this.mWeakPusher = weakReference;
            try {
                Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                this.mDisplay = defaultDisplay;
                this.mOrientation = convert(defaultDisplay.getRotation());
            } catch (Exception e10) {
                e10.printStackTrace();
                LiteavLog.e(V2TXLivePusherImpl.TAG, e10.getMessage());
            }
        }

        private Orientation convert(int i9) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return Orientation.kUp;
                    }
                    return Orientation.kLeft;
                }
                return Orientation.kDown;
            }
            return Orientation.kRight;
        }

        public Orientation getOrientation() {
            return this.mOrientation;
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i9) {
            Orientation convert;
            Display display = this.mDisplay;
            if (display == null || (convert = convert(display.getRotation())) == this.mOrientation) {
                return;
            }
            this.mOrientation = convert;
            WeakReference<V2TXLivePusherImpl> weakReference = this.mWeakPusher;
            V2TXLivePusherImpl v2TXLivePusherImpl = weakReference != null ? weakReference.get() : null;
            if (v2TXLivePusherImpl != null) {
                v2TXLivePusherImpl.setDisplayOrientation(convert);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum Orientation {
        kUp(0),
        kRight(1),
        kDown(2),
        kLeft(3);
        
        private int index;

        Orientation(int i9) {
            this.index = i9;
        }

        final int getIndex() {
            return this.index;
        }
    }

    static {
        r.a();
    }

    public V2TXLivePusherImpl(Context context, V2TXLiveDef.V2TXLiveMode v2TXLiveMode) {
        this(context, v2TXLiveMode.ordinal());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setDisplayOrientation(Orientation orientation) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return;
        }
        v2TXLivePusherJni.setDisplayOrientation(orientation.getIndex());
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int enableCustomAudioCapture(boolean z10) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.enableCustomAudioCapture(z10);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int enableCustomVideoCapture(boolean z10) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.enableCustomVideoCapture(z10);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int enableCustomVideoProcess(boolean z10, V2TXLiveDef.V2TXLivePixelFormat v2TXLivePixelFormat, V2TXLiveDef.V2TXLiveBufferType v2TXLiveBufferType) {
        return this.mImpl.enableCustomVideoProcess(z10, v2TXLivePixelFormat, v2TXLiveBufferType);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int enableVolumeEvaluation(int i9) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.enableVolumeEvaluation(i9);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized TXAudioEffectManager getAudioEffectManager() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return null;
        }
        return v2TXLivePusherJni.getAudioEffectManager();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized TXBeautyManager getBeautyManager() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return null;
        }
        return v2TXLivePusherJni.getBeautyManager();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized TXDeviceManager getDeviceManager() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return null;
        }
        return v2TXLivePusherJni.getDeviceManager();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int isPushing() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.isPushing();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int pauseAudio() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.pauseAudio();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int pauseVideo() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.pauseVideo();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized void release() {
        if (this.mImpl == null) {
            return;
        }
        this.mDisplayOrientationListener.disable();
        this.mImpl.release();
        LiteavLog.i(TAG, "Release instance:" + this.mImpl.toString());
        this.mImpl = null;
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int resumeAudio() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.resumeAudio();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int resumeVideo() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.resumeVideo();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int sendCustomAudioFrame(V2TXLiveDef.V2TXLiveAudioFrame v2TXLiveAudioFrame) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.sendCustomAudioFrame(v2TXLiveAudioFrame);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int sendCustomVideoFrame(V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.sendCustomVideoFrame(v2TXLiveVideoFrame);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int sendSeiMessage(int i9, byte[] bArr) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.sendSeiMessage(i9, bArr);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int setAudioQuality(V2TXLiveDef.V2TXLiveAudioQuality v2TXLiveAudioQuality) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.setAudioQuality(v2TXLiveAudioQuality);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int setEncoderMirror(boolean z10) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.setEncoderMirror(z10);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int setMixTranscodingConfig(V2TXLiveDef.V2TXLiveTranscodingConfig v2TXLiveTranscodingConfig) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.setMixTranscodingConfig(v2TXLiveTranscodingConfig);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized void setObserver(V2TXLivePusherObserver v2TXLivePusherObserver) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return;
        }
        v2TXLivePusherJni.setObserver(v2TXLivePusherObserver);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int setProperty(String str, Object obj) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.setProperty(str, obj);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int setRenderMirror(V2TXLiveDef.V2TXLiveMirrorType v2TXLiveMirrorType) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.setRenderMirror(v2TXLiveMirrorType);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int setRenderRotation(V2TXLiveDef.V2TXLiveRotation v2TXLiveRotation) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.setRenderRotation(v2TXLiveRotation);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int setRenderView(TXCloudVideoView tXCloudVideoView) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.setRenderView(tXCloudVideoView);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int setVideoQuality(V2TXLiveDef.V2TXLiveVideoEncoderParam v2TXLiveVideoEncoderParam) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.setVideoQuality(v2TXLiveVideoEncoderParam);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int setWatermark(Bitmap bitmap, float f10, float f11, float f12) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.setWatermark(bitmap, f10, f11, f12);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized void showDebugView(boolean z10) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return;
        }
        v2TXLivePusherJni.showDebugView(z10);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int snapshot() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.snapshot();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int startCamera(boolean z10) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.startCamera(z10);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int startMicrophone() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.startMicrophone();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int startPush(String str) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.startPush(str);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int startScreenCapture() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.startScreenCapture();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int startSystemAudioLoopback() {
        if (this.mImpl == null) {
            return -3;
        }
        if (LiteavSystemInfo.getSystemOSVersionInt() < 29) {
            LiteavLog.e(TAG, "current system don't support system audio loopback");
            return -4;
        }
        return this.mImpl.startSystemAudioLoopback();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int startVirtualCamera(Bitmap bitmap) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.startVirtualCamera(bitmap);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int stopCamera() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.stopCamera();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int stopMicrophone() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.stopMicrophone();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int stopPush() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.stopPush();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int stopScreenCapture() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.stopScreenCapture();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int stopSystemAudioLoopback() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.stopSystemAudioLoopback();
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int stopVirtualCamera() {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.stopVirtualCamera();
    }

    private V2TXLivePusherImpl(Context context, int i9) {
        this.mImpl = new V2TXLivePusherJni(context, i9);
        LiteavLog.i(TAG, "Create instance:" + this.mImpl.toString());
        DisplayOrientationListener displayOrientationListener = new DisplayOrientationListener(context.getApplicationContext(), new WeakReference(this));
        this.mDisplayOrientationListener = displayOrientationListener;
        displayOrientationListener.enable();
        setDisplayOrientation(this.mDisplayOrientationListener.getOrientation());
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int setRenderView(TextureView textureView) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.setRenderView(textureView);
    }

    @Override // com.tencent.live2.V2TXLivePusher
    public synchronized int setRenderView(SurfaceView surfaceView) {
        V2TXLivePusherJni v2TXLivePusherJni = this.mImpl;
        if (v2TXLivePusherJni == null) {
            return -3;
        }
        return v2TXLivePusherJni.setRenderView(surfaceView);
    }
}
