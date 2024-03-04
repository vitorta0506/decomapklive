package com.tencent.ugc.videoprocessor;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.g;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.beauty.b.o;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.UGCLicenseChecker;
import com.tencent.ugc.UGCWatermarkFilter;
import com.tencent.ugc.datereport.UGCDataReport;
import com.tencent.ugc.datereport.UGCDataReportDef;
import com.tencent.ugc.videoprocessor.util.BitmapUtils;
import com.tencent.ugc.videoprocessor.watermark.AnimatedPasterFilterChain;
import com.tencent.ugc.videoprocessor.watermark.PasterFilterChain;
import com.tencent.ugc.videoprocessor.watermark.SubtitleFilterChain;
import com.tencent.ugc.videoprocessor.watermark.TailWaterMarkChain;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPaster;
import com.tencent.ugc.videoprocessor.watermark.data.TailWaterMark;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class WatermarkProcessor {
    private static final String TAG = "WatermarkProcessor";
    private com.tencent.liteav.videobase.frame.e mGLTexturePool;
    private ArrayList<o> mLastWaterMarkList = new ArrayList<>();
    private int mRenderMode = 1;
    private com.tencent.liteav.videobase.utils.d mDelayQueue = new com.tencent.liteav.videobase.utils.d();
    private boolean mHasSetWaterMark = false;
    private boolean mIsReverse = false;
    private long mVideoDuration = 0;
    private q mRenderTargetSize = null;
    private UGCWatermarkFilter mWatermarkFilter = new UGCWatermarkFilter();
    private SubtitleFilterChain mSubtitleFilterChain = new SubtitleFilterChain();
    private PasterFilterChain mPasterFilterChain = new PasterFilterChain();
    private AnimatedPasterFilterChain mAnimatedPasterFilterChain = new AnimatedPasterFilterChain();
    private TailWaterMarkChain mTailWaterMarkChain = new TailWaterMarkChain();

    private void collectWaterMarkFromAnimatedPaster(ArrayList<o> arrayList, PixelFrame pixelFrame) {
        Bitmap decodeFile;
        List<AnimatedPaster> animatedPasterList = this.mAnimatedPasterFilterChain.getAnimatedPasterList();
        if (animatedPasterList == null || animatedPasterList.size() == 0) {
            this.mAnimatedPasterFilterChain.normalized(pixelFrame.getWidth(), pixelFrame.getHeight(), this.mRenderMode);
            animatedPasterList = this.mAnimatedPasterFilterChain.getAnimatedPasterList();
        }
        for (AnimatedPaster animatedPaster : animatedPasterList) {
            long timeInEffect = getTimeInEffect(pixelFrame);
            if (timeInEffect >= animatedPaster.mStartTime && timeInEffect <= animatedPaster.mEndTime && (decodeFile = BitmapFactory.decodeFile(animatedPaster.mPasterPath)) != null) {
                float f10 = animatedPaster.mRotation;
                if (f10 == 0.0f) {
                    arrayList.add(newWaterMarkTag(decodeFile, animatedPaster.mFrame));
                } else {
                    arrayList.add(newWaterMarkTag(BitmapUtils.rotateImage(f10, decodeFile), animatedPaster.mFrame));
                }
            }
        }
    }

    private void collectWaterMarkFromStaticPaster(ArrayList<o> arrayList, PixelFrame pixelFrame) {
        List<TXVideoEditConstants.TXPaster> pasterList = this.mPasterFilterChain.getPasterList();
        if (pasterList == null || pasterList.size() == 0) {
            this.mPasterFilterChain.normalized(pixelFrame.getWidth(), pixelFrame.getHeight(), this.mRenderMode);
            pasterList = this.mPasterFilterChain.getPasterList();
        }
        for (TXVideoEditConstants.TXPaster tXPaster : pasterList) {
            long timeInEffect = getTimeInEffect(pixelFrame);
            if (timeInEffect >= tXPaster.startTime && timeInEffect <= tXPaster.endTime) {
                arrayList.add(newWaterMarkTag(tXPaster.pasterImage, tXPaster.frame));
            }
        }
    }

    private void collectWaterMarkFromSubtitle(ArrayList<o> arrayList, PixelFrame pixelFrame) {
        List<TXVideoEditConstants.TXSubtitle> subtitleList = this.mSubtitleFilterChain.getSubtitleList();
        if (subtitleList == null || subtitleList.size() == 0) {
            this.mSubtitleFilterChain.normalized(pixelFrame.getWidth(), pixelFrame.getHeight(), this.mRenderMode);
            subtitleList = this.mSubtitleFilterChain.getSubtitleList();
        }
        for (TXVideoEditConstants.TXSubtitle tXSubtitle : subtitleList) {
            long timeInEffect = getTimeInEffect(pixelFrame);
            if (timeInEffect >= tXSubtitle.startTime && timeInEffect <= tXSubtitle.endTime) {
                arrayList.add(newWaterMarkTag(tXSubtitle.titleImage, tXSubtitle.frame));
            }
        }
    }

    private void collectWaterMarkFromTail(ArrayList<o> arrayList, PixelFrame pixelFrame) {
        TailWaterMark tailWaterMark = this.mTailWaterMarkChain.getTailWaterMark(pixelFrame);
        if (tailWaterMark == null) {
            return;
        }
        arrayList.add(newWaterMarkTag(tailWaterMark.getWaterMark(), tailWaterMark.getmWaterMarkRect()));
        this.mWatermarkFilter.setAlpha(this.mTailWaterMarkChain.getAlpha());
    }

    private boolean compareWaterMarkList(@Nullable List<o> list, @Nullable List<o> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            o oVar = list.get(i9);
            o oVar2 = list2.get(i9);
            if (!oVar.f31206a.equals(oVar2.f31206a) || Math.abs(oVar.f31207b - oVar2.f31207b) > 1.0E-5d || Math.abs(oVar.f31208c - oVar2.f31208c) > 1.0E-5d || Math.abs(oVar.f31209d - oVar2.f31209d) > 1.0E-5d) {
                return false;
            }
        }
        return true;
    }

    private long getTimeInEffect(PixelFrame pixelFrame) {
        long timestamp = pixelFrame.getTimestamp();
        if (this.mIsReverse) {
            long j10 = this.mVideoDuration;
            return g.a(j10 - timestamp, 0L, j10);
        }
        return timestamp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setWaterMark$0(WatermarkProcessor watermarkProcessor, Bitmap bitmap, TXVideoEditConstants.TXRect tXRect) {
        watermarkProcessor.mHasSetWaterMark = true;
        watermarkProcessor.mWatermarkFilter.enableWatermark(true);
        watermarkProcessor.mWatermarkFilter.setWatermark(bitmap, tXRect.f34645x, tXRect.f34646y, tXRect.width);
    }

    private o newWaterMarkTag(Bitmap bitmap, TXVideoEditConstants.TXRect tXRect) {
        o oVar = new o();
        oVar.f31206a = bitmap;
        oVar.f31207b = tXRect.f34645x;
        oVar.f31208c = tXRect.f34646y;
        oVar.f31209d = tXRect.width;
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAnimatedPasterListInternal(List<TXVideoEditConstants.TXAnimatedPaster> list, q qVar) {
        LiteavLog.i(TAG, "setAnimatedPasterListInternal animatedPasterList: ".concat(String.valueOf(list)));
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setAnimatedPasterList is not supported in UGC_Smart license");
            return;
        }
        if (qVar == null) {
            q qVar2 = this.mRenderTargetSize;
            qVar = qVar2 == null ? null : new q(qVar2);
        }
        if (qVar == null) {
            return;
        }
        if (list != null) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_ANIMATEDPASTER);
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < list.size(); i9++) {
                TXVideoEditConstants.TXAnimatedPaster tXAnimatedPaster = list.get(i9);
                TXVideoEditConstants.TXAnimatedPaster tXAnimatedPaster2 = new TXVideoEditConstants.TXAnimatedPaster();
                TXVideoEditConstants.TXRect tXRect = new TXVideoEditConstants.TXRect();
                TXVideoEditConstants.TXRect tXRect2 = tXAnimatedPaster.frame;
                tXRect.width = tXRect2.width;
                tXRect.f34645x = tXRect2.f34645x;
                tXRect.f34646y = tXRect2.f34646y;
                tXAnimatedPaster2.frame = tXRect;
                tXAnimatedPaster2.animatedPasterPathFolder = tXAnimatedPaster.animatedPasterPathFolder;
                tXAnimatedPaster2.startTime = tXAnimatedPaster.startTime;
                tXAnimatedPaster2.endTime = tXAnimatedPaster.endTime;
                tXAnimatedPaster2.rotation = tXAnimatedPaster.rotation;
                arrayList.add(tXAnimatedPaster2);
            }
            this.mAnimatedPasterFilterChain.setAnimatedPasterList(arrayList, qVar);
            return;
        }
        this.mAnimatedPasterFilterChain.setAnimatedPasterList(null, qVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPasterListInternal(List<TXVideoEditConstants.TXPaster> list, q qVar) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setPasterList is not supported in UGC_Smart license");
            return;
        }
        if (qVar == null) {
            q qVar2 = this.mRenderTargetSize;
            qVar = qVar2 == null ? null : new q(qVar2);
        }
        if (qVar == null) {
            return;
        }
        LiteavLog.i(TAG, "==== setPasterList ==== pasterList: ".concat(String.valueOf(list)));
        if (list != null) {
            UGCDataReport.reportDAU(1025);
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < list.size(); i9++) {
                TXVideoEditConstants.TXPaster tXPaster = list.get(i9);
                TXVideoEditConstants.TXPaster tXPaster2 = new TXVideoEditConstants.TXPaster();
                TXVideoEditConstants.TXRect tXRect = new TXVideoEditConstants.TXRect();
                TXVideoEditConstants.TXRect tXRect2 = tXPaster.frame;
                tXRect.width = tXRect2.width;
                tXRect.f34645x = tXRect2.f34645x;
                tXRect.f34646y = tXRect2.f34646y;
                tXPaster2.frame = tXRect;
                tXPaster2.pasterImage = tXPaster.pasterImage;
                tXPaster2.startTime = tXPaster.startTime;
                tXPaster2.endTime = tXPaster.endTime;
                arrayList.add(tXPaster2);
            }
            this.mPasterFilterChain.setPasterList(arrayList, qVar);
            return;
        }
        this.mPasterFilterChain.setPasterList(null, qVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSubtitleListInternal(List<TXVideoEditConstants.TXSubtitle> list, q qVar) {
        if (qVar == null) {
            q qVar2 = this.mRenderTargetSize;
            qVar = qVar2 == null ? null : new q(qVar2);
        }
        if (qVar == null) {
            return;
        }
        LiteavLog.i(TAG, "setSubtitleListInternal subtitleList: ".concat(String.valueOf(list)));
        if (list != null) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_SUBTITLE);
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < list.size(); i9++) {
                TXVideoEditConstants.TXSubtitle tXSubtitle = list.get(i9);
                TXVideoEditConstants.TXSubtitle tXSubtitle2 = new TXVideoEditConstants.TXSubtitle();
                TXVideoEditConstants.TXRect tXRect = new TXVideoEditConstants.TXRect();
                TXVideoEditConstants.TXRect tXRect2 = tXSubtitle.frame;
                tXRect.width = tXRect2.width;
                tXRect.f34645x = tXRect2.f34645x;
                tXRect.f34646y = tXRect2.f34646y;
                tXSubtitle2.frame = tXRect;
                tXSubtitle2.titleImage = tXSubtitle.titleImage;
                tXSubtitle2.startTime = tXSubtitle.startTime;
                tXSubtitle2.endTime = tXSubtitle.endTime;
                arrayList.add(tXSubtitle2);
            }
            this.mSubtitleFilterChain.setSubtitleList(arrayList, qVar);
            return;
        }
        this.mSubtitleFilterChain.setSubtitleList(null, qVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTailWaterMarkInternal(Bitmap bitmap, TXVideoEditConstants.TXRect tXRect, long j10, int i9) {
        LiteavLog.i(TAG, "setTailWaterMarkInternal: " + bitmap + ", rect: " + tXRect + ", startTime: " + j10 + ", duration: " + i9);
        UGCDataReport.reportDAU(1029);
        TXVideoEditConstants.TXRect tXRect2 = new TXVideoEditConstants.TXRect();
        tXRect2.width = tXRect.width;
        tXRect2.f34645x = tXRect.f34645x;
        tXRect2.f34646y = tXRect.f34646y;
        this.mTailWaterMarkChain.setTailWaterMark(new TailWaterMark(bitmap, tXRect2, j10, i9 * 1000));
    }

    private boolean updateWaterMarkList(PixelFrame pixelFrame) {
        ArrayList<o> arrayList = new ArrayList<>();
        collectWaterMarkFromSubtitle(arrayList, pixelFrame);
        collectWaterMarkFromStaticPaster(arrayList, pixelFrame);
        collectWaterMarkFromAnimatedPaster(arrayList, pixelFrame);
        collectWaterMarkFromTail(arrayList, pixelFrame);
        if (!compareWaterMarkList(this.mLastWaterMarkList, arrayList)) {
            this.mWatermarkFilter.setWaterMarkList(arrayList);
            this.mLastWaterMarkList.clear();
            this.mLastWaterMarkList = arrayList;
            return true;
        }
        ArrayList<o> arrayList2 = this.mLastWaterMarkList;
        return (arrayList2 != null && arrayList2.size() > 0) || this.mHasSetWaterMark;
    }

    public float getBlurLevel() {
        return this.mTailWaterMarkChain.getBlurLevel();
    }

    public void initialize(com.tencent.liteav.videobase.frame.e eVar, int i9, int i10) {
        this.mGLTexturePool = eVar;
        this.mWatermarkFilter.initialize(eVar);
        this.mWatermarkFilter.enableWatermark(true);
        this.mWatermarkFilter.onOutputSizeChanged(i9, i10);
        if (i9 <= 1 || i10 <= 1) {
            return;
        }
        this.mRenderTargetSize = new q(i9, i10);
    }

    public PixelFrame process(PixelFrame pixelFrame, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        this.mDelayQueue.a();
        if (updateWaterMarkList(pixelFrame)) {
            com.tencent.liteav.videobase.frame.d a10 = this.mGLTexturePool.a(pixelFrame.getWidth(), pixelFrame.getHeight());
            this.mWatermarkFilter.onDraw(pixelFrame.getTextureId(), a10, floatBuffer, floatBuffer2);
            PixelFrame a11 = a10.a(OpenGlUtils.getCurrentContext());
            a11.setTimestamp(pixelFrame.getTimestamp());
            a10.release();
            return a11;
        }
        return null;
    }

    public void setAnimatedPasterList(List<TXVideoEditConstants.TXAnimatedPaster> list) {
        q qVar = this.mRenderTargetSize;
        this.mDelayQueue.a(d.a(this, list, qVar == null ? null : new q(qVar)));
    }

    public void setPasterList(List<TXVideoEditConstants.TXPaster> list) {
        q qVar = this.mRenderTargetSize;
        this.mDelayQueue.a(e.a(this, list, qVar == null ? null : new q(qVar)));
    }

    public void setRenderMode(int i9) {
        this.mRenderMode = i9;
    }

    public void setRenderTargetSize(int i9, int i10) {
        LiteavLog.i(TAG, "setRenderResolution: width:" + i9 + "  height:" + i10);
        if (i9 <= 0 || i10 <= 0) {
            return;
        }
        this.mRenderTargetSize = new q(i9, i10);
    }

    public void setReverse(boolean z10, long j10) {
        this.mIsReverse = z10;
        this.mVideoDuration = j10;
    }

    public void setSubtitleList(List<TXVideoEditConstants.TXSubtitle> list) {
        q qVar = this.mRenderTargetSize;
        this.mDelayQueue.a(c.a(this, list, qVar == null ? null : new q(qVar)));
    }

    public void setTailWaterMark(Bitmap bitmap, TXVideoEditConstants.TXRect tXRect, long j10, int i9) {
        this.mDelayQueue.a(b.a(this, bitmap, tXRect, j10, i9));
    }

    public void setWaterMark(Bitmap bitmap, TXVideoEditConstants.TXRect tXRect) {
        this.mDelayQueue.a(a.a(this, bitmap, tXRect));
    }

    public void uninitialize() {
        this.mWatermarkFilter.uninitialize();
        TailWaterMarkChain tailWaterMarkChain = this.mTailWaterMarkChain;
        if (tailWaterMarkChain != null) {
            tailWaterMarkChain.clear();
            this.mTailWaterMarkChain = null;
        }
        AnimatedPasterFilterChain animatedPasterFilterChain = this.mAnimatedPasterFilterChain;
        if (animatedPasterFilterChain != null) {
            animatedPasterFilterChain.clear();
            this.mAnimatedPasterFilterChain = null;
        }
        SubtitleFilterChain subtitleFilterChain = this.mSubtitleFilterChain;
        if (subtitleFilterChain != null) {
            subtitleFilterChain.clear();
            this.mSubtitleFilterChain = null;
        }
        PasterFilterChain pasterFilterChain = this.mPasterFilterChain;
        if (pasterFilterChain != null) {
            pasterFilterChain.clear();
            this.mPasterFilterChain = null;
        }
    }
}
