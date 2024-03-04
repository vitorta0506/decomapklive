package com.tencent.qgame.animplayer;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.qgame.animplayer.IRenderListener;
import com.tencent.qgame.animplayer.util.GlFloatArray;
import com.tencent.qgame.animplayer.util.ShaderUtil;
import com.tencent.qgame.animplayer.util.TexCoordsUtil;
import com.tencent.qgame.animplayer.util.VertexUtil;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\u0018\u0000 12\u00020\u0001:\u00011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\"H\u0016J\b\u0010$\u001a\u00020\"H\u0002J\b\u0010%\u001a\u00020\u000bH\u0016J\b\u0010&\u001a\u00020\"H\u0016J\b\u0010'\u001a\u00020\"H\u0016J\b\u0010(\u001a\u00020\"H\u0016J\u0010\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020+H\u0016J6\u0010,\u001a\u00020\"2\u0006\u0010-\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020\u000b2\b\u0010 \u001a\u0004\u0018\u00010/2\b\u0010\u001a\u001a\u0004\u0018\u00010/2\b\u0010\u001d\u001a\u0004\u0018\u00010/H\u0016J\b\u00100\u001a\u00020\"H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcom/tencent/qgame/animplayer/YUVRender;", "Lcom/tencent/qgame/animplayer/IRenderListener;", "surfaceTexture", "Landroid/graphics/SurfaceTexture;", "(Landroid/graphics/SurfaceTexture;)V", "YUV_MATRIX", "", "YUV_OFFSET", "alphaArray", "Lcom/tencent/qgame/animplayer/util/GlFloatArray;", "alphaPosition", "", "avPosition", "convertMatrixUniform", "convertOffsetUniform", "eglUtil", "Lcom/tencent/qgame/animplayer/EGLUtil;", "heightYUV", "rgbArray", "rgbPosition", "samplerU", "samplerV", "samplerY", "shaderProgram", "textureId", "", "u", "Ljava/nio/ByteBuffer;", "unpackAlign", NotifyType.VIBRATE, "vertexArray", "widthYUV", "y", "clearFrame", "", "destroyRender", "draw", "getExternalTexture", "initRender", "releaseTexture", "renderFrame", "setAnimConfig", "config", "Lcom/tencent/qgame/animplayer/AnimConfig;", "setYUVData", "width", "height", "", "swapBuffers", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class YUVRender implements IRenderListener {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.YUVRender";
    private final float[] YUV_MATRIX;
    private final float[] YUV_OFFSET;
    private int alphaPosition;
    private int avPosition;
    private int convertMatrixUniform;
    private int convertOffsetUniform;
    private final EGLUtil eglUtil;
    private int heightYUV;
    private int rgbPosition;
    private int samplerU;
    private int samplerV;
    private int samplerY;
    private int shaderProgram;

    /* renamed from: u  reason: collision with root package name */
    private ByteBuffer f33373u;
    private int unpackAlign;

    /* renamed from: v  reason: collision with root package name */
    private ByteBuffer f33374v;
    private int widthYUV;

    /* renamed from: y  reason: collision with root package name */
    private ByteBuffer f33375y;
    private final GlFloatArray vertexArray = new GlFloatArray();
    private final GlFloatArray alphaArray = new GlFloatArray();
    private final GlFloatArray rgbArray = new GlFloatArray();
    private int[] textureId = new int[3];

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/YUVRender$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public YUVRender(@NotNull SurfaceTexture surfaceTexture) {
        EGLUtil eGLUtil = new EGLUtil();
        this.eglUtil = eGLUtil;
        this.unpackAlign = 4;
        this.YUV_OFFSET = new float[]{0.0f, -0.5019608f, -0.5019608f};
        this.YUV_MATRIX = new float[]{1.0f, 1.0f, 1.0f, 0.0f, -0.3441f, 1.772f, 1.402f, -0.7141f, 0.0f};
        eGLUtil.start(surfaceTexture);
        initRender();
    }

    private final void draw() {
        if (this.widthYUV <= 0 || this.heightYUV <= 0 || this.f33375y == null || this.f33373u == null || this.f33374v == null) {
            return;
        }
        GLES20.glUseProgram(this.shaderProgram);
        this.vertexArray.setVertexAttribPointer(this.avPosition);
        this.alphaArray.setVertexAttribPointer(this.alphaPosition);
        this.rgbArray.setVertexAttribPointer(this.rgbPosition);
        GLES20.glPixelStorei(3317, this.unpackAlign);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.textureId[0]);
        GLES20.glTexImage2D(3553, 0, 6409, this.widthYUV, this.heightYUV, 0, 6409, 5121, this.f33375y);
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.textureId[1]);
        GLES20.glTexImage2D(3553, 0, 6409, this.widthYUV / 2, this.heightYUV / 2, 0, 6409, 5121, this.f33373u);
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.textureId[2]);
        GLES20.glTexImage2D(3553, 0, 6409, this.widthYUV / 2, this.heightYUV / 2, 0, 6409, 5121, this.f33374v);
        GLES20.glUniform1i(this.samplerY, 0);
        GLES20.glUniform1i(this.samplerU, 1);
        GLES20.glUniform1i(this.samplerV, 2);
        GLES20.glUniform3fv(this.convertOffsetUniform, 1, FloatBuffer.wrap(this.YUV_OFFSET));
        GLES20.glUniformMatrix3fv(this.convertMatrixUniform, 1, false, this.YUV_MATRIX, 0);
        GLES20.glDrawArrays(5, 0, 4);
        ByteBuffer byteBuffer = this.f33375y;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f33373u;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        ByteBuffer byteBuffer3 = this.f33374v;
        if (byteBuffer3 != null) {
            byteBuffer3.clear();
        }
        this.f33375y = null;
        this.f33373u = null;
        this.f33374v = null;
        GLES20.glDisableVertexAttribArray(this.avPosition);
        GLES20.glDisableVertexAttribArray(this.rgbPosition);
        GLES20.glDisableVertexAttribArray(this.alphaPosition);
    }

    @Override // com.tencent.qgame.animplayer.IRenderListener
    public void clearFrame() {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClear(16384);
        this.eglUtil.swapBuffers();
    }

    @Override // com.tencent.qgame.animplayer.IRenderListener
    public void destroyRender() {
        releaseTexture();
        this.eglUtil.release();
    }

    @Override // com.tencent.qgame.animplayer.IRenderListener
    public int getExternalTexture() {
        return this.textureId[0];
    }

    @Override // com.tencent.qgame.animplayer.IRenderListener
    public void initRender() {
        int createProgram = ShaderUtil.INSTANCE.createProgram(YUVShader.VERTEX_SHADER, YUVShader.FRAGMENT_SHADER);
        this.shaderProgram = createProgram;
        this.avPosition = GLES20.glGetAttribLocation(createProgram, "v_Position");
        this.rgbPosition = GLES20.glGetAttribLocation(this.shaderProgram, "vTexCoordinateRgb");
        this.alphaPosition = GLES20.glGetAttribLocation(this.shaderProgram, "vTexCoordinateAlpha");
        this.samplerY = GLES20.glGetUniformLocation(this.shaderProgram, "sampler_y");
        this.samplerU = GLES20.glGetUniformLocation(this.shaderProgram, "sampler_u");
        this.samplerV = GLES20.glGetUniformLocation(this.shaderProgram, "sampler_v");
        this.convertMatrixUniform = GLES20.glGetUniformLocation(this.shaderProgram, "convertMatrix");
        this.convertOffsetUniform = GLES20.glGetUniformLocation(this.shaderProgram, TypedValues.CycleType.S_WAVE_OFFSET);
        int[] iArr = this.textureId;
        GLES20.glGenTextures(iArr.length, iArr, 0);
        for (int i9 : this.textureId) {
            GLES20.glBindTexture(3553, i9);
            GLES20.glTexParameteri(3553, 10242, 10497);
            GLES20.glTexParameteri(3553, 10243, 10497);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10240, 9729);
        }
    }

    @Override // com.tencent.qgame.animplayer.IRenderListener
    public void releaseTexture() {
        int[] iArr = this.textureId;
        GLES20.glDeleteTextures(iArr.length, iArr, 0);
    }

    @Override // com.tencent.qgame.animplayer.IRenderListener
    public void renderFrame() {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClear(16384);
        draw();
    }

    @Override // com.tencent.qgame.animplayer.IRenderListener
    public void setAnimConfig(@NotNull AnimConfig animConfig) {
        this.vertexArray.setArray(VertexUtil.INSTANCE.create(animConfig.getWidth(), animConfig.getHeight(), new PointRect(0, 0, animConfig.getWidth(), animConfig.getHeight()), this.vertexArray.getArray()));
        TexCoordsUtil texCoordsUtil = TexCoordsUtil.INSTANCE;
        float[] create = texCoordsUtil.create(animConfig.getVideoWidth(), animConfig.getVideoHeight(), animConfig.getAlphaPointRect(), this.alphaArray.getArray());
        float[] create2 = texCoordsUtil.create(animConfig.getVideoWidth(), animConfig.getVideoHeight(), animConfig.getRgbPointRect(), this.rgbArray.getArray());
        this.alphaArray.setArray(create);
        this.rgbArray.setArray(create2);
    }

    @Override // com.tencent.qgame.animplayer.IRenderListener
    public void setYUVData(int i9, int i10, @Nullable byte[] bArr, @Nullable byte[] bArr2, @Nullable byte[] bArr3) {
        this.widthYUV = i9;
        this.heightYUV = i10;
        this.f33375y = ByteBuffer.wrap(bArr);
        this.f33373u = ByteBuffer.wrap(bArr2);
        this.f33374v = ByteBuffer.wrap(bArr3);
        int i11 = this.widthYUV;
        if ((i11 / 2) % 4 != 0) {
            this.unpackAlign = (i11 / 2) % 2 != 0 ? 1 : 2;
        }
    }

    @Override // com.tencent.qgame.animplayer.IRenderListener
    public void swapBuffers() {
        this.eglUtil.swapBuffers();
    }

    @Override // com.tencent.qgame.animplayer.IRenderListener
    public void updateViewPort(int i9, int i10) {
        IRenderListener.DefaultImpls.updateViewPort(this, i9, i10);
    }
}
