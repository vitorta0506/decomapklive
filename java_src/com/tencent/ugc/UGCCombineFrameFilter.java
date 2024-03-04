package com.tencent.ugc;

import android.opengl.GLES20;
import android.util.Log;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.UGCTransitionProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.List;
/* loaded from: classes4.dex */
public class UGCCombineFrameFilter {
    private static final String TAG = "UGCCombineFrameFilter";
    private UGCWatermarkAlphaTextureFilter mAlphaBlendFilter;
    private com.tencent.liteav.base.util.q mCanvasSize;
    private FloatBuffer mCropRectTextureCoordsBuffer;
    private com.tencent.liteav.videobase.frame.c mFrameBufferForClear;
    private final com.tencent.liteav.videobase.frame.e mTexturePool;
    private UGCRotateScaleFilter mRotateScaleFilter = null;
    private com.tencent.liteav.videobase.a.b mCropFilter = null;
    private TXVideoEditConstants.TXAbsoluteRect mCropRect = null;
    private com.tencent.liteav.videobase.frame.d mBackgroundTexture = null;
    private final FloatBuffer mNormalCubeVerticesBuffer = OpenGlUtils.createNormalCubeVerticesBuffer();
    private final FloatBuffer mNormalTextureCoordsBuffer = OpenGlUtils.createTextureCoordsBuffer(Rotation.NORMAL, false, false);

    public UGCCombineFrameFilter(com.tencent.liteav.videobase.frame.e eVar) {
        this.mTexturePool = eVar;
    }

    private void clearTexture(com.tencent.liteav.videobase.frame.d dVar) {
        if (this.mFrameBufferForClear == null) {
            com.tencent.liteav.videobase.frame.c cVar = new com.tencent.liteav.videobase.frame.c();
            this.mFrameBufferForClear = cVar;
            cVar.a();
        }
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        if (dVar == null) {
            GLES20.glBindFramebuffer(36160, 0);
            GLES20.glClear(16640);
            return;
        }
        this.mFrameBufferForClear.a(dVar.a());
        this.mFrameBufferForClear.b();
        GLES20.glClear(16640);
        OpenGlUtils.bindFramebuffer(36160, 0);
        this.mFrameBufferForClear.c();
    }

    private com.tencent.liteav.videobase.frame.d combineFrameWithAlphaBlendFilter(List<UGCTransitionProcessor.TXCCombineFrame> list) {
        int backgroundTextureId = getBackgroundTextureId();
        com.tencent.liteav.videobase.frame.d dVar = null;
        int i9 = 0;
        while (i9 < list.size()) {
            setAlphaBlendFilterParameter(list.get(i9));
            com.tencent.liteav.base.util.q qVar = this.mCanvasSize;
            GLES20.glViewport(0, 0, qVar.f31029a, qVar.f31030b);
            com.tencent.liteav.base.util.q outputSize = this.mAlphaBlendFilter.getOutputSize();
            com.tencent.liteav.videobase.frame.d a10 = this.mTexturePool.a(outputSize.f31029a, outputSize.f31030b);
            this.mAlphaBlendFilter.onDraw(backgroundTextureId, a10, this.mNormalCubeVerticesBuffer, this.mNormalTextureCoordsBuffer);
            if (dVar != null) {
                dVar.release();
            }
            backgroundTextureId = a10.a();
            i9++;
            dVar = a10;
        }
        return dVar;
    }

    private com.tencent.liteav.videobase.frame.d cropTexture(com.tencent.liteav.videobase.frame.d dVar) {
        com.tencent.liteav.videobase.a.b bVar;
        if (dVar == null || (bVar = this.mCropFilter) == null) {
            return dVar;
        }
        com.tencent.liteav.base.util.q outputSize = bVar.getOutputSize();
        com.tencent.liteav.videobase.frame.d a10 = this.mTexturePool.a(outputSize.f31029a, outputSize.f31030b);
        GLES20.glViewport(0, 0, outputSize.f31029a, outputSize.f31030b);
        this.mCropFilter.onDraw(dVar.a(), a10, this.mNormalCubeVerticesBuffer, this.mCropRectTextureCoordsBuffer);
        dVar.release();
        return a10;
    }

    private int getBackgroundTextureId() {
        if (this.mBackgroundTexture == null) {
            com.tencent.liteav.videobase.frame.e eVar = this.mTexturePool;
            com.tencent.liteav.base.util.q qVar = this.mCanvasSize;
            com.tencent.liteav.videobase.frame.d a10 = eVar.a(qVar.f31029a, qVar.f31030b);
            this.mBackgroundTexture = a10;
            clearTexture(a10);
        }
        return this.mBackgroundTexture.a();
    }

