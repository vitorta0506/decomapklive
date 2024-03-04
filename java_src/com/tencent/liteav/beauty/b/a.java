package com.tencent.liteav.beauty.b;

import android.opengl.GLES20;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.beauty.NativeLoad;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public final class a extends com.tencent.liteav.videobase.a.b implements b {

    /* renamed from: f  reason: collision with root package name */
    private float f31056f = 0.0f;

    /* renamed from: g  reason: collision with root package name */
    private float f31057g = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    private float f31058h = 0.0f;

    /* renamed from: i  reason: collision with root package name */
    private float f31059i = 0.0f;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FloatBuffer f31051a = OpenGlUtils.createNormalCubeVerticesBuffer();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final FloatBuffer f31052b = OpenGlUtils.createTextureCoordsBuffer(Rotation.NORMAL, false, false);
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final e f31053c = new e();
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final C0320a f31054d = new C0320a();
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final m f31055e = new m();

    /* renamed from: com.tencent.liteav.beauty.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0320a extends com.tencent.liteav.videobase.c.c {

        /* renamed from: a  reason: collision with root package name */
        int f31070a;

        /* renamed from: b  reason: collision with root package name */
        int f31071b;

        /* renamed from: c  reason: collision with root package name */
        int f31072c;

        public C0320a() {
            super("attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputTextureCoordinate2;\nattribute vec4 inputTextureCoordinate3;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\nvarying vec2 textureCoordinate3;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n    textureCoordinate3 = inputTextureCoordinate3.xy;\n}", com.tencent.liteav.videobase.a.b.NO_FILTER_FRAGMENT_SHADER);
            this.f31070a = -1;
            this.f31071b = -1;
            this.f31072c = -1;
        }

        @Override // com.tencent.liteav.videobase.a.b
        public final int buildProgram() {
            return NativeLoad.nativeLoadGLProgram(1);
        }

        @Override // com.tencent.liteav.videobase.c.c, com.tencent.liteav.videobase.c.d, com.tencent.liteav.videobase.a.b
        public final void onInit(com.tencent.liteav.videobase.frame.e eVar) {
            super.onInit(eVar);
            this.f31070a = GLES20.glGetUniformLocation(getProgramId(), "smoothDegree");
            this.f31071b = GLES20.glGetUniformLocation(getProgramId(), "brightDegree");
            this.f31072c = GLES20.glGetUniformLocation(getProgramId(), "ruddyDegree");
        }
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void a(float f10) {
        float f11;
        float f12;
        float f13;
        float f14;
        this.f31056f = f10;
        C0320a c0320a = this.f31054d;
        int i9 = c0320a.f31070a;
        float f15 = 1.0f;
        if (f10 > 1.0f) {
            double d10 = f10;
            if (d10 < 2.5d) {
                f12 = (f10 - 1.0f) / 1.5f;
                f13 = 3.1f;
            } else if (f10 < 4.0f) {
                f15 = 4.1f;
                f14 = ((f10 - 2.5f) / 1.5f) * 1.5f;
                f10 = f14 + f15;
                f11 = f10 / 10.0f;
            } else if (d10 < 5.5d) {
                f12 = (f10 - 4.0f) / 1.5f;
                f15 = 5.6f;
                f13 = 1.2000003f;
            } else {
                if (d10 <= 7.0d) {
                    f12 = (f10 - 5.5f) / 1.5f;
                    f15 = 6.8f;
                    f13 = 0.19999981f;
                }
                f11 = f10 / 10.0f;
            }
            f14 = f12 * f13;
            f10 = f14 + f15;
            f11 = f10 / 10.0f;
        } else {
            f11 = 0.1f;
        }
        c0320a.setFloatOnDraw(i9, f11);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void b(float f10) {
        this.f31057g = f10;
        C0320a c0320a = this.f31054d;
        c0320a.setFloatOnDraw(c0320a.f31071b, f10 / 3.0f);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void c(float f10) {
        this.f31058h = f10;
        C0320a c0320a = this.f31054d;
        c0320a.setFloatOnDraw(c0320a.f31072c, (f10 / 10.0f) / 2.0f);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final boolean canBeSkipped() {
        return isLessOrEqualZero(this.f31056f) && isLessOrEqualZero(this.f31057g) && isLessOrEqualZero(this.f31058h) && isLessOrEqualZero(this.f31059i);
    }

    @Override // com.tencent.liteav.beauty.b.b
    public final void d(float f10) {
        float f11 = f10 / 1.5f;
        this.f31059i = f11;
        this.f31055e.a(f11);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onDraw(int i9, com.tencent.liteav.videobase.frame.d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        FloatBuffer floatBuffer3;
        FloatBuffer floatBuffer4;
        int i10;
        int a10;
        FloatBuffer floatBuffer5;
        FloatBuffer floatBuffer6;
        if (isInitialized()) {
            runPendingOnDrawTasks();
            float f10 = this.f31056f;
            com.tencent.liteav.videobase.frame.d dVar2 = null;
            if (f10 > 0.0f || this.f31057g > 0.0f || this.f31058h > 0.0f) {
                if (f10 != 0.0f) {
                    com.tencent.liteav.videobase.frame.e eVar = this.mTexturePool;
                    q qVar = this.mOutputSize;
                    dVar2 = eVar.a(qVar.f31029a, qVar.f31030b);
                    this.f31053c.onDraw(i9, dVar2, floatBuffer, floatBuffer2);
                    i10 = dVar2.a();
                    floatBuffer4 = this.f31051a;
                    floatBuffer3 = this.f31052b;
                } else {
                    floatBuffer3 = floatBuffer2;
                    floatBuffer4 = floatBuffer;
                    i10 = i9;
                }
                com.tencent.liteav.videobase.frame.e eVar2 = this.mTexturePool;
                q qVar2 = this.mOutputSize;
                com.tencent.liteav.videobase.frame.d a11 = eVar2.a(qVar2.f31029a, qVar2.f31030b);
                this.f31054d.setSecondInputTexture(i9);
                if (this.f31059i > 0.0f) {
                    this.f31054d.onDraw(i10, a11, floatBuffer4, floatBuffer3);
                } else {
                    this.f31054d.onDraw(i10, dVar, floatBuffer4, floatBuffer3);
                }
                a10 = a11.a();
                floatBuffer5 = this.f31051a;
                floatBuffer6 = this.f31052b;
                if (dVar2 != null) {
                    dVar2.release();
                }
                dVar2 = a11;
            } else {
                floatBuffer6 = floatBuffer2;
                floatBuffer5 = floatBuffer;
                a10 = i9;
            }
            if (this.f31059i > 0.0f || a10 == i9) {
                this.f31055e.onDraw(a10, dVar, floatBuffer5, floatBuffer6);
            }
            if (dVar2 != null) {
                dVar2.release();
            }
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        this.f31053c.initialize(eVar);
        this.f31054d.initialize(eVar);
        this.f31055e.initialize(eVar);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        this.f31054d.onOutputSizeChanged(i9, i10);
        this.f31053c.onOutputSizeChanged(i9, i10);
        this.f31055e.onOutputSizeChanged(i9, i10);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onUninit() {
        super.onUninit();
        this.f31054d.uninitialize();
        this.f31053c.uninitialize();
        this.f31055e.uninitialize();
    }
}
