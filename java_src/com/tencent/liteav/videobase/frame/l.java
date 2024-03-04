package com.tencent.liteav.videobase.frame;

import com.tencent.liteav.videobase.base.GLConstants;
/* loaded from: classes4.dex */
public final class l extends h<b> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends PixelFrame {

        /* renamed from: b  reason: collision with root package name */
        private static final g<a> f31866b = m.a();

        /* renamed from: a  reason: collision with root package name */
        private final b f31867a;

        /* synthetic */ a(b bVar, Object obj, byte b10) {
            this(bVar, obj);
        }

        @Override // com.tencent.liteav.videobase.frame.PixelFrame
        public final void setTextureId(int i9) {
            throw new UnsupportedOperationException("Object is allocated by pool, can't change its Buffer");
        }

        private a(b bVar, Object obj) {
            super(f31866b);
            bVar.retain();
            this.mWidth = bVar.f31870c;
            this.mHeight = bVar.f31871d;
            this.f31867a = bVar;
            this.mTextureId = bVar.f31868a;
            this.mGLContext = obj;
            int i9 = bVar.f31869b;
            if (i9 == 3553) {
                this.mPixelBufferType = GLConstants.PixelBufferType.TEXTURE_2D;
            } else if (i9 == 36197) {
                this.mPixelBufferType = GLConstants.PixelBufferType.TEXTURE_OES;
            }
            this.mPixelFormatType = GLConstants.PixelFormatType.RGBA;
        }
    }

    @Override // com.tencent.liteav.videobase.frame.h
    protected final /* synthetic */ b a(g<b> gVar) {
        return new b(gVar);
    }

    /* loaded from: classes4.dex */
    public static class b extends d {

        /* renamed from: a  reason: collision with root package name */
        int f31868a;

        /* renamed from: b  reason: collision with root package name */
        int f31869b;

        /* renamed from: c  reason: collision with root package name */
        int f31870c;

        /* renamed from: d  reason: collision with root package name */
        int f31871d;

        /* renamed from: e  reason: collision with root package name */
        public FrameMetaData f31872e;

        public b(g<? extends d> gVar) {
            super(gVar);
            this.f31868a = -1;
            this.f31869b = 3553;
            this.f31870c = 0;
            this.f31871d = 0;
        }

        public final void a(int i9, int i10, int i11, int i12) {
            this.f31869b = i9;
            this.f31868a = i10;
            this.f31870c = i11;
            this.f31871d = i12;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int b() {
            return this.f31870c;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int c() {
            return this.f31871d;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final FrameMetaData d() {
            return this.f31872e;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final void e() {
            this.f31868a = -1;
            this.f31869b = 3553;
            this.f31870c = 0;
            this.f31871d = 0;
            this.f31872e = null;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int a() {
            return this.f31868a;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final void a(FrameMetaData frameMetaData) {
            this.f31872e = frameMetaData;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final PixelFrame a(Object obj) {
            a aVar = new a(this, obj, (byte) 0);
            aVar.retain();
            return aVar;
        }
    }
}
