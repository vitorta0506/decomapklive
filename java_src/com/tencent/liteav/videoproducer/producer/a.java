package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.c;
/* loaded from: classes4.dex */
public final class a extends com.tencent.liteav.videobase.a.a implements c.a {

    /* renamed from: b  reason: collision with root package name */
    CustomVideoProcessListener f33151b;

    /* renamed from: c  reason: collision with root package name */
    GLConstants.PixelBufferType f33152c;

    /* renamed from: d  reason: collision with root package name */
    GLConstants.PixelFormatType f33153d;

    /* renamed from: f  reason: collision with root package name */
    private final IVideoReporter f33155f;

    /* renamed from: i  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.l f33158i;

    /* renamed from: j  reason: collision with root package name */
    private com.tencent.liteav.videobase.videobase.c f33159j;

    /* renamed from: k  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.j f33160k;

    /* renamed from: l  reason: collision with root package name */
    private PixelFrame f33161l;

    /* renamed from: m  reason: collision with root package name */
    private PixelFrame f33162m;

    /* renamed from: n  reason: collision with root package name */
    private PixelFrame f33163n;

    /* renamed from: o  reason: collision with root package name */
    private PixelFrame f33164o;

    /* renamed from: g  reason: collision with root package name */
    private final com.tencent.liteav.base.util.q f33156g = new com.tencent.liteav.base.util.q(0, 0);

    /* renamed from: h  reason: collision with root package name */
    private final com.tencent.liteav.videobase.utils.d f33157h = new com.tencent.liteav.videobase.utils.d();

    /* renamed from: e  reason: collision with root package name */
    boolean f33154e = false;

    /* renamed from: p  reason: collision with root package name */
    private boolean f33165p = false;

    /* renamed from: q  reason: collision with root package name */
    private int f33166q = -1;

    public a(IVideoReporter iVideoReporter) {
        this.f33155f = iVideoReporter;
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x01a5, code lost:
        if ((((r2.getPixelBufferType() == r6 && r2.getTextureId() == -1) || ((r2.getPixelBufferType() == com.tencent.liteav.videobase.base.GLConstants.PixelBufferType.BYTE_BUFFER && r2.getBuffer() == null) || (r2.getPixelBufferType() == com.tencent.liteav.videobase.base.GLConstants.PixelBufferType.BYTE_ARRAY && r2.getData() == null))) ? false : true) != false) goto L43;
     */
    @Override // com.tencent.liteav.videobase.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.tencent.liteav.videobase.frame.d a(long r17, com.tencent.liteav.videobase.frame.d r19) {
        /*
            Method dump skipped, instructions count: 559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer.producer.a.a(long, com.tencent.liteav.videobase.frame.d):com.tencent.liteav.videobase.frame.d");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(CustomVideoProcessListener customVideoProcessListener) {
        if (customVideoProcessListener == null || !this.f33165p) {
            return;
        }
        customVideoProcessListener.onGLContextDestroy();
        this.f33165p = false;
    }

    @Override // com.tencent.liteav.videobase.videobase.c.a
    public final void onFrameConverted(int i9, PixelFrame pixelFrame) {
        if (i9 != 101) {
            LiteavLog.w("CustomVideoProcessListenerAdapter", "Receive frame converted, but identity is invalid(%d)", Integer.valueOf(i9));
            return;
        }
        this.f33161l = pixelFrame;
        pixelFrame.retain();
    }

    @Override // com.tencent.liteav.videobase.a.a
    public final void b(com.tencent.liteav.videobase.frame.e eVar) {
        this.f33156g.a(0, 0);
        this.f33158i = new com.tencent.liteav.videobase.frame.l();
        this.f33163n = new PixelFrame();
        this.f33164o = new PixelFrame();
        this.f33162m = new PixelFrame();
        com.tencent.liteav.videobase.videobase.c cVar = new com.tencent.liteav.videobase.videobase.c();
        this.f33159j = cVar;
        cVar.a(eVar);
        this.f33157h.a(c.a(this));
    }

    @Override // com.tencent.liteav.videobase.a.a
    public final void b() {
        boolean d10 = this.f33156g.d();
        this.f33156g.a(0, 0);
        this.f33158i = null;
        this.f33163n = null;
        this.f33164o = null;
        this.f33161l = null;
        this.f33162m = null;
        this.f33159j.a();
        this.f33159j = null;
        if (d10) {
            this.f33157h.a();
            b(this.f33151b);
        }
    }

    public final void a(GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, CustomVideoProcessListener customVideoProcessListener) {
        LiteavLog.i("CustomVideoProcessListenerAdapter", "setCustomVideoProcessListener PixelFormatType = " + pixelFormatType + ",  PixelBufferType = " + pixelBufferType + " listener= " + customVideoProcessListener);
        this.f33157h.a(b.a(this, pixelFormatType, pixelBufferType, customVideoProcessListener));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(CustomVideoProcessListener customVideoProcessListener) {
        if (customVideoProcessListener == null || this.f33165p) {
            return;
        }
        customVideoProcessListener.onGLContextCreated();
        this.f33165p = true;
    }
}
