package com.tencent.liteav.videobase.frame;

import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.a;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
public final class i extends com.tencent.liteav.videobase.frame.a<PixelFrame> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a implements a.InterfaceC0328a {

        /* renamed from: a  reason: collision with root package name */
        final int f31847a;

        /* renamed from: b  reason: collision with root package name */
        final int f31848b;

        /* renamed from: c  reason: collision with root package name */
        final GLConstants.PixelBufferType f31849c;

        /* renamed from: d  reason: collision with root package name */
        final GLConstants.PixelFormatType f31850d;

        public a(int i9, int i10, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType) {
            this.f31847a = i9;
            this.f31848b = i10;
            this.f31849c = pixelBufferType;
            this.f31850d = pixelFormatType;
        }

        public final boolean equals(Object obj) {
            if (a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f31847a == aVar.f31847a && this.f31848b == aVar.f31848b && this.f31849c == aVar.f31849c && this.f31850d == aVar.f31850d;
        }

        public final int hashCode() {
            return (((((this.f31847a * 10001) + this.f31848b) << 2) + this.f31849c.ordinal()) << 2) + this.f31850d.ordinal();
        }
    }

    /* loaded from: classes4.dex */
    static class b extends PixelFrame {
        /* synthetic */ b(g gVar, int i9, int i10, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType, byte b10) {
            this(gVar, i9, i10, pixelBufferType, pixelFormatType);
        }

        @Override // com.tencent.liteav.videobase.frame.PixelFrame
        public final void setBuffer(ByteBuffer byteBuffer) {
            throw new UnsupportedOperationException("Object is allocated by pool, can't change its Buffer");
        }

        @Override // com.tencent.liteav.videobase.frame.PixelFrame
        public final void setData(byte[] bArr) {
            throw new UnsupportedOperationException("Object is allocated by pool, can't change its Data");
        }

        @Override // com.tencent.liteav.videobase.frame.PixelFrame
        public final void setHeight(int i9) {
            throw new UnsupportedOperationException("Object is allocated by pool, can't change its height");
        }

        @Override // com.tencent.liteav.videobase.frame.PixelFrame
        public final void setPixelBufferType(GLConstants.PixelBufferType pixelBufferType) {
            throw new UnsupportedOperationException("Object is allocated by pool, can't change its buffer type");
        }

        @Override // com.tencent.liteav.videobase.frame.PixelFrame
        public final void setPixelFormatType(GLConstants.PixelFormatType pixelFormatType) {
            throw new UnsupportedOperationException("Object is allocated by pool, can't change its format type");
        }

        @Override // com.tencent.liteav.videobase.frame.PixelFrame
        public final void setWidth(int i9) {
            throw new UnsupportedOperationException("Object is allocated by pool, can't change its width");
        }

        private b(g<PixelFrame> gVar, int i9, int i10, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType) {
            super(gVar, i9, i10, pixelBufferType, pixelFormatType);
        }
    }

    public final PixelFrame a(int i9, int i10, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType) {
        PixelFrame pixelFrame = (PixelFrame) super.a(new a(i9, i10, pixelBufferType, pixelFormatType));
        pixelFrame.reset();
        return pixelFrame;
    }

    @Override // com.tencent.liteav.videobase.frame.a
    protected final /* bridge */ /* synthetic */ void a(PixelFrame pixelFrame) {
    }

    @Override // com.tencent.liteav.videobase.frame.a
    protected final /* synthetic */ a.InterfaceC0328a b(PixelFrame pixelFrame) {
        PixelFrame pixelFrame2 = pixelFrame;
        return new a(pixelFrame2.getWidth(), pixelFrame2.getHeight(), pixelFrame2.getPixelBufferType(), pixelFrame2.getPixelFormatType());
    }

    @Override // com.tencent.liteav.videobase.frame.a
    protected final /* synthetic */ PixelFrame a(g<PixelFrame> gVar, a.InterfaceC0328a interfaceC0328a) {
        a aVar = (a) interfaceC0328a;
        return new b(gVar, aVar.f31847a, aVar.f31848b, aVar.f31849c, aVar.f31850d, (byte) 0);
    }
}
