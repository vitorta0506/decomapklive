package com.tencent.ugc.videoprocessor;

import android.content.Context;
import android.opengl.GLES20;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.g;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.ugc.videoprocessor.videoeffect.TXCGPUEffectFilterBase;
import com.tencent.ugc.videoprocessor.videoeffect.data.Motion;
import com.tencent.ugc.videoprocessor.videoeffect.data.MotionFilterConfig;
import com.tencent.ugc.videoprocessor.videoeffect.filter.TXCGPUDarkFilter;
import com.tencent.ugc.videoprocessor.videoeffect.filter.TXCGPUGhostFilter;
import com.tencent.ugc.videoprocessor.videoeffect.filter.TXCGPUGhostShadowFilter;
import com.tencent.ugc.videoprocessor.videoeffect.filter.TXCGPUIllusionFilter;
import com.tencent.ugc.videoprocessor.videoeffect.filter.TXCGPULightingFilter;
import com.tencent.ugc.videoprocessor.videoeffect.filter.TXCGPULinearShadowFilter;
import com.tencent.ugc.videoprocessor.videoeffect.filter.TXCGPUMirrorFilter;
import com.tencent.ugc.videoprocessor.videoeffect.filter.TXCGPUPhontomFilter;
import com.tencent.ugc.videoprocessor.videoeffect.filter.TXCGPURockFilter;
import com.tencent.ugc.videoprocessor.videoeffect.filter.TXCGPUSpiritOutFilter;
import com.tencent.ugc.videoprocessor.videoeffect.filter.TXCGPUSplitScreenFilter;
import java.nio.FloatBuffer;
import java.util.List;
/* loaded from: classes4.dex */
public class VideoEffectProcessor {
    private static final String TAG = "VideoEffectProcessor";
    private final Context mContext;
    private com.tencent.liteav.videobase.a.b mCurrentEffect;
    private boolean mReverse = false;
    private int mCurrentEffectType = -1;
    private long mTotalDuration = -1;
    private final MotionFilterConfig mMotionFilterConfig = new MotionFilterConfig();

    public VideoEffectProcessor(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @NonNull
    private com.tencent.liteav.videobase.a.b createEffect(int i9) {
        switch (i9) {
            case 0:
                return new TXCGPUSpiritOutFilter();
            case 1:
                return new TXCGPUSplitScreenFilter();
            case 2:
                return new TXCGPUDarkFilter();
            case 3:
                return new TXCGPURockFilter();
            case 4:
                return new TXCGPULinearShadowFilter();
            case 5:
                return new TXCGPUGhostShadowFilter();
            case 6:
                return new TXCGPUPhontomFilter();
            case 7:
                return new TXCGPUGhostFilter();
            case 8:
                return new TXCGPULightingFilter(this.mContext);
            case 9:
                return new TXCGPUMirrorFilter();
            case 10:
                return new TXCGPUIllusionFilter();
            default:
                return new com.tencent.liteav.videobase.a.b();
        }
    }

    private void destroyCurrentEffect() {
        com.tencent.liteav.videobase.a.b bVar = this.mCurrentEffect;
        if (bVar != null) {
            bVar.uninitialize();
            this.mCurrentEffect = null;
        }
    }

    private Motion getCurrentMotion(long j10) {
        List<Motion> motionList = this.mMotionFilterConfig.getMotionList();
        Motion motion = null;
        if (com.tencent.liteav.videobase.utils.c.a(motionList)) {
            return null;
        }
        int size = motionList.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            Motion motion2 = motionList.get(size);
            if (getMotionPts(motion2, j10) > 0) {
                motion = motion2;
                break;
            }
            size--;
        }
        Motion currentMotion = this.mMotionFilterConfig.getCurrentMotion();
        return currentMotion.endTime == -1 ? currentMotion : motion;
    }

    private long getMotionPts(Motion motion, long j10) {
        long j11 = motion.startTime;
        if (j11 == -1) {
            return -1L;
        }
        long j12 = motion.endTime;
        if (j12 > 0) {
            long min = Math.min(j11, j12);
            long max = Math.max(motion.startTime, motion.endTime);
            if (j10 < min || j10 > max) {
                return -1L;
            }
        }
        return motion.startTime + Math.abs(j10 - motion.startTime);
    }

