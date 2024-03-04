package com.tencent.ugc.videoprocessor;

import android.content.Context;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.g;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.ugc.videoprocessor.transitions.BounceFilter;
import com.tencent.ugc.videoprocessor.transitions.BurnFilter;
import com.tencent.ugc.videoprocessor.transitions.CircleCropFilter;
import com.tencent.ugc.videoprocessor.transitions.CircleFilter;
import com.tencent.ugc.videoprocessor.transitions.CrossWarpFilter;
import com.tencent.ugc.videoprocessor.transitions.CrossZoomFilter;
import com.tencent.ugc.videoprocessor.transitions.CubeFilter;
import com.tencent.ugc.videoprocessor.transitions.DirectionalFilter;
import com.tencent.ugc.videoprocessor.transitions.DirectionalWarpFilter;
import com.tencent.ugc.videoprocessor.transitions.DoorWayFilter;
import com.tencent.ugc.videoprocessor.transitions.DreamyZoomFilter;
import com.tencent.ugc.videoprocessor.transitions.FadeColorFilter;
import com.tencent.ugc.videoprocessor.transitions.FadeGrayScaleFilter;
import com.tencent.ugc.videoprocessor.transitions.FlyEyeFilter;
import com.tencent.ugc.videoprocessor.transitions.GlitchDisplaceFilter;
import com.tencent.ugc.videoprocessor.transitions.GlitchMemoriesFilter;
import com.tencent.ugc.videoprocessor.transitions.GridFlipFilter;
import com.tencent.ugc.videoprocessor.transitions.HexagonalizeFilter;
import com.tencent.ugc.videoprocessor.transitions.InvertedPageCurlFilter;
import com.tencent.ugc.videoprocessor.transitions.KaleidoScopeFilter;
import com.tencent.ugc.videoprocessor.transitions.LinearBlurFilter;
import com.tencent.ugc.videoprocessor.transitions.MosaicFilter;
import com.tencent.ugc.videoprocessor.transitions.PixelizeFilter;
import com.tencent.ugc.videoprocessor.transitions.SimpleZoomFilter;
import com.tencent.ugc.videoprocessor.transitions.SqueezeFilter;
import com.tencent.ugc.videoprocessor.transitions.StereoViewerFilter;
import com.tencent.ugc.videoprocessor.transitions.SwapFilter;
import com.tencent.ugc.videoprocessor.transitions.SwirlFilter;
import com.tencent.ugc.videoprocessor.transitions.TXCGPUTransitionFilterBase;
import com.tencent.ugc.videoprocessor.transitions.WaterDropFilter;
import com.tencent.ugc.videoprocessor.transitions.data.TransitionConfig;
import java.nio.FloatBuffer;
import java.util.List;
/* loaded from: classes4.dex */
public class VideoTransitionProcessor {
    private static final String TAG = "TransitionProcessor";
    private final Context mContext;
    private com.tencent.liteav.videobase.frame.e mGLTexturePool;
    private TXCGPUTransitionFilterBase mTransitionFilter;
    private long mFirstFrameTime = -1;
    private boolean mIsReverse = false;
    private long mVideoDuration = -1;
    private final TransitionConfig mTransitionConfig = new TransitionConfig();

    public VideoTransitionProcessor(Context context) {
        this.mContext = context;
    }

