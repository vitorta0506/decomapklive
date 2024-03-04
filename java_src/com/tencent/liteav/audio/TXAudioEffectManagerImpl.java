package com.tencent.liteav.audio;

import android.text.TextUtils;
import com.tencent.liteav.audio.TXAudioEffectManager;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import java.util.ArrayList;
import java.util.List;
@JNINamespace("liteav::manager")
/* loaded from: classes4.dex */
public class TXAudioEffectManagerImpl implements TXAudioEffectManager {
    private static final int EFFECT_PLAYER_ID_TYPE = 2;
    private static final String TAG = "TXAudioEffectManagerImpl";
    private List<Integer> mEffectIdList = new ArrayList();
    private long mNativeAudioEffectMgr;

    /* loaded from: classes4.dex */
    static class AudioBgmParams {
        private TXAudioEffectManager.AudioMusicParam mParams;

        public AudioBgmParams(TXAudioEffectManager.AudioMusicParam audioMusicParam) {
            this.mParams = audioMusicParam;
        }

        @CalledByNative("AudioBgmParams")
        public long getEndTimeMS() {
            return this.mParams.endTimeMS;
        }

        @CalledByNative("AudioBgmParams")
        public int getLoopCount() {
            return this.mParams.loopCount;
        }

        @CalledByNative("AudioBgmParams")
        public String getPath() {
            return this.mParams.path;
        }

        @CalledByNative("AudioBgmParams")
        public long getStartTimeMS() {
            return this.mParams.startTimeMS;
        }

        @CalledByNative("AudioBgmParams")
        public boolean isPublish() {
            return this.mParams.publish;
        }
    }

    /* loaded from: classes4.dex */
    static class MusicPlayObserver {
        private TXAudioEffectManager.TXMusicPlayObserver mListener;

        public MusicPlayObserver(TXAudioEffectManager.TXMusicPlayObserver tXMusicPlayObserver) {
            this.mListener = tXMusicPlayObserver;
        }

        @CalledByNative("MusicPlayObserver")
        public void onComplete(long j10, int i9) {
            TXAudioEffectManager.TXMusicPlayObserver tXMusicPlayObserver = this.mListener;
            if (tXMusicPlayObserver != null) {
                tXMusicPlayObserver.onComplete((int) j10, i9);
            }
        }

        @CalledByNative("MusicPlayObserver")
        public void onPlayProgress(long j10, long j11, long j12) {
            TXAudioEffectManager.TXMusicPlayObserver tXMusicPlayObserver = this.mListener;
            if (tXMusicPlayObserver != null) {
                tXMusicPlayObserver.onPlayProgress((int) j10, j11, j12);
            }
        }

        @CalledByNative("MusicPlayObserver")
        public void onStart(long j10, int i9) {
            TXAudioEffectManager.TXMusicPlayObserver tXMusicPlayObserver = this.mListener;
            if (tXMusicPlayObserver != null) {
                tXMusicPlayObserver.onStart((int) j10, i9);
            }
        }
    }

    /* loaded from: classes4.dex */
    static class MusicPreloadObserver {
        private TXAudioEffectManager.TXMusicPreloadObserver mListener;

        public MusicPreloadObserver(TXAudioEffectManager.TXMusicPreloadObserver tXMusicPreloadObserver) {
            this.mListener = tXMusicPreloadObserver;
        }

        @CalledByNative("MusicPreloadObserver")
        public void onLoadError(long j10, int i9) {
            TXAudioEffectManager.TXMusicPreloadObserver tXMusicPreloadObserver = this.mListener;
            if (tXMusicPreloadObserver != null) {
                tXMusicPreloadObserver.onLoadError((int) j10, i9);
            }
        }

        @CalledByNative("MusicPreloadObserver")
        public void onLoadProgress(long j10, int i9) {
            TXAudioEffectManager.TXMusicPreloadObserver tXMusicPreloadObserver = this.mListener;
            if (tXMusicPreloadObserver != null) {
                tXMusicPreloadObserver.onLoadProgress((int) j10, i9);
            }
        }
    }

    public TXAudioEffectManagerImpl(long j10) {
        this.mNativeAudioEffectMgr = 0L;
        this.mNativeAudioEffectMgr = j10;
    }

    private static long convertToEffectId(int i9) {
        return i9 | 8589934592L;
    }

    private static native void nativeDestroy(long j10);

    private static native void nativeEnableAudioEarMonitoring(long j10, boolean z10);

    private static native long nativeGetMusicCurrentPosInMS(long j10, long j11);

    private static native long nativeGetMusicDurationInMS(long j10, String str);

    private static native void nativePausePlayMusic(long j10, long j11);

    private static native void nativePreloadMusic(long j10, long j11, AudioBgmParams audioBgmParams);

    private static native void nativeResumePlayMusic(long j10, long j11);

