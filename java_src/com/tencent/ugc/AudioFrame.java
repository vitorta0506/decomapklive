package com.tencent.ugc;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import java.nio.ByteBuffer;
@JNINamespace("liteav::ugc")
/* loaded from: classes4.dex */
public class AudioFrame {
    private int mChannels;
    private AudioCodecFormat mCodecFormat;
    private ByteBuffer mData;
    private int mSampleRate;
    private long mTimestampMs;

    /* loaded from: classes4.dex */
    public enum AudioCodecFormat {
        UNKNOWN(0),
        PCM(99),
        AAC(10);
        
        private final int mValue;

        AudioCodecFormat(int i9) {
            this.mValue = i9;
        }

        public final int getValue() {
            return this.mValue;
        }
    }

    @CalledByNative
    public int getChannelCount() {
        return this.mChannels;
    }

    public AudioCodecFormat getCodecFormat() {
        return this.mCodecFormat;
    }

    @CalledByNative
    public ByteBuffer getData() {
        return this.mData;
    }

    @CalledByNative
    public int getSampleRate() {
        return this.mSampleRate;
    }

    @CalledByNative
    public long getTimestamp() {
        return this.mTimestampMs;
    }

    public void setChannelCount(int i9) {
        this.mChannels = i9;
    }

    public void setCodecFormat(AudioCodecFormat audioCodecFormat) {
        this.mCodecFormat = audioCodecFormat;
    }

    public void setData(ByteBuffer byteBuffer) {
        this.mData = byteBuffer;
    }

    public void setSampleRate(int i9) {
        this.mSampleRate = i9;
    }

    public void setTimestamp(long j10) {
        this.mTimestampMs = j10;
    }
}
