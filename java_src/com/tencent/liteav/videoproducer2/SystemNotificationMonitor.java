package com.tencent.liteav.videoproducer2;

import android.os.Looper;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.v;
import com.tencent.liteav.videobase.utils.Rotation;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class SystemNotificationMonitor extends OrientationEventListener implements v.a {
    private final Display mDisplay;
    private Rotation mDisplayRotation;
    private volatile long mListenerPtr;
    private Rotation mSensorRotation;
    private volatile v mTimer;

    @CalledByNative
    public SystemNotificationMonitor() {
        super(ContextUtils.getApplicationContext());
        this.mTimer = null;
        this.mListenerPtr = 0L;
        Rotation rotation = Rotation.NORMAL;
        this.mSensorRotation = rotation;
        this.mDisplayRotation = rotation;
        this.mDisplay = ((WindowManager) ContextUtils.getApplicationContext().getSystemService("window")).getDefaultDisplay();
    }

    private Rotation getDisplayRotation(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return Rotation.NORMAL;
                    }
                    return Rotation.ROTATION_270;
                }
                return Rotation.ROTATION_180;
            }
            return Rotation.ROTATION_90;
        }
        return Rotation.NORMAL;
    }

    private static native void nativeSensorChanged(long j10, int i9, int i10);

    private synchronized void notifyOrientationChanged() {
        if (this.mListenerPtr == 0) {
            return;
        }
        Rotation rotation = this.mSensorRotation;
        int i9 = rotation != null ? rotation.mValue : 0;
        Rotation rotation2 = this.mDisplayRotation;
        nativeSensorChanged(this.mListenerPtr, i9, rotation2 != null ? rotation2.mValue : 0);
    }

    @CalledByNative
    public synchronized void initialize(long j10) {
        this.mListenerPtr = j10;
        if (this.mTimer != null) {
            return;
        }
        this.mTimer = new v(Looper.getMainLooper(), this);
        this.mTimer.a(0, 1000);
        super.enable();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0023 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0024  */
    @Override // android.view.OrientationEventListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onOrientationChanged(int r2) {
        /*
            r1 = this;
            r0 = -1
            if (r2 != r0) goto L4
            return
        L4:
            r0 = 45
            if (r2 <= r0) goto L1d
            r0 = 135(0x87, float:1.89E-43)
            if (r2 > r0) goto Lf
            com.tencent.liteav.videobase.utils.Rotation r2 = com.tencent.liteav.videobase.utils.Rotation.ROTATION_90
            goto L1f
        Lf:
            r0 = 225(0xe1, float:3.15E-43)
            if (r2 > r0) goto L16
            com.tencent.liteav.videobase.utils.Rotation r2 = com.tencent.liteav.videobase.utils.Rotation.ROTATION_180
            goto L1f
        L16:
            r0 = 315(0x13b, float:4.41E-43)
            if (r2 > r0) goto L1d
            com.tencent.liteav.videobase.utils.Rotation r2 = com.tencent.liteav.videobase.utils.Rotation.ROTATION_270
            goto L1f
        L1d:
            com.tencent.liteav.videobase.utils.Rotation r2 = com.tencent.liteav.videobase.utils.Rotation.NORMAL
        L1f:
            com.tencent.liteav.videobase.utils.Rotation r0 = r1.mSensorRotation
            if (r0 != r2) goto L24
            return
        L24:
            r1.mSensorRotation = r2
            android.view.Display r2 = r1.mDisplay
            int r2 = r2.getRotation()
            com.tencent.liteav.videobase.utils.Rotation r2 = r1.getDisplayRotation(r2)
            r1.mDisplayRotation = r2
            r1.notifyOrientationChanged()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer2.SystemNotificationMonitor.onOrientationChanged(int):void");
    }

    @Override // com.tencent.liteav.base.util.v.a
    public void onTimeout() {
        Rotation displayRotation = getDisplayRotation(this.mDisplay.getRotation());
        if (this.mDisplayRotation == displayRotation) {
            return;
        }
        this.mDisplayRotation = displayRotation;
        notifyOrientationChanged();
    }

    @CalledByNative
    public synchronized void uninitialize() {
        super.disable();
        this.mListenerPtr = 0L;
        if (this.mTimer != null) {
            this.mTimer.a();
            this.mTimer = null;
        }
    }
}
