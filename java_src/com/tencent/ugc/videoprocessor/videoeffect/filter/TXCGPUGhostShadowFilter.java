package com.tencent.ugc.videoprocessor.videoeffect.filter;

import com.tencent.liteav.base.util.q;
import com.tencent.liteav.videobase.frame.d;
import com.tencent.liteav.videobase.frame.e;
import com.tencent.ugc.videoprocessor.videoeffect.TXCGPUEffectFilterBase;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public class TXCGPUGhostShadowFilter extends TXCGPUEffectFilterBase {
    private static final String TAG = "TXCGPUGhostShadowFilter";
    private e mGLTexturePool;
    private TXCGPUDissolveBlendFilter mDissolveBlendFilter = null;
    private GhostShadowParam mGhostShadowParam = null;
    private TXCSavePreFrameFilter mSavePreFrameFilter = null;

    /* loaded from: classes4.dex */
    public static class GhostShadowParam extends TXCGPUEffectFilterBase.VideoEffectParams {
        public int delayNumber = 5;
        public int shadowLevel = 1;
        public float mixLevel = 0.5f;
    }

    private boolean initParams(GhostShadowParam ghostShadowParam, int i9, int i10) {
        if (ghostShadowParam == null) {
            return false;
        }
        TXCSavePreFrameFilter tXCSavePreFrameFilter = this.mSavePreFrameFilter;
        if (tXCSavePreFrameFilter != null) {
            tXCSavePreFrameFilter.setSavePreFrameNumber(ghostShadowParam.delayNumber);
            return true;
        }
        return true;
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onDraw(int i9, d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (isInitialized()) {
            runPendingOnDrawTasks();
            GhostShadowParam ghostShadowParam = this.mGhostShadowParam;
            q qVar = this.mOutputSize;
            if (initParams(ghostShadowParam, qVar.f31029a, qVar.f31030b)) {
                e eVar = this.mGLTexturePool;
                q qVar2 = this.mOutputSize;
                d a10 = eVar.a(qVar2.f31029a, qVar2.f31030b);
                TXCSavePreFrameFilter tXCSavePreFrameFilter = this.mSavePreFrameFilter;
                if (tXCSavePreFrameFilter != null) {
                    tXCSavePreFrameFilter.onDrawToTexture(i9, a10, floatBuffer, floatBuffer2);
                }
                TXCGPUDissolveBlendFilter tXCGPUDissolveBlendFilter = this.mDissolveBlendFilter;
                if (tXCGPUDissolveBlendFilter != null) {
                    tXCGPUDissolveBlendFilter.setSecondInputTexture(a10.a());
                    this.mDissolveBlendFilter.onDraw(i9, dVar, floatBuffer, floatBuffer2);
                }
                a10.release();
            }
        }
    }

    @Override // com.tencent.ugc.videoprocessor.videoeffect.TXCGPUEffectFilterBase, com.tencent.liteav.videobase.a.b
    public void onInit(e eVar) {
        super.onInit(eVar);
        this.mGLTexturePool = eVar;
        if (this.mDissolveBlendFilter == null) {
            TXCGPUDissolveBlendFilter tXCGPUDissolveBlendFilter = new TXCGPUDissolveBlendFilter();
            this.mDissolveBlendFilter = tXCGPUDissolveBlendFilter;
            tXCGPUDissolveBlendFilter.initialize(eVar);
        }
        if (this.mSavePreFrameFilter == null) {
            TXCSavePreFrameFilter tXCSavePreFrameFilter = new TXCSavePreFrameFilter();
            this.mSavePreFrameFilter = tXCSavePreFrameFilter;
            tXCSavePreFrameFilter.initFilter(eVar);
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onOutputSizeChanged(int i9, int i10) {
        super.onOutputSizeChanged(i9, i10);
        TXCGPUDissolveBlendFilter tXCGPUDissolveBlendFilter = this.mDissolveBlendFilter;
        if (tXCGPUDissolveBlendFilter != null) {
            tXCGPUDissolveBlendFilter.onOutputSizeChanged(i9, i10);
        }
        TXCSavePreFrameFilter tXCSavePreFrameFilter = this.mSavePreFrameFilter;
        if (tXCSavePreFrameFilter != null) {
            tXCSavePreFrameFilter.onOutputSizeChanged(i9, i10);
        }
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onUninit() {
        super.onUninit();
        TXCGPUDissolveBlendFilter tXCGPUDissolveBlendFilter = this.mDissolveBlendFilter;
        if (tXCGPUDissolveBlendFilter != null) {
            tXCGPUDissolveBlendFilter.uninitialize();
            this.mDissolveBlendFilter = null;
        }
        TXCSavePreFrameFilter tXCSavePreFrameFilter = this.mSavePreFrameFilter;
        if (tXCSavePreFrameFilter != null) {
            tXCSavePreFrameFilter.destroy();
            this.mSavePreFrameFilter = null;
        }
    }

    @Override // com.tencent.ugc.videoprocessor.videoeffect.TXCGPUEffectFilterBase
    public void setNextFrameTimestamp(long j10) {
        super.setNextFrameTimestamp(j10);
        if (this.mGhostShadowParam == null) {
            this.mGhostShadowParam = new GhostShadowParam();
        }
        GhostShadowParam ghostShadowParam = this.mGhostShadowParam;
        ghostShadowParam.delayNumber = 5;
        ghostShadowParam.shadowLevel = 1;
        ghostShadowParam.mixLevel = 0.5f;
    }
}
