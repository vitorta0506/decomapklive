package com.tencent.liteav.videobase.c;

import android.opengl.GLES20;
import com.tencent.liteav.videobase.a.j;
import com.tencent.liteav.videobase.frame.e;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import java.nio.Buffer;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public class d extends j {
    public static final String TWOINPUT_VERTEX_SHADER = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputTextureCoordinate2;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n}";
    private int mGLAttribTextureCoord2;
    private final FloatBuffer mSecondTextureCoordsBuffer;

    public d(String str) {
        this(TWOINPUT_VERTEX_SHADER, str);
    }

    @Override // com.tencent.liteav.videobase.a.j, com.tencent.liteav.videobase.a.b
    public void afterDrawArrays() {
        super.afterDrawArrays();
        int i9 = this.mGLAttribTextureCoord2;
        if (i9 != -1) {
            GLES20.glDisableVertexAttribArray(i9);
        }
    }

    @Override // com.tencent.liteav.videobase.a.j, com.tencent.liteav.videobase.a.b
    public void beforeDrawArrays(int i9) {
        super.beforeDrawArrays(i9);
        int i10 = this.mGLAttribTextureCoord2;
        if (i10 != -1) {
            GLES20.glVertexAttribPointer(i10, 2, 5126, false, 0, (Buffer) this.mSecondTextureCoordsBuffer);
            GLES20.glEnableVertexAttribArray(this.mGLAttribTextureCoord2);
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onInit(e eVar) {
        super.onInit(eVar);
        this.mGLAttribTextureCoord2 = GLES20.glGetAttribLocation(getProgramId(), "inputTextureCoordinate2");
    }

    public void setSecondInputTexture(int i9) {
        setInputTexture(j.SECOND_INPUT_SAMPLE2D_NAME, i9);
    }

    public d(String str, String str2) {
        super(str, str2);
        this.mGLAttribTextureCoord2 = -1;
        this.mSecondTextureCoordsBuffer = OpenGlUtils.createTextureCoordsBuffer(Rotation.NORMAL, false, false);
    }
}
