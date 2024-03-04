package com.tencent.thumbplayer.adapter;

import android.text.TextUtils;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.utils.TPLogUtil;
/* loaded from: classes4.dex */
public class g implements c.a, c.b, c.InterfaceC0340c, c.d, c.e, c.f, c.g, c.h, c.i, c.j, c.k, c.l, c.m, c.n, c.o, c.p {

    /* renamed from: a  reason: collision with root package name */
    private c.i f33701a;

    /* renamed from: b  reason: collision with root package name */
    private c.InterfaceC0340c f33702b;

    /* renamed from: c  reason: collision with root package name */
    private c.h f33703c;

    /* renamed from: d  reason: collision with root package name */
    private c.f f33704d;

    /* renamed from: e  reason: collision with root package name */
    private c.j f33705e;

    /* renamed from: f  reason: collision with root package name */
    private c.p f33706f;

    /* renamed from: g  reason: collision with root package name */
    private c.l f33707g;

    /* renamed from: h  reason: collision with root package name */
    private c.n f33708h;

    /* renamed from: i  reason: collision with root package name */
    private c.a f33709i;

    /* renamed from: j  reason: collision with root package name */
    private c.m f33710j;

    /* renamed from: k  reason: collision with root package name */
    private c.o f33711k;

    /* renamed from: l  reason: collision with root package name */
    private c.b f33712l;

    /* renamed from: m  reason: collision with root package name */
    private c.k f33713m;

    /* renamed from: n  reason: collision with root package name */
    private c.e f33714n;

    /* renamed from: o  reason: collision with root package name */
    private c.g f33715o;

    /* renamed from: p  reason: collision with root package name */
    private c.d f33716p;

    /* renamed from: q  reason: collision with root package name */
    private a f33717q;

