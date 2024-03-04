package com.tencent.liteav.videobase.frame;

import androidx.annotation.NonNull;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.a;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public final class e extends com.tencent.liteav.videobase.frame.a<d> {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f31832a = new AtomicInteger();

    /* loaded from: classes4.dex */
    public static class a extends d {

        /* renamed from: a  reason: collision with root package name */
        int f31833a;

        /* renamed from: b  reason: collision with root package name */
        final int f31834b;

        /* renamed from: c  reason: collision with root package name */
        final int f31835c;

        /* renamed from: d  reason: collision with root package name */
        private FrameMetaData f31836d;

        /* synthetic */ a(g gVar, int i9, int i10, byte b10) {
            this(gVar, i9, i10);
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int a() {
            return this.f31833a;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int b() {
            return this.f31834b;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int c() {
            return this.f31835c;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final FrameMetaData d() {
            return this.f31836d;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final void e() {
            this.f31836d = null;
        }

        @Override // com.tencent.liteav.videobase.frame.k
        public final void release() {
            super.release();
        }

        private a(g<d> gVar, int i9, int i10) {
            super(gVar);
            this.f31833a = -1;
            this.f31834b = i9;
            this.f31835c = i10;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final void a(FrameMetaData frameMetaData) {
            this.f31836d = frameMetaData;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final PixelFrame a(Object obj) {
            b bVar = new b(this, obj, (byte) 0);
            bVar.retain();
            return bVar;
        }
    }

    /* loaded from: classes4.dex */
    public static class b extends PixelFrame {

        /* renamed from: b  reason: collision with root package name */
        private static final g<b> f31837b = f.a();

        /* renamed from: a  reason: collision with root package name */
        public final d f31838a;

        /* synthetic */ b(d dVar, Object obj, byte b10) {
            this(dVar, obj);
        }

        @Override // com.tencent.liteav.videobase.frame.PixelFrame
        public final void setTextureId(int i9) {
            throw new UnsupportedOperationException("Object is allocated by pool, can't change its Buffer");
        }

        private b(d dVar, Object obj) {
            super(f31837b);
            dVar.retain();
            this.mWidth = dVar.b();
            this.mHeight = dVar.c();
            this.f31838a = dVar;
            this.mTextureId = dVar.a();
            this.mGLContext = obj;
            this.mPixelBufferType = GLConstants.PixelBufferType.TEXTURE_2D;
            this.mPixelFormatType = GLConstants.PixelFormatType.RGBA;
            this.mMetaData = dVar.d();
        }
    }

    /* loaded from: classes4.dex */
    static class c implements a.InterfaceC0328a {

        /* renamed from: a  reason: collision with root package name */
        final int f31839a;

        /* renamed from: b  reason: collision with root package name */
        final int f31840b;

        public c(int i9, int i10) {
            this.f31839a = i9;
            this.f31840b = i10;
        }

        public final boolean equals(Object obj) {
            if (obj.getClass() != c.class) {
                return false;
            }
            c cVar = (c) obj;
            return this.f31839a == cVar.f31839a && this.f31840b == cVar.f31840b;
        }

        public final int hashCode() {
            return (this.f31839a * 37213) + this.f31840b;
        }
    }

    @Override // com.tencent.liteav.videobase.frame.a
    protected final /* synthetic */ void a(d dVar) {
        a aVar = (a) dVar;
        OpenGlUtils.deleteTexture(aVar.f31833a);
        aVar.f31833a = -1;
        f31832a.getAndDecrement();
    }

    @Override // com.tencent.liteav.videobase.frame.a
    protected final /* synthetic */ a.InterfaceC0328a b(d dVar) {
        d dVar2 = dVar;
        return new c(dVar2.b(), dVar2.c());
    }

    @Override // com.tencent.liteav.videobase.frame.a
    public final void b() {
        super.b();
    }

    @NonNull
    public final d a(int i9, int i10) {
        d dVar = (d) super.a(new c(i9, i10));
        dVar.e();
        return dVar;
    }

    @Override // com.tencent.liteav.videobase.frame.a
    public final void a() {
        super.a();
    }

    @Override // com.tencent.liteav.videobase.frame.a
    protected final /* synthetic */ d a(g<d> gVar, a.InterfaceC0328a interfaceC0328a) {
        c cVar = (c) interfaceC0328a;
        a aVar = new a(gVar, cVar.f31839a, cVar.f31840b, (byte) 0);
        aVar.f31833a = OpenGlUtils.createTexture(aVar.f31834b, aVar.f31835c, 6408, 6408);
        f31832a.incrementAndGet();
        return aVar;
    }
}
