package com.tencent.thumbplayer.adapter.a.a;

import android.text.TextUtils;
import com.tencent.thumbplayer.adapter.a.a.a;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.core.common.TPMediaTrackInfo;
import com.tencent.thumbplayer.core.common.TPSubtitleFrame;
import com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback;
import com.tencent.thumbplayer.core.subtitle.TPNativeSubtitleRenderParams;
import com.tencent.thumbplayer.core.subtitle.TPSubtitleParser;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class c implements com.tencent.thumbplayer.adapter.a.a.a {

    /* renamed from: b  reason: collision with root package name */
    TPNativeSubtitleRenderParams f33479b;

    /* renamed from: c  reason: collision with root package name */
    private a.InterfaceC0337a f33480c;

    /* renamed from: d  reason: collision with root package name */
    private a.d f33481d;

    /* renamed from: e  reason: collision with root package name */
    private a.c f33482e;

    /* renamed from: f  reason: collision with root package name */
    private a.b f33483f;

    /* renamed from: g  reason: collision with root package name */
    private TPSubtitleParser f33484g;

    /* renamed from: h  reason: collision with root package name */
    private String f33485h;

    /* renamed from: a  reason: collision with root package name */
    int f33478a = 0;

    /* renamed from: i  reason: collision with root package name */
    private Future<?> f33486i = null;

    /* renamed from: j  reason: collision with root package name */
    private final Object f33487j = new Object();

    /* renamed from: k  reason: collision with root package name */
    private a f33488k = a.IDLE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum a {
        IDLE,
        INITED,
        PREPARED,
        STOPED,
        ERROR
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j10) {
        if (this.f33488k != a.INITED) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "prepare, illegalState, state:" + this.f33488k);
            return;
        }
        TPMediaTrackInfo[] trackInfo = this.f33484g.getTrackInfo();
        if (trackInfo == null || trackInfo.length <= 0) {
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "prepare, err, trackInfos is empty.");
            this.f33488k = a.ERROR;
        } else if (trackInfo[0].trackType != 3) {
            this.f33488k = a.ERROR;
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "prepare, err, track type not match.");
        } else {
            this.f33484g.selectTrackAsync(0, j10);
            this.f33488k = a.PREPARED;
            if (this.f33478a == 0) {
                synchronized (this.f33487j) {
                    Future<?> future = this.f33486i;
                    if (future != null) {
                        future.cancel(true);
                        this.f33486i = null;
                    }
                    this.f33486i = o.a().e().scheduleAtFixedRate(new Runnable() { // from class: com.tencent.thumbplayer.adapter.a.a.c.2
                        @Override // java.lang.Runnable
                        public void run() {
                            c.this.b(0);
                        }
                    }, 0L, 200L, TimeUnit.MILLISECONDS);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i9) {
        a.d dVar = this.f33481d;
        a.InterfaceC0337a interfaceC0337a = this.f33480c;
        if (dVar == null || interfaceC0337a == null) {
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "subPollFunc, posLis:" + dVar + ", subLis:" + interfaceC0337a);
            return;
        }
        long a10 = dVar.a();
        if (a10 < 0) {
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "subPollFunc, cur position:".concat(String.valueOf(a10)));
            return;
        }
        String subtitleText = this.f33484g.getSubtitleText(a10, i9);
        if (TextUtils.equals(this.f33485h, subtitleText)) {
            return;
        }
        this.f33485h = subtitleText;
        interfaceC0337a.a(new a.e(subtitleText));
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a() {
        if (this.f33488k != a.INITED) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "prepare, illegalState, state:" + this.f33488k);
            return;
        }
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "prepare.");
        this.f33484g.init();
        this.f33484g.loadAsync();
        TPNativeSubtitleRenderParams tPNativeSubtitleRenderParams = this.f33479b;
        if (tPNativeSubtitleRenderParams != null) {
            this.f33484g.setRenderParams(tPNativeSubtitleRenderParams);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(int i9) {
        this.f33478a = i9;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(a.InterfaceC0337a interfaceC0337a) {
        this.f33480c = interfaceC0337a;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(a.b bVar) {
        this.f33483f = bVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(a.c cVar) {
        this.f33482e = cVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(a.d dVar) {
        this.f33481d = dVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(TPSubtitleRenderModel tPSubtitleRenderModel) {
        TPNativeSubtitleRenderParams a10 = com.tencent.thumbplayer.adapter.a.b.c.a(tPSubtitleRenderModel);
        this.f33479b = a10;
        TPSubtitleParser tPSubtitleParser = this.f33484g;
        if (tPSubtitleParser != null) {
            tPSubtitleParser.setRenderParams(a10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void a(String str, Map<String, String> map, final long j10) {
        if (this.f33488k != a.IDLE) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "setDataSource, illegalState, state:" + this.f33488k);
        } else if (TextUtils.isEmpty(str)) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "setDataSource, illegal argument, url:".concat(String.valueOf(str)));
        } else {
            TPLogUtil.i("TPSysPlayerExternalSubtitle", "setDataSource, url: ".concat(String.valueOf(str)));
            if (this.f33484g != null) {
                TPLogUtil.w("TPSysPlayerExternalSubtitle", "setDataSource, mTpSubParser != null.");
                try {
                    this.f33484g.stop();
                    this.f33484g.unInit();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.f33484g = null;
            }
            this.f33484g = new TPSubtitleParser(str, map, new ITPSubtitleParserCallback() { // from class: com.tencent.thumbplayer.adapter.a.a.c.1
                @Override // com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback
                public long onGetCurrentPlayPositionMs() {
                    if (c.this.f33481d != null) {
                        return c.this.f33481d.a();
                    }
                    return 0L;
                }

                @Override // com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback
                public void onLoadResult(int i9) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onLoadResult, index:".concat(String.valueOf(i9)));
                    c.this.a(j10);
                }

                @Override // com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback
                public void onSelectResult(int i9, long j11) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onSelectResult, errCode:" + i9 + ", selectOpaque:" + j11 + ", opaque =" + j10);
                    if (i9 == 0 && c.this.f33482e != null) {
                        c.this.f33482e.a(j10);
                    } else if (i9 == 0 || c.this.f33482e == null) {
                    } else {
                        c.this.f33482e.a(i9, j10);
                    }
                }

                @Override // com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback
                public void onSubtitleError(int i9, int i10) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onSubtitleError, index:" + i9 + ", errorCode:" + i10);
                    c.this.f33483f.a(i9, i10);
                }

                @Override // com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback
                public void onSubtitleFrame(TPSubtitleFrame tPSubtitleFrame) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onSubtitleFrame");
                    if (c.this.f33480c != null) {
                        c.this.f33480c.a(tPSubtitleFrame);
                    }
                }

                @Override // com.tencent.thumbplayer.core.subtitle.ITPSubtitleParserCallback
                public void onSubtitleNote(String str2) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onSubtitleNote");
                    if (c.this.f33480c != null) {
                        c.this.f33480c.a(str2);
                    }
                }
            }, this.f33478a);
            this.f33488k = a.INITED;
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void b() {
        if (this.f33488k == a.PREPARED) {
            TPLogUtil.i("TPSysPlayerExternalSubtitle", "startAsync");
            this.f33484g.startAsync();
            return;
        }
        TPLogUtil.e("TPSysPlayerExternalSubtitle", "startAsync, illegalState, state:" + this.f33488k);
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void c() {
        if (this.f33488k == a.PREPARED) {
            TPLogUtil.i("TPSysPlayerExternalSubtitle", "pauseAsync");
            this.f33484g.pauseAsync();
            return;
        }
        TPLogUtil.e("TPSysPlayerExternalSubtitle", "pauseAsync, illegalState, state:" + this.f33488k);
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void d() {
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "stop.");
        a aVar = this.f33488k;
        if (aVar == a.INITED || aVar == a.PREPARED || aVar == a.ERROR) {
            TPSubtitleParser tPSubtitleParser = this.f33484g;
            if (tPSubtitleParser != null) {
                try {
                    tPSubtitleParser.stop();
                    this.f33484g.unInit();
                } catch (Exception e10) {
                    TPLogUtil.e("TPSysPlayerExternalSubtitle", e10);
                }
            }
            this.f33484g = null;
        }
        if (this.f33478a == 0) {
            synchronized (this.f33487j) {
                Future<?> future = this.f33486i;
                if (future != null) {
                    future.cancel(true);
                    this.f33486i = null;
                }
            }
        }
        this.f33488k = a.STOPED;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void e() {
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "reset.");
        if (this.f33488k != a.IDLE) {
            TPSubtitleParser tPSubtitleParser = this.f33484g;
            if (tPSubtitleParser != null) {
                try {
                    tPSubtitleParser.stop();
                    this.f33484g.unInit();
                } catch (Exception e10) {
                    TPLogUtil.e("TPSysPlayerExternalSubtitle", e10);
                }
            }
            this.f33484g = null;
        }
        synchronized (this.f33487j) {
            Future<?> future = this.f33486i;
            if (future != null) {
                future.cancel(true);
                this.f33486i = null;
            }
        }
        this.f33488k = a.IDLE;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a.a
    public void f() {
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "release.");
        this.f33481d = null;
        this.f33480c = null;
    }
}
