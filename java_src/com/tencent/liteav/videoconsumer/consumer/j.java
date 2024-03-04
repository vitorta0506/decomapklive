package com.tencent.liteav.videoconsumer.consumer;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.utils.f;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderListener;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes4.dex */
public final class j {
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    final IVideoReporter f32078c;

    /* renamed from: d  reason: collision with root package name */
    VideoRenderInterface f32079d;

    /* renamed from: e  reason: collision with root package name */
    VideoRenderInterface f32080e;

    /* renamed from: f  reason: collision with root package name */
    VideoDecodeController f32081f;

    /* renamed from: g  reason: collision with root package name */
    b f32082g;

    /* renamed from: h  reason: collision with root package name */
    VideoRenderListener f32083h;

    /* renamed from: i  reason: collision with root package name */
    DisplayTarget f32084i;

    /* renamed from: w  reason: collision with root package name */
    final com.tencent.liteav.videoconsumer.renderer.o f32098w;

    /* renamed from: a  reason: collision with root package name */
    String f32076a = "VideoConsumer";
    private VideoRenderListener A = new VideoRenderListener() { // from class: com.tencent.liteav.videoconsumer.consumer.j.1
        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onFocusAtPoint(int i9, int i10, int i11, int i12) {
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onRenderFirstFrameOnView(int i9, int i10) {
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onRenderFrame(PixelFrame pixelFrame) {
            VideoRenderListener videoRenderListener = j.this.f32083h;
            if (videoRenderListener != null) {
                videoRenderListener.onRenderFrame(pixelFrame);
            }
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onRenderTargetSizeChanged(int i9, int i10) {
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onZoom(float f10) {
        }
    };
    private VideoRenderListener B = new VideoRenderListener() { // from class: com.tencent.liteav.videoconsumer.consumer.j.2
        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onFocusAtPoint(int i9, int i10, int i11, int i12) {
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onRenderFirstFrameOnView(int i9, int i10) {
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onRenderFrame(PixelFrame pixelFrame) {
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onRenderTargetSizeChanged(int i9, int i10) {
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onZoom(float f10) {
        }
    };

    /* renamed from: j  reason: collision with root package name */
    GLConstants.GLScaleType f32085j = GLConstants.GLScaleType.CENTER_CROP;

    /* renamed from: k  reason: collision with root package name */
    Rotation f32086k = Rotation.NORMAL;

    /* renamed from: l  reason: collision with root package name */
    boolean f32087l = false;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    final com.tencent.liteav.videobase.utils.d f32088m = new com.tencent.liteav.videobase.utils.d();

    /* renamed from: n  reason: collision with root package name */
    boolean f32089n = false;

    /* renamed from: p  reason: collision with root package name */
    a f32091p = a.STOPPED;

    /* renamed from: q  reason: collision with root package name */
    boolean f32092q = false;

    /* renamed from: r  reason: collision with root package name */
    int f32093r = 0;

    /* renamed from: s  reason: collision with root package name */
    int f32094s = 0;

    /* renamed from: t  reason: collision with root package name */
    VideoDecoderDef.ConsumerScene f32095t = VideoDecoderDef.ConsumerScene.UNKNOWN;

    /* renamed from: u  reason: collision with root package name */
    Object f32096u = null;

    /* renamed from: v  reason: collision with root package name */
    final AtomicLong f32097v = new AtomicLong(0);

    /* renamed from: x  reason: collision with root package name */
    final com.tencent.liteav.videobase.utils.j f32099x = new com.tencent.liteav.videobase.utils.j(1);

    /* renamed from: y  reason: collision with root package name */
    final Runnable f32100y = new Runnable() { // from class: com.tencent.liteav.videoconsumer.consumer.j.3
        @Override // java.lang.Runnable
        public final void run() {
            PixelFrame a10 = j.this.f32099x.a();
            if (a10 != null) {
                j jVar = j.this;
                int width = a10.getWidth();
                int height = a10.getHeight();
                if (jVar.f32093r != width || jVar.f32094s != height) {
                    IVideoReporter iVideoReporter = jVar.f32078c;
                    if (iVideoReporter != null) {
                        iVideoReporter.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_DECODER_WIDTH, Integer.valueOf(width));
                        jVar.f32078c.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_DECODER_HEIGHT, Integer.valueOf(height));
                    }
                    jVar.f32093r = width;
                    jVar.f32094s = height;
                    IVideoReporter iVideoReporter2 = jVar.f32078c;
                    h.b bVar = h.b.EVT_VIDEO_RENDER_RESOLUTION_CHANGE;
                    iVideoReporter2.notifyEvent(bVar, "resolution change to " + width + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + height, new Object[0]);
                }
                for (VideoRenderInterface videoRenderInterface : jVar.a()) {
                    if (videoRenderInterface != null) {
                        videoRenderInterface.renderFrame(a10);
                    }
                }
                jVar.f32097v.getAndSet(a10.getTimestamp());
                com.tencent.liteav.videoconsumer.renderer.o oVar = jVar.f32098w;
                long timestamp = a10.getTimestamp();
                int width2 = a10.getWidth();
                int height2 = a10.getHeight();
                oVar.f32418b.a();
                if (width2 != oVar.f32419c || height2 != oVar.f32420d) {
                    oVar.f32419c = width2;
                    oVar.f32420d = height2;
                    oVar.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_FRAME_WIDTH, Integer.valueOf(width2));
                    oVar.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_FRAME_HEIGHT, Integer.valueOf(height2));
                }
                if (!oVar.f32422f) {
                    LiteavLog.i("VideoRenderStatistic", "rendered first frame!");
                    oVar.f32417a.notifyEvent(h.b.EVT_VIDEO_RENDER_FIRST_FRAME, "rendered first frame", new Object[0]);
                    oVar.f32422f = true;
                }
                long elapsedRealtime = SystemClock.elapsedRealtime();
                oVar.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_FRAME, 0);
                oVar.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_FRAME_RENDER_PTS, Long.valueOf(timestamp));
                oVar.f32421e.a(elapsedRealtime);
                if (jVar.f32082g != null) {
                    a10.getTimestamp();
                }
                a10.release();
            }
        }
    };

    /* renamed from: z  reason: collision with root package name */
    final VideoDecodeController.a f32101z = new VideoDecodeController.a() { // from class: com.tencent.liteav.videoconsumer.consumer.j.4
        @Override // com.tencent.liteav.videoconsumer.decoder.ba
        public final void onAbandonDecodingFramesCompleted() {
        }

        @Override // com.tencent.liteav.videoconsumer.decoder.ba
        public final void onDecodeCompleted() {
        }

        @Override // com.tencent.liteav.videoconsumer.decoder.ba
        public final void onDecodeFailed() {
            j.this.a(ad.a(this), false);
        }

        @Override // com.tencent.liteav.videoconsumer.decoder.ba
        public final void onDecodeFrame(PixelFrame pixelFrame, long j10) {
            if (pixelFrame != null) {
                j jVar = j.this;
                if (jVar.f32091p != a.STARTED) {
                    return;
                }
                jVar.f32099x.a(pixelFrame);
                j jVar2 = j.this;
                jVar2.a(jVar2.f32100y, false);
            }
        }

        @Override // com.tencent.liteav.videoconsumer.decoder.ba
        public final void onDecodeLatencyChanged(boolean z10) {
        }

        @Override // com.tencent.liteav.videoconsumer.decoder.ba
        public final void onFrameEnqueuedToDecoder() {
        }

        @Override // com.tencent.liteav.videoconsumer.decoder.ba
        public final void onRequestKeyFrame() {
            j.this.a(ae.a(this), false);
        }
    };

    /* renamed from: o  reason: collision with root package name */
    final com.tencent.liteav.videobase.utils.f f32090o = new com.tencent.liteav.videobase.utils.f("VideoConsumer", 1000, new f.a(this) { // from class: com.tencent.liteav.videoconsumer.consumer.k

        /* renamed from: a  reason: collision with root package name */
        private final j f32111a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f32111a = this;
        }

        @Override // com.tencent.liteav.videobase.utils.f.a
        public final void a(double d10) {
            this.f32111a.f32078c.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_CONSUMER_RECEIVE_FPS, Double.valueOf(d10));
        }
    });
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    final com.tencent.liteav.base.util.j f32077b = new com.tencent.liteav.base.util.j(15, this.f32076a);

