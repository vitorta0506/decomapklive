package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.d.b;
import com.tencent.thumbplayer.tplayer.a.m;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.Map;
/* loaded from: classes4.dex */
public class n extends c {

    /* renamed from: i  reason: collision with root package name */
    private boolean f34326i = true;

    /* renamed from: j  reason: collision with root package name */
    private boolean f34327j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f34328k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f34329l = false;

    /* renamed from: m  reason: collision with root package name */
    private m f34330m = new m();

    private void a(long j10, int i9, @NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        Map<String, String> b10 = b(j10, i9, tPGeneralPlayFlowParams).b();
        a("reportVodEndEvent", b10);
        b("vod_end", b10);
        com.tencent.thumbplayer.common.a.b.a("vod_end", b10);
    }

    private void a(long j10, int i9, @NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams, @NonNull TPDynamicStatisticParams tPDynamicStatisticParams) {
        if (this.f34328k) {
            k(new b.C0345b());
            this.f34328k = false;
        }
        if (this.f34327j) {
            i(new b.q());
            this.f34327j = false;
        }
        if (this.f34329l) {
            m mVar = this.f34330m;
            if (mVar.f34312j > 0) {
                long j11 = mVar.f34313k;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                m mVar2 = this.f34330m;
                mVar.f34313k = j11 + (elapsedRealtime - mVar2.f34312j);
                mVar2.f34312j = 0L;
            }
            this.f34329l = false;
        }
        TPLogUtil.i("TPVodReporter", "reportPlayerEndEvent playerStopTimeMs:" + j10 + " errorCode:" + i9);
        a(tPGeneralPlayFlowParams, tPDynamicStatisticParams);
        a(j10, i9, tPGeneralPlayFlowParams);
    }

    private void a(long j10, long j11, int i9) {
        if (!this.f34330m.f34322t.containsKey(Long.valueOf(j10))) {
            TPLogUtil.e("TPVodReporter", "reportSelectTrackEndEvent mSelectTrackInfoList is not contain key:".concat(String.valueOf(j10)));
            return;
        }
        m.a aVar = this.f34330m.f34322t.get(Long.valueOf(j10));
        long j12 = j11 - aVar.f34324b;
        TPLogUtil.i("TPVodReporter", "reportSelectTrackEndEvent trackUniqueIndex:" + j10 + " costTimeMs:" + j12 + " trackId:" + aVar.f34323a);
        com.tencent.thumbplayer.tplayer.a.b.b.f fVar = new com.tencent.thumbplayer.tplayer.a.b.b.f();
        fVar.o(i9);
        fVar.c(j12);
        fVar.p(aVar.f34325c.getTrackType());
        fVar.q(aVar.f34325c.isInternal ? 1 : 0);
        this.f34262f.b(this.f34330m.f34116a);
        com.tencent.thumbplayer.tplayer.a.b.a aVar2 = this.f34330m.f34116a;
        int i10 = this.f34263g;
        this.f34263g = i10 + 1;
        aVar2.a(i10);
        fVar.a(this.f34330m.f34116a);
        Map<String, String> b10 = fVar.b();
        a("onSelectTrackEnd", b10);
        b("vod_select_track", b10);
        com.tencent.thumbplayer.common.a.b.a("vod_select_track", b10);
        this.f34330m.f34322t.remove(Long.valueOf(j10));
    }

    private void a(@NonNull TPDrmInfo tPDrmInfo) {
        Map<String, String> b10 = b(tPDrmInfo).b();
        a("reportPlayerDrmInfoEvent", b10);
        b("vod_drm_authentication", b10);
        com.tencent.thumbplayer.common.a.b.a("vod_drm_authentication", b10);
    }

    private void a(@NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams, @NonNull TPDynamicStatisticParams tPDynamicStatisticParams) {
        Map<String, String> b10 = b(tPGeneralPlayFlowParams, tPDynamicStatisticParams).b();
        a("reportVodEndFlowEvent", b10);
        b("vod_flow", b10);
        com.tencent.thumbplayer.common.a.b.a("vod_flow", b10);
    }

    private void a(@NonNull com.tencent.thumbplayer.tplayer.a.b.b.c cVar, @NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        cVar.t(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mVideoDecoderType);
        cVar.u(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mAudioDecoderType);
        cVar.v(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mVideoRenderType);
        cVar.w(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mAudioRenderType);
        cVar.s(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mDemuxerType);
    }

