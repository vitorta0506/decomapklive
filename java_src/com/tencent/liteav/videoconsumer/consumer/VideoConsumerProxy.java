package com.tencent.liteav.videoconsumer.consumer;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.common.SnapshotSourceType;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
import com.tencent.liteav.videoconsumer.decoder.b;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderListener;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class VideoConsumerProxy {
    private final j mConsumer;

    @CalledByNative
    public VideoConsumerProxy(@NonNull IVideoReporter iVideoReporter) {
        this.mConsumer = new j(iVideoReporter);
    }

    @CalledByNative
    public static VideoDecoderDef.DecodeAbility getDecodeAbility() {
        com.tencent.liteav.videoconsumer.decoder.b bVar;
        bVar = b.a.f32243a;
        return bVar.f32241a;
    }

    @CalledByNative
    public void appendNALPacket(EncodedVideoFrame encodedVideoFrame) {
        j jVar = this.mConsumer;
        if (encodedVideoFrame != null && encodedVideoFrame.data != null) {
            jVar.a(aa.a(jVar, encodedVideoFrame), false);
        } else {
            LiteavLog.w(jVar.f32076a, "packet or packet.data is null,packet={%s}", encodedVideoFrame);
        }
    }

    @CalledByNative
    public long getCurrentRenderTimeStamp() {
        return this.mConsumer.f32097v.get();
    }

    @CalledByNative
    public void initialize() {
        j jVar = this.mConsumer;
        LiteavLog.i(jVar.f32076a, "initialize videoConsumer");
        jVar.a(t.a(jVar), false);
    }

    @CalledByNative
    public void pause() {
        j jVar = this.mConsumer;
        jVar.a(y.a(jVar), false);
    }

    @CalledByNative
    public void resume() {
        j jVar = this.mConsumer;
        jVar.a(z.a(jVar), false);
    }

    @CalledByNative
    public void setCustomRenderListener(GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, VideoRenderListener videoRenderListener) {
        j jVar = this.mConsumer;
        jVar.a(r.a(jVar, pixelFormatType, pixelBufferType, videoRenderListener), false);
    }

    @CalledByNative
    public void setDecoderStrategy(VideoDecodeController.DecodeStrategy decodeStrategy) {
        j jVar = this.mConsumer;
        jVar.a(n.a(jVar, decodeStrategy), true);
    }

    @CalledByNative
    public void setDisplayTarget(DisplayTarget displayTarget) {
        j jVar = this.mConsumer;
        jVar.a(o.a(jVar, displayTarget), true);
    }

    @CalledByNative
    public void setHWDecoderDeviceRelatedParams(String str) {
        j jVar = this.mConsumer;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        jVar.a(q.a(jVar, str), true);
    }

    @CalledByNative
    public void setRenderMirrorEnabled(boolean z10) {
        j jVar = this.mConsumer;
        jVar.a(ac.a(jVar, z10), true);
    }

    @CalledByNative
    public void setRenderRotation(Rotation rotation) {
        j jVar = this.mConsumer;
        jVar.a(l.a(jVar, rotation), true);
    }

    @CalledByNative
    public void setScaleType(GLConstants.GLScaleType gLScaleType) {
        j jVar = this.mConsumer;
        jVar.a(m.a(jVar, gLScaleType), true);
    }

    @CalledByNative
    public void setScene(VideoDecoderDef.ConsumerScene consumerScene) {
        j jVar = this.mConsumer;
        jVar.a(ab.a(jVar, consumerScene), false);
    }

    @CalledByNative
    public void setServerConfig(ServerVideoConsumerConfig serverVideoConsumerConfig) {
        j jVar = this.mConsumer;
        jVar.a(u.a(jVar, serverVideoConsumerConfig), true);
    }

    @CalledByNative
    public void setSharedEGLContext(Object obj) {
        j jVar = this.mConsumer;
        String str = jVar.f32076a;
        LiteavLog.i(str, "setSharedEGLContext(object:" + obj + ")");
        jVar.a(s.a(jVar, obj), false);
    }

    @CalledByNative
    public void start() {
        j jVar = this.mConsumer;
        jVar.a(w.a(jVar), false);
    }

    @CalledByNative
    public void stop(boolean z10) {
        this.mConsumer.a(z10);
    }

    @CalledByNative
    public void takeSnapshot(SnapshotSourceType snapshotSourceType, TakeSnapshotListener takeSnapshotListener) {
        j jVar = this.mConsumer;
        jVar.a(p.a(jVar, snapshotSourceType, takeSnapshotListener), false);
    }

    @CalledByNative
    public void uninitialize() {
        final j jVar = this.mConsumer;
        jVar.a(false);
        jVar.a(new Runnable() { // from class: com.tencent.liteav.videoconsumer.consumer.j.5
            @Override // java.lang.Runnable
            public final void run() {
                LiteavLog.i(jVar.f32076a, "uninitialize videoConsumer");
                VideoRenderInterface videoRenderInterface = jVar.f32079d;
                if (videoRenderInterface != null) {
                    videoRenderInterface.setDisplayView(null, false);
                    jVar.f32079d = null;
                }
                j jVar2 = jVar;
                jVar2.f32080e = null;
                VideoDecodeController videoDecodeController = jVar2.f32081f;
                if (videoDecodeController != null) {
                    videoDecodeController.i();
                    jVar.f32081f = null;
                }
                j jVar3 = jVar;
                jVar3.f32096u = null;
                jVar3.f32084i = null;
                jVar3.f32082g = null;
                jVar3.f32083h = null;
            }
        }, false);
    }
}
