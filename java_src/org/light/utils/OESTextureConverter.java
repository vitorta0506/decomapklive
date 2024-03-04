package org.light.utils;

import android.opengl.GLES20;
import android.opengl.Matrix;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
/* loaded from: classes7.dex */
public class OESTextureConverter implements Renderer {
    static float[] squareCoords = {-1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f};
    static float[] textureVertices = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f};
    static float[] textureVerticesFlipY = {0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
    private boolean forHardwareBuffer;
    private final String fragmentShaderCode;
    private int mFrameBuffer;
    private int mPositionHandle;
    private int mProgram;
    private float[] mSTMatrix;
    private int mTextureCoordHandle;
    private int mTextureLocation;
    private int muSTMatrixHandle;
    private FloatBuffer textureVerticesBuffer;
    private FloatBuffer vertexBuffer;
    private final String vertexShaderCode;

    public OESTextureConverter() {
        this(true);
    }

    private int loadShader(int i9, String str) {
        int glCreateShader = GLES20.glCreateShader(i9);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        return glCreateShader;
    }

    @Override // org.light.utils.Renderer
    public void draw(int i9, int i10, int i11, int i12) {
        GLES20.glUseProgram(this.mProgram);
        GLES20.glBindTexture(3553, i10);
        if (!this.forHardwareBuffer) {
            GLES20.glTexImage2D(3553, 0, 6408, i11, i12, 0, 6408, 5121, null);
        }
        GLES20.glBindFramebuffer(36160, this.mFrameBuffer);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i10, 0);
        GLES20.glViewport(0, 0, i11, i12);
        this.mTextureLocation = GLES20.glGetUniformLocation(this.mProgram, "s_texture");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i9);
        GLES20.glUniform1i(this.mTextureLocation, 0);
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.mProgram, "vPosition");
        this.mPositionHandle = glGetAttribLocation;
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        GLES20.glVertexAttribPointer(this.mPositionHandle, 2, 5126, false, 0, (Buffer) this.vertexBuffer);
        int glGetAttribLocation2 = GLES20.glGetAttribLocation(this.mProgram, "inputTextureCoordinate");
        this.mTextureCoordHandle = glGetAttribLocation2;
        GLES20.glEnableVertexAttribArray(glGetAttribLocation2);
        GLES20.glVertexAttribPointer(this.mTextureCoordHandle, 2, 5126, false, 0, (Buffer) this.textureVerticesBuffer);
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.mProgram, "uSTMatrix");
        this.muSTMatrixHandle = glGetUniformLocation;
        GLES20.glUniformMatrix4fv(glGetUniformLocation, 1, false, this.mSTMatrix, 0);
        GLES20.glDrawArrays(5, 0, 6);
        GLES20.glBindTexture(36197, 0);
        GLES20.glDisableVertexAttribArray(this.mPositionHandle);
        GLES20.glDisableVertexAttribArray(this.mTextureCoordHandle);
        GLES20.glBindTexture(3553, 0);
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glUseProgram(0);
    }

    @Override // org.light.utils.Renderer
    public void release() {
        GLES20.glDeleteFramebuffers(1, new int[]{this.mFrameBuffer}, 0);
        GLES20.glDeleteProgram(this.mProgram);
    }

    @Override // org.light.utils.Renderer
    public void setForHardwareBuffer(boolean z10) {
        this.forHardwareBuffer = z10;
    }

    public void setSTMatrix(float[] fArr) {
        this.mSTMatrix = fArr;
    }

    public OESTextureConverter(boolean z10) {
        this.vertexShaderCode = "precision mediump float;\nattribute vec4 vPosition;uniform mat4 uSTMatrix;\nattribute vec4 inputTextureCoordinate;varying vec4 textureCoordinate;void main(){gl_Position = vPosition;textureCoordinate = uSTMatrix * inputTextureCoordinate;}";
        this.fragmentShaderCode = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;varying vec4 textureCoordinate;\nuniform samplerExternalOES s_texture;\nvoid main() {  gl_FragColor = texture2D( s_texture, vec2(textureCoordinate.x,textureCoordinate.y));\n}";
        this.mSTMatrix = new float[16];
        this.forHardwareBuffer = false;
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(squareCoords.length * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        this.vertexBuffer = asFloatBuffer;
        asFloatBuffer.put(squareCoords);
        this.vertexBuffer.position(0);
        ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(textureVertices.length * 4);
        allocateDirect2.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer2 = allocateDirect2.asFloatBuffer();
        this.textureVerticesBuffer = asFloatBuffer2;
        asFloatBuffer2.put(z10 ? textureVerticesFlipY : textureVertices);
        this.textureVerticesBuffer.position(0);
        int loadShader = loadShader(35633, "precision mediump float;\nattribute vec4 vPosition;uniform mat4 uSTMatrix;\nattribute vec4 inputTextureCoordinate;varying vec4 textureCoordinate;void main(){gl_Position = vPosition;textureCoordinate = uSTMatrix * inputTextureCoordinate;}");
        int loadShader2 = loadShader(35632, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;varying vec4 textureCoordinate;\nuniform samplerExternalOES s_texture;\nvoid main() {  gl_FragColor = texture2D( s_texture, vec2(textureCoordinate.x,textureCoordinate.y));\n}");
        int glCreateProgram = GLES20.glCreateProgram();
        this.mProgram = glCreateProgram;
        GLES20.glAttachShader(glCreateProgram, loadShader);
        GLES20.glAttachShader(this.mProgram, loadShader2);
        GLES20.glLinkProgram(this.mProgram);
        GLES20.glDeleteShader(loadShader);
        GLES20.glDeleteShader(loadShader2);
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        this.mFrameBuffer = iArr[0];
        Matrix.setIdentityM(this.mSTMatrix, 0);
    }
}