package com.tencent.thumbplayer.tplayer;

import android.text.TextUtils;
import com.tencent.thumbplayer.api.ITPPlayer;
import com.tencent.thumbplayer.api.ITPPlayerListener;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.utils.TPLogUtil;
/* loaded from: classes4.dex */
public class c implements ITPPlayerListener.IOnAudioFrameOutputListener, ITPPlayerListener.IOnAudioProcessFrameOutputListener, ITPPlayerListener.IOnCompletionListener, ITPPlayerListener.IOnDemuxerListener, ITPPlayerListener.IOnDetailInfoListener, ITPPlayerListener.IOnErrorListener, ITPPlayerListener.IOnInfoListener, ITPPlayerListener.IOnPreparedListener, ITPPlayerListener.IOnSeekCompleteListener, ITPPlayerListener.IOnStateChangeListener, ITPPlayerListener.IOnStopAsyncCompleteListener, ITPPlayerListener.IOnSubtitleDataListener, ITPPlayerListener.IOnSubtitleFrameOutListener, ITPPlayerListener.IOnVideoFrameOutListener, ITPPlayerListener.IOnVideoProcessFrameOutputListener, ITPPlayerListener.IOnVideoSizeChangedListener {

    /* renamed from: a  reason: collision with root package name */
    private ITPPlayerListener.IOnPreparedListener f34360a;

    /* renamed from: b  reason: collision with root package name */
    private ITPPlayerListener.IOnCompletionListener f34361b;

    /* renamed from: c  reason: collision with root package name */
    private ITPPlayerListener.IOnInfoListener f34362c;

    /* renamed from: d  reason: collision with root package name */
    private ITPPlayerListener.IOnErrorListener f34363d;

    /* renamed from: e  reason: collision with root package name */
    private ITPPlayerListener.IOnSeekCompleteListener f34364e;

    /* renamed from: f  reason: collision with root package name */
    private ITPPlayerListener.IOnVideoSizeChangedListener f34365f;

    /* renamed from: g  reason: collision with root package name */
    private ITPPlayerListener.IOnSubtitleDataListener f34366g;

    /* renamed from: h  reason: collision with root package name */
    private ITPPlayerListener.IOnSubtitleFrameOutListener f34367h;

    /* renamed from: i  reason: collision with root package name */
    private ITPPlayerListener.IOnVideoFrameOutListener f34368i;

    /* renamed from: j  reason: collision with root package name */
    private ITPPlayerListener.IOnAudioFrameOutputListener f34369j;

    /* renamed from: k  reason: collision with root package name */
    private ITPPlayerListener.IOnVideoProcessFrameOutputListener f34370k;

    /* renamed from: l  reason: collision with root package name */
    private ITPPlayerListener.IOnAudioProcessFrameOutputListener f34371l;

    /* renamed from: m  reason: collision with root package name */
    private ITPPlayerListener.IOnStateChangeListener f34372m;

    /* renamed from: n  reason: collision with root package name */
    private ITPPlayerListener.IOnStopAsyncCompleteListener f34373n;

    /* renamed from: o  reason: collision with root package name */
    private ITPPlayerListener.IOnDetailInfoListener f34374o;

    /* renamed from: p  reason: collision with root package name */
    private ITPPlayerListener.IOnDemuxerListener f34375p;

    /* renamed from: q  reason: collision with root package name */
    private a f34376q;