    private static FloatBuffer getCropRectTextureCoords(int i9, int i10, TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect) {
        int length = GLConstants.f31730d.length;
        float[] fArr = new float[length];
        OpenGlUtils.initTextureCoordsBuffer(fArr, Rotation.NORMAL, false, false);
        if (tXAbsoluteRect != null) {
            int i11 = tXAbsoluteRect.f34643x;
            float f10 = i9 * 1.0f;
            float f11 = i11 / f10;
            float f12 = ((i9 - i11) - tXAbsoluteRect.width) / f10;
            int i12 = tXAbsoluteRect.f34644y;
            float f13 = i10 * 1.0f;
            float f14 = i12 / f13;
            float f15 = ((i10 - i12) - tXAbsoluteRect.height) / f13;
            for (int i13 = 0; i13 < length / 2; i13++) {
                int i14 = i13 * 2;
                if (fArr[i14] < 0.5f) {
                    fArr[i14] = fArr[i14] + f11;
                } else {
                    fArr[i14] = fArr[i14] - f12;
                }
                int i15 = i14 + 1;
                if (fArr[i15] < 0.5f) {
                    fArr[i15] = fArr[i15] + f14;
                } else {
                    fArr[i15] = fArr[i15] - f15;
                }
            }
        }
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(GLConstants.f31730d.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer.put(fArr).position(0);
        return asFloatBuffer;
    }

    private void initFilter() {
        if (this.mRotateScaleFilter == null) {
            UGCRotateScaleFilter uGCRotateScaleFilter = new UGCRotateScaleFilter();
            this.mRotateScaleFilter = uGCRotateScaleFilter;
            uGCRotateScaleFilter.initialize(this.mTexturePool);
        }
        if (this.mAlphaBlendFilter == null) {
            UGCWatermarkAlphaTextureFilter uGCWatermarkAlphaTextureFilter = new UGCWatermarkAlphaTextureFilter();
            this.mAlphaBlendFilter = uGCWatermarkAlphaTextureFilter;
            uGCWatermarkAlphaTextureFilter.initialize(this.mTexturePool);
        }
        this.mAlphaBlendFilter.enableWatermark(true);
        UGCWatermarkAlphaTextureFilter uGCWatermarkAlphaTextureFilter2 = this.mAlphaBlendFilter;
        com.tencent.liteav.base.util.q qVar = this.mCanvasSize;
        uGCWatermarkAlphaTextureFilter2.onOutputSizeChanged(qVar.f31029a, qVar.f31030b);
        if (this.mCropRect != null) {
            if (this.mCropFilter == null) {
                com.tencent.liteav.videobase.a.b bVar = new com.tencent.liteav.videobase.a.b();
                this.mCropFilter = bVar;
                bVar.initialize(this.mTexturePool);
            }
            com.tencent.liteav.videobase.a.b bVar2 = this.mCropFilter;
            TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect = this.mCropRect;
            bVar2.onOutputSizeChanged(tXAbsoluteRect.width, tXAbsoluteRect.height);
            return;
        }
        com.tencent.liteav.videobase.a.b bVar3 = this.mCropFilter;
        if (bVar3 != null) {
            bVar3.uninitialize();
            this.mCropFilter = null;
        }
    }

    private void processRotateScale(List<UGCTransitionProcessor.TXCCombineFrame> list) {
        UGCTransitionProcessor.TransformParams transformParams;
        for (int i9 = 0; i9 < list.size(); i9++) {
            UGCTransitionProcessor.TXCCombineFrame tXCCombineFrame = list.get(i9);
            UGCRotateScaleFilter uGCRotateScaleFilter = this.mRotateScaleFilter;
            if (uGCRotateScaleFilter == null || (transformParams = tXCCombineFrame.transformParams) == null) {
                return;
            }
            uGCRotateScaleFilter.setRotateAndScale(transformParams.rotate, transformParams.scale);
            this.mRotateScaleFilter.setAlpha(tXCCombineFrame.transformParams.alpha);
            TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect = tXCCombineFrame.drawRect;
            GLES20.glViewport(0, 0, tXAbsoluteRect.width, tXAbsoluteRect.height);
            com.tencent.liteav.videobase.frame.e eVar = this.mTexturePool;
            TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect2 = tXCCombineFrame.drawRect;
            com.tencent.liteav.videobase.frame.d a10 = eVar.a(tXAbsoluteRect2.width, tXAbsoluteRect2.height);
            clearTexture(a10);
            this.mRotateScaleFilter.onDraw(tXCCombineFrame.drawInputFrame.getTextureId(), a10, this.mNormalCubeVerticesBuffer, this.mNormalTextureCoordsBuffer);
            PixelFrame pixelFrame = tXCCombineFrame.drawInputFrame;
            tXCCombineFrame.drawInputFrame = a10.a(pixelFrame.getGLContext());
            pixelFrame.release();
            a10.release();
        }
    }

    private void setAlphaBlendFilterParameter(UGCTransitionProcessor.TXCCombineFrame tXCCombineFrame) {
        UGCTransitionProcessor.TransformParams transformParams = tXCCombineFrame.transformParams;
        if (transformParams != null) {
            this.mAlphaBlendFilter.setAlpha(transformParams.alpha);
            this.mAlphaBlendFilter.setShowBackImageMoment(tXCCombineFrame.transformParams.isBackgroundTransparent);
        } else {
            this.mAlphaBlendFilter.setAlpha(1.0f);
            this.mAlphaBlendFilter.setShowBackImageMoment(false);
        }
        int textureId = tXCCombineFrame.drawInputFrame.getTextureId();
        TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect = tXCCombineFrame.drawRect;
        int i9 = tXAbsoluteRect.width;
        int i10 = tXAbsoluteRect.height;
        com.tencent.liteav.base.util.q qVar = this.mCanvasSize;
        int i11 = qVar.f31029a;
        this.mAlphaBlendFilter.setTextureWatermark(textureId, i9, i10, (tXAbsoluteRect.f34643x * 1.0f) / i11, (tXAbsoluteRect.f34644y * 1.0f) / qVar.f31030b, (i9 * 1.0f) / i11);
    }

    private void unInitFilter() {
        UGCRotateScaleFilter uGCRotateScaleFilter = this.mRotateScaleFilter;
        if (uGCRotateScaleFilter != null) {
            uGCRotateScaleFilter.uninitialize();
            this.mRotateScaleFilter = null;
        }
        UGCWatermarkAlphaTextureFilter uGCWatermarkAlphaTextureFilter = this.mAlphaBlendFilter;
        if (uGCWatermarkAlphaTextureFilter != null) {
            uGCWatermarkAlphaTextureFilter.uninitialize();
            this.mAlphaBlendFilter = null;
        }
        com.tencent.liteav.videobase.a.b bVar = this.mCropFilter;
        if (bVar != null) {
            bVar.uninitialize();
            this.mCropFilter = null;
        }
        com.tencent.liteav.videobase.frame.d dVar = this.mBackgroundTexture;
        if (dVar != null) {
            dVar.release();
            this.mBackgroundTexture = null;
        }
        com.tencent.liteav.videobase.frame.c cVar = this.mFrameBufferForClear;
        if (cVar != null) {
            cVar.d();
            this.mFrameBufferForClear = null;
        }
    }

    public com.tencent.liteav.videobase.frame.d combineFrame(List<UGCTransitionProcessor.TXCCombineFrame> list) {
        if (list != null && list.size() > 0) {
            initFilter();
            processRotateScale(list);
            return cropTexture(combineFrameWithAlphaBlendFilter(list));
        }
        Log.e(TAG, "frames is null or no frames!");
        return null;
    }

    public void release() {
        unInitFilter();
    }

    public void setCanvasSize(int i9, int i10) {
        com.tencent.liteav.base.util.q qVar = this.mCanvasSize;
        if (qVar != null && i9 == qVar.f31029a && i10 == qVar.f31030b) {
            return;
        }
        com.tencent.liteav.base.util.q qVar2 = new com.tencent.liteav.base.util.q(i9, i10);
        this.mCanvasSize = qVar2;
        this.mCropRectTextureCoordsBuffer = getCropRectTextureCoords(qVar2.f31029a, qVar2.f31030b, this.mCropRect);
    }

    public void setCropRect(TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect) {
        TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect2 = this.mCropRect;
        if (tXAbsoluteRect2 != null && tXAbsoluteRect != null && tXAbsoluteRect2.width == tXAbsoluteRect.width && tXAbsoluteRect2.height == tXAbsoluteRect.height && tXAbsoluteRect2.f34643x == tXAbsoluteRect.f34643x && tXAbsoluteRect2.f34644y == tXAbsoluteRect.f34644y) {
            return;
        }
        this.mCropRect = tXAbsoluteRect;
        com.tencent.liteav.base.util.q qVar = this.mCanvasSize;
        this.mCropRectTextureCoordsBuffer = getCropRectTextureCoords(qVar.f31029a, qVar.f31030b, tXAbsoluteRect);
    }
}
