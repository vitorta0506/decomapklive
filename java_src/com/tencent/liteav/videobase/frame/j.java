package com.tencent.liteav.videobase.frame;

import android.opengl.GLES20;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public final class j {

    /* renamed from: c  reason: collision with root package name */
    private static final float[] f31851c = {0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};

    /* renamed from: d  reason: collision with root package name */
    private static final float[] f31852d = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: e  reason: collision with root package name */
    private static final float[] f31853e = {1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f};

    /* renamed from: f  reason: collision with root package name */
    private static final float[] f31854f = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};

    /* renamed from: a  reason: collision with root package name */
    public final int f31855a;

    /* renamed from: b  reason: collision with root package name */
    public final int f31856b;

    /* renamed from: g  reason: collision with root package name */
    private final FloatBuffer f31857g;

    /* renamed from: h  reason: collision with root package name */
    private final FloatBuffer f31858h;

    /* renamed from: j  reason: collision with root package name */
    private GLConstants.GLScaleType f31860j;

    /* renamed from: n  reason: collision with root package name */
    private c f31864n;

    /* renamed from: i  reason: collision with root package name */
    private final com.tencent.liteav.videobase.a.b[] f31859i = new com.tencent.liteav.videobase.a.b[GLConstants.PixelFormatType.values().length];

    /* renamed from: k  reason: collision with root package name */
    private PixelFrame f31861k = null;

    /* renamed from: l  reason: collision with root package name */
    private com.tencent.liteav.videobase.c.a f31862l = null;

    /* renamed from: m  reason: collision with root package name */
    private com.tencent.liteav.videobase.a.b f31863m = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videobase.frame.j$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f31865a;

        static {
            int[] iArr = new int[Rotation.values().length];
            f31865a = iArr;
            try {
                iArr[Rotation.ROTATION_90.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31865a[Rotation.ROTATION_180.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31865a[Rotation.ROTATION_270.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31865a[Rotation.NORMAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public j(int i9, int i10) {
        this.f31855a = i9;
        this.f31856b = i10;
        float[] fArr = GLConstants.f31729c;
        this.f31857g = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr);
        this.f31858h = OpenGlUtils.createTextureCoordsBuffer(Rotation.NORMAL, false, false);
    }

    private static float a(float f10) {
        return f10 == 0.0f ? 1.0f : 0.0f;
    }

    private static float a(float f10, float f11) {
        return f10 == 0.0f ? f11 : 1.0f - f11;
    }

    private void b() {
        float f10;
        float f11;
        boolean z10 = this.f31861k.getRotation() == Rotation.ROTATION_90 || this.f31861k.getRotation() == Rotation.ROTATION_270;
        float max = Math.max((this.f31855a * 1.0f) / this.f31861k.getWidth(), (this.f31856b * 1.0f) / this.f31861k.getHeight());
        float round = (Math.round(f10 * max) * 1.0f) / this.f31855a;
        float round2 = (Math.round(f11 * max) * 1.0f) / this.f31856b;
        float[] fArr = GLConstants.f31729c;
        float[] fArr2 = new float[8];
        if (this.f31861k.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_OES) {
            a(fArr2, this.f31861k.getRotation(), this.f31861k.isMirrorHorizontal(), this.f31861k.isMirrorVertical());
        } else {
            OpenGlUtils.initTextureCoordsBuffer(fArr2, this.f31861k.getRotation(), this.f31861k.isMirrorHorizontal(), this.f31861k.isMirrorVertical());
        }
        GLConstants.GLScaleType gLScaleType = this.f31860j;
        if (gLScaleType == GLConstants.GLScaleType.CENTER_CROP) {
            float f12 = (1.0f - (z10 ? 1.0f / round2 : 1.0f / round)) / 2.0f;
            float f13 = (1.0f - (z10 ? 1.0f / round : 1.0f / round2)) / 2.0f;
            fArr2[0] = a(fArr2[0], f12);
            fArr2[1] = a(fArr2[1], f13);
            fArr2[2] = a(fArr2[2], f12);
            fArr2[3] = a(fArr2[3], f13);
            fArr2[4] = a(fArr2[4], f12);
            fArr2[5] = a(fArr2[5], f13);
            fArr2[6] = a(fArr2[6], f12);
            fArr2[7] = a(fArr2[7], f13);
        } else if (gLScaleType == GLConstants.GLScaleType.FIT_CENTER) {
            fArr = new float[]{fArr[0] / round2, fArr[1] / round, fArr[2] / round2, fArr[3] / round, fArr[4] / round2, fArr[5] / round, fArr[6] / round2, fArr[7] / round};
        }
        this.f31857g.clear();
        this.f31857g.put(fArr).position(0);
        this.f31858h.clear();
        this.f31858h.put(fArr2).position(0);
    }

    private void c() {
        if (this.f31863m != null) {
            return;
        }
        com.tencent.liteav.videobase.a.b bVar = new com.tencent.liteav.videobase.a.b();
        this.f31863m = bVar;
        bVar.initialize(null);
        this.f31863m.onOutputSizeChanged(this.f31855a, this.f31856b);
    }

    private void d() {
        com.tencent.liteav.videobase.c.a aVar = this.f31862l;
        if (aVar != null) {
            aVar.uninitialize();
            this.f31862l = null;
        }
        com.tencent.liteav.videobase.a.b bVar = this.f31863m;
        if (bVar != null) {
            bVar.uninitialize();
            this.f31863m = null;
        }
        c cVar = this.f31864n;
        if (cVar != null) {
            cVar.d();
            this.f31864n = null;
        }
        int i9 = 0;
        while (true) {
            com.tencent.liteav.videobase.a.b[] bVarArr = this.f31859i;
            if (i9 < bVarArr.length) {
                if (bVarArr[i9] != null) {
                    bVarArr[i9].uninitialize();
                    this.f31859i[i9] = null;
                }
                i9++;
            } else {
                LiteavLog.i("PixelFrameRenderer", "uninitialize GL components");
                return;
            }
        }
    }

    public final void a(PixelFrame pixelFrame, GLConstants.GLScaleType gLScaleType, d dVar) {
        if (pixelFrame != null && pixelFrame.isFrameDataValid()) {
            if (this.f31861k == null || a(pixelFrame, gLScaleType)) {
                this.f31860j = gLScaleType;
                this.f31861k = new PixelFrame(pixelFrame);
                d();
                b();
            }
            if (gLScaleType == GLConstants.GLScaleType.FIT_CENTER) {
                a(dVar);
            }
            if (this.f31861k.getPixelBufferType() == GLConstants.PixelBufferType.BYTE_BUFFER) {
                if (this.f31861k.getPixelFormatType() != GLConstants.PixelFormatType.RGBA) {
                    a(this.f31861k.getPixelFormatType(), dVar, pixelFrame.getBuffer());
                    return;
                } else {
                    a(dVar, pixelFrame.getBuffer());
                    return;
                }
            } else if (this.f31861k.getPixelBufferType() == GLConstants.PixelBufferType.BYTE_ARRAY) {
                if (this.f31861k.getPixelFormatType() != GLConstants.PixelFormatType.RGBA) {
                    a(this.f31861k.getPixelFormatType(), dVar, ByteBuffer.wrap(pixelFrame.getData()));
                    return;
                } else {
                    a(dVar, ByteBuffer.wrap(pixelFrame.getData()));
                    return;
                }
            } else if (this.f31861k.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_OES) {
                a(dVar, pixelFrame.getTextureId(), pixelFrame.getMatrix());
                return;
            } else if (this.f31861k.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_2D) {
                a(dVar, pixelFrame.getTextureId());
                return;
            } else {
                return;
            }
        }
        LiteavLog.w("PixelFrameRenderer", "renderFrame: pixelFrame is not valid");
    }

    public final void a() {
        this.f31861k = null;
        d();
    }

    private boolean a(PixelFrame pixelFrame, GLConstants.GLScaleType gLScaleType) {
        return (gLScaleType == this.f31860j && pixelFrame.getWidth() == this.f31861k.getWidth() && pixelFrame.getHeight() == this.f31861k.getHeight() && pixelFrame.getPixelBufferType() == this.f31861k.getPixelBufferType() && pixelFrame.getPixelFormatType() == this.f31861k.getPixelFormatType() && pixelFrame.isMirrorHorizontal() == this.f31861k.isMirrorHorizontal() && pixelFrame.isMirrorVertical() == this.f31861k.isMirrorVertical() && pixelFrame.getRotation() == this.f31861k.getRotation()) ? false : true;
    }

    private void a(d dVar, Buffer buffer) {
        int ordinal = GLConstants.PixelFormatType.RGBA.ordinal();
        com.tencent.liteav.videobase.a.b[] bVarArr = this.f31859i;
        if (bVarArr[ordinal] == null) {
            bVarArr[ordinal] = new com.tencent.liteav.videobase.c.b();
            this.f31859i[ordinal].initialize(null);
            this.f31859i[ordinal].onOutputSizeChanged(this.f31855a, this.f31856b);
        }
        com.tencent.liteav.videobase.c.b bVar = (com.tencent.liteav.videobase.c.b) this.f31859i[ordinal];
        OpenGlUtils.glViewport(0, 0, this.f31855a, this.f31856b);
        if (this.f31861k.getRotation() != Rotation.ROTATION_90 && this.f31861k.getRotation() != Rotation.ROTATION_270) {
            bVar.a(buffer, this.f31861k.getWidth(), this.f31861k.getHeight());
        } else {
            bVar.a(buffer, this.f31861k.getHeight(), this.f31861k.getWidth());
        }
        bVar.onDraw(-1, dVar, this.f31857g, this.f31858h);
    }

    private void a(GLConstants.PixelFormatType pixelFormatType, d dVar, ByteBuffer byteBuffer) {
        int ordinal = pixelFormatType.ordinal();
        com.tencent.liteav.videobase.a.b[] bVarArr = this.f31859i;
        if (bVarArr[ordinal] == null) {
            if (pixelFormatType == GLConstants.PixelFormatType.I420) {
                bVarArr[ordinal] = new com.tencent.liteav.videobase.d.a();
            } else if (pixelFormatType == GLConstants.PixelFormatType.NV21) {
                bVarArr[ordinal] = new com.tencent.liteav.videobase.d.d();
            } else {
                bVarArr[ordinal] = new com.tencent.liteav.videobase.d.c();
            }
            this.f31859i[ordinal].initialize(null);
            this.f31859i[ordinal].onOutputSizeChanged(this.f31855a, this.f31856b);
        }
        com.tencent.liteav.videobase.d.i iVar = (com.tencent.liteav.videobase.d.i) this.f31859i[ordinal];
        OpenGlUtils.glViewport(0, 0, this.f31855a, this.f31856b);
        if (this.f31861k.getRotation() != Rotation.ROTATION_90 && this.f31861k.getRotation() != Rotation.ROTATION_270) {
            iVar.a(byteBuffer, this.f31861k.getWidth(), this.f31861k.getHeight());
        } else {
            iVar.a(byteBuffer, this.f31861k.getHeight(), this.f31861k.getWidth());
        }
        iVar.onDraw(-1, dVar, this.f31857g, this.f31858h);
    }

    private void a(d dVar, int i9, float[] fArr) {
        if (this.f31862l == null) {
            com.tencent.liteav.videobase.c.a aVar = new com.tencent.liteav.videobase.c.a();
            this.f31862l = aVar;
            aVar.initialize(null);
            this.f31862l.onOutputSizeChanged(this.f31855a, this.f31856b);
        }
        OpenGlUtils.glViewport(0, 0, this.f31855a, this.f31856b);
        this.f31862l.setTexutreTransform(fArr);
        this.f31862l.onDraw(i9, dVar, this.f31857g, this.f31858h);
    }

    private void a(d dVar, int i9) {
        c();
        OpenGlUtils.glViewport(0, 0, this.f31855a, this.f31856b);
        this.f31863m.onDraw(i9, dVar, this.f31857g, this.f31858h);
    }

    private void a(d dVar) {
        if (this.f31864n == null) {
            c cVar = new c();
            this.f31864n = cVar;
            cVar.a();
        }
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        if (dVar == null) {
            GLES20.glBindFramebuffer(36160, 0);
            GLES20.glClear(16640);
            return;
        }
        this.f31864n.a(dVar.a());
        this.f31864n.b();
        GLES20.glClear(16640);
        OpenGlUtils.bindFramebuffer(36160, 0);
        this.f31864n.c();
    }

    private static void a(float[] fArr, Rotation rotation, boolean z10, boolean z11) {
        float[] fArr2 = f31851c;
        if (rotation != null) {
            int i9 = AnonymousClass1.f31865a[rotation.ordinal()];
            if (i9 == 1) {
                fArr2 = f31852d;
            } else if (i9 == 2) {
                fArr2 = f31854f;
            } else if (i9 == 3) {
                fArr2 = f31853e;
            }
        }
        System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
        if (z10) {
            fArr[0] = a(fArr[0]);
            fArr[2] = a(fArr[2]);
            fArr[4] = a(fArr[4]);
            fArr[6] = a(fArr[6]);
        }
        if (z11) {
            fArr[1] = a(fArr[1]);
            fArr[3] = a(fArr[3]);
            fArr[5] = a(fArr[5]);
            fArr[7] = a(fArr[7]);
        }
    }
}