    private void createTransitionFilter(int i9) {
        DirectionalFilter directionalFilter;
        TXCGPUTransitionFilterBase tXCGPUTransitionFilterBase;
        switch (i9) {
            case 1:
                directionalFilter = new DirectionalFilter(i9, new float[]{1.0f, 0.0f});
                tXCGPUTransitionFilterBase = directionalFilter;
                break;
            case 2:
                directionalFilter = new DirectionalFilter(i9, new float[]{-1.0f, 0.0f});
                tXCGPUTransitionFilterBase = directionalFilter;
                break;
            case 3:
                directionalFilter = new DirectionalFilter(i9, new float[]{0.0f, -1.0f});
                tXCGPUTransitionFilterBase = directionalFilter;
                break;
            case 4:
                directionalFilter = new DirectionalFilter(i9, new float[]{0.0f, 1.0f});
                tXCGPUTransitionFilterBase = directionalFilter;
                break;
            case 5:
                tXCGPUTransitionFilterBase = new FadeColorFilter(i9);
                break;
            case 6:
            case 20:
            case 21:
            case 26:
            default:
                tXCGPUTransitionFilterBase = null;
                break;
            case 7:
                tXCGPUTransitionFilterBase = new SimpleZoomFilter(i9);
                break;
            case 8:
                tXCGPUTransitionFilterBase = new LinearBlurFilter(i9);
                break;
            case 9:
                tXCGPUTransitionFilterBase = new WaterDropFilter(i9);
                break;
            case 10:
                tXCGPUTransitionFilterBase = new InvertedPageCurlFilter(i9);
                break;
            case 11:
                tXCGPUTransitionFilterBase = new GlitchMemoriesFilter(i9);
                break;
            case 12:
                tXCGPUTransitionFilterBase = new StereoViewerFilter(i9);
                break;
            case 13:
                tXCGPUTransitionFilterBase = new DirectionalWarpFilter(i9);
                break;
            case 14:
                tXCGPUTransitionFilterBase = new BounceFilter(i9);
                break;
            case 15:
                tXCGPUTransitionFilterBase = new CircleCropFilter(i9);
                break;
            case 16:
                tXCGPUTransitionFilterBase = new SwirlFilter(i9);
                break;
            case 17:
                tXCGPUTransitionFilterBase = new CrossZoomFilter(i9);
                break;
            case 18:
                tXCGPUTransitionFilterBase = new GridFlipFilter(i9);
                break;
            case 19:
                tXCGPUTransitionFilterBase = new MosaicFilter(i9);
                break;
            case 22:
                tXCGPUTransitionFilterBase = new KaleidoScopeFilter(i9);
                break;
            case 23:
                tXCGPUTransitionFilterBase = new HexagonalizeFilter(i9);
                break;
            case 24:
                tXCGPUTransitionFilterBase = new GlitchDisplaceFilter(i9);
                break;
            case 25:
                tXCGPUTransitionFilterBase = new DreamyZoomFilter(i9);
                break;
            case 27:
                tXCGPUTransitionFilterBase = new BurnFilter(i9);
                break;
            case 28:
                tXCGPUTransitionFilterBase = new CircleFilter(i9);
                break;
            case 29:
                tXCGPUTransitionFilterBase = new CrossWarpFilter(i9);
                break;
            case 30:
                tXCGPUTransitionFilterBase = new CubeFilter(i9);
                break;
            case 31:
                tXCGPUTransitionFilterBase = new DoorWayFilter(i9);
                break;
            case 32:
                tXCGPUTransitionFilterBase = new FadeGrayScaleFilter(i9);
                break;
            case 33:
                tXCGPUTransitionFilterBase = new FlyEyeFilter(i9);
                break;
            case 34:
                tXCGPUTransitionFilterBase = new PixelizeFilter(i9);
                break;
            case 35:
                tXCGPUTransitionFilterBase = new SqueezeFilter(i9);
                break;
            case 36:
                tXCGPUTransitionFilterBase = new SwapFilter(i9);
                break;
        }
        if (tXCGPUTransitionFilterBase != null) {
            tXCGPUTransitionFilterBase.initialize(this.mGLTexturePool);
        }
        this.mTransitionFilter = tXCGPUTransitionFilterBase;
    }

    private TransitionConfig.TransitionBean getCurrentTransition(long j10) {
        List<TransitionConfig.TransitionBean> transitionList = this.mTransitionConfig.getTransitionList();
        if (com.tencent.liteav.videobase.utils.c.a(transitionList)) {
            return null;
        }
        for (int size = transitionList.size() - 1; size >= 0; size--) {
            TransitionConfig.TransitionBean transitionBean = transitionList.get(size);
            if (isInTransitionRange(j10, transitionBean)) {
                return transitionBean;
            }
        }
        return null;
    }

    private float getTransitionProgress(TransitionConfig.TransitionBean transitionBean, long j10) {
        if (this.mFirstFrameTime == -1) {
            this.mFirstFrameTime = j10;
        }
        long abs = Math.abs(j10 - this.mFirstFrameTime);
        long abs2 = Math.abs(transitionBean.endTimeMs - transitionBean.startTimeMs);
        if (abs2 <= 0) {
            return -1.0f;
        }
        return g.a((((float) abs) * 1.0f) / ((float) abs2), 0.0f, 1.0f);
    }