    private void a(@NonNull com.tencent.thumbplayer.tplayer.a.b.b.e eVar, @NonNull TPDynamicStatisticParams tPDynamicStatisticParams) {
        eVar.u(tPDynamicStatisticParams.mMaxVideoStreamBitrate);
        eVar.v(tPDynamicStatisticParams.mAvgVideoStreamBitrate);
        eVar.w(tPDynamicStatisticParams.mMinVideoStreamBitrate);
        eVar.x(tPDynamicStatisticParams.mMaxVideoDecodeCostTimeMs);
        eVar.y(tPDynamicStatisticParams.mAvgVideoDecodeCostTimeMs);
        eVar.z(tPDynamicStatisticParams.mMinVideoDecodeCostTimeMs);
        eVar.o(tPDynamicStatisticParams.mVideoDecodeFrameCount);
        eVar.p(tPDynamicStatisticParams.mVideoRenderFrameCount);
    }

    private void a(@NonNull com.tencent.thumbplayer.tplayer.a.b.b.e eVar, @NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        eVar.f(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreApiPrepareTimeMs);
        eVar.g(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreSchedulingThreadPrepareTimeMs);
        eVar.h(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mDemuxerThreadPrepareTimeMs);
        eVar.i(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mDemuxerOpenFileSTimeMs);
        eVar.j(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreApiPrepareTimeMs);
        eVar.k(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mInitFirstClipPositionETimeMs);
        eVar.l(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoPacketReadETimeMs);
        eVar.m(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioPacketReadETimeMs);
        eVar.n(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mDemuxerThreadOnPreparedTimeMs);
        eVar.o(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreSchedulingThreadOnPreparedTimeMs);
        eVar.q(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mVideoDecoderOpenedTimeMs);
        eVar.r(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoFrameRenderETimeMs);
        eVar.s(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mAudioDecoderOpenedTimeMs);
        eVar.t(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioFrameRenderETimeMs);
    }

    private com.tencent.thumbplayer.tplayer.a.b.b.b b(@NonNull TPDrmInfo tPDrmInfo) {
        com.tencent.thumbplayer.tplayer.a.b.b.b bVar = new com.tencent.thumbplayer.tplayer.a.b.b.b();
        bVar.n(tPDrmInfo.drmAbility);
        bVar.q(tPDrmInfo.drmSupportSecureDecoder);
        bVar.r(tPDrmInfo.drmSupportSecureDecrypt);
        bVar.p(tPDrmInfo.drmSecureLevel);
        bVar.q(tPDrmInfo.drmComponentName);
        bVar.o(tPDrmInfo.drmType);
        bVar.c(tPDrmInfo.drmPrepareStartTimeMs);
        bVar.d(tPDrmInfo.drmPrepareEndTimeMs);
        bVar.e(tPDrmInfo.drmOpenSessionStartTimeMs);
        bVar.f(tPDrmInfo.drmOpenSessionEndTimeMs);
        bVar.g(tPDrmInfo.drmGetProvisionReqStartTimeMs);
        bVar.h(tPDrmInfo.drmGetProvisionReqEndTimeMs);
        bVar.i(tPDrmInfo.drmSendProvisionReqTimeMs);
        bVar.j(tPDrmInfo.drmRecvProvisionRespTimeMs);
        bVar.k(tPDrmInfo.drmProvideProvisionRespStartTimeMs);
        bVar.l(tPDrmInfo.drmProvideProvisionRespEndTimeMs);
        bVar.m(tPDrmInfo.drmGetKeyReqStartTimeMs);
        bVar.n(tPDrmInfo.drmGetKeyReqEndTimeMs);
        bVar.o(tPDrmInfo.drmSendKeyReqTimeMs);
        bVar.p(tPDrmInfo.drmRecvKeyRespTimeMs);
        bVar.q(tPDrmInfo.drmProvideKeyRespStartTimeMs);
        bVar.r(tPDrmInfo.drmProvideKeyRespEndTimeMs);
        this.f34262f.b(this.f34330m.f34116a);
        com.tencent.thumbplayer.tplayer.a.b.a aVar = this.f34330m.f34116a;
        int i9 = this.f34263g;
        this.f34263g = i9 + 1;
        aVar.a(i9);
        bVar.a(this.f34330m.f34116a);
        return bVar;
    }

