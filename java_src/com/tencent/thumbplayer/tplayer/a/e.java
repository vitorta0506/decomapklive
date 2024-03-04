package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.api.reportv2.ITPReportInfoGetter;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.d.b;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class e extends c {

    /* renamed from: i  reason: collision with root package name */
    private boolean f34273i = true;

    /* renamed from: j  reason: collision with root package name */
    private boolean f34274j = false;

    /* renamed from: k  reason: collision with root package name */
    private d f34275k = new d();

    /* renamed from: l  reason: collision with root package name */
    private final Object f34276l = new Object();

    /* renamed from: m  reason: collision with root package name */
    private Future<?> f34277m = null;

    /* renamed from: n  reason: collision with root package name */
    private Runnable f34278n = new Runnable() { // from class: com.tencent.thumbplayer.tplayer.a.e.1
        @Override // java.lang.Runnable
        public void run() {
            if (!e.this.f34273i) {
                e.this.g();
                return;
            }
            TPLogUtil.i("TPLiveReporter", "Period Timer Exit because play done.");
            e.this.f34277m.cancel(true);
            e.this.f34277m = null;
        }
    };

    private void a(long j10, int i9, @NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        Map<String, String> b10 = b(j10, i9, tPGeneralPlayFlowParams).b();
        a("reportLiveEndEvent", b10);
        b("live_end", b10);
        com.tencent.thumbplayer.common.a.b.a("live_end", b10);
    }

    private void a(long j10, int i9, TPGeneralPlayFlowParams tPGeneralPlayFlowParams, TPDynamicStatisticParams tPDynamicStatisticParams) {
        if (this.f34274j) {
            h(new b.C0345b());
            this.f34274j = false;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        d dVar = this.f34275k;
        dVar.f34272m += elapsedRealtime - dVar.f34267h;
        d();
        TPLogUtil.i("TPLiveReporter", "reportPlayerEndEvent playerStopTimeMs:" + j10 + " errorCode:" + i9);
        a(tPGeneralPlayFlowParams, tPDynamicStatisticParams);
        a(j10, i9, tPGeneralPlayFlowParams);
    }

    private void a(@NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams, @NonNull TPDynamicStatisticParams tPDynamicStatisticParams) {
        Map<String, String> b10 = b(tPGeneralPlayFlowParams, tPDynamicStatisticParams).b();
        a("reportLiveEndFlowEvent", b10);
        b("live_flow", b10);
        com.tencent.thumbplayer.common.a.b.a("live_flow", b10);
    }

    private void a(@NonNull com.tencent.thumbplayer.tplayer.a.b.a.a aVar, @NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        aVar.q(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mVideoDecoderType);
        aVar.r(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mAudioDecoderType);
        aVar.s(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mVideoRenderType);
        aVar.t(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mAudioRenderType);
        aVar.p(tPGeneralPlayFlowParams.mPlayerBaseMediaParams.mDemuxerType);
    }

    private void a(@NonNull com.tencent.thumbplayer.tplayer.a.b.a.d dVar, @NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        dVar.f(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreApiPrepareTimeMs);
        dVar.g(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreSchedulingThreadPrepareTimeMs);
        dVar.h(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mDemuxerThreadPrepareTimeMs);
        dVar.i(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mDemuxerOpenFileSTimeMs);
        dVar.j(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreApiPrepareTimeMs);
        dVar.k(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mInitFirstClipPositionETimeMs);
        dVar.l(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoPacketReadETimeMs);
        dVar.m(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioPacketReadETimeMs);
        dVar.n(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mDemuxerThreadOnPreparedTimeMs);
        dVar.o(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mCoreSchedulingThreadOnPreparedTimeMs);
        dVar.q(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mVideoDecoderOpenedTimeMs);
        dVar.r(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstVideoFrameRenderETimeMs);
        dVar.s(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mAudioDecoderOpenedTimeMs);
        dVar.t(tPGeneralPlayFlowParams.mPlayerGeneralTrackingParams.mFirstAudioFrameRenderETimeMs);
    }

    private com.tencent.thumbplayer.tplayer.a.b.a.a b(long j10, int i9, @NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams) {
        com.tencent.thumbplayer.tplayer.a.b.a.a aVar = new com.tencent.thumbplayer.tplayer.a.b.a.a();
        d dVar = this.f34275k;
        long j11 = dVar.f34268i + (j10 - dVar.f34266g);
        dVar.f34268i = j11;
        aVar.c(j11);
        aVar.o(i9);
        a(aVar, tPGeneralPlayFlowParams);
        com.tencent.thumbplayer.tplayer.a.b.a aVar2 = this.f34275k.f34116a;
        int i10 = this.f34263g;
        this.f34263g = i10 + 1;
        aVar2.a(i10);
        this.f34262f.b(this.f34275k.f34116a);
        aVar.a(this.f34275k.f34116a);
        return aVar;
    }

    private com.tencent.thumbplayer.tplayer.a.b.a.d b(@NonNull TPGeneralPlayFlowParams tPGeneralPlayFlowParams, @NonNull TPDynamicStatisticParams tPDynamicStatisticParams) {
        com.tencent.thumbplayer.tplayer.a.b.a.d dVar = new com.tencent.thumbplayer.tplayer.a.b.a.d();
        dVar.c(this.f34261e.f34299a);
        dVar.d(this.f34261e.f34300b);
        dVar.e(this.f34261e.f34301c);
        dVar.p(this.f34275k.f34265f);
        a(dVar, tPGeneralPlayFlowParams);
        com.tencent.thumbplayer.tplayer.a.b.a aVar = this.f34275k.f34116a;
        int i9 = this.f34263g;
        this.f34263g = i9 + 1;
        aVar.a(i9);
        this.f34262f.b(this.f34275k.f34116a);
        dVar.a(this.f34275k.f34116a);
        return dVar;
    }

    private void c() {
        TPLogUtil.i("TPLiveReporter", "startPeriodReportTimer");
        synchronized (this.f34276l) {
            if (this.f34277m == null) {
                this.f34277m = o.a().e().scheduleAtFixedRate(this.f34278n, 0L, 60000L, TimeUnit.MILLISECONDS);
            }
        }
    }

    private void c(b.a aVar) {
        if (!(aVar instanceof b.o)) {
            TPLogUtil.e("TPLiveReporter", "onPrepareDone fail:params is not match");
            return;
        }
        b.o oVar = (b.o) aVar;
        long b10 = oVar.b() - this.f34261e.f34301c;
        this.f34275k.f34265f = oVar.b();
        TPLogUtil.i("TPLiveReporter", "Live onPrepareDone timeMs:".concat(String.valueOf(b10)));
        a(this.f34275k);
        com.tencent.thumbplayer.tplayer.a.b.a aVar2 = this.f34275k.f34116a;
        int i9 = this.f34263g;
        this.f34263g = i9 + 1;
        aVar2.a(i9);
        this.f34262f.b(this.f34275k.f34116a);
        b(this.f34275k);
        com.tencent.thumbplayer.tplayer.a.b.a.b bVar = new com.tencent.thumbplayer.tplayer.a.b.a.b();
        bVar.c(b10);
        bVar.a(this.f34275k.f34116a);
        Map<String, String> b11 = bVar.b();
        a("onPrepareDone", b11);
        b("live_first_load", b11);
        com.tencent.thumbplayer.common.a.b.a("live_first_load", b11);
    }

    private void c(@NonNull b bVar) {
        ITPReportInfoGetter iTPReportInfoGetter = this.f34257a;
        if (iTPReportInfoGetter == null) {
            return;
        }
        Map<String, String> periodExtendReportInfo = iTPReportInfoGetter.getPeriodExtendReportInfo();
        if (periodExtendReportInfo == null) {
            TPLogUtil.e("TPLiveReporter", "fillPeriodExtReportInfoToCommonParams fail, period ExtendReportInfo is null");
            return;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        c.a(periodExtendReportInfo, hashMap, hashMap2);
        bVar.f34116a.c(hashMap);
        bVar.f34116a.d(hashMap2);
    }

    private synchronized void d() {
        TPLogUtil.i("TPLiveReporter", "destroyPeriodReportTimer");
        synchronized (this.f34276l) {
            Future<?> future = this.f34277m;
            if (future != null) {
                future.cancel(true);
                this.f34277m = null;
            }
        }
    }

    private void d(b.a aVar) {
        if (!(aVar instanceof b.m)) {
            TPLogUtil.e("TPLiveReporter", "onPlayerStart fail:params is not match");
            return;
        }
        b.m mVar = (b.m) aVar;
        this.f34273i = false;
        d dVar = this.f34275k;
        if (dVar.f34266g == 0) {
            dVar.f34266g = mVar.b();
        }
        this.f34275k.f34267h = mVar.b();
        TPLogUtil.i("TPLiveReporter", "Live onPlayerStart FirstStartTimeMs:" + this.f34275k.f34266g + " mPlayerStartOccurElapsedTimeMs:" + this.f34275k.f34267h);
        c();
    }

    private void e() {
        TPLogUtil.i("TPLiveReporter", "onAppForeground");
        a(this.f34275k.f34116a.a());
    }

    private void e(b.a aVar) {
        if (this.f34273i) {
            TPLogUtil.e("TPLiveReporter", "Player has been called End");
            return;
        }
        this.f34273i = true;
        a(aVar.b(), 0, a(aVar), b(aVar));
        a(this.f34275k.f34116a.a());
    }

    private void f() {
        TPLogUtil.i("TPLiveReporter", "onAppBackground");
        if (this.f34273i) {
            return;
        }
        a("live_flow", b(b(), a(false)));
        a("live_end", b(SystemClock.elapsedRealtime(), 0, b()));
    }

    private void f(b.a aVar) {
        if (this.f34273i) {
            TPLogUtil.e("TPLiveReporter", "Player has been called End");
            return;
        }
        this.f34273i = true;
        if (!(aVar instanceof b.i)) {
            TPLogUtil.e("TPLiveReporter", "onPlayerError fail:params is not match");
            return;
        }
        b.i iVar = (b.i) aVar;
        a(iVar.b(), iVar.e(), a(iVar), b(iVar));
        a(this.f34275k.f34116a.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        TPLogUtil.i("TPLiveReporter", "periodReportEvent enter.");
        long elapsedRealtime = SystemClock.elapsedRealtime();
        d dVar = this.f34275k;
        dVar.f34272m += elapsedRealtime - dVar.f34267h;
        dVar.f34267h = SystemClock.elapsedRealtime();
        com.tencent.thumbplayer.tplayer.a.b.a.c cVar = new com.tencent.thumbplayer.tplayer.a.b.a.c();
        cVar.o(this.f34275k.f34271l);
        cVar.c(this.f34275k.f34270k);
        cVar.d(this.f34275k.f34272m);
        TPDynamicStatisticParams a10 = this.f34258b.a(true);
        cVar.e(a10.mMaxVideoStreamBitrate);
        cVar.f(a10.mAvgVideoStreamBitrate);
        cVar.g(a10.mMinVideoStreamBitrate);
        cVar.h(a10.mMaxVideoDecodeCostTimeMs);
        cVar.i(a10.mAvgVideoDecodeCostTimeMs);
        cVar.j(a10.mMinVideoDecodeCostTimeMs);
        cVar.r(a10.mMaxVideoGopSize);
        cVar.q(a10.mAvgVideoGopSize);
        cVar.p(a10.mMinVideoGopSize);
        cVar.s(a10.mVideoDecodeFrameCount);
        cVar.t(a10.mVideoRenderFrameCount);
        cVar.k(a10.mVideoBufferedDurationMs);
        cVar.l(a10.mAudioBufferedDurationMs);
        c(this.f34275k);
        com.tencent.thumbplayer.tplayer.a.b.a aVar = this.f34275k.f34116a;
        int i9 = this.f34263g;
        this.f34263g = i9 + 1;
        aVar.a(i9);
        this.f34262f.b(this.f34275k.f34116a);
        cVar.a(this.f34275k.f34116a);
        Map<String, String> b10 = cVar.b();
        a("periodReportEvent", b10);
        b("live_period_report", b10);
        com.tencent.thumbplayer.common.a.b.a("live_period_report", b10);
        d dVar2 = this.f34275k;
        dVar2.f34271l = 0;
        dVar2.f34270k = 0L;
        dVar2.f34272m = 0L;
        dVar2.f34116a.c((Map<String, String>) null);
        this.f34275k.f34116a.d((Map<String, String>) null);
    }

    private void g(b.a aVar) {
        if (!(aVar instanceof b.c)) {
            TPLogUtil.e("TPLiveReporter", "onBufferingStart fail:params is not match");
            return;
        }
        this.f34274j = true;
        this.f34275k.f34269j = ((b.c) aVar).b();
        TPLogUtil.i("TPLiveReporter", "Live onBufferingStart timeMs:" + this.f34275k.f34269j);
        d dVar = this.f34275k;
        dVar.f34272m = dVar.f34272m + (dVar.f34269j - dVar.f34267h);
    }

    private void h(b.a aVar) {
        if (!(aVar instanceof b.C0345b)) {
            TPLogUtil.e("TPLiveReporter", "onBufferingEnd fail:params is not match");
            return;
        }
        this.f34274j = false;
        long b10 = ((b.C0345b) aVar).b();
        d dVar = this.f34275k;
        long j10 = b10 - dVar.f34269j;
        dVar.f34267h = SystemClock.elapsedRealtime();
        TPLogUtil.i("TPLiveReporter", "Live onBufferingEnd bufferingCostTimeMs:".concat(String.valueOf(j10)));
        if (j10 <= 1200) {
            return;
        }
        d dVar2 = this.f34275k;
        dVar2.f34271l++;
        dVar2.f34270k += j10;
        dVar2.f34269j = 0L;
    }

    private void i(b.a aVar) {
        if (!(aVar instanceof b.e)) {
            TPLogUtil.e("TPLiveReporter", "onDTProcessUpdate fail:params is not match");
            return;
        }
        int d10 = ((b.e) aVar).d();
        TPLogUtil.i("TPLiveReporter", "Vod onDTProcessUpdate speedKbps:".concat(String.valueOf(d10)));
        this.f34275k.f34117b = d10;
    }

    private void j(b.a aVar) {
        if (!(aVar instanceof b.d)) {
            TPLogUtil.e("TPLiveReporter", "onDTCdnUrlUpdate fail:params is not match");
            return;
        }
        b.d dVar = (b.d) aVar;
        String d10 = dVar.d();
        String e10 = dVar.e();
        TPLogUtil.i("TPLiveReporter", "Vod onDTCdnUrlUpdate cdnIp:" + d10 + " uIp:" + e10);
        d dVar2 = this.f34275k;
        dVar2.f34118c = d10;
        dVar2.f34119d = e10;
    }

    private void k(b.a aVar) {
        if (!(aVar instanceof b.f)) {
            TPLogUtil.e("TPLiveReporter", "onDTProtocolUpdate fail:params is not match");
            return;
        }
        String d10 = ((b.f) aVar).d();
        TPLogUtil.i("TPLiveReporter", "Vod onDTProtocolUpdate protocolVer:".concat(String.valueOf(d10)));
        this.f34275k.f34120e = d10;
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a() {
        super.a();
        d();
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(int i9, b.a aVar) {
        if (i9 == 2) {
            c(aVar);
        } else if (i9 == 3) {
            d(aVar);
        } else if (i9 == 5) {
            e(aVar);
        } else if (i9 == 6) {
            f(aVar);
        } else if (i9 == 9) {
            g(aVar);
        } else if (i9 == 10) {
            h(aVar);
        } else if (i9 == 1001) {
            e();
        } else if (i9 == 1002) {
            f();
        } else {
            switch (i9) {
                case 100:
                    i(aVar);
                    return;
                case 101:
                    j(aVar);
                    return;
                case 102:
                    k(aVar);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(Context context, l lVar) {
        super.a(context, lVar);
        this.f34262f.a(this.f34275k.f34116a);
    }
}