    private boolean isInTransitionRange(long j10, TransitionConfig.TransitionBean transitionBean) {
        long j11 = transitionBean.startTimeMs;
        if (j10 < j11 || j10 > transitionBean.endTimeMs) {
            return j10 >= transitionBean.endTimeMs && j10 <= j11;
        }
        return true;
    }

    public PixelFrame applyTransitionFilter(PixelFrame pixelFrame, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        long timestamp = pixelFrame.getTimestamp();
        if (this.mIsReverse) {
            long j10 = this.mVideoDuration;
            timestamp = g.a(j10 - timestamp, 0L, j10);
        }
        TransitionConfig.TransitionBean currentTransition = getCurrentTransition(timestamp);
        if (currentTransition == null) {
            this.mFirstFrameTime = -1L;
            return null;
        }
        float transitionProgress = getTransitionProgress(currentTransition, timestamp);
        if (transitionProgress < 0.0f) {
            return null;
        }
        TXCGPUTransitionFilterBase tXCGPUTransitionFilterBase = this.mTransitionFilter;
        if (tXCGPUTransitionFilterBase != null && tXCGPUTransitionFilterBase.mType != currentTransition.type) {
            tXCGPUTransitionFilterBase.uninitialize();
            this.mTransitionFilter = null;
        }
        if (this.mTransitionFilter == null) {
            createTransitionFilter(currentTransition.type);
        }
        TXCGPUTransitionFilterBase tXCGPUTransitionFilterBase2 = this.mTransitionFilter;
        if (tXCGPUTransitionFilterBase2 == null) {
            return null;
        }
        tXCGPUTransitionFilterBase2.onOutputSizeChanged(pixelFrame.getWidth(), pixelFrame.getHeight());
        this.mTransitionFilter.setProgressForTransition(transitionProgress);
        com.tencent.liteav.videobase.frame.d a10 = this.mGLTexturePool.a(pixelFrame.getWidth(), pixelFrame.getHeight());
        this.mTransitionFilter.onDraw(pixelFrame.getTextureId(), a10, floatBuffer, floatBuffer2);
        PixelFrame a11 = a10.a(OpenGlUtils.getCurrentContext());
        a11.setTimestamp(pixelFrame.getTimestamp());
        a10.release();
        return a11;
    }

    public void deleteLastTransitionEffect() {
        this.mTransitionConfig.deleteLastTransitionEffect();
    }

    public void destroy() {
        TXCGPUTransitionFilterBase tXCGPUTransitionFilterBase = this.mTransitionFilter;
        if (tXCGPUTransitionFilterBase != null) {
            tXCGPUTransitionFilterBase.uninitialize();
            this.mTransitionFilter = null;
        }
    }

    public void init(com.tencent.liteav.videobase.frame.e eVar) {
        this.mGLTexturePool = eVar;
    }

    public void setReverse(boolean z10, long j10) {
        this.mIsReverse = z10;
        this.mVideoDuration = j10;
    }

    public boolean setTransitionEffect(int i9, long j10, long j11, long j12) {
        boolean z10;
        if (j11 <= j10) {
            long j13 = j12 + j11;
            if (j13 <= j10) {
                List<TransitionConfig.TransitionBean> transitionList = this.mTransitionConfig.getTransitionList();
                if (transitionList.size() != 0) {
                    for (TransitionConfig.TransitionBean transitionBean : transitionList) {
                        if (j11 >= transitionBean.startTimeMs && j11 <= transitionBean.endTimeMs) {
                            LiteavLog.w(TAG, "setTransitionEffect,start time invalid");
                        } else if (isInTransitionRange(j13, transitionBean)) {
                            LiteavLog.w(TAG, "setTransitionEffect,end time invalid");
                        }
                        z10 = false;
                    }
                    z10 = true;
                    if (!z10) {
                        return false;
                    }
                }
                TransitionConfig.TransitionBean transitionBean2 = new TransitionConfig.TransitionBean(i9);
                transitionBean2.startTimeMs = j11;
                transitionBean2.endTimeMs = j13;
                this.mTransitionConfig.addTransition(transitionBean2);
                LiteavLog.d(TAG, "setTransitionEffect,success:".concat(String.valueOf(transitionBean2)));
                return true;
            }
        }
        LiteavLog.w(TAG, "setTransitionEffect,not suitable for videoTotalDurationMs");
        return false;
    }
}