    /* renamed from: r  reason: collision with root package name */
    private String f34377r = "TPPlayerListenerS";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a implements ITPPlayerListener.IOnAudioFrameOutputListener, ITPPlayerListener.IOnAudioProcessFrameOutputListener, ITPPlayerListener.IOnCompletionListener, ITPPlayerListener.IOnDemuxerListener, ITPPlayerListener.IOnDetailInfoListener, ITPPlayerListener.IOnErrorListener, ITPPlayerListener.IOnInfoListener, ITPPlayerListener.IOnPreparedListener, ITPPlayerListener.IOnSeekCompleteListener, ITPPlayerListener.IOnStateChangeListener, ITPPlayerListener.IOnStopAsyncCompleteListener, ITPPlayerListener.IOnSubtitleDataListener, ITPPlayerListener.IOnSubtitleFrameOutListener, ITPPlayerListener.IOnVideoFrameOutListener, ITPPlayerListener.IOnVideoProcessFrameOutputListener, ITPPlayerListener.IOnVideoSizeChangedListener {

        /* renamed from: a  reason: collision with root package name */
        private String f34378a;

        public a(String str) {
            this.f34378a = str;
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnAudioFrameOutputListener
        public void onAudioFrameOut(ITPPlayer iTPPlayer, TPAudioFrameBuffer tPAudioFrameBuffer) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onAudioFrameOut");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnAudioProcessFrameOutputListener
        public TPPostProcessFrameBuffer onAudioProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onPostProcessFrameOut");
            return null;
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnCompletionListener
        public void onCompletion(ITPPlayer iTPPlayer) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onCompletion");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnDetailInfoListener
        public void onDetailInfo(ITPPlayer iTPPlayer, TPPlayerDetailInfo tPPlayerDetailInfo) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onDetailInfo");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnErrorListener
        public void onError(ITPPlayer iTPPlayer, int i9, int i10, long j10, long j11) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onError");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnInfoListener
        public void onInfo(ITPPlayer iTPPlayer, int i9, long j10, long j11, Object obj) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onInfo");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnPreparedListener
        public void onPrepared(ITPPlayer iTPPlayer) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onPrepared");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnDemuxerListener
        public TPRemoteSdpInfo onSdpExchange(ITPPlayer iTPPlayer, String str, int i9) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onSdpExchange");
            return null;
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSeekCompleteListener
        public void onSeekComplete(ITPPlayer iTPPlayer) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onSeekComplete");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnStateChangeListener
        public void onStateChange(int i9, int i10) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onStateChange");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnStopAsyncCompleteListener
        public void onStopAsyncComplete(ITPPlayer iTPPlayer) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onStopAsyncComplete");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSubtitleDataListener
        public void onSubtitleData(ITPPlayer iTPPlayer, TPSubtitleData tPSubtitleData) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onSubtitleData");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSubtitleFrameOutListener
        public void onSubtitleFrameOut(ITPPlayer iTPPlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onSubtitleFrameOut");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoFrameOutListener
        public void onVideoFrameOut(ITPPlayer iTPPlayer, TPVideoFrameBuffer tPVideoFrameBuffer) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onVideoFrameOut");
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoProcessFrameOutputListener
        public TPPostProcessFrameBuffer onVideoProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onPostProcessFrameOut");
            return null;
        }

        @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoSizeChangedListener
        public void onVideoSizeChanged(ITPPlayer iTPPlayer, long j10, long j11) {
            TPLogUtil.i(this.f34378a, " empty player listener , notify , onVideoSizeChanged");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str) {
        a(str);
        a aVar = new a(this.f34377r);
        this.f34376q = aVar;
        this.f34360a = aVar;
        this.f34361b = aVar;
        this.f34362c = aVar;
        this.f34363d = aVar;
        this.f34364e = aVar;
        this.f34365f = aVar;
        this.f34366g = aVar;
        this.f34367h = aVar;
        this.f34368i = aVar;
        this.f34369j = aVar;
        this.f34370k = aVar;
        this.f34371l = aVar;
        this.f34372m = aVar;
        this.f34373n = aVar;
        this.f34374o = aVar;
        this.f34375p = aVar;
    }

    public void a() {
        a aVar = this.f34376q;
        this.f34360a = aVar;
        this.f34361b = aVar;
        this.f34362c = aVar;
        this.f34363d = aVar;
        this.f34364e = aVar;
        this.f34365f = aVar;
        this.f34366g = aVar;
        this.f34368i = aVar;
        this.f34369j = aVar;
        this.f34372m = aVar;
        this.f34373n = aVar;
        this.f34374o = aVar;
        this.f34375p = aVar;
    }

    public void a(ITPPlayerListener.IOnAudioFrameOutputListener iOnAudioFrameOutputListener) {
        if (iOnAudioFrameOutputListener == null) {
            iOnAudioFrameOutputListener = this.f34376q;
        }
        this.f34369j = iOnAudioFrameOutputListener;
    }

    public void a(ITPPlayerListener.IOnAudioProcessFrameOutputListener iOnAudioProcessFrameOutputListener) {
        if (iOnAudioProcessFrameOutputListener == null) {
            iOnAudioProcessFrameOutputListener = this.f34376q;
        }
        this.f34371l = iOnAudioProcessFrameOutputListener;
    }

    public void a(ITPPlayerListener.IOnCompletionListener iOnCompletionListener) {
        if (iOnCompletionListener == null) {
            iOnCompletionListener = this.f34376q;
        }
        this.f34361b = iOnCompletionListener;
    }

    public void a(ITPPlayerListener.IOnDemuxerListener iOnDemuxerListener) {
        if (iOnDemuxerListener == null) {
            iOnDemuxerListener = this.f34376q;
        }
        this.f34375p = iOnDemuxerListener;
    }

    public void a(ITPPlayerListener.IOnDetailInfoListener iOnDetailInfoListener) {
        if (iOnDetailInfoListener == null) {
            iOnDetailInfoListener = this.f34376q;
        }
        this.f34374o = iOnDetailInfoListener;
    }

    public void a(ITPPlayerListener.IOnErrorListener iOnErrorListener) {
        if (iOnErrorListener == null) {
            iOnErrorListener = this.f34376q;
        }
        this.f34363d = iOnErrorListener;
    }

    public void a(ITPPlayerListener.IOnInfoListener iOnInfoListener) {
        if (iOnInfoListener == null) {
            iOnInfoListener = this.f34376q;
        }
        this.f34362c = iOnInfoListener;
    }

    public void a(ITPPlayerListener.IOnPreparedListener iOnPreparedListener) {
        if (iOnPreparedListener == null) {
            iOnPreparedListener = this.f34376q;
        }
        this.f34360a = iOnPreparedListener;
    }

    public void a(ITPPlayerListener.IOnSeekCompleteListener iOnSeekCompleteListener) {
        if (iOnSeekCompleteListener == null) {
            iOnSeekCompleteListener = this.f34376q;
        }
        this.f34364e = iOnSeekCompleteListener;
    }

    public void a(ITPPlayerListener.IOnStateChangeListener iOnStateChangeListener) {
        if (iOnStateChangeListener == null) {
            iOnStateChangeListener = this.f34376q;
        }
        this.f34372m = iOnStateChangeListener;
    }

    public void a(ITPPlayerListener.IOnStopAsyncCompleteListener iOnStopAsyncCompleteListener) {
        if (iOnStopAsyncCompleteListener == null) {
            iOnStopAsyncCompleteListener = this.f34376q;
        }
        this.f34373n = iOnStopAsyncCompleteListener;
    }

    public void a(ITPPlayerListener.IOnSubtitleDataListener iOnSubtitleDataListener) {
        if (iOnSubtitleDataListener == null) {
            iOnSubtitleDataListener = this.f34376q;
        }
        this.f34366g = iOnSubtitleDataListener;
    }

    public void a(ITPPlayerListener.IOnSubtitleFrameOutListener iOnSubtitleFrameOutListener) {
        if (iOnSubtitleFrameOutListener == null) {
            iOnSubtitleFrameOutListener = this.f34376q;
        }
        this.f34367h = iOnSubtitleFrameOutListener;
    }

    public void a(ITPPlayerListener.IOnVideoFrameOutListener iOnVideoFrameOutListener) {
        if (iOnVideoFrameOutListener == null) {
            iOnVideoFrameOutListener = this.f34376q;
        }
        this.f34368i = iOnVideoFrameOutListener;
    }

    public void a(ITPPlayerListener.IOnVideoProcessFrameOutputListener iOnVideoProcessFrameOutputListener) {
        if (iOnVideoProcessFrameOutputListener == null) {
            iOnVideoProcessFrameOutputListener = this.f34376q;
        }
        this.f34370k = iOnVideoProcessFrameOutputListener;
    }

    public void a(ITPPlayerListener.IOnVideoSizeChangedListener iOnVideoSizeChangedListener) {
        if (iOnVideoSizeChangedListener == null) {
            iOnVideoSizeChangedListener = this.f34376q;
        }
        this.f34365f = iOnVideoSizeChangedListener;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f34377r = "TPPlayerListenerS";
        } else {
            this.f34377r = str;
        }
        a aVar = this.f34376q;
        if (aVar != null) {
            aVar.f34378a = str;
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnAudioFrameOutputListener
    public void onAudioFrameOut(ITPPlayer iTPPlayer, TPAudioFrameBuffer tPAudioFrameBuffer) {
        this.f34369j.onAudioFrameOut(iTPPlayer, tPAudioFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnAudioProcessFrameOutputListener
    public TPPostProcessFrameBuffer onAudioProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        return this.f34371l.onAudioProcessFrameOut(iTPPlayer, tPPostProcessFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnCompletionListener
    public void onCompletion(ITPPlayer iTPPlayer) {
        this.f34361b.onCompletion(iTPPlayer);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnDetailInfoListener
    public void onDetailInfo(ITPPlayer iTPPlayer, TPPlayerDetailInfo tPPlayerDetailInfo) {
        this.f34374o.onDetailInfo(iTPPlayer, tPPlayerDetailInfo);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnErrorListener
    public void onError(ITPPlayer iTPPlayer, int i9, int i10, long j10, long j11) {
        this.f34363d.onError(iTPPlayer, i9, i10, j10, j11);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnInfoListener
    public void onInfo(ITPPlayer iTPPlayer, int i9, long j10, long j11, Object obj) {
        this.f34362c.onInfo(iTPPlayer, i9, j10, j11, obj);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnPreparedListener
    public void onPrepared(ITPPlayer iTPPlayer) {
        this.f34360a.onPrepared(iTPPlayer);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnDemuxerListener
    public TPRemoteSdpInfo onSdpExchange(ITPPlayer iTPPlayer, String str, int i9) {
        return this.f34375p.onSdpExchange(iTPPlayer, str, i9);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSeekCompleteListener
    public void onSeekComplete(ITPPlayer iTPPlayer) {
        this.f34364e.onSeekComplete(iTPPlayer);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnStateChangeListener
    public void onStateChange(int i9, int i10) {
        this.f34372m.onStateChange(i9, i10);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnStopAsyncCompleteListener
    public void onStopAsyncComplete(ITPPlayer iTPPlayer) {
        this.f34373n.onStopAsyncComplete(iTPPlayer);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSubtitleDataListener
    public void onSubtitleData(ITPPlayer iTPPlayer, TPSubtitleData tPSubtitleData) {
        this.f34366g.onSubtitleData(iTPPlayer, tPSubtitleData);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSubtitleFrameOutListener
    public void onSubtitleFrameOut(ITPPlayer iTPPlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
        this.f34367h.onSubtitleFrameOut(iTPPlayer, tPSubtitleFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoFrameOutListener
    public void onVideoFrameOut(ITPPlayer iTPPlayer, TPVideoFrameBuffer tPVideoFrameBuffer) {
        this.f34368i.onVideoFrameOut(iTPPlayer, tPVideoFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoProcessFrameOutputListener
    public TPPostProcessFrameBuffer onVideoProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        return this.f34370k.onVideoProcessFrameOut(iTPPlayer, tPPostProcessFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoSizeChangedListener
    public void onVideoSizeChanged(ITPPlayer iTPPlayer, long j10, long j11) {
        this.f34365f.onVideoSizeChanged(iTPPlayer, j10, j11);
    }
}
