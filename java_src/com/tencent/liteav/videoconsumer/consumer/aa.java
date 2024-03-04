package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.consumer.j;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
/* loaded from: classes4.dex */
final /* synthetic */ class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32052a;

    /* renamed from: b  reason: collision with root package name */
    private final EncodedVideoFrame f32053b;

    private aa(j jVar, EncodedVideoFrame encodedVideoFrame) {
        this.f32052a = jVar;
        this.f32053b = encodedVideoFrame;
    }

    public static Runnable a(j jVar, EncodedVideoFrame encodedVideoFrame) {
        return new aa(jVar, encodedVideoFrame);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32052a;
        EncodedVideoFrame encodedVideoFrame = this.f32053b;
        if (jVar.f32091p == j.a.STOPPED) {
            LiteavLog.i(jVar.f32076a, "appendNALPacket ignored packet. status is  stoped.");
            return;
        }
        if (!jVar.f32089n) {
            jVar.f32089n = true;
            jVar.f32078c.notifyEvent(h.b.EVT_VIDEO_CONSUMER_RECEIVE_FIRST_FRAME, null, new Object[0]);
        }
        jVar.f32078c.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RECEIVED_FRAME, 0);
        jVar.f32090o.a();
        VideoDecodeController videoDecodeController = jVar.f32081f;
        if (videoDecodeController != null) {
            videoDecodeController.a(encodedVideoFrame);
        }
    }
}