    private com.tencent.thumbplayer.tplayer.a.b.b.c b(long j10, int i9, @NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        com.tencent.thumbplayer.tplayer.a.b.b.c cVar = new com.tencent.thumbplayer.tplayer.a.b.b.c();
        m mVar = this.f34330m;
        long j11 = j10 - mVar.f34309g;
        mVar.f34311i = j11;
        cVar.c(j11);
        cVar.o(i9);
        cVar.p(this.f34330m.f34315m);
        cVar.q(this.f34330m.f34316n);
        cVar.d(this.f34330m.f34317o);
        cVar.r(this.f34330m.f34319q);
        cVar.e(this.f34330m.f34320r);
        a(cVar, tPGeneralPlayFlowParams);
        com.tencent.thumbplayer.tplayer.a.b.a aVar = this.f34330m.f34116a;
        int i10 = this.f34263g;
        this.f34263g = i10 + 1;
        aVar.a(i10);
        this.f34262f.b(this.f34330m.f34116a);
        cVar.a(this.f34330m.f34116a);
        return cVar;
    }

    private com.tencent.thumbplayer.tplayer.a.b.b.e b(@NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams, @NonNull TPDynamicStatisticParams tPDynamicStatisticParams) {
        com.tencent.thumbplayer.tplayer.a.b.b.e eVar = new com.tencent.thumbplayer.tplayer.a.b.b.e();
        eVar.c(this.f34261e.f34299a);
        eVar.d(this.f34261e.f34300b);
        eVar.e(this.f34261e.f34301c);
        eVar.p(this.f34330m.f34308f);
        a(eVar, tPGeneralPlayFlowParams);
        a(eVar, tPDynamicStatisticParams);
        this.f34262f.b(this.f34330m.f34116a);
        com.tencent.thumbplayer.tplayer.a.b.a aVar = this.f34330m.f34116a;
        int i9 = this.f34263g;
        this.f34263g = i9 + 1;
        aVar.a(i9);
        eVar.a(this.f34330m.f34116a);
        return eVar;
    }

    private void c() {
        TPLogUtil.i("TPVodReporter", "onAppForeground");
        a(this.f34330m.f34116a.a());
    }

    private void c(b.a aVar) {
        if (!(aVar instanceof b.o)) {
            TPLogUtil.e("TPVodReporter", "onPrepareDone fail:params is not match");
            return;
        }
        b.o oVar = (b.o) aVar;
        long b10 = oVar.b() - this.f34261e.f34301c;
        this.f34330m.f34308f = oVar.b();
        TPLogUtil.i("TPVodReporter", "Vod onPrepareDone timeMs:".concat(String.valueOf(b10)));
        a(this.f34330m);
        com.tencent.thumbplayer.tplayer.a.b.a aVar2 = this.f34330m.f34116a;
        int i9 = this.f34263g;
        this.f34263g = i9 + 1;
        aVar2.a(i9);
        this.f34262f.b(this.f34330m.f34116a);
        b(this.f34330m);
        com.tencent.thumbplayer.tplayer.a.b.b.d dVar = new com.tencent.thumbplayer.tplayer.a.b.b.d();
        dVar.c(b10);
        dVar.a(this.f34330m.f34116a);
        Map<String, String> b11 = dVar.b();
        a("onPrepareDone", b11);
        b("vod_first_load", b11);
        com.tencent.thumbplayer.common.a.b.a("vod_first_load", b11);
    }

    private void d() {
        TPLogUtil.i("TPVodReporter", "onAppBackground");
        if (this.f34326i) {
            return;
        }
        a("vod_flow", b(b(), a(false)));
        a("vod_end", b(SystemClock.elapsedRealtime(), 0, b()));
    }

    private void d(b.a aVar) {
        if (!(aVar instanceof b.m)) {
            TPLogUtil.e("TPVodReporter", "onPlayerStart fail:params is not match");
            return;
        }
        b.m mVar = (b.m) aVar;
        this.f34326i = false;
        this.f34329l = false;
        m mVar2 = this.f34330m;
        if (mVar2.f34309g == 0) {
            mVar2.f34309g = mVar.b();
        }
        this.f34330m.f34310h = mVar.b();
        TPLogUtil.i("TPVodReporter", "Vod onPlayerStart timeMs:" + this.f34330m.f34310h);
        m mVar3 = this.f34330m;
        if (mVar3.f34312j > 0) {
            long j10 = mVar3.f34313k;
            long b10 = mVar.b();
            m mVar4 = this.f34330m;
            mVar3.f34313k = j10 + (b10 - mVar4.f34312j);
            mVar4.f34312j = 0L;
        }
    }

    private void e(b.a aVar) {
        if (!(aVar instanceof b.j)) {
            TPLogUtil.e("TPVodReporter", "onPlayerPause fail:params is not match");
            return;
        }
        b.j jVar = (b.j) aVar;
        if (this.f34329l) {
            TPLogUtil.e("TPVodReporter", "onPlayerPause has been called");
            return;
        }
        this.f34329l = true;
        this.f34330m.f34312j = jVar.b();
        TPLogUtil.i("TPVodReporter", "Vod onPlayerPause timeMs:" + this.f34330m.f34312j);
    }

