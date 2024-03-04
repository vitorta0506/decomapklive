package org.light;

import org.light.bean.Texture;
/* loaded from: classes7.dex */
public interface ClipSourceFactory {

    /* loaded from: classes7.dex */
    public interface AudioReader {
        AudioFrame copyNextFrame();

        AudioFrame copyNextFrameSyncEnable(boolean z10);

        long duration();

        void release();

        void seek(long j10);

        void setVolume(float f10);
    }

    /* loaded from: classes7.dex */
    public interface VideoReader {
        long duration();

        int height();

        Texture readSample(long j10);

        void release();

        int width();
    }

    AudioReader createAudioReader(String str);

    VideoReader createVideoReader(String str);
}
