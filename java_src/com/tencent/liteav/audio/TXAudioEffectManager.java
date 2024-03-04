package com.tencent.liteav.audio;
/* loaded from: classes4.dex */
public interface TXAudioEffectManager {

    /* loaded from: classes4.dex */
    public static class AudioMusicParam {

        /* renamed from: id  reason: collision with root package name */
        public int f30751id;
        public String path;
        public int loopCount = 0;
        public boolean publish = false;
        public boolean isShortFile = false;
        public long startTimeMS = 0;
        public long endTimeMS = -1;

        public AudioMusicParam(int i9, String str) {
            this.path = str;
            this.f30751id = i9;
        }

        public String toString() {
            return "path=" + this.path + ", id=" + this.f30751id + ", loopCount=" + this.loopCount + ", publish=" + this.publish + ", isShortFile=" + this.isShortFile + ", startTimeMS=" + this.startTimeMS + ", endTimeMS=" + this.endTimeMS;
        }
    }

    /* loaded from: classes4.dex */
    public interface TXMusicPlayObserver {
        void onComplete(int i9, int i10);

        void onPlayProgress(int i9, long j10, long j11);

        void onStart(int i9, int i10);
    }

    /* loaded from: classes4.dex */
    public interface TXMusicPreloadObserver {
        void onLoadError(int i9, int i10);

        void onLoadProgress(int i9, int i10);
    }

    /* loaded from: classes4.dex */
    public enum TXVoiceChangerType {
        TXLiveVoiceChangerType_0(0),
        TXLiveVoiceChangerType_1(1),
        TXLiveVoiceChangerType_2(2),
        TXLiveVoiceChangerType_3(3),
        TXLiveVoiceChangerType_4(4),
        TXLiveVoiceChangerType_5(5),
        TXLiveVoiceChangerType_6(6),
        TXLiveVoiceChangerType_7(7),
        TXLiveVoiceChangerType_8(8),
        TXLiveVoiceChangerType_9(9),
        TXLiveVoiceChangerType_10(10),
        TXLiveVoiceChangerType_11(11);
        
        private int nativeValue;

        TXVoiceChangerType(int i9) {
            this.nativeValue = i9;
        }

        public final int getNativeValue() {
            return this.nativeValue;
        }
    }

    /* loaded from: classes4.dex */
    public enum TXVoiceReverbType {
        TXLiveVoiceReverbType_0(0),
        TXLiveVoiceReverbType_1(1),
        TXLiveVoiceReverbType_2(2),
        TXLiveVoiceReverbType_3(3),
        TXLiveVoiceReverbType_4(4),
        TXLiveVoiceReverbType_5(5),
        TXLiveVoiceReverbType_6(6),
        TXLiveVoiceReverbType_7(7),
        TXLiveVoiceReverbType_8(8),
        TXLiveVoiceReverbType_9(9),
        TXLiveVoiceReverbType_10(10);
        
        private int nativeValue;

        TXVoiceReverbType(int i9) {
            this.nativeValue = i9;
        }

        public final int getNativeValue() {
            return this.nativeValue;
        }
    }

    void enableVoiceEarMonitor(boolean z10);

    long getMusicCurrentPosInMS(int i9);

    long getMusicDurationInMS(String str);

    void pausePlayMusic(int i9);

    boolean preloadMusic(AudioMusicParam audioMusicParam);

    void resumePlayMusic(int i9);

    void seekMusicToPosInMS(int i9, int i10);

    void setAllMusicVolume(int i9);

    void setMusicObserver(int i9, TXMusicPlayObserver tXMusicPlayObserver);

    void setMusicPitch(int i9, float f10);

    void setMusicPlayoutVolume(int i9, int i10);

    void setMusicPublishVolume(int i9, int i10);

    void setMusicScratchSpeedRate(int i9, float f10);

    void setMusicSpeedRate(int i9, float f10);

    void setPreloadObserver(TXMusicPreloadObserver tXMusicPreloadObserver);

    void setVoiceCaptureVolume(int i9);

    void setVoiceChangerType(TXVoiceChangerType tXVoiceChangerType);

    void setVoiceEarMonitorVolume(int i9);

    void setVoicePitch(double d10);

    void setVoiceReverbType(TXVoiceReverbType tXVoiceReverbType);

    boolean startPlayMusic(AudioMusicParam audioMusicParam);

    void stopPlayMusic(int i9);
}
