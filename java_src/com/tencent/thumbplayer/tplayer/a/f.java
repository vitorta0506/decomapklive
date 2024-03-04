package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyHelper;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.d.b;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class f extends c {

    /* renamed from: i  reason: collision with root package name */
    private b f34280i = new b();

    private void c() {
        com.tencent.thumbplayer.tplayer.a.a.a aVar = this.f34258b;
        if (aVar == null) {
            TPLogUtil.e("TPPrepareFailReporter", "fillStreamInfoToCommonParams fail, not set mPlayerInfoGetter");
            return;
        }
        TPGeneralPlayFlowParams a10 = aVar.a();
        this.f34280i.f34116a.a(this.f34261e.f34307i);
        this.f34280i.f34116a.f(this.f34261e.f34305g);
        this.f34280i.f34116a.j(this.f34261e.f34303e);
        this.f34280i.f34116a.l(TPDownloadProxyHelper.getNativeLibVersion());
        b bVar = this.f34280i;
        bVar.f34116a.k(bVar.f34117b);
        b bVar2 = this.f34280i;
        bVar2.f34116a.o(bVar2.f34120e);
        b bVar3 = this.f34280i;
        bVar3.f34116a.m(bVar3.f34119d);
        b bVar4 = this.f34280i;
        bVar4.f34116a.n(bVar4.f34118c);
        this.f34280i.f34116a.l(this.f34261e.f34306h);
        this.f34264h.put("buffermintotaldurationms", Long.valueOf(a10.mPlayerConfigParams.mBufferMinTotalDurationMs));
        this.f34264h.put("buffermaxtotaldurationms", Long.valueOf(a10.mPlayerConfigParams.mBufferMaxTotalDurationMs));
        this.f34264h.put("preloadtotaldurationms", Long.valueOf(a10.mPlayerConfigParams.mPreloadTotalDurationMs));
        this.f34264h.put("minbufferingdurationms", Long.valueOf(a10.mPlayerConfigParams.mMinBufferingDurationMs));
        this.f34264h.put("minbufferingtimems", Long.valueOf(a10.mPlayerConfigParams.mMinBufferingTimeMs));
        this.f34264h.put("maxbufferingtimems", Long.valueOf(a10.mPlayerConfigParams.mMaxBufferingTimeMs));
        this.f34264h.put("reducelatencyaction", Integer.valueOf(a10.mPlayerConfigParams.mReduceLatencyAction));
        this.f34264h.put("reducelatencyspeed", Float.valueOf(a10.mPlayerConfigParams.mReduceLatencyPlaySpeed));
        this.f34264h.put("buffertype", Integer.valueOf(a10.mPlayerConfigParams.mBufferType));
        try {
            this.f34280i.f34116a.p(new JSONObject(this.f34264h).toString());
        } catch (NullPointerException e10) {
            TPLogUtil.e("TPPrepareFailReporter", e10);
        }
    }

    private void c(b.a aVar) {
        if (!(aVar instanceof b.i)) {
            TPLogUtil.e("TPPrepareFailReporter", "onPrepareError fail:params is not match");
            return;
        }
        b.i iVar = (b.i) aVar;
        int d10 = iVar.d();
        int e10 = iVar.e();
        TPLogUtil.i("TPPrepareFailReporter", "onPrepareError errorType:" + d10 + " errorCode:" + e10);
        com.tencent.thumbplayer.tplayer.a.b.b bVar = new com.tencent.thumbplayer.tplayer.a.b.b();
        bVar.o(e10);
        c();
        b(this.f34280i);
        this.f34262f.b(this.f34280i.f34116a);
        bVar.a(this.f34280i.f34116a);
        Map<String, String> b10 = bVar.b();
        a("onPrepareError", b10);
        b("prepare_fail", b10);
        com.tencent.thumbplayer.common.a.b.a("prepare_fail", b10);
    }

    private void d(b.a aVar) {
        if (!(aVar instanceof b.e)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProcessUpdate fail:params is not match");
            return;
        }
        int d10 = ((b.e) aVar).d();
        TPLogUtil.i("TPPrepareFailReporter", "Vod onDTProcessUpdate speedKbps:".concat(String.valueOf(d10)));
        this.f34280i.f34117b = d10;
    }

    private void e(b.a aVar) {
        if (!(aVar instanceof b.d)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTCdnUrlUpdate fail:params is not match");
            return;
        }
        b.d dVar = (b.d) aVar;
        String d10 = dVar.d();
        String e10 = dVar.e();
        TPLogUtil.i("TPPrepareFailReporter", "Vod onDTCdnUrlUpdate cdnIp:" + d10 + " uIp:" + e10);
        b bVar = this.f34280i;
        bVar.f34118c = d10;
        bVar.f34119d = e10;
    }

    private void f(b.a aVar) {
        if (!(aVar instanceof b.f)) {
            TPLogUtil.e("TPPrepareFailReporter", "onDTProtocolUpdate fail:params is not match");
            return;
        }
        String d10 = ((b.f) aVar).d();
        TPLogUtil.i("TPPrepareFailReporter", "Vod onDTProtocolUpdate protocolVer:".concat(String.valueOf(d10)));
        this.f34280i.f34120e = d10;
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a() {
        super.a();
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(int i9, b.a aVar) {
        if (i9 == 6) {
            c(aVar);
            return;
        }
        switch (i9) {
            case 100:
                d(aVar);
                return;
            case 101:
                e(aVar);
                return;
            case 102:
                f(aVar);
                return;
            default:
                return;
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.a.c, com.tencent.thumbplayer.tplayer.a.a
    public void a(Context context, l lVar) {
        super.a(context, lVar);
        this.f34262f.a(this.f34280i.f34116a);
    }
}
