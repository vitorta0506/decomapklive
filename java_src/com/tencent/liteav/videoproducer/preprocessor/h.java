package com.tencent.liteav.videoproducer.preprocessor;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.c;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public final class h implements com.tencent.liteav.videobase.base.a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    final IVideoReporter f33044a;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BeautyProcessor f33046c;

    /* renamed from: e  reason: collision with root package name */
    com.tencent.liteav.videobase.b.e f33048e;

    /* renamed from: f  reason: collision with root package name */
    com.tencent.liteav.videobase.a.a f33049f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final Context f33050g;

    /* renamed from: n  reason: collision with root package name */
    private Object f33057n;

    /* renamed from: o  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.j f33058o;

    /* renamed from: p  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.e f33059p;

    /* renamed from: r  reason: collision with root package name */
    private com.tencent.liteav.videobase.videobase.c f33061r;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final com.tencent.liteav.videobase.a.b[] f33053j = new com.tencent.liteav.videobase.a.b[b.a().length];
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    final com.tencent.liteav.videobase.utils.d f33045b = new com.tencent.liteav.videobase.utils.d();
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final com.tencent.liteav.videobase.a.h f33054k = new com.tencent.liteav.videobase.a.h();
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    final com.tencent.liteav.base.b.b f33047d = new com.tencent.liteav.base.b.b();

    /* renamed from: l  reason: collision with root package name */
    private int f33055l = 128;

    /* renamed from: m  reason: collision with root package name */
    private int f33056m = 128;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private final com.tencent.liteav.videobase.videobase.c f33060q = new com.tencent.liteav.videobase.videobase.c();
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    private final List<c> f33062s = new ArrayList();

    /* renamed from: t  reason: collision with root package name */
    private final List<c> f33063t = new ArrayList();

    /* renamed from: u  reason: collision with root package name */
    private Boolean f33064u = null;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final FloatBuffer f33051h = OpenGlUtils.createNormalCubeVerticesBuffer();
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final FloatBuffer f33052i = OpenGlUtils.createTextureCoordsBuffer(Rotation.NORMAL, false, false);

    /* renamed from: com.tencent.liteav.videoproducer.preprocessor.h$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33065a;

        static {
            int[] iArr = new int[b.a().length];
            f33065a = iArr;
            try {
                iArr[b.f33071e - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33065a[b.f33068b - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33065a[b.f33069c - 1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33065a[b.f33070d - 1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends com.tencent.liteav.videobase.a.a {

        /* renamed from: b  reason: collision with root package name */
        private final com.tencent.liteav.videobase.videobase.c f33066b;

        public a(com.tencent.liteav.videobase.videobase.c cVar) {
            this.f33066b = cVar;
        }

        @Override // com.tencent.liteav.videobase.a.a
        public final com.tencent.liteav.videobase.frame.d a(long j10, com.tencent.liteav.videobase.frame.d dVar) {
            com.tencent.liteav.videobase.videobase.c cVar = this.f33066b;
            if (cVar != null) {
                cVar.a(j10, dVar);
            }
            return dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final int f33067a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f33068b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f33069c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f33070d = 4;

        /* renamed from: e  reason: collision with root package name */
        public static final int f33071e = 5;

        /* renamed from: f  reason: collision with root package name */
        private static final /* synthetic */ int[] f33072f = {1, 2, 3, 4, 5};

        public static int[] a() {
            return (int[]) f33072f.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements c.a {

        /* renamed from: a  reason: collision with root package name */
        public int f33073a;

        /* renamed from: b  reason: collision with root package name */
        public com.tencent.liteav.videobase.videobase.a f33074b;

        /* renamed from: c  reason: collision with root package name */
        public GLConstants.PixelBufferType f33075c;

        /* renamed from: d  reason: collision with root package name */
        public GLConstants.PixelFormatType f33076d;

        /* renamed from: e  reason: collision with root package name */
        public ah f33077e;

        public c(int i9, com.tencent.liteav.videobase.videobase.a aVar, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType, ah ahVar) {
            this.f33073a = i9;
            this.f33074b = aVar;
            this.f33076d = pixelFormatType;
            this.f33075c = pixelBufferType;
            this.f33077e = ahVar;
        }

        @Override // com.tencent.liteav.videobase.videobase.c.a
        public final void onFrameConverted(int i9, PixelFrame pixelFrame) {
            ah ahVar = this.f33077e;
            if (ahVar == null || h.this.f33048e == null) {
                return;
            }
            ahVar.didProcessFrame(i9, pixelFrame);
            h hVar = h.this;
            try {
                com.tencent.liteav.videobase.b.e eVar = hVar.f33048e;
                if (eVar != null) {
                    eVar.a();
                }
            } catch (com.tencent.liteav.videobase.b.g e10) {
                LiteavLog.e(hVar.f33047d.a("makeCurrent"), "GPUPreprocessor", "makeCurrent failed. ".concat(String.valueOf(e10)), new Object[0]);
            }
        }
    }

    public h(@NonNull Context context, @NonNull BeautyProcessor beautyProcessor, @NonNull IVideoReporter iVideoReporter) {
        this.f33050g = context.getApplicationContext();
        this.f33046c = beautyProcessor;
        this.f33044a = iVideoReporter;
        beautyProcessor.setAIDetectListener(this);
    }

    public final void a(int i9, int i10) {
        if (this.f33055l == i9 && this.f33056m == i10) {
            return;
        }
        this.f33055l = i9;
        this.f33056m = i10;
        LiteavLog.i("GPUPreprocessor", "process size update to %dx%d", Integer.valueOf(i9), Integer.valueOf(i10));
        com.tencent.liteav.videobase.frame.j jVar = this.f33058o;
        if (jVar != null) {
            jVar.a();
            this.f33058o = null;
        }
        com.tencent.liteav.videobase.frame.e eVar = this.f33059p;
        if (eVar != null) {
            eVar.a();
        }
        this.f33054k.onOutputSizeChanged(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> T b(int i9) {
        return (T) this.f33053j[i9 - 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(int i9) {
        com.tencent.liteav.videobase.a.b bVar;
        com.tencent.liteav.videobase.a.b[] bVarArr = this.f33053j;
        int i10 = i9 - 1;
        if (bVarArr[i10] == null || (bVar = bVarArr[i10]) == null) {
            return;
        }
        bVarArr[i10] = null;
        bVar.uninitialize();
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        int[] a10;
        this.f33054k.removeAllFilterAndInterceptor();
        this.f33054k.uninitialize();
        c();
        for (int i9 : b.a()) {
            if (i9 == b.f33071e) {
                this.f33054k.addInterceptor(this.f33049f);
                this.f33054k.addInterceptor(new a(this.f33061r));
            }
            if (i9 == b.f33067a) {
                this.f33054k.addFilter(this.f33046c);
            } else {
                this.f33054k.addFilter(this.f33053j[i9 - 1]);
            }
        }
        this.f33054k.addInterceptor(new a(this.f33060q));
        this.f33054k.initialize(this.f33059p);
        this.f33054k.onOutputSizeChanged(this.f33055l, this.f33056m);
    }

    private void c() {
        if (this.f33048e == null) {
            return;
        }
        if (this.f33053j[b.f33071e - 1] != null) {
            if (this.f33061r == null) {
                com.tencent.liteav.videobase.videobase.c cVar = new com.tencent.liteav.videobase.videobase.c();
                this.f33061r = cVar;
                cVar.a(this.f33059p);
            }
            for (c cVar2 : this.f33062s) {
                this.f33060q.a(cVar2.f33073a, cVar2);
                this.f33061r.a(cVar2.f33074b, cVar2.f33075c, cVar2.f33076d, cVar2.f33073a, cVar2);
            }
        } else {
            for (c cVar3 : this.f33062s) {
                com.tencent.liteav.videobase.videobase.c cVar4 = this.f33061r;
                if (cVar4 != null) {
                    cVar4.a(cVar3.f33073a, cVar3);
                }
                this.f33060q.a(cVar3.f33074b, cVar3.f33075c, cVar3.f33076d, cVar3.f33073a, cVar3);
            }
            com.tencent.liteav.videobase.videobase.c cVar5 = this.f33061r;
            if (cVar5 != null) {
                cVar5.a();
                this.f33061r = null;
            }
        }
        for (c cVar6 : this.f33063t) {
            this.f33060q.a(cVar6.f33074b, cVar6.f33075c, cVar6.f33076d, cVar6.f33073a, cVar6);
        }
    }

    public final void a(PixelFrame pixelFrame, GLConstants.GLScaleType gLScaleType) {
        PixelFrame a10;
        pixelFrame.getGLContext();
        Object gLContext = pixelFrame.getGLContext();
        if (!CommonUtil.equals(this.f33057n, gLContext)) {
            this.f33057n = gLContext;
            a();
            LiteavLog.i("GPUPreprocessor", "set unique eglcore: %s", gLContext);
        }
        try {
            if (this.f33048e == null) {
                Object gLContext2 = pixelFrame.getGLContext();
                LiteavLog.i(this.f33047d.a("initGL"), "GPUPreprocessor", "initialize internal, eglContextFromPixelFrame: %s", gLContext2);
                com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
                this.f33048e = eVar;
                eVar.a(gLContext2, null, 128, 128);
                this.f33048e.a();
                com.tencent.liteav.videobase.frame.e eVar2 = new com.tencent.liteav.videobase.frame.e();
                this.f33059p = eVar2;
                this.f33060q.a(eVar2);
                this.f33046c.initialize(this.f33059p);
                b();
            }
            this.f33048e.a();
            this.f33045b.a();
            if (this.f33058o == null) {
                this.f33058o = new com.tencent.liteav.videobase.frame.j(this.f33055l, this.f33056m);
            }
            OpenGlUtils.glViewport(0, 0, this.f33055l, this.f33056m);
            if (pixelFrame.getHeight() == this.f33056m && pixelFrame.getWidth() == this.f33055l && pixelFrame.getRotation() == Rotation.NORMAL && !pixelFrame.isMirrorVertical() && !pixelFrame.isMirrorHorizontal() && pixelFrame.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_2D) {
                pixelFrame.retain();
                a10 = pixelFrame;
            } else {
                com.tencent.liteav.videobase.frame.d a11 = this.f33059p.a(this.f33055l, this.f33056m);
                this.f33058o.a(pixelFrame, gLScaleType, a11);
                a10 = a11.a(this.f33048e.d());
                a11.release();
            }
            this.f33054k.setTimestamp(pixelFrame.getTimestamp());
            com.tencent.liteav.videobase.frame.d a12 = this.f33059p.a(this.f33055l, this.f33056m);
            a12.a(pixelFrame.getMetaData());
            this.f33054k.onDraw(a10.getTextureId(), a12, this.f33051h, this.f33052i);
            a10.release();
            a12.release();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            com.tencent.liteav.base.b.a a13 = this.f33047d.a("make");
            LiteavLog.e(a13, "GPUPreprocessor", "initializeEGL failed. " + e10.getMessage(), new Object[0]);
            a();
        }
    }

    public final void a(int i9, com.tencent.liteav.videobase.videobase.a aVar, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType, boolean z10, ah ahVar) {
        c cVar = new c(i9, aVar, pixelBufferType, pixelFormatType, ahVar);
        if (!z10) {
            a(cVar, this.f33062s);
        } else {
            a(cVar, this.f33063t);
        }
        c();
        LiteavLog.i("GPUPreprocessor", "register listener, identity:%d, bufferType:%s, formatType:%s, withWatermark:%b, listener:%s", Integer.valueOf(i9), pixelBufferType, pixelFormatType, Boolean.valueOf(z10), ahVar);
    }

    public final void a(int i9, ah ahVar) {
        c a10 = a(i9, ahVar, this.f33062s);
        if (a10 == null && (a10 = a(i9, ahVar, this.f33063t)) == null) {
            return;
        }
        this.f33060q.a(i9, a10);
        com.tencent.liteav.videobase.videobase.c cVar = this.f33061r;
        if (cVar != null) {
            cVar.a(i9, a10);
        }
        LiteavLog.i("GPUPreprocessor", "unregister listener: identity: %d, listener: %s", Integer.valueOf(i9), ahVar);
    }

    public final void a(com.tencent.liteav.videobase.a.a aVar) {
        this.f33045b.a(i.a(this, aVar));
    }

    public final void a(Bitmap bitmap, float f10, float f11, float f12) {
        LiteavLog.d("GPUPreprocessor", "setWatermark xOffsetRatio: %.2f, yOffsetRatio: %.2f, widthRatio: %.2f", Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(f12));
        this.f33045b.a(j.a(this, bitmap, f10, f11, f12));
    }

    public final void a(float f10) {
        this.f33045b.a(m.a(this, f10));
    }

    public final void a(float f10, Bitmap bitmap, float f11, Bitmap bitmap2, float f12) {
        this.f33045b.a(n.a(this, bitmap, bitmap2, f10, f11, f12));
    }

    public final void a(String str, boolean z10) {
        this.f33045b.a(o.a(this, str, z10));
    }

    public final void a() {
        this.f33060q.a();
        com.tencent.liteav.videobase.videobase.c cVar = this.f33061r;
        if (cVar != null) {
            cVar.a();
            this.f33061r = null;
        }
        this.f33046c.uninitialize();
        com.tencent.liteav.videobase.frame.e eVar = this.f33059p;
        if (eVar != null) {
            eVar.a();
            this.f33059p.b();
            this.f33059p = null;
        }
        com.tencent.liteav.videobase.frame.j jVar = this.f33058o;
        if (jVar != null) {
            jVar.a();
            this.f33058o = null;
        }
        this.f33054k.uninitialize();
        com.tencent.liteav.videobase.b.e.a(this.f33048e);
        this.f33048e = null;
        LiteavLog.i(this.f33047d.a("uninitGL"), "GPUPreprocessor", "uninitialize opengl components", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T a(int i9) {
        T t10;
        com.tencent.liteav.videobase.a.b[] bVarArr = this.f33053j;
        int i10 = i9 - 1;
        if (bVarArr[i10] != null) {
            return (T) bVarArr[i10];
        }
        int i11 = AnonymousClass1.f33065a[i10];
        if (i11 == 1) {
            t10 = (T) new com.tencent.liteav.beauty.b.n();
        } else if (i11 == 2) {
            t10 = (T) new com.tencent.liteav.beauty.b.f(0.8f);
        } else if (i11 == 3) {
            t10 = (T) new com.tencent.liteav.beauty.b.i();
        } else if (i11 == 4) {
            t10 = (T) new com.tencent.liteav.beauty.b.h(this.f33050g);
        } else {
            throw new RuntimeException("unknown filter type");
        }
        ((com.tencent.liteav.videobase.a.b) t10).initialize(this.f33059p);
        ((com.tencent.liteav.videobase.a.b) t10).onOutputSizeChanged(this.f33055l, this.f33056m);
        this.f33053j[i10] = t10;
        b();
        return t10;
    }

    private static void a(c cVar, List<c> list) {
        for (c cVar2 : list) {
            if (cVar2.f33073a == cVar.f33073a && cVar2.f33077e == cVar.f33077e) {
                return;
            }
        }
        list.add(cVar);
    }

    private static c a(int i9, ah ahVar, List<c> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            if (cVar.f33073a == i9 && cVar.f33077e == ahVar) {
                list.remove(i10);
                return cVar;
            }
        }
        return null;
    }
}