    private static native void nativeSeekMusicToPosInMS(long j10, long j11, long j12);

    private static native void nativeSetAllMusicVolume(long j10, int i9);

    private static native void nativeSetAudioEarMonitoringVolume(long j10, int i9);

    private static native void nativeSetMusicObserver(long j10, long j11, MusicPlayObserver musicPlayObserver);

    private static native void nativeSetMusicPitch(long j10, long j11, float f10);

    private static native void nativeSetMusicPlayoutVolume(long j10, long j11, int i9);

    private static native void nativeSetMusicPublishVolume(long j10, long j11, int i9);

    private static native void nativeSetMusicScratchSpeedRate(long j10, long j11, float f10);

    private static native void nativeSetMusicSpeedRate(long j10, long j11, float f10);

    private static native void nativeSetPreloadObserver(long j10, MusicPreloadObserver musicPreloadObserver);

    private static native void nativeSetVoiceCaptureVolume(long j10, int i9);

    private static native void nativeSetVoiceChangerType(long j10, int i9);

    private static native void nativeSetVoicePitch(long j10, double d10);

    private static native void nativeSetVoiceReverbType(long j10, int i9);

    private static native void nativeStartPlayMusic(long j10, long j11, AudioBgmParams audioBgmParams);

    private static native void nativeStopPlayMusic(long j10, long j11);

