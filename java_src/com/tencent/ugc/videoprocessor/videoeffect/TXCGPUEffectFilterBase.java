package com.tencent.ugc.videoprocessor.videoeffect;

import com.tencent.liteav.videobase.a.b;
import com.tencent.liteav.videobase.frame.e;
/* loaded from: classes4.dex */
public abstract class TXCGPUEffectFilterBase extends b {
    protected long mEffectStartTime;

    /* loaded from: classes4.dex */
    public static class VideoEffectParams {
    }

    public TXCGPUEffectFilterBase() {
        this(b.NO_FILTER_VERTEX_SHADER, b.NO_FILTER_FRAGMENT_SHADER);
    }

    @Override // com.tencent.liteav.videobase.a.b
    public void onInit(e eVar) {
        super.onInit(eVar);
        this.mEffectStartTime = -1L;
    }

    public void setNextFrameTimestamp(long j10) {
        if (this.mEffectStartTime == -1) {
            this.mEffectStartTime = j10;
        }
    }

    public TXCGPUEffectFilterBase(String str, String str2) {
        super(str, str2);
        this.mEffectStartTime = -1L;
    }
}
