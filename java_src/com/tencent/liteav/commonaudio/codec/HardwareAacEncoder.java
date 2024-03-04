package com.tencent.liteav.commonaudio.codec;

import android.media.MediaFormat;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.commonaudio.codec.AacMediaCodecWrapper;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
public class HardwareAacEncoder {

    /* renamed from: a  reason: collision with root package name */
    private final AacMediaCodecWrapper f31219a = new AacMediaCodecWrapper(AacMediaCodecWrapper.a.f31215a);

    @CalledByNative
    public ByteBuffer encode(ByteBuffer byteBuffer) {
        return this.f31219a.processFrame(byteBuffer);
    }

    @CalledByNative
    public boolean init(int i9, int i10, int i11) {
        MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", i9, i10);
        createAudioFormat.setInteger("bitrate", i11);
        createAudioFormat.setInteger("aac-profile", 2);
        return this.f31219a.a(createAudioFormat);
    }

    @CalledByNative
    public void unInit() {
        this.f31219a.a();
    }
}