    public static TXAudioEffectManager.TXVoiceChangerType voiceChangerTypeFromInt(int i9) {
        if (i9 == 0) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_0;
        }
        if (i9 == 1) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_1;
        }
        if (i9 == 2) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_2;
        }
        if (i9 == 3) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_3;
        }
        if (i9 == 4) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_4;
        }
        if (i9 == 5) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_5;
        }
        if (i9 == 6) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_6;
        }
        if (i9 == 7) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_7;
        }
        if (i9 == 8) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_8;
        }
        if (i9 == 9) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_9;
        }
        if (i9 == 10) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_10;
        }
        if (i9 == 11) {
            return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_11;
        }
        return TXAudioEffectManager.TXVoiceChangerType.TXLiveVoiceChangerType_0;
    }

    public static TXAudioEffectManager.TXVoiceReverbType voiceReverbTypeFromInt(int i9) {
        if (i9 == 0) {
            return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_0;
        }
        if (i9 == 1) {
            return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_1;
        }
        if (i9 == 2) {
            return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_2;
        }
        if (i9 == 3) {
            return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_3;
        }
        if (i9 == 4) {
            return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_4;
        }
        if (i9 == 5) {
            return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_5;
        }
        if (i9 == 6) {
            return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_6;
        }
        if (i9 == 7) {
            return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_7;
        }
        if (i9 == 8) {
            return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_8;
        }
        if (i9 == 9) {
            return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_9;
        }
        if (i9 == 10) {
            return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_10;
        }
        return TXAudioEffectManager.TXVoiceReverbType.TXLiveVoiceReverbType_0;
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void enableVoiceEarMonitor(boolean z10) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeEnableAudioEarMonitoring(j10, z10);
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeDestroy(j10);
            this.mNativeAudioEffectMgr = 0L;
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public long getMusicCurrentPosInMS(int i9) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            return nativeGetMusicCurrentPosInMS(j10, i9);
        }
        return 0L;
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public long getMusicDurationInMS(String str) {
        if (TextUtils.isEmpty(str)) {
            LiteavLog.e(TAG, "getMusicDurationInMS invalid params");
            return 0L;
        }
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            return nativeGetMusicDurationInMS(j10, str);
        }
        return 0L;
    }

    public void pauseAudioEffect(int i9) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativePausePlayMusic(j10, convertToEffectId(i9));
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void pausePlayMusic(int i9) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativePausePlayMusic(j10, i9);
        }
    }

    public void playAudioEffect(TXAudioEffectManager.AudioMusicParam audioMusicParam) {
        if (audioMusicParam != null && !TextUtils.isEmpty(audioMusicParam.path)) {
            long j10 = this.mNativeAudioEffectMgr;
            if (j10 != 0) {
                nativeStartPlayMusic(j10, convertToEffectId(audioMusicParam.f30751id), new AudioBgmParams(audioMusicParam));
                synchronized (this) {
                    this.mEffectIdList.add(Integer.valueOf(audioMusicParam.f30751id));
                }
                return;
            }
            return;
        }
        LiteavLog.e(TAG, "startPlayMusic invalid params");
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public boolean preloadMusic(TXAudioEffectManager.AudioMusicParam audioMusicParam) {
        if (audioMusicParam != null && !TextUtils.isEmpty(audioMusicParam.path)) {
            long j10 = this.mNativeAudioEffectMgr;
            if (j10 != 0) {
                nativePreloadMusic(j10, audioMusicParam.f30751id, new AudioBgmParams(audioMusicParam));
                return true;
            }
            return true;
        }
        LiteavLog.e(TAG, "preloadMusic invalid params");
        return false;
    }

    public void resumeAudioEffect(int i9) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeResumePlayMusic(j10, convertToEffectId(i9));
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void resumePlayMusic(int i9) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeResumePlayMusic(j10, i9);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void seekMusicToPosInMS(int i9, int i10) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSeekMusicToPosInMS(j10, i9, i10);
        }
    }

    public void setAllAudioEffectsVolume(int i9) {
        if (this.mNativeAudioEffectMgr != 0) {
            synchronized (this) {
                for (Integer num : this.mEffectIdList) {
                    setAudioEffectVolume(num.intValue(), i9);
                }
            }
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setAllMusicVolume(int i9) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetAllMusicVolume(j10, i9);
        }
    }

    public void setAudioEffectVolume(int i9, int i10) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetMusicPlayoutVolume(j10, convertToEffectId(i9), i10);
            nativeSetMusicPublishVolume(this.mNativeAudioEffectMgr, convertToEffectId(i9), i10);
        }
    }

    public void setEffectObserver(int i9, TXAudioEffectManager.TXMusicPlayObserver tXMusicPlayObserver) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            if (tXMusicPlayObserver != null) {
                nativeSetMusicObserver(j10, convertToEffectId(i9), new MusicPlayObserver(tXMusicPlayObserver));
            } else {
                nativeSetMusicObserver(j10, convertToEffectId(i9), null);
            }
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setMusicObserver(int i9, TXAudioEffectManager.TXMusicPlayObserver tXMusicPlayObserver) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            if (tXMusicPlayObserver != null) {
                nativeSetMusicObserver(j10, i9, new MusicPlayObserver(tXMusicPlayObserver));
            } else {
                nativeSetMusicObserver(j10, i9, null);
            }
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setMusicPitch(int i9, float f10) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetMusicPitch(j10, i9, f10);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setMusicPlayoutVolume(int i9, int i10) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetMusicPlayoutVolume(j10, i9, i10);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setMusicPublishVolume(int i9, int i10) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetMusicPublishVolume(j10, i9, i10);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setMusicScratchSpeedRate(int i9, float f10) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetMusicScratchSpeedRate(j10, i9, f10);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setMusicSpeedRate(int i9, float f10) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetMusicSpeedRate(j10, i9, f10);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setPreloadObserver(TXAudioEffectManager.TXMusicPreloadObserver tXMusicPreloadObserver) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetPreloadObserver(j10, new MusicPreloadObserver(tXMusicPreloadObserver));
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setVoiceCaptureVolume(int i9) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetVoiceCaptureVolume(j10, i9);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setVoiceChangerType(TXAudioEffectManager.TXVoiceChangerType tXVoiceChangerType) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetVoiceChangerType(j10, tXVoiceChangerType.getNativeValue());
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setVoiceEarMonitorVolume(int i9) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetAudioEarMonitoringVolume(j10, i9);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setVoicePitch(double d10) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetVoicePitch(j10, d10);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void setVoiceReverbType(TXAudioEffectManager.TXVoiceReverbType tXVoiceReverbType) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetVoiceReverbType(j10, tXVoiceReverbType.getNativeValue());
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public boolean startPlayMusic(TXAudioEffectManager.AudioMusicParam audioMusicParam) {
        if (audioMusicParam != null && !TextUtils.isEmpty(audioMusicParam.path)) {
            long j10 = this.mNativeAudioEffectMgr;
            if (j10 != 0) {
                nativeStartPlayMusic(j10, audioMusicParam.f30751id, new AudioBgmParams(audioMusicParam));
                return true;
            }
            return true;
        }
        LiteavLog.e(TAG, "startPlayMusic invalid params");
        return false;
    }

    public void stopAllAudioEffects() {
        if (this.mNativeAudioEffectMgr != 0) {
            synchronized (this) {
                for (Integer num : this.mEffectIdList) {
                    nativeSetMusicObserver(this.mNativeAudioEffectMgr, convertToEffectId(num.intValue()), null);
                    nativeStopPlayMusic(this.mNativeAudioEffectMgr, convertToEffectId(num.intValue()));
                }
                this.mEffectIdList.clear();
            }
        }
    }

    public void stopAudioEffect(int i9) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeSetMusicObserver(j10, convertToEffectId(i9), null);
            nativeStopPlayMusic(this.mNativeAudioEffectMgr, convertToEffectId(i9));
            synchronized (this) {
                int indexOf = this.mEffectIdList.indexOf(Integer.valueOf(i9));
                if (indexOf >= 0) {
                    this.mEffectIdList.remove(indexOf);
                }
            }
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager
    public void stopPlayMusic(int i9) {
        long j10 = this.mNativeAudioEffectMgr;
        if (j10 != 0) {
            nativeStopPlayMusic(j10, i9);
        }
    }
}
