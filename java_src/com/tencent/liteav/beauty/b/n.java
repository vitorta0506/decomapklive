package com.tencent.liteav.beauty.b;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4.dex */
public class n extends com.tencent.liteav.videobase.a.b {
    protected static final short[] DRAW_ORDER;
    protected static final ShortBuffer DRAW_ORDER_BUFFER;
    private static final String TAG = "TXCGPUWatermarkFilter";
    private static final float[] TEXTURE_COORDS;
    protected static final FloatBuffer TEXTURE_COORDS_BUFFER;
    private static final float[] VERTICES_COORDS = new float[8];
    private int mBaseMarkOffset;
    private a mBaseWaterMark;
    protected boolean mDrawWaterMarkEnabled;
    public a[] mRenderObjects;
    protected int mSrcBlendMode;
    protected List<o> mWaterMarkList;
    private o mWatermark;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: b  reason: collision with root package name */
        public Bitmap f31204b;

        /* renamed from: a  reason: collision with root package name */
        public FloatBuffer f31203a = null;

        /* renamed from: c  reason: collision with root package name */
        public int f31205c = -1;

        public final void a() {
            this.f31204b = null;
            OpenGlUtils.deleteTexture(this.f31205c);
            this.f31205c = -1;
        }
    }

    static {
        short[] sArr = {1, 2, 0, 2, 0, 3};
        DRAW_ORDER = sArr;
        float[] fArr = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f};
        TEXTURE_COORDS = fArr;
        TEXTURE_COORDS_BUFFER = (FloatBuffer) ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).asReadOnlyBuffer().position(0);
        DRAW_ORDER_BUFFER = (ShortBuffer) ByteBuffer.allocateDirect(sArr.length * 2).order(ByteOrder.nativeOrder()).asShortBuffer().put(sArr).asReadOnlyBuffer().position(0);
    }

    public n() {
        this(com.tencent.liteav.videobase.a.b.NO_FILTER_VERTEX_SHADER, com.tencent.liteav.videobase.a.b.NO_FILTER_FRAGMENT_SHADER);
    }

    private boolean compareWaterMarkList(List<o> list, List<o> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            o oVar = list.get(i9);
            o oVar2 = list2.get(i9);
            if (!oVar.f31206a.equals(oVar2.f31206a) || oVar.f31207b != oVar2.f31207b || oVar.f31208c != oVar2.f31208c || oVar.f31209d != oVar2.f31209d) {
                return false;
            }
        }
        return true;
    }

    private void releaseWaterMark() {
        a[] aVarArr = this.mRenderObjects;
        if (aVarArr == null || aVarArr.length == 0) {
            return;
        }
        int i9 = 0;
        while (true) {
            a[] aVarArr2 = this.mRenderObjects;
            if (i9 < aVarArr2.length) {
                if (aVarArr2[i9] != null) {
                    aVarArr2[i9].a();
                    this.mRenderObjects[i9] = null;
                }
                i9++;
            } else {
                this.mRenderObjects = null;
                return;
            }
        }
    }

    private void setWatermark(Bitmap bitmap, float f10, float f11, float f12, int i9) {
        Bitmap bitmap2;
        a[] aVarArr = this.mRenderObjects;
        if (aVarArr == null || i9 >= aVarArr.length || aVarArr[i9] == null) {
            LiteavLog.e(TAG, "index is too large for mRenderObjects!");
        } else if (bitmap == null) {
            LiteavLog.i(TAG, "release %d watermark!", Integer.valueOf(i9));
            this.mRenderObjects[i9].a();
            this.mRenderObjects[i9] = null;
        } else {
            calculateOffsetMatrix(bitmap.getWidth(), bitmap.getHeight(), f10, f11, f12, i9);
            a aVar = this.mRenderObjects[i9];
            Bitmap bitmap3 = aVar.f31204b;
            if (bitmap3 == null || !bitmap3.equals(bitmap)) {
                if (aVar.f31205c != -1 && (bitmap2 = aVar.f31204b) != null && (bitmap2.getWidth() != bitmap.getWidth() || aVar.f31204b.getHeight() != bitmap.getHeight())) {
                    OpenGlUtils.deleteTexture(aVar.f31205c);
                    aVar.f31205c = -1;
                }
                aVar.f31205c = OpenGlUtils.loadTexture(bitmap, aVar.f31205c, false);
            }
            aVar.f31204b = bitmap;
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void afterDrawArrays() {
        super.afterDrawArrays();
        if (!this.mDrawWaterMarkEnabled) {
            return;
        }
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(this.mSrcBlendMode, 771);
        int i9 = 0;
        while (true) {
            a[] aVarArr = this.mRenderObjects;
            if (i9 < aVarArr.length) {
                if (aVarArr[i9] != null) {
                    GLES20.glActiveTexture(33984);
                    GLES20.glBindTexture(3553, this.mRenderObjects[i9].f31205c);
                    GLES20.glUniform1i(this.mGLUniformTexture, 0);
                    GLES20.glVertexAttribPointer(this.mGLAttribPosition, 2, 5126, false, 8, (Buffer) this.mRenderObjects[i9].f31203a);
                    GLES20.glEnableVertexAttribArray(this.mGLAttribPosition);
                    GLES20.glVertexAttribPointer(this.mGLAttribTextureCoord, 2, 5126, false, 0, (Buffer) TEXTURE_COORDS_BUFFER);
                    GLES20.glEnableVertexAttribArray(this.mGLAttribTextureCoord);
                    GLES20.glDrawElements(4, DRAW_ORDER.length, 5123, DRAW_ORDER_BUFFER);
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

    public void calculateOffsetMatrix(int i9, int i10, float f10, float f11, float f12, int i11) {
        a[] aVarArr = this.mRenderObjects;
        if (aVarArr != null && i11 < aVarArr.length && aVarArr[i11] != null) {
            a aVar = aVarArr[i11];
            float[] fArr = VERTICES_COORDS;
            aVar.f31203a = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
            float[] fArr2 = new float[fArr.length];
            fArr2[0] = (f10 * 2.0f) - 1.0f;
            fArr2[1] = 1.0f - (f11 * 2.0f);
            fArr2[2] = fArr2[0];
            q qVar = this.mOutputSize;
            fArr2[3] = fArr2[1] - (((((i10 / i9) * f12) * qVar.f31029a) / qVar.f31030b) * 2.0f);
            fArr2[4] = fArr2[0] + (f12 * 2.0f);
            fArr2[5] = fArr2[3];
            fArr2[6] = fArr2[4];
            fArr2[7] = fArr2[1];
            for (int i12 = 1; i12 <= 7; i12 += 2) {
                fArr2[i12] = fArr2[i12] * (-1.0f);
            }
            this.mRenderObjects[i11].f31203a.put(fArr2).position(0);
            return;
        }
        LiteavLog.e(TAG, "calculateOffsetMatrix,index[%d],mRenderObjects=%s", Integer.valueOf(i11), Arrays.toString(this.mRenderObjects));
    }

    public void enableWatermark(boolean z10) {
        this.mDrawWaterMarkEnabled = z10;
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onInit(com.tencent.liteav.videobase.frame.e eVar) {
        super.onInit(eVar);
        o oVar = this.mWatermark;
        if (oVar != null) {
            setWatermark(oVar.f31206a, oVar.f31207b, oVar.f31208c, oVar.f31209d);
        }
        List<o> list = this.mWaterMarkList;
        if (list != null) {
            setWaterMarkList(list);
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onOutputSizeChanged(int i9, int i10) {
        Bitmap bitmap;
        Bitmap bitmap2;
        LiteavLog.i(TAG, "onOutputSizeChanged,width=%d,height=%d", Integer.valueOf(i9), Integer.valueOf(i10));
        super.onOutputSizeChanged(i9, i10);
        if (this.mRenderObjects == null) {
            return;
        }
        o oVar = this.mWatermark;
        if (oVar != null && (bitmap2 = oVar.f31206a) != null) {
            int width = bitmap2.getWidth();
            int height = this.mWatermark.f31206a.getHeight();
            o oVar2 = this.mWatermark;
            calculateOffsetMatrix(width, height, oVar2.f31207b, oVar2.f31208c, oVar2.f31209d, 0);
        }
        if (this.mWaterMarkList == null) {
            return;
        }
        for (int i11 = 0; i11 < this.mWaterMarkList.size(); i11++) {
            o oVar3 = this.mWaterMarkList.get(i11);
            if (oVar3 != null && (bitmap = oVar3.f31206a) != null) {
                calculateOffsetMatrix(bitmap.getWidth(), oVar3.f31206a.getHeight(), oVar3.f31207b, oVar3.f31208c, oVar3.f31209d, i11 + this.mBaseMarkOffset);
            }
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onUninit() {
        super.onUninit();
        releaseWaterMark();
    }

    public void setWaterMarkList(List<o> list) {
        List<o> list2 = this.mWaterMarkList;
        if (list2 != null && compareWaterMarkList(list2, list)) {
            LiteavLog.i(TAG, "Same markList");
            return;
        }
        this.mWaterMarkList = list;
        if (this.mRenderObjects != null) {
            int i9 = this.mBaseMarkOffset;
            while (true) {
                a[] aVarArr = this.mRenderObjects;
                if (i9 >= aVarArr.length) {
                    break;
                }
                OpenGlUtils.deleteTexture(aVarArr[i9].f31205c);
                this.mRenderObjects[i9].f31205c = -1;
                i9++;
            }
        }
        a[] aVarArr2 = new a[list.size() + this.mBaseMarkOffset];
        this.mRenderObjects = aVarArr2;
        aVarArr2[0] = this.mBaseWaterMark;
        for (int i10 = 0; i10 < list.size(); i10++) {
            o oVar = list.get(i10);
            if (oVar != null) {
                this.mRenderObjects[this.mBaseMarkOffset + i10] = new a();
                setWatermark(oVar.f31206a, oVar.f31207b, oVar.f31208c, oVar.f31209d, i10 + this.mBaseMarkOffset);
            }
        }
    }

    public n(String str, String str2) {
        super(str, str2);
        this.mRenderObjects = null;
        this.mBaseWaterMark = null;
        this.mWaterMarkList = null;
        this.mDrawWaterMarkEnabled = false;
        this.mSrcBlendMode = 1;
        this.mBaseMarkOffset = 1;
        this.mWatermark = null;
    }

    public void setWatermark(Bitmap bitmap, float f10, float f11, float f12) {
        if (this.mRenderObjects == null) {
            this.mRenderObjects = new a[1];
        }
        a[] aVarArr = this.mRenderObjects;
        if (aVarArr[0] == null) {
            aVarArr[0] = new a();
        }
        setWatermark(bitmap, f10, f11, f12, 0);
        this.mBaseWaterMark = this.mRenderObjects[0];
        if (bitmap == null) {
            this.mWatermark = null;
            return;
        }
        if (this.mWatermark == null) {
            this.mWatermark = new o();
        }
        o oVar = this.mWatermark;
        oVar.f31206a = bitmap;
        oVar.f31207b = f10;
        oVar.f31208c = f11;
        oVar.f31209d = f12;
    }
}
