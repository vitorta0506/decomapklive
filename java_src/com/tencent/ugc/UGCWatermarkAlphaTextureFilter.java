package com.tencent.ugc;

import android.opengl.GLES20;
import com.tencent.liteav.beauty.b.n;
import java.nio.Buffer;
/* loaded from: classes4.dex */
public class UGCWatermarkAlphaTextureFilter extends com.tencent.liteav.beauty.b.n {
    private static final String WATERMARK_ALPHA_FRAG = "varying lowp vec2 textureCoordinate;\n   \n  uniform sampler2D inputImageTexture;\n  uniform mediump float alphaBlend;\n  \n  void main()\n  {\n      mediump vec4 color = texture2D(inputImageTexture, textureCoordinate);\n       if (0.0 == color.a){\n            gl_FragColor = color;\n       }else{\n            gl_FragColor = vec4(color.rgb, alphaBlend);\n       } \n  }\n";
    private int mAlphaUniform;
    private boolean mIsShowBackImageMoment;

    public UGCWatermarkAlphaTextureFilter() {
        super(com.tencent.liteav.videobase.a.b.NO_FILTER_VERTEX_SHADER, WATERMARK_ALPHA_FRAG);
        this.mAlphaUniform = -1;
        this.mIsShowBackImageMoment = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setTextureWatermark$1(UGCWatermarkAlphaTextureFilter uGCWatermarkAlphaTextureFilter, int i9, int i10, int i11, float f10, float f11, float f12) {
        if (uGCWatermarkAlphaTextureFilter.mRenderObjects == null) {
            uGCWatermarkAlphaTextureFilter.mRenderObjects = new n.a[1];
        }
        n.a[] aVarArr = uGCWatermarkAlphaTextureFilter.mRenderObjects;
        if (aVarArr[0] == null) {
            aVarArr[0] = new n.a();
        }
        if (i9 == -1) {
            uGCWatermarkAlphaTextureFilter.mRenderObjects[0].a();
            uGCWatermarkAlphaTextureFilter.mRenderObjects[0] = null;
            return;
        }
        uGCWatermarkAlphaTextureFilter.mRenderObjects[0].f31205c = i9;
        uGCWatermarkAlphaTextureFilter.calculateOffsetMatrix(i10, i11, f10, f11, f12, 0);
    }

    @Override // com.tencent.liteav.beauty.b.n, com.tencent.liteav.videobase.a.b
    public void afterDrawArrays() {
        if (!this.mDrawWaterMarkEnabled) {
            return;
        }
        GLES20.glEnable(3042);
        if (this.mIsShowBackImageMoment) {
            GLES20.glBlendFunc(773, 772);
        } else {
            GLES20.glBlendFunc(770, 771);
        }
        GLES20.glActiveTexture(33984);
        int i9 = 0;
        while (true) {
            n.a[] aVarArr = this.mRenderObjects;
            if (i9 < aVarArr.length) {
                if (aVarArr[i9] != null) {
                    GLES20.glActiveTexture(33984);
                    GLES20.glBindTexture(3553, this.mRenderObjects[i9].f31205c);
                    GLES20.glUniform1i(this.mGLUniformTexture, 0);
                    GLES20.glVertexAttribPointer(this.mGLAttribPosition, 2, 5126, false, 8, (Buffer) this.mRenderObjects[i9].f31203a);
                    GLES20.glEnableVertexAttribArray(this.mGLAttribPosition);
                    GLES20.glVertexAttribPointer(this.mGLAttribTextureCoord, 2, 5126, false, 0, (Buffer) com.tencent.liteav.beauty.b.n.TEXTURE_COORDS_BUFFER);
                    GLES20.glEnableVertexAttribArray(this.mGLAttribTextureCoord);
                    GLES20.glDrawElements(4, com.tencent.liteav.beauty.b.n.DRAW_ORDER.length, 5123, com.tencent.liteav.beauty.b.n.DRAW_ORDER_BUFFER);
                    GLES20.glDisableVertexAttribArray(this.mGLAttribPosition);
                    GLES20.glDisableVertexAttribArray(this.mGLAttribTextureCoord);
                }
                i9++;
            } else {
                GLES20.glDisable(3042);
                return;
            }
        }
    }

    @Override // com.tencent.liteav.beauty.b.n, com.tencent.liteav.videobase.a.b
    public void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        this.mAlphaUniform = GLES20.glGetUniformLocation(getProgramId(), "alphaBlend");
        this.mSrcBlendMode = 770;
        setAlpha(1.0f);
    }

    @Override // com.tencent.liteav.beauty.b.n, com.tencent.liteav.videobase.a.b
    public void onUninit() {
        this.mRenderObjects = null;
    }

    public void setAlpha(float f10) {
        setFloatOnDraw(this.mAlphaUniform, f10);
    }

    public void setShowBackImageMoment(boolean z10) {
        runOnDraw(gn.a(this, z10));
    }

    public void setTextureWatermark(int i9, int i10, int i11, float f10, float f11, float f12) {
        runOnDraw(go.a(this, i9, i10, i11, f10, f11, f12));
    }
}
