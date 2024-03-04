package com.tencent.liteav.audio;

import android.media.AudioManager;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
@JNINamespace("liteav::audio")
/* loaded from: classes4.dex */
public class AudioDeviceManager {
    private static final String TAG = "AudioDeviceManager";
    private AudioManager mAudioManager;

    private synchronized AudioManager getAudioManager() {
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) ContextUtils.getApplicationContext().getSystemService("audio");
        }
        return this.mAudioManager;
    }

    @CalledByNative
    private int getAudioMode() {
        try {
            AudioManager audioManager = getAudioManager();
            if (audioManager != null) {
                return audioManager.getMode();
            }
            return -1;
        } catch (Exception e10) {
            Log.i(TAG, "Exception occurs in getAudioMode " + e10.getMessage(), new Object[0]);
            return -1;
        }
    }

    @CalledByNative
    private int getStreamMaxVolume(int i9) {
        AudioManager audioManager = getAudioManager();
        if (audioManager != null) {
            return audioManager.getStreamMaxVolume(i9);
        }
        return 0;
    }

    @CalledByNative
    private int getStreamVolume(int i9) {
        AudioManager audioManager = getAudioManager();
        if (audioManager != null) {
            return audioManager.getStreamVolume(i9);
        }
        return 0;
    }

    @CalledByNative
    private int getSystemVolume() {
        try {
            int i9 = getAudioMode() == 0 ? 3 : 0;
            AudioManager audioManager = getAudioManager();
            if (audioManager != null) {
                return audioManager.getStreamVolume(i9);
            }
            return -1;
        } catch (Exception e10) {
            Log.i(TAG, "Exception occurs in getSystemVolume " + e10.getMessage(), new Object[0]);
            return -1;
        }
    }

    @CalledByNative
    private void setStreamVolume(int i9, int i10, int i11) {
        AudioManager audioManager = getAudioManager();
        if (audioManager != null) {
            audioManager.setStreamVolume(i9, i10, i11);
        }
    }
}