    /* renamed from: r  reason: collision with root package name */
    private String f33718r = "TPPlayerListenerS";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a implements c.a, c.b, c.InterfaceC0340c, c.d, c.e, c.f, c.g, c.h, c.i, c.j, c.k, c.l, c.m, c.n, c.o, c.p {

        /* renamed from: a  reason: collision with root package name */
        private String f33719a;

        public a(String str) {
            this.f33719a = str;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.o
        public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onVideoProcessFrameOut");
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.d
        public TPRemoteSdpInfo a(String str, int i9) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onSdpExchange");
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.i
        public void a() {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onPrepared");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.f
        public void a(int i9, int i10, long j10, long j11) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onError");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.h
        public void a(int i9, long j10, long j11, Object obj) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onInfo");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.p
        public void a(long j10, long j11) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onVideoSizeChanged");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.a
        public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onAudioFrameOut");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.g
        public void a(TPDrmInfo tPDrmInfo) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onEventRecord");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.e
        public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onDetailInfo");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.l
        public void a(TPSubtitleData tPSubtitleData) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onSubtitleData");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.m
        public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , TPSubtitleFrameBuffer");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.n
        public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onVideoFrameOut");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.b
        public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onAudioProcessFrameOut");
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.InterfaceC0340c
        public void b() {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onCompletion");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.k
        public void b(int i9, int i10) {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onStateChange");
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.j
        public void c() {
            TPLogUtil.i(this.f33719a, " empty base listener , notify , onSeekComplete");
        }
    }

    public g(String str) {
        a(str);
        a aVar = new a(this.f33718r);
        this.f33717q = aVar;
        this.f33701a = aVar;
        this.f33702b = aVar;
        this.f33703c = aVar;
        this.f33704d = aVar;
        this.f33705e = aVar;
        this.f33706f = aVar;
        this.f33707g = aVar;
        this.f33708h = aVar;
        this.f33709i = aVar;
        this.f33710j = aVar;
        this.f33711k = aVar;
        this.f33712l = aVar;
        this.f33713m = aVar;
        this.f33714n = aVar;
        this.f33715o = aVar;
        this.f33716p = aVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.o
    public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        return this.f33711k.a(tPPostProcessFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.d
    public TPRemoteSdpInfo a(String str, int i9) {
        return this.f33716p.a(str, i9);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.i
    public void a() {
        this.f33701a.a();
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.f
    public void a(@TPCommonEnum.TPErrorType int i9, int i10, long j10, long j11) {
        this.f33704d.a(i9, i10, j10, j11);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.h
    public void a(int i9, long j10, long j11, Object obj) {
        this.f33703c.a(i9, j10, j11, obj);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.p
    public void a(long j10, long j11) {
        this.f33706f.a(j10, j11);
    }

    public void a(c.a aVar) {
        if (aVar == null) {
            aVar = this.f33717q;
        }
        this.f33709i = aVar;
    }

    public void a(c.b bVar) {
        if (bVar == null) {
            bVar = this.f33717q;
        }
        this.f33712l = bVar;
    }

    public void a(c.InterfaceC0340c interfaceC0340c) {
        if (interfaceC0340c == null) {
            interfaceC0340c = this.f33717q;
        }
        this.f33702b = interfaceC0340c;
    }

    public void a(c.d dVar) {
        if (dVar == null) {
            dVar = this.f33717q;
        }
        this.f33716p = dVar;
    }

    public void a(c.e eVar) {
        if (eVar == null) {
            eVar = this.f33717q;
        }
        this.f33714n = eVar;
    }

    public void a(c.f fVar) {
        if (fVar == null) {
            fVar = this.f33717q;
        }
        this.f33704d = fVar;
    }

    public void a(c.g gVar) {
        if (gVar == null) {
            gVar = this.f33717q;
        }
        this.f33715o = gVar;
    }

    public void a(c.h hVar) {
        if (hVar == null) {
            hVar = this.f33717q;
        }
        this.f33703c = hVar;
    }

    public void a(c.i iVar) {
        if (iVar == null) {
            iVar = this.f33717q;
        }
        this.f33701a = iVar;
    }

    public void a(c.j jVar) {
        if (jVar == null) {
            jVar = this.f33717q;
        }
        this.f33705e = jVar;
    }

    public void a(c.k kVar) {
        if (kVar == null) {
            kVar = this.f33717q;
        }
        this.f33713m = kVar;
    }

    public void a(c.l lVar) {
        if (lVar == null) {
            lVar = this.f33717q;
        }
        this.f33707g = lVar;
    }

    public void a(c.m mVar) {
        if (mVar == null) {
            mVar = this.f33717q;
        }
        this.f33710j = mVar;
    }

    public void a(c.n nVar) {
        if (nVar == null) {
            nVar = this.f33717q;
        }
        this.f33708h = nVar;
    }

    public void a(c.o oVar) {
        if (oVar == null) {
            oVar = this.f33717q;
        }
        this.f33711k = oVar;
    }

    public void a(c.p pVar) {
        if (pVar == null) {
            pVar = this.f33717q;
        }
        this.f33706f = pVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.a
    public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
        this.f33709i.a(tPAudioFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.g
    public void a(TPDrmInfo tPDrmInfo) {
        this.f33715o.a(tPDrmInfo);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.e
    public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
        this.f33714n.a(tPPlayerDetailInfo);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.l
    public void a(TPSubtitleData tPSubtitleData) {
        this.f33707g.a(tPSubtitleData);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.m
    public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
        this.f33710j.a(tPSubtitleFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.n
    public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
        this.f33708h.a(tPVideoFrameBuffer);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "TPPlayerListenerS";
        }
        this.f33718r = str;
        a aVar = this.f33717q;
        if (aVar != null) {
            aVar.f33719a = this.f33718r;
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.b
    public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        return this.f33712l.b(tPPostProcessFrameBuffer);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.InterfaceC0340c
    public void b() {
        this.f33702b.b();
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.k
    public void b(int i9, int i10) {
        this.f33713m.b(i9, i10);
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.j
    public void c() {
        this.f33705e.c();
    }

    public void d() {
        a aVar = this.f33717q;
        this.f33701a = aVar;
        this.f33702b = aVar;
        this.f33703c = aVar;
        this.f33704d = aVar;
        this.f33705e = aVar;
        this.f33706f = aVar;
        this.f33707g = aVar;
        this.f33708h = aVar;
        this.f33709i = aVar;
        this.f33710j = aVar;
        this.f33713m = aVar;
        this.f33711k = aVar;
        this.f33712l = aVar;
        this.f33714n = aVar;
        this.f33715o = aVar;
        this.f33716p = aVar;
    }
}
