package com.tencent.liteav.audio.earmonitor;

import android.text.TextUtils;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
@JNINamespace("liteav::audio")
/* loaded from: classes4.dex */
public abstract class SystemAudioKit {
    private final long mNativeSystemAudioKit;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SystemAudioKit(long j10) {
        this.mNativeSystemAudioKit = j10;
    }

    @CalledByNative
    public static SystemAudioKit create(long j10) {
        String manufacturer = LiteavSystemInfo.getManufacturer();
        if (TextUtils.isEmpty(manufacturer)) {
            return null;
        }
        String lowerCase = manufacturer.toLowerCase();
        lowerCase.hashCode();
        if (lowerCase.equals("huawei")) {
            return new a(j10, ContextUtils.getApplicationContext());
        }
        if (lowerCase.equals("vivo")) {
            return new h(j10, ContextUtils.getApplicationContext());
        }
        return null;
    }

    private static native void nativeNotifyEarMonitoringInitialized(long j10, SystemAudioKit systemAudioKit, boolean z10);

    private static native void nativeNotifySystemError(long j10, SystemAudioKit systemAudioKit);

    @CalledByNative
    public abstract void initialize();

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyEarMonitoringInitialized(SystemAudioKit systemAudioKit, boolean z10) {
        nativeNotifyEarMonitoringInitialized(this.mNativeSystemAudioKit, systemAudioKit, z10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifySystemError(SystemAudioKit systemAudioKit) {
        nativeNotifySystemError(this.mNativeSystemAudioKit, systemAudioKit);
    }

    @CalledByNative
    public abstract void setEarMonitoringVolume(int i9);

    @CalledByNative
    public abstract void startEarMonitoring();

    @CalledByNative
    public abstract void stopEarMonitoring();

    @CalledByNative
    public abstract void terminate();
}
