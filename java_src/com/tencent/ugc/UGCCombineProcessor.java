package com.tencent.ugc;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.UGCTransitionProcessor;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes4.dex */
public class UGCCombineProcessor {
    private final String TAG = "UGCCombineProcessor";
    private final com.tencent.liteav.videobase.frame.e mGLTexturePool;
    private final int mOutputPixelHeight;
    private final int mOutputPixelWidth;
    private final List<TXVideoEditConstants.TXAbsoluteRect> mScaleRectList;
    private final List<com.tencent.liteav.videobase.frame.j> mScaleRendererList;
    private final UGCCombineFrameFilter mUGCCombineProcessor;

    public UGCCombineProcessor(int i9, int i10, com.tencent.liteav.videobase.frame.e eVar) {
        LiteavLog.i("UGCCombineProcessor", "UGCCombineProcessor pixelWidth = " + i9 + " pixelHeight = " + i10);
        this.mOutputPixelWidth = i9;
        this.mOutputPixelHeight = i10;
        this.mGLTexturePool = eVar;
        this.mScaleRendererList = new LinkedList();
        this.mScaleRectList = new LinkedList();
        this.mUGCCombineProcessor = new UGCCombineFrameFilter(eVar);
    }

    private void Retain(List<PixelFrame> list) {
        for (PixelFrame pixelFrame : list) {
            if (pixelFrame != null) {
                pixelFrame.retain();
            }
        }
    }

    private PixelFrame preScale(PixelFrame pixelFrame, TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect, int i9) {
        if (this.mScaleRendererList.size() < i9 + 1) {
            this.mScaleRendererList.add(new com.tencent.liteav.videobase.frame.j(tXAbsoluteRect.width, tXAbsoluteRect.height));
            this.mScaleRectList.add(tXAbsoluteRect);
        }
        com.tencent.liteav.videobase.frame.j jVar = this.mScaleRendererList.get(i9);
        TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect2 = this.mScaleRectList.get(i9);
        if (tXAbsoluteRect2.width != tXAbsoluteRect.width || tXAbsoluteRect2.height != tXAbsoluteRect.height) {
            jVar.a();
            jVar = new com.tencent.liteav.videobase.frame.j(tXAbsoluteRect.width, tXAbsoluteRect.height);
            this.mScaleRendererList.remove(i9);
            this.mScaleRendererList.add(i9, jVar);
        }
        com.tencent.liteav.videobase.frame.d a10 = this.mGLTexturePool.a(tXAbsoluteRect.width, tXAbsoluteRect.height);
        jVar.a(pixelFrame, GLConstants.GLScaleType.CENTER_CROP, a10);
        PixelFrame a11 = a10.a(pixelFrame.getGLContext());
        a11.setTimestamp(pixelFrame.getTimestamp());
        a10.release();
        pixelFrame.release();
        return a11;
    }

    private void releaseFrameList(List<UGCTransitionProcessor.TXCCombineFrame> list) {
        for (UGCTransitionProcessor.TXCCombineFrame tXCCombineFrame : list) {
            PixelFrame pixelFrame = tXCCombineFrame.drawInputFrame;
            if (pixelFrame != null) {
                pixelFrame.release();
            }
        }
    }

    public PixelFrame processFrame(List<PixelFrame> list, List<TXVideoEditConstants.TXAbsoluteRect> list2) {
        if (list != null && list.size() != 0) {
            Retain(list);
            LinkedList linkedList = new LinkedList();
            long j10 = 0;
            int i9 = 0;
            while (i9 < list.size()) {
                PixelFrame pixelFrame = list.get(i9);
                if (pixelFrame.getTimestamp() > j10) {
                    j10 = pixelFrame.getTimestamp();
                }
                UGCTransitionProcessor.TXCCombineFrame tXCCombineFrame = new UGCTransitionProcessor.TXCCombineFrame();
                TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect = i9 < list2.size() ? list2.get(i9) : new TXVideoEditConstants.TXAbsoluteRect();
                tXCCombineFrame.drawRect = tXAbsoluteRect;
                tXCCombineFrame.drawInputFrame = preScale(pixelFrame, tXAbsoluteRect, i9);
                linkedList.add(tXCCombineFrame);
                i9++;
            }
            this.mUGCCombineProcessor.setCanvasSize(this.mOutputPixelWidth, this.mOutputPixelHeight);
            this.mUGCCombineProcessor.setCropRect(null);
            com.tencent.liteav.videobase.frame.d combineFrame = this.mUGCCombineProcessor.combineFrame(linkedList);
            releaseFrameList(linkedList);
            if (combineFrame == null) {
                return null;
            }
            PixelFrame a10 = combineFrame.a(list.get(0).getGLContext());
            combineFrame.release();
            a10.setTimestamp(j10);
            return a10;
        }
        LiteavLog.e("UGCCombineProcessor", "frameList is empty");
        return null;
    }

    public void release() {
        this.mUGCCombineProcessor.release();
        for (com.tencent.liteav.videobase.frame.j jVar : this.mScaleRendererList) {
            if (jVar != null) {
                jVar.a();
            }
        }
        this.mScaleRendererList.clear();
        this.mScaleRectList.clear();
    }
}