    private void f(b.a aVar) {
        if (this.f34326i) {
            TPLogUtil.e("TPVodReporter", "Player has been called End");
            return;
        }
        this.f34326i = true;
        a(aVar.b(), 0, a(aVar), b(aVar));
        a(this.f34330m.f34116a.a());
    }

    private void g(b.a aVar) {
        if (this.f34326i) {
            TPLogUtil.e("TPVodReporter", "Player has been called End");
            return;
        }
        this.f34326i = true;
        if (!(aVar instanceof b.i)) {
            TPLogUtil.e("TPVodReporter", "onPlayerError fail:params is not match");
            return;
        }
        b.i iVar = (b.i) aVar;
        a(iVar.b(), iVar.e(), a(iVar), b(iVar));
        a(this.f34330m.f34116a.a());
    }

    private void h(b.a aVar) {
        if (!(aVar instanceof b.r)) {
            TPLogUtil.e("TPVodReporter", "onSeekStart fail:params is not match");
            return;
        }
        b.r rVar = (b.r) aVar;
        if (this.f34328k) {
            k(new b.C0345b());
        }
        if (this.f34327j) {
            i(new b.q());
        }
        this.f34327j = true;
        this.f34330m.f34314l = rVar.b();
        TPLogUtil.i("TPVodReporter", "Vod onSeekStart timeMs:" + this.f34330m.f34314l);
    }

    private void i(b.a aVar) {
        if (!(aVar instanceof b.q)) {
            TPLogUtil.e("TPVodReporter", "onSeekEnd fail:params is not match");
            return;
        }
        this.f34327j = false;
        long b10 = ((b.q) aVar).b();
        m mVar = this.f34330m;
        long j10 = b10 - mVar.f34314l;
        if (j10 > 1200) {
            mVar.f34316n++;
            mVar.f34317o = (int) (mVar.f34317o + j10);
        }
        mVar.f34315m++;
        TPLogUtil.i("TPVodReporter", "Vod onSeekEnd seekCostTimeMs:" + j10 + " mSeekTotalCount:" + this.f34330m.f34315m + " mSeekBufferingTotalCount:" + this.f34330m.f34316n + " mSeekBufferingTotalDurationMs:" + this.f34330m.f34317o);
    }

    private void j(b.a aVar) {
        if (!(aVar instanceof b.c)) {
            TPLogUtil.e("TPVodReporter", "onBufferingStart fail:params is not match");
            return;
        }
        b.c cVar = (b.c) aVar;
        this.f34328k = true;
        if (this.f34327j) {
            return;
        }
        this.f34330m.f34318p = cVar.b();
        TPLogUtil.i("TPVodReporter", "Vod onBufferingStart timeMs:" + this.f34330m.f34318p);
    }

    private void k(b.a aVar) {
        if (!(aVar instanceof b.C0345b)) {
            TPLogUtil.e("TPVodReporter", "onBufferingEnd fail:params is not match");
            return;
        }
        b.C0345b c0345b = (b.C0345b) aVar;
        this.f34328k = false;
        if (this.f34327j) {
            return;
        }
        long b10 = c0345b.b() - this.f34330m.f34318p;
        TPLogUtil.i("TPVodReporter", "Vod onBufferingEnd bufferingCostTimeMs:".concat(String.valueOf(b10)));
        if (b10 <= 1200) {
            return;
        }
        m mVar = this.f34330m;
        mVar.f34319q++;
        mVar.f34320r = (int) (mVar.f34320r + b10);
        com.tencent.thumbplayer.tplayer.a.b.b.a aVar2 = new com.tencent.thumbplayer.tplayer.a.b.b.a();
        aVar2.b(this.f34330m.f34321s);
        aVar2.c(b10);
        this.f34262f.b(this.f34330m.f34116a);
        com.tencent.thumbplayer.tplayer.a.b.a aVar3 = this.f34330m.f34116a;
        int i9 = this.f34263g;
        this.f34263g = i9 + 1;
        aVar3.a(i9);
        aVar2.a(this.f34330m.f34116a);
        Map<String, String> b11 = aVar2.b();
        a("onBufferingEnd", b11);
        b("vod_second_buffering", b11);
        com.tencent.thumbplayer.common.a.b.a("vod_second_buffering", b11);
    }

