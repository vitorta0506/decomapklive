package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
/* loaded from: classes4.dex */
public interface be {

    /* loaded from: classes4.dex */
    public interface a extends VideoEncoderDef.VideoEncoderDataListener {
        void onEncodeError(String str);

        void onRequestRestart();

        void onRpsFrameRateChanged(boolean z10, int i9);
    }

    void ackRPSRecvFrameIndex(int i9, int i10);

    void encodeFrame(PixelFrame pixelFrame);

    VideoEncodeParams getEncodeParams();

    VideoEncoderDef.a getEncoderType();

    void initialize();

    void restartIDRFrame();

    void setBitrate(int i9);

    void setFps(int i9);

    void setRPSIFrameFPS(int i9);

    void setRPSNearestREFSize(int i9);

    void setServerConfig(ServerVideoProducerConfig serverVideoProducerConfig);

    void signalEndOfStream();

    boolean start(VideoEncodeParams videoEncodeParams, a aVar);

    void stop();

    void takeSnapshot(TakeSnapshotListener takeSnapshotListener);

    void uninitialize();
}
