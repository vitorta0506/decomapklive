package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderListener;
/* loaded from: classes4.dex */
final /* synthetic */ class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32125a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.PixelFormatType f32126b;

    /* renamed from: c  reason: collision with root package name */
    private final GLConstants.PixelBufferType f32127c;

    /* renamed from: d  reason: collision with root package name */
    private final VideoRenderListener f32128d;

    private r(j jVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, VideoRenderListener videoRenderListener) {
        this.f32125a = jVar;
        this.f32126b = pixelFormatType;
        this.f32127c = pixelBufferType;
        this.f32128d = videoRenderListener;
    }

    public static Runnable a(j jVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, VideoRenderListener videoRenderListener) {
        return new r(jVar, pixelFormatType, pixelBufferType, videoRenderListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32125a;
        GLConstants.PixelFormatType pixelFormatType = this.f32126b;
        GLConstants.PixelBufferType pixelBufferType = this.f32127c;
        VideoRenderListener videoRenderListener = this.f32128d;
        String str = jVar.f32076a;
        LiteavLog.i(str, "setCustomRenderListener: formatType = " + pixelFormatType + " bufferType = " + pixelBufferType + " ," + videoRenderListener);
        jVar.f32083h = videoRenderListener;
        if (videoRenderListener != null) {
            if (jVar.f32080e == null) {
                a aVar = new a(jVar.f32077b);
                jVar.f32080e = aVar;
                jVar.a(aVar);
            }
            ((a) jVar.f32080e).a(pixelFormatType, pixelBufferType);
            return;
        }
        VideoRenderInterface videoRenderInterface = jVar.f32080e;
        if (videoRenderInterface != null) {
            videoRenderInterface.stop(true);
            jVar.f32080e = null;
        }
    }
}