    private long getVideoPts(long j10) {
        long j11 = this.mTotalDuration;
        return j11 == -1 ? j10 : g.a(j11 - j10, 0L, j11);
    }

    private boolean isInMotionTime(Motion motion, long j10) {
        return getMotionPts(motion, j10) > 0;
    }

    public void deleteAllEffect() {
        LiteavLog.i(TAG, "==== deleteAllEffect ====");
        this.mMotionFilterConfig.clear();
    }

    public void deleteLastEffect() {
        LiteavLog.i(TAG, "==== deleteLastEffect ====");
        this.mMotionFilterConfig.deleteLastMotionEffect();
    }

    public void destroy() {
        destroyCurrentEffect();
    }

    public int getCurrentMotionType(long j10) {
        Motion currentMotion = getCurrentMotion(getVideoPts(j10));
        if (currentMotion == null) {
            return -1;
        }
        return currentMotion.type;
    }

    public PixelFrame processFrame(PixelFrame pixelFrame, FloatBuffer floatBuffer, FloatBuffer floatBuffer2, com.tencent.liteav.videobase.frame.e eVar) {
        boolean z10;
        long videoPts = getVideoPts(pixelFrame.getTimestamp());
        Motion currentMotion = getCurrentMotion(videoPts);
        if (currentMotion != null && isInMotionTime(currentMotion, videoPts) && pixelFrame.getTimestamp() != 0) {
            if (this.mCurrentEffectType != currentMotion.type) {
                destroyCurrentEffect();
            }
            if (this.mCurrentEffect == null) {
                int i9 = currentMotion.type;
                this.mCurrentEffectType = i9;
                com.tencent.liteav.videobase.a.b createEffect = createEffect(i9);
                this.mCurrentEffect = createEffect;
                createEffect.initialize(eVar);
                z10 = true;
            } else {
                z10 = false;
            }
            this.mCurrentEffect.onOutputSizeChanged(pixelFrame.getWidth(), pixelFrame.getHeight());
            com.tencent.liteav.videobase.a.b bVar = this.mCurrentEffect;
            if (bVar instanceof TXCGPUEffectFilterBase) {
                TXCGPUEffectFilterBase tXCGPUEffectFilterBase = (TXCGPUEffectFilterBase) bVar;
                if (z10) {
                    tXCGPUEffectFilterBase.setNextFrameTimestamp(currentMotion.startTime);
                } else {
                    tXCGPUEffectFilterBase.setNextFrameTimestamp(getMotionPts(currentMotion, videoPts));
                }
            }
            com.tencent.liteav.videobase.frame.d a10 = eVar.a(pixelFrame.getWidth(), pixelFrame.getHeight());
            GLES20.glViewport(0, 0, pixelFrame.getWidth(), pixelFrame.getHeight());
            this.mCurrentEffect.onDraw(pixelFrame.getTextureId(), a10, floatBuffer, floatBuffer2);
            PixelFrame a11 = a10.a(OpenGlUtils.getCurrentContext());
            a11.setTimestamp(pixelFrame.getTimestamp());
            a10.release();
            return a11;
        }
        destroyCurrentEffect();
        return null;
    }

    public void setReverse(boolean z10, long j10) {
        this.mReverse = z10;
        if (!z10) {
            this.mTotalDuration = -1L;
        } else {
            this.mTotalDuration = j10;
        }
    }

    public void startEffect(int i9, long j10) {
        LiteavLog.i(TAG, "startEffect: type" + i9 + "  startTime:" + j10);
        Motion motion = new Motion(i9);
        motion.startTime = j10;
        this.mMotionFilterConfig.addMotion(motion);
    }

    public void stopEffect(int i9, long j10) {
        LiteavLog.i(TAG, "stopEffect type: " + i9 + ", endTime: " + j10);
        Motion currentMotion = this.mMotionFilterConfig.getCurrentMotion();
        if (currentMotion != null) {
            currentMotion.endTime = j10;
        }
    }
}