    private void l(b.a aVar) {
        if (!(aVar instanceof b.v)) {
            TPLogUtil.e("TPVodReporter", "onSetPlaySpeed fail:params is not match");
            return;
        }
        this.f34330m.f34321s = ((b.v) aVar).d();
        TPLogUtil.i("TPVodReporter", "Vod onSetPlaySpeed mPlaySpeed:" + this.f34330m.f34321s);
    }

    private void m(b.a aVar) {
        if (!(aVar instanceof b.t)) {
            TPLogUtil.e("TPVodReporter", "onSelectTrackStart fail:params is not match");
            return;
        }
        b.t tVar = (b.t) aVar;
        int d10 = tVar.d();
        long e10 = tVar.e();
        TPLogUtil.i("TPVodReporter", "Vod onSelectTrackStart trackId:" + d10 + " trackUniqueIndex:" + e10);
        if (this.f34330m.f34322t.containsKey(Long.valueOf(e10))) {
            return;
        }
        m.a aVar2 = new m.a();
        aVar2.f34323a = d10;
        aVar2.f34325c = tVar.f();
        aVar2.f34324b = tVar.b();
        this.f34330m.f34322t.put(Long.valueOf(tVar.e()), aVar2);
    }

    private void n(b.a aVar) {
        if (!(aVar instanceof b.s)) {
            TPLogUtil.e("TPVodReporter", "onSelectTrackEnd fail:params is not match");
            return;
        }
        b.s sVar = (b.s) aVar;
        int d10 = sVar.d();
        long e10 = sVar.e();
        TPLogUtil.i("TPVodReporter", "Vod onSelectTrackEnd errorCode:" + d10 + " trackUniqueIndex:" + e10);
        a(e10, sVar.b(), d10);
    }

    private void o(b.a aVar) {
        if (aVar instanceof b.h) {
            a(((b.h) aVar).d());
        } else {
            TPLogUtil.e("TPVodReporter", "onDrmInfo fail:params is not match");
        }
    }

    private void p(b.a aVar) {
        if (!(aVar instanceof b.e)) {
            TPLogUtil.e("TPVodReporter", "onDTProcessUpdate fail:params is not match");
            return;
        }
        int d10 = ((b.e) aVar).d();
        TPLogUtil.i("TPVodReporter", "Vod onDTProcessUpdate speedKbps:".concat(String.valueOf(d10)));
        this.f34330m.f34117b = d10;
    }

    private void q(b.a aVar) {
        if (!(aVar instanceof b.d)) {
            TPLogUtil.e("TPVodReporter", "onDTCdnUrlUpdate fail:params is not match");
            return;
        }
        b.d dVar = (b.d) aVar;
        String d10 = dVar.d();
        String e10 = dVar.e();
        TPLogUtil.i("TPVodReporter", "Vod onDTCdnUrlUpdate cdnIp:" + d10 + " uIp:" + e10);
        m mVar = this.f34330m;
        mVar.f34118c = d10;
        mVar.f34119d = e10;
    }

    private void r(b.a aVar) {
        if (!(aVar instanceof b.f)) {
            TPLogUtil.e("TPVodReporter", "onDTProtocolUpdate fail:params is not match");
            return;
        }
        String d10 = ((b.f) aVar).d();
        TPLogUtil.i("TPVodReporter", "Vod onDTProtocolUpdate protocolVer:".concat(String.valueOf(d10)));
        this.f34330m.f34120e = d10;
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a() {
        super.a();
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(int i9, b.a aVar) {
        if (i9 == 1001) {
            c();
        } else if (i9 == 1002) {
            d();
        } else {
            switch (i9) {
                case 2:
                    c(aVar);
                    return;
                case 3:
                    d(aVar);
                    return;
                case 4:
                    e(aVar);
                    return;
                case 5:
                    f(aVar);
                    return;
                case 6:
                    g(aVar);
                    return;
                case 7:
                    h(aVar);
                    return;
                case 8:
                    i(aVar);
                    return;
                case 9:
                    j(aVar);
                    return;
                case 10:
                    k(aVar);
                    return;
                case 11:
                    m(aVar);
                    return;
                case 12:
                    n(aVar);
                    return;
                case 13:
                    l(aVar);
                    return;
                case 14:
                    o(aVar);
                    return;
                default:
                    switch (i9) {
                        case 100:
                            p(aVar);
                            return;
                        case 101:
                            q(aVar);
                            return;
                        case 102:
                            r(aVar);
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(@NonNull Context context, @NonNull l lVar) {
        super.a(context, lVar);
        this.f34262f.a(this.f34330m.f34116a);
    }
}
