package com.tencent.liteav.beauty.b;

import android.opengl.GLES20;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.beauty.NativeLoad;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public final class e extends com.tencent.liteav.videobase.a.b {

    /* renamed from: i  reason: collision with root package name */
    private int f31134i;

    /* renamed from: j  reason: collision with root package name */
    private int f31135j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f31136k;

    /* renamed from: h  reason: collision with root package name */
    private float f31133h = 4.0f;

    /* renamed from: a  reason: collision with root package name */
    private final FloatBuffer f31126a = OpenGlUtils.createNormalCubeVerticesBuffer();

    /* renamed from: b  reason: collision with root package name */
    private final FloatBuffer f31127b = OpenGlUtils.createTextureCoordsBuffer(Rotation.NORMAL, false, false);

    /* renamed from: c  reason: collision with root package name */
    private final com.tencent.liteav.beauty.b.c f31128c = new com.tencent.liteav.beauty.b.c();

    /* renamed from: e  reason: collision with root package name */
    private final c f31130e = new c();

    /* renamed from: f  reason: collision with root package name */
    private final a f31131f = new a("precision highp float;\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputImageTexture2;\nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\nvoid main()\n{\n    gl_FragColor = texture2D(inputImageTexture2, textureCoordinate2) - texture2D(inputImageTexture, textureCoordinate) * texture2D(inputImageTexture2, textureCoordinate2);\n}\n");

    /* renamed from: g  reason: collision with root package name */
    private final b f31132g = new b("precision highp float;\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputImageTexture2;\nuniform sampler2D inputImageTexture3;\nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\nvarying vec2 textureCoordinate3;\nvoid main()\n{\n    gl_FragColor = texture2D(inputImageTexture, textureCoordinate) * texture2D(inputImageTexture3, textureCoordinate3) + texture2D(inputImageTexture2, textureCoordinate2);\n}\n");

    /* renamed from: d  reason: collision with root package name */
    private final com.tencent.liteav.videobase.a.b f31129d = new com.tencent.liteav.videobase.a.b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends com.tencent.liteav.videobase.c.d {
        public a(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b extends com.tencent.liteav.videobase.c.c {
        public b(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class c extends com.tencent.liteav.videobase.c.d {

        /* renamed from: a  reason: collision with root package name */
        private int f31137a;

        /* renamed from: b  reason: collision with root package name */
        private int f31138b;

        public c() {
            super(null, null);
        }

        @Override // com.tencent.liteav.videobase.a.b
        public final int buildProgram() {
            return NativeLoad.nativeLoadGLProgram(2);
        }

        @Override // com.tencent.liteav.videobase.c.d, com.tencent.liteav.videobase.a.b
        public final void onInit(com.tencent.liteav.videobase.frame.e eVar) {
            super.onInit(eVar);
            this.f31137a = GLES20.glGetUniformLocation(getProgramId(), "texelWidthOffset");
            this.f31138b = GLES20.glGetUniformLocation(getProgramId(), "texelHeightOffset");
        }

        @Override // com.tencent.liteav.videobase.a.b
        public final void onOutputSizeChanged(int i9, int i10) {
            super.onOutputSizeChanged(i9, i10);
            setFloatOnDraw(this.f31137a, 1.5f / this.mOutputSize.f31029a);
            setFloatOnDraw(this.f31138b, 1.5f / this.mOutputSize.f31030b);
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onDraw(int i9, com.tencent.liteav.videobase.frame.d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        int a10;
        if (isInitialized()) {
            runPendingOnDrawTasks();
            com.tencent.liteav.videobase.frame.d dVar2 = null;
            int i10 = this.f31134i;
            q qVar = this.mOutputSize;
            if (i10 == qVar.f31029a && this.f31135j == qVar.f31030b) {
                a10 = i9;
            } else {
                dVar2 = this.mTexturePool.a(i10, this.f31135j);
                GLES20.glViewport(0, 0, this.f31134i, this.f31135j);
                this.f31129d.onDraw(i9, dVar2, floatBuffer, floatBuffer2);
                a10 = dVar2.a();
            }
            com.tencent.liteav.videobase.frame.d a11 = this.mTexturePool.a(this.f31134i, this.f31135j);
            com.tencent.liteav.videobase.frame.d a12 = this.mTexturePool.a(this.f31134i, this.f31135j);
            this.f31128c.onDraw(a10, a11, this.f31126a, this.f31127b);
            this.f31130e.setSecondInputTexture(a11.a());
            this.f31130e.onDraw(a10, a12, this.f31126a, this.f31127b);
            if (dVar2 != null) {
                dVar2.release();
            }
            com.tencent.liteav.videobase.frame.d a13 = this.mTexturePool.a(this.f31134i, this.f31135j);
            this.f31131f.setSecondInputTexture(a11.a());
            this.f31131f.onDraw(a12.a(), a13, this.f31126a, this.f31127b);
            a11.release();
            com.tencent.liteav.videobase.frame.d a14 = this.mTexturePool.a(this.f31134i, this.f31135j);
            this.f31128c.onDraw(a12.a(), a14, this.f31126a, this.f31127b);
            a12.release();
            com.tencent.liteav.videobase.frame.d a15 = this.mTexturePool.a(this.f31134i, this.f31135j);
            this.f31128c.onDraw(a13.a(), a15, this.f31126a, this.f31127b);
            a13.release();
            if (this.f31133h != 1.0f) {
                com.tencent.liteav.videobase.frame.e eVar = this.mTexturePool;
                q qVar2 = this.mOutputSize;
                com.tencent.liteav.videobase.frame.d a16 = eVar.a(qVar2.f31029a, qVar2.f31030b);
                com.tencent.liteav.videobase.frame.e eVar2 = this.mTexturePool;
                q qVar3 = this.mOutputSize;
                com.tencent.liteav.videobase.frame.d a17 = eVar2.a(qVar3.f31029a, qVar3.f31030b);
                q qVar4 = this.mOutputSize;
                GLES20.glViewport(0, 0, qVar4.f31029a, qVar4.f31030b);
                this.f31129d.onDraw(a14.a(), a16, this.f31126a, this.f31127b);
                this.f31129d.onDraw(a15.a(), a17, this.f31126a, this.f31127b);
                this.f31132g.setSecondInputTexture(a17.a());
                this.f31132g.setInputTexture(com.tencent.liteav.videobase.a.j.THIRD_INPUT_SAMPLE2D_NAME, i9);
                this.f31132g.onDraw(a16.a(), dVar, this.f31126a, this.f31127b);
                a16.release();
                a17.release();
            } else {
                this.f31132g.setSecondInputTexture(a15.a());
                this.f31132g.setInputTexture(com.tencent.liteav.videobase.a.j.THIRD_INPUT_SAMPLE2D_NAME, i9);
                this.f31132g.onDraw(a14.a(), dVar, this.f31126a, this.f31127b);
            }
            a15.release();
            a14.release();
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        this.f31128c.initialize(eVar);
        this.f31130e.initialize(eVar);
        this.f31131f.initialize(eVar);
        this.f31132g.initialize(eVar);
        this.f31129d.initialize(eVar);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        if (!this.f31136k) {
            if (i9 < i10) {
                if (i9 < 540) {
                    this.f31133h = 1.0f;
                } else {
                    this.f31133h = 4.0f;
                }
            } else if (i10 < 540) {
                this.f31133h = 1.0f;
            } else {
                this.f31133h = 4.0f;
            }
        }
        if (Float.compare(this.f31133h, 1.0f) == 0) {
            this.f31134i = i9;
            this.f31135j = i10;
        } else {
            float f10 = this.f31133h;
            this.f31134i = (int) (i9 / f10);
            this.f31135j = (int) (i10 / f10);
        }
        this.f31129d.onOutputSizeChanged(this.f31134i, this.f31135j);
        this.f31130e.onOutputSizeChanged(this.f31134i, this.f31135j);
        this.f31131f.onOutputSizeChanged(this.f31134i, this.f31135j);
        this.f31132g.onOutputSizeChanged(i9, i10);
        this.f31128c.onOutputSizeChanged(this.f31134i, this.f31135j);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public final void onUninit() {
        super.onUninit();
        this.f31128c.uninitialize();
        this.f31130e.uninitialize();
        this.f31131f.uninitialize();
        this.f31132g.uninitialize();
        this.f31129d.uninitialize();
    }
}
