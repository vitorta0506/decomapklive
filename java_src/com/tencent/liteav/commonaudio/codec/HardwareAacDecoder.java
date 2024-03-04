package com.tencent.liteav.commonaudio.codec;

import android.media.MediaFormat;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.commonaudio.codec.AacMediaCodecWrapper;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
public class HardwareAacDecoder {

    /* renamed from: a  reason: collision with root package name */
    private final AacMediaCodecWrapper f31218a = new AacMediaCodecWrapper(AacMediaCodecWrapper.a.f31216b);

    @CalledByNative
    public ByteBuffer decode(ByteBuffer byteBuffer) {
        return this.f31218a.processFrame(byteBuffer);
    }

    @CalledByNative
    public int getOutputChannelCount() {
        MediaFormat mediaFormat = this.f31218a.f31210a;
        if (mediaFormat == null) {
            return -1;
        }
        try {
            return mediaFormat.getInteger("channel-count");
        } catch (Exception e10) {
            Log.e("HardwareAacDecoder", "getOutputChannelCount failed. ".concat(String.valueOf(e10)), new Object[0]);
            return -1;
        }
    }

    @CalledByNative
    public int getOutputSampleRate() {
        MediaFormat mediaFormat = this.f31218a.f31210a;
        if (mediaFormat == null) {
            return -1;
        }
        try {
            return mediaFormat.getInteger("sample-rate");
        } catch (Exception e10) {
            Log.e("HardwareAacDecoder", "getOutputSampleRate failed. ".concat(String.valueOf(e10)), new Object[0]);
            return -1;
        }
    }

    @CalledByNative
    public boolean init(int i9, int i10, ByteBuffer byteBuffer) {
        MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", i9, i10);
        createAudioFormat.setString("mime", "audio/mp4a-latm");
        createAudioFormat.setByteBuffer("csd-0", byteBuffer);
        return this.f31218a.a(createAudioFormat);
    }

    @CalledByNative
    public void unInit() {
        this.f31218a.a();
    }
}
