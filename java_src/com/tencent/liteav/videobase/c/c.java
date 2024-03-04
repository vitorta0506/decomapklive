package com.tencent.liteav.videobase.c;

import android.opengl.GLES20;
import com.tencent.liteav.videobase.frame.e;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import java.nio.Buffer;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public class c extends d {

    /* renamed from: a  reason: collision with root package name */
    private final FloatBuffer f31776a;

    /* renamed from: b  reason: collision with root package name */
    private int f31777b;

    public c(String str) {
        this("attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputTextureCoordinate2;\nattribute vec4 inputTextureCoordinate3;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\nvarying vec2 textureCoordinate3;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n    textureCoordinate3 = inputTextureCoordinate3.xy;\n}", str);
    }

    @Override // com.tencent.liteav.videobase.c.d, com.tencent.liteav.videobase.a.j, com.tencent.liteav.videobase.a.b
    public void afterDrawArrays() {
        super.afterDrawArrays();
        int i9 = this.f31777b;
        if (i9 != -1) {
            GLES20.glDisableVertexAttribArray(i9);
        }
    }

    @Override // com.tencent.liteav.videobase.c.d, com.tencent.liteav.videobase.a.j, com.tencent.liteav.videobase.a.b
    public void beforeDrawArrays(int i9) {
        super.beforeDrawArrays(i9);
        int i10 = this.f31777b;
        if (i10 != -1) {
            GLES20.glVertexAttribPointer(i10, 2, 5126, false, 0, (Buffer) this.f31776a);
            GLES20.glEnableVertexAttribArray(this.f31777b);
        }
    }

    @Override // com.tencent.liteav.videobase.c.d, com.tencent.liteav.videobase.a.b
    public void onInit(e eVar) {
        super.onInit(null);
        this.f31777b = GLES20.glGetAttribLocation(getProgramId(), "inputTextureCoordinate3");
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
    }

    public c(String str, String str2) {
        super(str, str2);
        this.f31776a = OpenGlUtils.createTextureCoordsBuffer(Rotation.NORMAL, false, false);
    }
}