    /* loaded from: classes4.dex */
    enum a {
        STOPPED,
        STARTED,
        PAUSED
    }

    /* loaded from: classes4.dex */
    public interface b {
    }

    public j(@NonNull IVideoReporter iVideoReporter) {
        this.f32078c = iVideoReporter;
        this.f32076a += hashCode();
        this.f32098w = new com.tencent.liteav.videoconsumer.renderer.o(iVideoReporter);
    }

    public final void a(boolean z10) {
        a(x.a(this, z10), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(VideoRenderInterface videoRenderInterface) {
        if (videoRenderInterface != null) {
            videoRenderInterface.start(videoRenderInterface instanceof com.tencent.liteav.videoconsumer.consumer.a ? this.A : this.B);
            videoRenderInterface.setDisplayView(this.f32084i, true);
            videoRenderInterface.setRenderRotation(this.f32086k);
            videoRenderInterface.setScaleType(this.f32085j);
            videoRenderInterface.setHorizontalMirror(this.f32087l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Runnable runnable, boolean z10) {
        if (z10) {
            this.f32077b.a(v.a(this, runnable));
        } else {
            this.f32077b.a(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VideoRenderInterface> a() {
        ArrayList arrayList = new ArrayList();
        VideoRenderInterface videoRenderInterface = this.f32079d;
        if (videoRenderInterface != null) {
            arrayList.add(videoRenderInterface);
        }
        VideoRenderInterface videoRenderInterface2 = this.f32080e;
        if (videoRenderInterface2 != null) {
            arrayList.add(videoRenderInterface2);
        }
        return arrayList;
    }
}
