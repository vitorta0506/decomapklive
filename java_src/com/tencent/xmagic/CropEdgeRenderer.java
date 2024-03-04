package com.tencent.xmagic;

import android.opengl.GLES20;
import android.util.Log;
import com.guochao.faceshow.utils.BaseConfig;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
/* loaded from: classes4.dex */
class CropEdgeRenderer {
    protected static final String DEFAULT_FRAG_SHADER = "precision mediump float;\nuniform sampler2D u_sampler;\nvarying vec4 v_TexCoord;\nvoid main()\n{\n    gl_FragColor = texture2D(u_sampler, v_TexCoord.xy);\n}";
    protected static final String DEFAULT_VERT_SHADER = "attribute vec4 a_Position;\nattribute vec4 a_TexCoordinate;\nuniform mat4 u_CropMatrix;\nvarying vec4 v_TexCoord;\nvoid main()\n{\n    v_TexCoord = u_CropMatrix * a_TexCoordinate;\n    gl_Position =  a_Position;\n}";
    private int cropMatrixLoc;
    private ShortBuffer indexBuffer;
    private int positionLoc;
    private int samplerLoc;
    private FloatBuffer texBuffer;
    private int texCoordLoc;
    private FloatBuffer vertexBuffer;
    protected int vertexShader = -1;
    protected int fragmentShader = -1;
    protected int mShaderProgram = -1;
    protected int[] mFBOIdHolder = {-1};
    private float[] vertexData = {-1.0f, 1.0f, 0.0f, -1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 1.0f, 0.0f};
    private float[] texData = {0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f};
    private short[] indexData = {3, 2, 0, 0, 1, 2};

    CropEdgeRenderer() {
    }

    protected static FloatBuffer createBuffer(float[] fArr) {
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect((fArr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer.put(fArr, 0, fArr.length).position(0);
        return asFloatBuffer;
    }

    protected static int linkProgram(int i9, int i10) {
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram != 0) {
            GLES20.glAttachShader(glCreateProgram, i9);
            GLES20.glAttachShader(glCreateProgram, i10);
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                Log.e("link", "linkProgram: " + GLES20.glGetProgramInfoLog(glCreateProgram));
                GLES20.glDeleteProgram(glCreateProgram);
                return 0;
            }
            return glCreateProgram;
        }
        throw new RuntimeException("Create Program Failed!" + GLES20.glGetError());
    }

    protected static int loadShader(int i9, String str) {
        int glCreateShader = GLES20.glCreateShader(i9);
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            GLES20.glCompileShader(glCreateShader);
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            if (iArr[0] == 0) {
                Log.e("loadshader", "loadShader: " + GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                return 0;
            }
            return glCreateShader;
        }
        throw new RuntimeException("Create Shader Failed!" + GLES20.glGetError());
    }

    protected static void saveToBuffer(ByteBuffer byteBuffer, int i9, int i10) {
        if (byteBuffer != null) {
            GLES20.glFinish();
            byteBuffer.rewind();
            int i11 = i9 * i10 * 4;
            if (byteBuffer.capacity() != i11) {
                byteBuffer = ByteBuffer.allocateDirect(i11);
            }
            GLES20.glPixelStorei(BaseConfig.INTERESTS_HOBBIES_THREE, 1);
            GLES20.glReadPixels(0, 0, i9, i10, 6408, 5121, byteBuffer);
        }
        GLES20.glBindFramebuffer(36160, 0);
    }

    public void doRender(int i9, int i10, int i11, int i12, float[] fArr, ByteBuffer byteBuffer) {
        GLES20.glUseProgram(this.mShaderProgram);
        GLES20.glClear(16640);
        GLES20.glViewport(0, 0, i11, i12);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        if (i10 != -1) {
            GLES20.glBindFramebuffer(36160, this.mFBOIdHolder[0]);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, i10, 0);
        }
        GlUtil.checkGlError("OesCropRenderer");
        this.vertexBuffer.position(0);
        GLES20.glEnableVertexAttribArray(this.positionLoc);
        GLES20.glVertexAttribPointer(this.positionLoc, 3, 5126, false, 0, (Buffer) this.vertexBuffer);
        this.texBuffer.position(0);
        GLES20.glEnableVertexAttribArray(this.texCoordLoc);
        GLES20.glVertexAttribPointer(this.texCoordLoc, 2, 5126, false, 0, (Buffer) this.texBuffer);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i9);
        GLES20.glUniform1i(this.samplerLoc, 0);
        GLES20.glUniformMatrix4fv(this.cropMatrixLoc, 1, false, fArr, 0);
        GlUtil.checkGlError("OesCropRenderer");
        GLES20.glDrawElements(4, this.indexData.length, 5123, this.indexBuffer);
        GlUtil.checkGlError("OesCropRenderer");
        saveToBuffer(byteBuffer, i11, i12);
    }

    public void init() {
        init(DEFAULT_VERT_SHADER, DEFAULT_FRAG_SHADER);
    }

    public void release() {
        GLES20.glDeleteShader(this.vertexShader);
        GLES20.glDeleteShader(this.fragmentShader);
        GLES20.glDeleteProgram(this.mShaderProgram);
        GLES20.glDeleteFramebuffers(1, this.mFBOIdHolder, 0);
    }

    public void init(String str, String str2) {
        this.vertexShader = loadShader(35633, str);
        int loadShader = loadShader(35632, str2);
        this.fragmentShader = loadShader;
        this.mShaderProgram = linkProgram(this.vertexShader, loadShader);
        GLES20.glGenFramebuffers(1, this.mFBOIdHolder, 0);
        GLES20.glBindFramebuffer(36160, 0);
        this.vertexBuffer = createBuffer(this.vertexData);
        this.texBuffer = createBuffer(this.texData);
        this.indexBuffer = createBuffer(this.indexData);
        this.positionLoc = GLES20.glGetAttribLocation(this.mShaderProgram, "a_Position");
        this.texCoordLoc = GLES20.glGetAttribLocation(this.mShaderProgram, "a_TexCoordinate");
        this.samplerLoc = GLES20.glGetUniformLocation(this.mShaderProgram, "u_sampler");
        this.cropMatrixLoc = GLES20.glGetUniformLocation(this.mShaderProgram, "u_CropMatrix");
        GlUtil.checkGlError("OesCropRenderer");
    }

    protected static ShortBuffer createBuffer(short[] sArr) {
        ShortBuffer asShortBuffer = ByteBuffer.allocateDirect((sArr.length * 16) / 8).order(ByteOrder.nativeOrder()).asShortBuffer();
        asShortBuffer.put(sArr, 0, sArr.length).position(0);
        return asShortBuffer;
    }
}
