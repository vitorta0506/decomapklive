package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videoconsumer.consumer.ServerVideoConsumerConfig;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
/* loaded from: classes4.dex */
public interface az {

    /* loaded from: classes4.dex */
    public enum a {
        SOFTWARE(0),
        HARDWARE(1),
        CUSTOM(2);
        
        int mValue;

        a(int i9) {
            this.mValue = i9;
        }
    }

    void abandonDecodingFrames();

    boolean decode(EncodedVideoFrame encodedVideoFrame);

    a getDecoderType();

    void initialize();

    void setScene(VideoDecoderDef.ConsumerScene consumerScene);

    void setServerConfig(ServerVideoConsumerConfig serverVideoConsumerConfig);

    void start(Object obj, ba baVar);

    void stop();

    void uninitialize();
}
