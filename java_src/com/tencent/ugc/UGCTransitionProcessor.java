package com.tencent.ugc;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.ugc.TXVideoEditConstants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class UGCTransitionProcessor {
    private final String TAG = "UGCTransitionProcessor";
    private final UGCCombineFrameFilter mCombineFrameFilter;
    private final int mOutputPixelHeight;
    private final int mOutputPixelWidth;

    /* loaded from: classes4.dex */
    public static class TXCCombineFrame {
        public PixelFrame drawInputFrame;
        public TXVideoEditConstants.TXAbsoluteRect drawRect;
        public TransformParams transformParams;
    }

    /* loaded from: classes4.dex */
    public static class TransformParams {
        public float scale = 1.0f;
        public int rotate = 0;
        public float alpha = 1.0f;
        public boolean isBackgroundTransparent = false;
    }

    public UGCTransitionProcessor(int i9, int i10, com.tencent.liteav.videobase.frame.e eVar) {
        LiteavLog.i("UGCTransitionProcessor", "UGCTransitionProcessor pixelWidth = " + i9 + " pixelHeight = " + i10);
        this.mOutputPixelWidth = i9;
        this.mOutputPixelHeight = i10;
        this.mCombineFrameFilter = new UGCCombineFrameFilter(eVar);
    }

    private void Retain(List<PixelFrame> list) {
        for (PixelFrame pixelFrame : list) {
            if (pixelFrame != null) {
                pixelFrame.retain();
            }
        }
    }

    private com.tencent.liteav.videobase.frame.d combineFramesWithTransitionType(List<TXCCombineFrame> list, long j10, int i9) {
        switch (i9) {
            case 1:
                return processTwoPicLeftRightCombine(list, j10);
            case 2:
                return processTwoPicUpDownCombine(list, j10);
            case 3:
                return processTwoPicRotation(list, j10);
            case 4:
            case 5:
                return processTwoPicZoom(list, j10, i9);
            case 6:
                return processTwoPicFaceInOut(list, j10);
            default:
                return null;
        }
    }

    private static float getAlpha(int i9, long j10) {
        long stayDurationMs = UGCTransitionRules.getStayDurationMs(i9);
        long motionDurationMs = UGCTransitionRules.getMotionDurationMs(i9);
        long j11 = stayDurationMs + motionDurationMs;
        long j12 = j10 - ((j10 / j11) * j11);
        if (i9 != 4 && i9 != 5) {
            if (i9 == 6 && j12 > stayDurationMs && j12 <= j11) {
                return 1.0f - (((float) (j12 - stayDurationMs)) / ((float) motionDurationMs));
            }
            return 1.0f;
        }
        float f10 = (float) stayDurationMs;
        float f11 = (float) motionDurationMs;
        float f12 = f10 + (0.8f * f11);
        float f13 = (float) j12;
        if (f13 <= f12 || j12 > j11) {
            return 1.0f;
        }
        return 1.0f - ((f13 - f12) / (f11 * 0.2f));
    }

    private static float getCropOffset(int i9, long j10) {
        long stayDurationMs = UGCTransitionRules.getStayDurationMs(i9);
        long motionDurationMs = UGCTransitionRules.getMotionDurationMs(i9);
        long j11 = stayDurationMs + motionDurationMs;
        long j12 = j10 - ((j10 / j11) * j11);
        if (j12 < 0 || j12 > stayDurationMs) {
            return ((float) (j12 - stayDurationMs)) / ((float) motionDurationMs);
        }
        return 0.0f;
    }

    private TXVideoEditConstants.TXAbsoluteRect getFirstDrawRect(int i9, int i10) {
        TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect = new TXVideoEditConstants.TXAbsoluteRect();
        int i11 = this.mOutputPixelWidth;
        tXAbsoluteRect.width = i11;
        int i12 = this.mOutputPixelHeight;
        tXAbsoluteRect.height = i12;
        float f10 = i9;
        float f11 = i10;
        if (f10 / f11 >= i11 / i12) {
            float f12 = (i11 * i10) / f10;
            tXAbsoluteRect.f34643x = 0;
            tXAbsoluteRect.f34644y = ((int) (i12 - f12)) / 2;
            tXAbsoluteRect.height = (int) f12;
        } else {
            float f13 = (i12 * i9) / f11;
            tXAbsoluteRect.f34643x = ((int) (i11 - f13)) / 2;
            tXAbsoluteRect.f34644y = 0;
            tXAbsoluteRect.width = (int) f13;
        }
        return tXAbsoluteRect;
    }

    private static int getRotation(int i9, long j10) {
        if (i9 != 3) {
            return 0;
        }
        long stayDurationMs = UGCTransitionRules.getStayDurationMs(i9);
        long motionDurationMs = UGCTransitionRules.getMotionDurationMs(i9);
        long j11 = stayDurationMs + motionDurationMs;
        long j12 = j10 - ((j10 / j11) * j11);
        if (j12 <= stayDurationMs || j12 > j11) {
            return 0;
        }
        return (int) ((((float) (j12 - stayDurationMs)) / ((float) motionDurationMs)) * 360.0f);
    }

    private static float getScale(int i9, long j10) {
        long stayDurationMs = UGCTransitionRules.getStayDurationMs(i9);
        long motionDurationMs = UGCTransitionRules.getMotionDurationMs(i9);
        long j11 = stayDurationMs + motionDurationMs;
        long j12 = j10 - ((j10 / j11) * j11);
        if (i9 != 3) {
            if (i9 != 4) {
                if (i9 == 5) {
                    if (j12 >= 0 && j12 <= stayDurationMs) {
                        return 1.1f;
                    }
                    if (j12 > stayDurationMs && j12 <= j11) {
                        return 1.1f - ((((float) (j12 - stayDurationMs)) * 0.1f) / ((float) motionDurationMs));
                    }
                }
            } else if (j12 > stayDurationMs && j12 < j11) {
                return ((((float) (j12 - stayDurationMs)) * 0.1f) / ((float) motionDurationMs)) + 1.0f;
            }
        } else if (j12 > stayDurationMs && j12 <= j11) {
            return 1.0f - (((float) (j12 - stayDurationMs)) / ((float) motionDurationMs));
        }
        return 1.0f;
    }

    private TXVideoEditConstants.TXAbsoluteRect getSecondDrawRect(int i9, int i10, int i11) {
        TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect = new TXVideoEditConstants.TXAbsoluteRect();
        int i12 = this.mOutputPixelWidth;
        tXAbsoluteRect.width = i12;
        int i13 = this.mOutputPixelHeight;
        tXAbsoluteRect.height = i13;
        float f10 = i9;
        float f11 = i10;
        if (f10 / f11 >= i12 / i13) {
            float f12 = (i10 * i12) / f10;
            if (i11 == 1) {
                tXAbsoluteRect.f34643x = i12;
            } else {
                tXAbsoluteRect.f34643x = 0;
            }
            if (i11 == 2) {
                tXAbsoluteRect.f34644y = i13 + (((int) (i13 - f12)) / 2);
            } else {
                tXAbsoluteRect.f34644y = ((int) (i13 - f12)) / 2;
            }
            tXAbsoluteRect.height = (int) f12;
        } else {
            float f13 = (i9 * i13) / f11;
            if (i11 == 1) {
                tXAbsoluteRect.f34643x = i12 + (((int) (i12 - f13)) / 2);
            } else {
                tXAbsoluteRect.f34643x = ((int) (i12 - f13)) / 2;
            }
            if (i11 == 2) {
                tXAbsoluteRect.f34644y = i13;
            } else {
                tXAbsoluteRect.f34644y = 0;
            }
            tXAbsoluteRect.width = (int) f13;
        }
        return tXAbsoluteRect;
    }

    private com.tencent.liteav.videobase.frame.d processTwoPicFaceInOut(List<TXCCombineFrame> list, long j10) {
        float alpha = getAlpha(6, j10);
        TransformParams transformParams = new TransformParams();
        list.get(0).transformParams = transformParams;
        transformParams.alpha = alpha;
        if (list.size() > 1) {
            TransformParams transformParams2 = new TransformParams();
            list.get(1).transformParams = transformParams2;
            transformParams2.alpha = 1.0f - alpha;
        }
        this.mCombineFrameFilter.setCanvasSize(this.mOutputPixelWidth, this.mOutputPixelHeight);
        this.mCombineFrameFilter.setCropRect(null);
        return this.mCombineFrameFilter.combineFrame(list);
    }

    private com.tencent.liteav.videobase.frame.d processTwoPicLeftRightCombine(List<TXCCombineFrame> list, long j10) {
        TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect = new TXVideoEditConstants.TXAbsoluteRect();
        tXAbsoluteRect.f34643x = (int) (getCropOffset(1, j10) * this.mOutputPixelWidth);
        int i9 = this.mOutputPixelWidth;
        tXAbsoluteRect.width = i9;
        int i10 = this.mOutputPixelHeight;
        tXAbsoluteRect.height = i10;
        this.mCombineFrameFilter.setCanvasSize(i9 * 2, i10);
        this.mCombineFrameFilter.setCropRect(tXAbsoluteRect);
        return this.mCombineFrameFilter.combineFrame(list);
    }

    private com.tencent.liteav.videobase.frame.d processTwoPicRotation(List<TXCCombineFrame> list, long j10) {
        TXCCombineFrame tXCCombineFrame;
        int rotation = getRotation(3, j10);
        float scale = getScale(3, j10);
        TXCCombineFrame tXCCombineFrame2 = list.get(0);
        TransformParams transformParams = new TransformParams();
        tXCCombineFrame2.transformParams = transformParams;
        transformParams.rotate = rotation;
        transformParams.scale = scale;
        transformParams.isBackgroundTransparent = true;
        if (list.size() > 1) {
            tXCCombineFrame = list.get(1);
            tXCCombineFrame.transformParams = new TransformParams();
        } else {
            tXCCombineFrame = null;
        }
        if (rotation != 0) {
            tXCCombineFrame2.transformParams.isBackgroundTransparent = true;
            if (tXCCombineFrame != null) {
                tXCCombineFrame.transformParams.isBackgroundTransparent = true;
            }
        } else {
            tXCCombineFrame2.transformParams.alpha = 1.0f;
            if (tXCCombineFrame != null) {
                tXCCombineFrame.transformParams.alpha = 0.0f;
            }
        }
        this.mCombineFrameFilter.setCanvasSize(this.mOutputPixelWidth, this.mOutputPixelHeight);
        this.mCombineFrameFilter.setCropRect(null);
        return this.mCombineFrameFilter.combineFrame(list);
    }

    private com.tencent.liteav.videobase.frame.d processTwoPicUpDownCombine(List<TXCCombineFrame> list, long j10) {
        TXVideoEditConstants.TXAbsoluteRect tXAbsoluteRect = new TXVideoEditConstants.TXAbsoluteRect();
        tXAbsoluteRect.f34644y = (int) (getCropOffset(2, j10) * this.mOutputPixelHeight);
        int i9 = this.mOutputPixelWidth;
        tXAbsoluteRect.width = i9;
        int i10 = this.mOutputPixelHeight;
        tXAbsoluteRect.height = i10;
        this.mCombineFrameFilter.setCanvasSize(i9, i10 * 2);
        this.mCombineFrameFilter.setCropRect(tXAbsoluteRect);
        return this.mCombineFrameFilter.combineFrame(list);
    }

    private com.tencent.liteav.videobase.frame.d processTwoPicZoom(List<TXCCombineFrame> list, long j10, int i9) {
        float scale = getScale(i9, j10);
        float alpha = getAlpha(i9, j10);
        TransformParams transformParams = new TransformParams();
        list.get(0).transformParams = transformParams;
        transformParams.scale = scale;
        transformParams.alpha = alpha;
        if (list.size() > 1) {
            TransformParams transformParams2 = new TransformParams();
            list.get(1).transformParams = transformParams2;
            if (i9 == 5) {
                transformParams2.scale = 1.1f;
            }
            transformParams2.alpha = 1.0f - alpha;
        }
        this.mCombineFrameFilter.setCanvasSize(this.mOutputPixelWidth, this.mOutputPixelHeight);
        this.mCombineFrameFilter.setCropRect(null);
        return this.mCombineFrameFilter.combineFrame(list);
    }

    private void releaseFrameList(List<TXCCombineFrame> list) {
        for (TXCCombineFrame tXCCombineFrame : list) {
            PixelFrame pixelFrame = tXCCombineFrame.drawInputFrame;
            if (pixelFrame != null) {
                pixelFrame.release();
            }
        }
    }

    public PixelFrame processFrame(List<PixelFrame> list, int i9) {
        if (list != null && list.size() != 0) {
            Retain(list);
            ArrayList arrayList = new ArrayList();
            TXCCombineFrame tXCCombineFrame = new TXCCombineFrame();
            PixelFrame pixelFrame = list.get(0);
            tXCCombineFrame.drawInputFrame = pixelFrame;
            tXCCombineFrame.drawRect = getFirstDrawRect(pixelFrame.getWidth(), tXCCombineFrame.drawInputFrame.getHeight());
            arrayList.add(tXCCombineFrame);
            if (list.size() > 1) {
                TXCCombineFrame tXCCombineFrame2 = new TXCCombineFrame();
                PixelFrame pixelFrame2 = list.get(1);
                tXCCombineFrame2.drawInputFrame = pixelFrame2;
                tXCCombineFrame2.drawRect = getSecondDrawRect(pixelFrame2.getWidth(), tXCCombineFrame2.drawInputFrame.getHeight(), i9);
                arrayList.add(tXCCombineFrame2);
            }
            long timestamp = list.get(0).getTimestamp();
            com.tencent.liteav.videobase.frame.d combineFramesWithTransitionType = combineFramesWithTransitionType(arrayList, timestamp, i9);
            releaseFrameList(arrayList);
            if (combineFramesWithTransitionType == null) {
                return null;
            }
            PixelFrame a10 = combineFramesWithTransitionType.a(list.get(0).getGLContext());
            a10.setTimestamp(timestamp);
            combineFramesWithTransitionType.release();
            return a10;
        }
        LiteavLog.e("UGCTransitionProcessor", "frameList is empty");
        return null;
    }

    public void release() {
        this.mCombineFrameFilter.release();
    }
}
