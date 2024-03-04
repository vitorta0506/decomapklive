package com.tencent.ugc;

import com.tencent.liteav.videobase.common.EncodedVideoFrame;
/* loaded from: classes4.dex */
public interface VideoDemuxer {
    public static final EncodedVideoFrame END_OF_STREAM = new EncodedVideoFrame();

    void close();

    EncodedVideoFrame getNextEncodeVideoFrame();

    boolean open(String str);

    boolean seek(long j10);
}
