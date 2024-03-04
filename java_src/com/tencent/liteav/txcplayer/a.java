package com.tencent.liteav.txcplayer;

import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import java.util.Map;
/* loaded from: classes4.dex */
public abstract class a implements ITXVCubePlayer {
    private ITXVCubePlayer.c mOnBufferingUpdateListener;
    private ITXVCubePlayer.d mOnCompletionListener;
    private ITXVCubePlayer.e mOnErrorListener;
    private ITXVCubePlayer.a mOnGetTargetState;
    private ITXVCubePlayer.f mOnHLSKeyErrorListener;
    private ITXVCubePlayer.g mOnHevcVideoDecoderErrorListener;
    private ITXVCubePlayer.h mOnInfoListener;
    private ITXVCubePlayer.i mOnPreparedListener;
    private ITXVCubePlayer.j mOnSeekCompleteListener;
    private ITXVCubePlayer.b mOnSubtitleFrameDataListener;
    private ITXVCubePlayer.k mOnTimedTextListener;
    private ITXVCubePlayer.l mOnVideoDecoderErrorListener;
    private ITXVCubePlayer.m mOnVideoSizeChangedListener;

    public int getTXCVodVideoViewTargetState() {
        ITXVCubePlayer.a aVar = this.mOnGetTargetState;
        if (aVar != null) {
            return aVar.a();
        }
        return 0;
    }

    public final void notifyHLSKeyError() {
        ITXVCubePlayer.f fVar = this.mOnHLSKeyErrorListener;
        if (fVar != null) {
            fVar.a();
        }
    }

    public final void notifyHevcVideoDecoderError() {
        ITXVCubePlayer.g gVar = this.mOnHevcVideoDecoderErrorListener;
        if (gVar != null) {
            gVar.a();
        }
    }

    public final void notifyOnBufferingUpdate(int i9) {
    }

    public final void notifyOnCompletion() {
        ITXVCubePlayer.d dVar = this.mOnCompletionListener;
        if (dVar != null) {
            dVar.a();
        }
    }

    public final boolean notifyOnError(int i9, int i10) {
        ITXVCubePlayer.e eVar = this.mOnErrorListener;
        if (eVar != null) {
            eVar.a(i9, i10);
            return true;
        }
        return false;
    }

    public final boolean notifyOnInfo(int i9, int i10, int i11, Object obj) {
        ITXVCubePlayer.h hVar = this.mOnInfoListener;
        if (hVar != null) {
            hVar.a(i9, i10, i11, obj);
            return true;
        }
        return false;
    }

    public final void notifyOnPrepared() {
        ITXVCubePlayer.i iVar = this.mOnPreparedListener;
        if (iVar != null) {
            iVar.a(this);
        }
    }

    public final void notifyOnSeekComplete() {
        ITXVCubePlayer.j jVar = this.mOnSeekCompleteListener;
        if (jVar != null) {
            jVar.a();
        }
    }

    public final void notifyOnTimedText(com.tencent.liteav.txcplayer.model.d dVar) {
    }

    public final void notifyOnVideoSizeChanged(int i9, int i10, int i11, int i12, String str) {
        ITXVCubePlayer.m mVar = this.mOnVideoSizeChangedListener;
        if (mVar != null) {
            mVar.a(this, i9, i10, str);
        }
    }

    public final void notifySubtitleFrameData(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
        ITXVCubePlayer.b bVar = this.mOnSubtitleFrameDataListener;
        if (bVar != null) {
            bVar.a(this, tPSubtitleFrameBuffer);
        }
    }

    public final void notifyVideoDecoderError() {
        ITXVCubePlayer.l lVar = this.mOnVideoDecoderErrorListener;
        if (lVar != null) {
            lVar.a();
        }
    }

    public void resetListeners() {
        this.mOnPreparedListener = null;
        this.mOnBufferingUpdateListener = null;
        this.mOnCompletionListener = null;
        this.mOnSeekCompleteListener = null;
        this.mOnVideoSizeChangedListener = null;
        this.mOnErrorListener = null;
        this.mOnInfoListener = null;
        this.mOnTimedTextListener = null;
        this.mOnHLSKeyErrorListener = null;
        this.mOnHevcVideoDecoderErrorListener = null;
        this.mOnVideoDecoderErrorListener = null;
        this.mOnSubtitleFrameDataListener = null;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnBufferingUpdateListener(ITXVCubePlayer.c cVar) {
        this.mOnBufferingUpdateListener = cVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnCompletionListener(ITXVCubePlayer.d dVar) {
        this.mOnCompletionListener = dVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnErrorListener(ITXVCubePlayer.e eVar) {
        this.mOnErrorListener = eVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setOnGetTXCVodVideoViewTargetState(ITXVCubePlayer.a aVar) {
        this.mOnGetTargetState = aVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnHLSKeyErrorListener(ITXVCubePlayer.f fVar) {
        this.mOnHLSKeyErrorListener = fVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnHevcVideoDecoderErrorListener(ITXVCubePlayer.g gVar) {
        this.mOnHevcVideoDecoderErrorListener = gVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnInfoListener(ITXVCubePlayer.h hVar) {
        this.mOnInfoListener = hVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnPreparedListener(ITXVCubePlayer.i iVar) {
        this.mOnPreparedListener = iVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnSeekCompleteListener(ITXVCubePlayer.j jVar) {
        this.mOnSeekCompleteListener = jVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnSubtitleFrameDataListener(ITXVCubePlayer.b bVar) {
        this.mOnSubtitleFrameDataListener = bVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnTimedTextListener(ITXVCubePlayer.k kVar) {
        this.mOnTimedTextListener = kVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnVideoDecoderErrorListener(ITXVCubePlayer.l lVar) {
        this.mOnVideoDecoderErrorListener = lVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public final void setOnVideoSizeChangedListener(ITXVCubePlayer.m mVar) {
        this.mOnVideoSizeChangedListener = mVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setPrivateConfig(Map<String, Object> map) {
    }
}
