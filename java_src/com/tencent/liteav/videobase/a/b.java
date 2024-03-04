package com.tencent.liteav.videobase.a;

import android.opengl.GLES20;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public class b {
    public static final String NO_FILTER_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}";
    public static final String NO_FILTER_VERTEX_SHADER = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}";
    private static final String TAG = "TXCGPUImageFilter";
    protected int mGLAttribPosition;
    protected int mGLAttribTextureCoord;
    private final com.tencent.liteav.videobase.frame.c mGLFrameBuffer;
    protected int mGLUniformTexture;
    private boolean mIsInitialized;
    public final q mOutputSize;
    private final com.tencent.liteav.videobase.utils.i mProgram;
    private int mProgramId;
    private final com.tencent.liteav.videobase.utils.d mRunOnDrawQueue;
    private float[] mTextureMatrix;
    protected com.tencent.liteav.videobase.frame.e mTexturePool;
    private int mUniformTextureTransform;
    private static final float[] IDENTITY_MATRIX = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    private static final AtomicInteger sFilterCount = new AtomicInteger();

    public b() {
        this(NO_FILTER_VERTEX_SHADER, NO_FILTER_FRAGMENT_SHADER);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$runOnDrawAndWaitDone$4(Runnable runnable, CountDownLatch countDownLatch) {
        runnable.run();
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setFloatOnDraw$0(b bVar, int i9, float f10) {
        GLES20.glUseProgram(bVar.getProgramId());
        GLES20.glUniform1f(i9, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setFloatVec2OnDraw$2(b bVar, int i9, float[] fArr) {
        GLES20.glUseProgram(bVar.getProgramId());
        GLES20.glUniform2fv(i9, 1, FloatBuffer.wrap(fArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setFloatVec3OnDraw$1(b bVar, int i9, float[] fArr) {
        GLES20.glUseProgram(bVar.getProgramId());
        GLES20.glUniform3fv(i9, 1, FloatBuffer.wrap(fArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setFloatVec4OnDraw$3(b bVar, int i9, float[] fArr) {
        GLES20.glUseProgram(bVar.getProgramId());
        GLES20.glUniform4fv(i9, 1, FloatBuffer.wrap(fArr));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void afterDrawArrays() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void beforeDrawArrays(int i9) {
    }

    protected int buildProgram() {
        com.tencent.liteav.videobase.utils.i iVar = this.mProgram;
        int a10 = com.tencent.liteav.videobase.utils.i.a(iVar.f31900a, 35633);
        if (a10 == 0) {
            LiteavLog.e("Program", "load vertex shader failed.");
            return -1;
        }
        int a11 = com.tencent.liteav.videobase.utils.i.a(iVar.f31901b, 35632);
        if (a11 == 0) {
            LiteavLog.e("Program", "load fragment shader failed.");
            GLES20.glDeleteShader(a10);
            return -1;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        GLES20.glAttachShader(glCreateProgram, a10);
        GLES20.glAttachShader(glCreateProgram, a11);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 0) {
            LiteavLog.e("Program", "link program failed. status: " + iArr[0]);
            GLES20.glDeleteShader(a10);
            GLES20.glDeleteShader(a11);
            GLES20.glDeleteProgram(glCreateProgram);
            return -1;
        }
        GLES20.glDeleteShader(a10);
        GLES20.glDeleteShader(a11);
        return glCreateProgram;
    }

    public boolean canBeSkipped() {
        return false;
    }

    public q getOutputSize() {
        return this.mOutputSize;
    }

    public final int getProgramId() {
        return this.mProgramId;
    }

    public int getTarget() {
        return 3553;
    }

    public final void initialize(com.tencent.liteav.videobase.frame.e eVar) {
        if (this.mIsInitialized) {
            return;
        }
        this.mGLFrameBuffer.a();
        this.mProgramId = buildProgram();
        this.mGLAttribPosition = GLES20.glGetAttribLocation(getProgramId(), "position");
        this.mGLUniformTexture = GLES20.glGetUniformLocation(getProgramId(), "inputImageTexture");
        this.mGLAttribTextureCoord = GLES20.glGetAttribLocation(getProgramId(), "inputTextureCoordinate");
        this.mUniformTextureTransform = GLES20.glGetUniformLocation(getProgramId(), "textureTransform");
        onInit(eVar);
        this.mIsInitialized = true;
        LiteavLog.d(TAG, "%s initialized, count: %d", this, Integer.valueOf(sFilterCount.incrementAndGet()));
    }

    public boolean isInitialized() {
        return this.mIsInitialized;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isLessOrEqualZero(float f10) {
        return ((double) f10) < 1.0E-5d;
    }

    public void onDraw(int i9, com.tencent.liteav.videobase.frame.d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (this.mIsInitialized) {
            GLES20.glUseProgram(getProgramId());
            runPendingOnDrawTasks();
            floatBuffer.position(0);
            GLES20.glVertexAttribPointer(this.mGLAttribPosition, 2, 5126, false, 0, (Buffer) floatBuffer);
            GLES20.glEnableVertexAttribArray(this.mGLAttribPosition);
            floatBuffer2.position(0);
            GLES20.glVertexAttribPointer(this.mGLAttribTextureCoord, 2, 5126, false, 0, (Buffer) floatBuffer2);
            GLES20.glEnableVertexAttribArray(this.mGLAttribTextureCoord);
            if (i9 != -1) {
                GLES20.glActiveTexture(33984);
                OpenGlUtils.bindTexture(getTarget(), i9);
                GLES20.glUniform1i(this.mGLUniformTexture, 0);
            }
            if (dVar != null) {
                this.mGLFrameBuffer.a(dVar.a());
                this.mGLFrameBuffer.b();
            } else {
                OpenGlUtils.bindFramebuffer(36160, 0);
            }
            float[] fArr = this.mTextureMatrix;
            if (fArr == null) {
                fArr = IDENTITY_MATRIX;
            }
            GLES20.glUniformMatrix4fv(this.mUniformTextureTransform, 1, false, fArr, 0);
            beforeDrawArrays(i9);
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisableVertexAttribArray(this.mGLAttribPosition);
            GLES20.glDisableVertexAttribArray(this.mGLAttribTextureCoord);
            afterDrawArrays();
            GLES20.glActiveTexture(33984);
            OpenGlUtils.bindTexture(getTarget(), 0);
            if (dVar != null) {
                OpenGlUtils.bindFramebuffer(36160, 0);
                this.mGLFrameBuffer.c();
            }
        }
    }

    public void onFilterBeenSkipped() {
        if (this.mIsInitialized) {
            GLES20.glUseProgram(getProgramId());
            runPendingOnDrawTasks();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        this.mTexturePool = eVar;
    }

    public void onOutputSizeChanged(int i9, int i10) {
        q qVar = this.mOutputSize;
        qVar.f31029a = i9;
        qVar.f31030b = i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onUninit() {
    }

    public final void runOnDraw(Runnable runnable) {
        this.mRunOnDrawQueue.a(runnable);
    }

    protected void runOnDrawAndWaitDone(Runnable runnable) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.mRunOnDrawQueue.a(g.a(runnable, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void runPendingOnDrawTasks() {
        this.mRunOnDrawQueue.a();
    }

    public void setFloatOnDraw(int i9, float f10) {
        runOnDraw(c.a(this, i9, f10));
    }

    public void setFloatVec2OnDraw(int i9, float[] fArr) {
        runOnDraw(e.a(this, i9, fArr));
    }

    public void setFloatVec3OnDraw(int i9, float[] fArr) {
        runOnDraw(d.a(this, i9, fArr));
    }

    public void setFloatVec4OnDraw(int i9, float[] fArr) {
        runOnDraw(f.a(this, i9, fArr));
    }

    public void setTexutreTransform(float[] fArr) {
        this.mTextureMatrix = fArr;
    }

    public final void uninitialize() {
        if (this.mIsInitialized) {
            runPendingOnDrawTasks();
            onUninit();
            this.mIsInitialized = false;
            this.mGLFrameBuffer.d();
            int i9 = this.mProgramId;
            if (i9 != -1) {
                GLES20.glDeleteProgram(i9);
                this.mProgramId = -1;
            }
            LiteavLog.d(TAG, "%s uninitialized, count: %d", this, Integer.valueOf(sFilterCount.decrementAndGet()));
        }
    }

    public b(String str, String str2) {
        this.mOutputSize = new q(-1, -1);
        this.mProgramId = -1;
        this.mGLFrameBuffer = new com.tencent.liteav.videobase.frame.c();
        this.mRunOnDrawQueue = new com.tencent.liteav.videobase.utils.d();
        this.mProgram = new com.tencent.liteav.videobase.utils.i(str, str2);
    }
}
