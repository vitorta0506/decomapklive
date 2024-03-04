package com.tencent.ugc.videoprocessor.watermark;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.ugc.videoprocessor.watermark.data.TailWaterMark;
/* loaded from: classes4.dex */
public class TailWaterMarkChain {
    private static final String TAG = "TailWaterMarkChain";
    private TailWaterMark mTailWaterMark;

    public void clear() {
        TailWaterMark tailWaterMark = this.mTailWaterMark;
        if (tailWaterMark != null) {
            tailWaterMark.release();
        }
        this.mTailWaterMark = null;
    }

    public float getAlpha() {
        TailWaterMark tailWaterMark = this.mTailWaterMark;
        if (tailWaterMark == null) {
            return 0.0f;
        }
        return tailWaterMark.mMarkAlphaLevel;
    }

    public float getBlurLevel() {
        TailWaterMark tailWaterMark = this.mTailWaterMark;
        if (tailWaterMark == null) {
            return 0.0f;
        }
        return tailWaterMark.mBlurLevel;
    }

    public TailWaterMark getTailWaterMark(PixelFrame pixelFrame) {
        LiteavLog.i(TAG, "getTailWaterMark:" + pixelFrame.getTimestamp());
        if (this.mTailWaterMark != null && pixelFrame.getTimestamp() >= this.mTailWaterMark.getStartTime()) {
            float min = Math.min(1.0f, Math.max(0.0f, ((float) (pixelFrame.getTimestamp() - this.mTailWaterMark.getStartTime())) / (this.mTailWaterMark.getDuration() * 1.0f)));
            TailWaterMark tailWaterMark = this.mTailWaterMark;
            tailWaterMark.mBlurLevel = min;
            tailWaterMark.mMarkAlphaLevel = min;
            return tailWaterMark;
        }
        return null;
    }

    public void setTailWaterMark(TailWaterMark tailWaterMark) {
        LiteavLog.i(TAG, "setTailWaterMark:".concat(String.valueOf(tailWaterMark)));
        this.mTailWaterMark = tailWaterMark;
    }
}
