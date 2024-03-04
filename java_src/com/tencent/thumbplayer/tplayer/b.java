package com.tencent.thumbplayer.tplayer;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.api.ITPPlayer;
import com.tencent.thumbplayer.api.ITPPlayerListener;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.api.TPCaptureParams;
import com.tencent.thumbplayer.api.TPErrorCode;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.proxy.ITPPlayerProxy;
import com.tencent.thumbplayer.api.proxy.ITPPlayerProxyListener;
import com.tencent.thumbplayer.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.api.report.ITPBusinessReportManager;
import com.tencent.thumbplayer.api.reportv2.ITPExtendReportController;
import com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoaderListener;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.d.b;
import com.tencent.thumbplayer.tplayer.a.g;
import com.tencent.thumbplayer.tplayer.e;
import com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams;
import com.tencent.thumbplayer.utils.j;
import com.tencent.thumbplayer.utils.n;
import com.tencent.thumbplayer.utils.o;
import com.tencent.thumbplayer.utils.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public class b implements ITPPlayer {
    private static final SparseIntArray C;

    /* renamed from: a  reason: collision with root package name */
    private static String f34331a = "api call:";

    /* renamed from: u  reason: collision with root package name */
    private static AtomicInteger f34332u = new AtomicInteger(1000);
    private int A;
    private int B;

    /* renamed from: b  reason: collision with root package name */
    private final com.tencent.thumbplayer.adapter.a f34333b;

    /* renamed from: c  reason: collision with root package name */
    private c f34334c;

    /* renamed from: d  reason: collision with root package name */
    private com.tencent.thumbplayer.c.a f34335d;

    /* renamed from: e  reason: collision with root package name */
    private com.tencent.thumbplayer.tplayer.plugins.report.b f34336e;

    /* renamed from: f  reason: collision with root package name */
    private com.tencent.thumbplayer.c.a.a f34337f;

    /* renamed from: g  reason: collision with root package name */
    private com.tencent.thumbplayer.tplayer.plugins.b f34338g;

    /* renamed from: h  reason: collision with root package name */
    private HandlerThread f34339h;

    /* renamed from: i  reason: collision with root package name */
    private Looper f34340i;

    /* renamed from: j  reason: collision with root package name */
    private a f34341j;

    /* renamed from: k  reason: collision with root package name */
    private com.tencent.thumbplayer.tplayer.a f34342k;

    /* renamed from: l  reason: collision with root package name */
    private String f34343l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f34344m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f34345n;

    /* renamed from: o  reason: collision with root package name */
    private int f34346o;

    /* renamed from: p  reason: collision with root package name */
    private ArrayList<String> f34347p;

    /* renamed from: q  reason: collision with root package name */
    private long f34348q;

    /* renamed from: r  reason: collision with root package name */
    private long f34349r;

    /* renamed from: s  reason: collision with root package name */
    private long f34350s;

    /* renamed from: t  reason: collision with root package name */
    private com.tencent.thumbplayer.e.a f34351t;

    /* renamed from: v  reason: collision with root package name */
    private AtomicInteger f34352v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f34353w;

    /* renamed from: x  reason: collision with root package name */
    private g f34354x;

    /* renamed from: y  reason: collision with root package name */
    private Map<Long, Long> f34355y;

    /* renamed from: z  reason: collision with root package name */
    private long f34356z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends Handler {

        /* renamed from: b  reason: collision with root package name */
        private b f34358b;

        a(b bVar) {
            this.f34358b = bVar;
        }

        a(b bVar, Looper looper) {
            super(looper);
            this.f34358b = bVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            c cVar = b.this.f34334c;
            if (cVar == null) {
                return;
            }
            int i9 = message.what;
            if (i9 == 257) {
                b.this.f34351t.c("onPrepared");
                b.this.c(1004);
                cVar.onPrepared(this.f34358b);
            } else if (i9 == 1256) {
                b.this.a(message);
            } else {
                switch (i9) {
                    case 260:
                        cVar.onCompletion(this.f34358b);
                        return;
                    case 261:
                        b.this.b(message.arg1);
                        e.a aVar = (e.a) message.obj;
                        if (aVar != null && !b.this.f34335d.c()) {
                            cVar.onInfo(this.f34358b, message.arg1, aVar.f34381a, aVar.f34382b, aVar.f34383c);
                            return;
                        } else if (aVar != null) {
                            cVar.onInfo(this.f34358b, message.arg1, aVar.f34381a, aVar.f34382b, aVar.f34383c);
                            return;
                        } else {
                            return;
                        }
                    case 262:
                        e.a aVar2 = (e.a) message.obj;
                        if (aVar2 != null) {
                            cVar.onError(this.f34358b, message.arg1, message.arg2, aVar2.f34381a, aVar2.f34382b);
                            return;
                        }
                        return;
                    case TPReportParams.LIVE_STEP_PLAY /* 263 */:
                        cVar.onSeekComplete(this.f34358b);
                        return;
                    case 264:
                        e.a aVar3 = (e.a) message.obj;
                        if (aVar3 != null) {
                            cVar.onVideoSizeChanged(this.f34358b, aVar3.f34381a, aVar3.f34382b);
                            return;
                        }
                        return;
                    case 265:
                        cVar.onSubtitleData(this.f34358b, (TPSubtitleData) message.obj);
                        return;
                    case 266:
                        cVar.onVideoFrameOut(this.f34358b, (TPVideoFrameBuffer) message.obj);
                        return;
                    case 267:
                        cVar.onAudioFrameOut(this.f34358b, (TPAudioFrameBuffer) message.obj);
                        return;
                    case 268:
                        cVar.onError(this.f34358b, message.arg1, message.arg2, 0L, 0L);
                        return;
                    case 269:
                        cVar.onInfo(this.f34358b, 1002, message.arg1, message.arg2, message.obj);
                        return;
                    case 270:
                        cVar.onInfo(this.f34358b, 1003, message.arg1, message.arg2, message.obj);
                        return;
                    case 271:
                        cVar.onInfo(this.f34358b, 1001, message.arg1, message.arg2, message.obj);
                        return;
                    case 272:
                        cVar.onInfo(this.f34358b, 1004, message.arg1, message.arg2, message.obj);
                        return;
                    case 273:
                        cVar.onInfo(this.f34358b, 1005, message.arg1, message.arg2, message.obj);
                        return;
                    case 274:
                        cVar.onInfo(this.f34358b, 1006, message.arg1, message.arg2, message.obj);
                        return;
                    case 275:
                        cVar.onInfo(this.f34358b, 1007, message.arg1, message.arg2, message.obj);
                        return;
                    case 276:
                        cVar.onInfo(this.f34358b, 1008, message.arg1, message.arg2, message.obj);
                        return;
                    case 277:
                        cVar.onStateChange(message.arg1, message.arg2);
                        return;
                    case 278:
                        if (b.this.f34333b != null) {
                            try {
                                b.this.f34333b.a(new TPOptionalParam().buildLong(8000, message.arg1));
                            } catch (IllegalStateException e10) {
                                b.this.f34351t.a(e10);
                            }
                        }
                        if (b.this.f34345n) {
                            cVar.onInfo(this.f34358b, 1010, message.arg1, message.arg2, message.obj);
                            return;
                        }
                        return;
                    case 279:
                        cVar.onSubtitleFrameOut(this.f34358b, (TPSubtitleFrameBuffer) message.obj);
                        return;
                    case 280:
                        cVar.onStopAsyncComplete(this.f34358b);
                        return;
                    case 281:
                        cVar.onInfo(this.f34358b, 1015, message.arg1, message.arg2, message.obj);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* renamed from: com.tencent.thumbplayer.tplayer.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0353b implements c.a, c.b, c.InterfaceC0340c, c.d, c.e, c.f, c.h, c.i, c.j, c.k, c.l, c.m, c.n, c.o, c.p, ITPPlayListener {
        C0353b() {
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.o
        public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            c cVar = b.this.f34334c;
            if (cVar != null) {
                return cVar.onVideoProcessFrameOut(b.this, tPPostProcessFrameBuffer);
            }
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.d
        public TPRemoteSdpInfo a(String str, int i9) {
            c cVar = b.this.f34334c;
            if (cVar != null) {
                return cVar.onSdpExchange(b.this, str, i9);
            }
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.i
        public void a() {
            int i9;
            b.this.updateTaskInfo(TPDownloadProxyEnum.TASKINFO_GET_METADATA_PLAY_OFFSET, 1);
            b.this.f34335d.a(0);
            com.tencent.thumbplayer.adapter.b e10 = b.this.f34333b.e();
            String str = e10.a() + ProxyConfig.MATCH_ALL_SCHEMES + e10.b();
            TPTrackInfo[] r10 = b.this.f34333b.r();
            if (r10 != null) {
                i9 = 0;
                for (TPTrackInfo tPTrackInfo : r10) {
                    if (tPTrackInfo.trackType == 2) {
                        i9++;
                    }
                }
            } else {
                i9 = 0;
            }
            b.this.a(103, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("playertype", Integer.valueOf(b.this.f34333b.d())).a("definition", str).a("rate", Long.valueOf(e10.f() / 8000)).a("duration", Long.valueOf(e10.j())).a("fmt", e10.c()).a("etime", Long.valueOf(System.currentTimeMillis())).a("multitrack", Boolean.valueOf(i9 > 1)).a());
            b.this.a(257, 0, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.f
        public void a(int i9, int i10, long j10, long j11) {
            String g10 = b.this.f34335d.g();
            b.this.f34351t.c("onError playerErrorCodeStr=".concat(String.valueOf(g10)));
            if (!TextUtils.isEmpty(g10)) {
                try {
                    i10 = Integer.parseInt(g10);
                    i9 = TPErrorCode.TP_ERROR_TYPE_DOWNLOAD_PROXY;
                } catch (Exception e10) {
                    b.this.f34351t.a(e10);
                }
            }
            b.this.a(i9, i10);
            com.tencent.thumbplayer.e.a aVar = b.this.f34351t;
            aVar.c("onError errorTypeReal=" + i9 + ", errorCodeReal=" + i10);
            e.a aVar2 = new e.a();
            aVar2.f34381a = j10;
            aVar2.f34382b = j11;
            b.this.a(262, i9, i10, (Object) aVar2);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.h
        public void a(int i9, long j10, long j11, Object obj) {
            b.this.a(i9, j10, j11, obj);
            if (i9 == 1011) {
                b.this.a(obj);
            } else if (i9 == 1012) {
                b.this.b(obj);
            } else {
                if (i9 == 4) {
                    obj = Long.valueOf(b.this.b(((Long) obj).longValue(), "async call select track"));
                }
                e.a aVar = new e.a();
                aVar.f34381a = j10;
                aVar.f34382b = j11;
                aVar.f34383c = obj;
                b.this.a(261, i9, 0, (Object) aVar);
            }
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.p
        public void a(long j10, long j11) {
            e.a aVar = new e.a();
            aVar.f34381a = j10;
            aVar.f34382b = j11;
            b.this.a(264, 0, 0, (Object) aVar);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.a
        public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
            c cVar = b.this.f34334c;
            if (cVar != null) {
                cVar.onAudioFrameOut(b.this, tPAudioFrameBuffer);
            }
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.e
        public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
            c cVar = b.this.f34334c;
            if (cVar != null) {
                cVar.onDetailInfo(b.this, tPPlayerDetailInfo);
            }
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.l
        public void a(TPSubtitleData tPSubtitleData) {
            b.this.a(265, 0, 0, (Object) tPSubtitleData);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.m
        public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
            b.this.a(279, 0, 0, (Object) tPSubtitleFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.n
        public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
            c cVar = b.this.f34334c;
            if (cVar != null) {
                cVar.onVideoFrameOut(b.this, tPVideoFrameBuffer);
            }
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.b
        public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            c cVar = b.this.f34334c;
            if (cVar != null) {
                return cVar.onAudioProcessFrameOut(b.this, tPPostProcessFrameBuffer);
            }
            return null;
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.InterfaceC0340c
        public void b() {
            b.this.a(111, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 0).a());
            b.this.a(260, 0, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.k
        public void b(int i9, int i10) {
            b.this.a(277, i9, i10, (Object) null);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.j
        public void c() {
            b.this.e();
            b.this.a(110, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("petime", Long.valueOf(b.this.getCurrentPositionMs())).a());
            b.this.a((int) TPReportParams.LIVE_STEP_PLAY, 0, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getAdvRemainTime() {
            ITPPlayerProxyListener j10 = b.this.f34335d.j();
            if (j10 != null) {
                return j10.getAdvRemainTimeMs();
            }
            return -1L;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public String getContentType(int i9, String str) {
            if (b.this.f34337f == null) {
                b.this.f34351t.e("mAssetResourceLoader not set");
                return "";
            }
            return b.this.f34337f.c(i9, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int getCurrentPlayClipNo() {
            com.tencent.thumbplayer.adapter.a aVar = b.this.f34333b;
            if (aVar != null) {
                return aVar.a();
            }
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPlayOffset() {
            return b.this.f34333b.t();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPosition() {
            return b.this.getCurrentPositionMs();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public String getDataFilePath(int i9, String str) {
            if (b.this.f34337f == null) {
                b.this.f34351t.e("mAssetResourceLoader not set");
                return "";
            }
            return b.this.f34337f.b(i9, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getDataTotalSize(int i9, String str) {
            if (b.this.f34337f == null) {
                b.this.f34351t.e("mAssetResourceLoader not set");
                return -1L;
            }
            return b.this.f34337f.a(i9, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(long j10) {
            return null;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(String str) {
            return null;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getPlayerBufferLength() {
            com.tencent.thumbplayer.adapter.a aVar = b.this.f34333b;
            if (aVar != null) {
                return aVar.o() - b.this.f34333b.n();
            }
            return 0L;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlExpired(Map<String, String> map) {
            b.this.f34351t.c("onDownloadCdnUrlExpired");
            b.this.a(275, 0, 0, (Object) map);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4) {
            com.tencent.thumbplayer.e.a aVar = b.this.f34351t;
            aVar.c("onDownloadCdnUrlInfoUpdate, url:" + str + ", cdnIp:" + str2 + ", uip:" + str3 + ", errorCodeStr:" + str4);
            TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = new TPPlayerMsg.TPCDNURLInfo();
            tPCDNURLInfo.url = str;
            tPCDNURLInfo.cdnIp = str2;
            tPCDNURLInfo.uIp = str3;
            b.this.a(201, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("url", str).a("cdnip", str2).a("cdnuip", str3).a());
            b.this.a(270, 0, 0, (Object) tPCDNURLInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlUpdate(String str) {
            b.this.f34351t.c("onDownloadCdnUrlUpdate, url:".concat(String.valueOf(str)));
            b.this.a(269, 0, 0, (Object) str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadError(int i9, int i10, String str) {
            com.tencent.thumbplayer.e.a aVar = b.this.f34351t;
            aVar.c("onDownloadError, moduleID:" + i9 + ", errorCode:" + i10 + ", extInfo:" + str);
            b.this.a(i9, i10);
            b.this.a(268, i9, i10, (Object) str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadFinish() {
            b.this.f34351t.c("onDownloadFinish");
            b.this.a(271, 0, 0, (Object) 0);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProgressUpdate(int i9, int i10, long j10, long j11, String str) {
            long j12 = i9;
            b.this.f34348q = j12;
            b.this.f34349r = j10;
            b.this.f34350s = j11;
            TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = new TPPlayerMsg.TPDownLoadProgressInfo();
            tPDownLoadProgressInfo.playableDurationMS = j12;
            tPDownLoadProgressInfo.downloadSpeedKBps = i10;
            tPDownLoadProgressInfo.currentDownloadSize = j10;
            tPDownLoadProgressInfo.totalFileSize = j11;
            tPDownLoadProgressInfo.extraInfo = str;
            b.this.a(200, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("speed", Integer.valueOf(i10)).a("spanId", str).a());
            b.this.a(274, 0, 0, (Object) tPDownLoadProgressInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProtocolUpdate(String str, String str2) {
            com.tencent.thumbplayer.e.a aVar = b.this.f34351t;
            aVar.c("onDownloadProtocolUpdate, protocol:" + str + ", protocolVer:" + str2);
            TPPlayerMsg.TPProtocolInfo tPProtocolInfo = new TPPlayerMsg.TPProtocolInfo();
            tPProtocolInfo.protocolVersion = str2;
            tPProtocolInfo.protocolName = str;
            b.this.a(202, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("proto", str).a("protover", str2).a());
            b.this.a(273, 0, 0, (Object) tPProtocolInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadStatusUpdate(int i9) {
            if (i9 != b.this.f34346o) {
                b.this.f34351t.c("onDownloadStatusUpdate, status:".concat(String.valueOf(i9)));
                b.this.f34346o = i9;
            }
            b.this.a(272, i9, 0, (Object) null);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object onPlayCallback(int i9, Object obj, Object obj2, Object obj3, Object obj4) {
            if (i9 == 1) {
                b.this.f34351t.c("onDownloadNoMoreData");
                b.this.a(276, 0, 0, obj);
            } else if (i9 != 2) {
                if (i9 == 8) {
                    com.tencent.thumbplayer.e.a aVar = b.this.f34351t;
                    aVar.c("AB test info from download proxy received, key: " + obj + ", value: " + obj2);
                    HashMap hashMap = new HashMap();
                    hashMap.put((String) obj, Integer.valueOf((String) obj2));
                    b.this.a(281, 0, 0, (Object) hashMap);
                }
            } else if (obj3 instanceof Integer) {
                b.this.a(278, ((Integer) obj3).intValue(), 0, (Object) null);
            } else {
                b.this.f34351t.c("MESSAGE_NOTIFY_PLAYER_SWITCH_DEFINITION, err ext3.");
            }
            return null;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onReadData(int i9, String str, long j10, long j11) {
            if (b.this.f34337f == null) {
                b.this.f34351t.e("mAssetResourceLoader not set");
                return -1;
            }
            return b.this.f34337f.b(i9, str, j10, j11);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onStartReadData(int i9, String str, long j10, long j11) {
            if (b.this.f34337f == null) {
                b.this.f34351t.e("mAssetResourceLoader not set");
                return -1;
            }
            return b.this.f34337f.a(i9, str, j10, j11);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onStopReadData(int i9, String str, int i10) {
            if (b.this.f34337f == null) {
                b.this.f34351t.e("mAssetResourceLoader not set");
                return -1;
            }
            return b.this.f34337f.a(i9, str, i10);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        C = sparseIntArray;
        sparseIntArray.put(106, 1005);
        sparseIntArray.put(105, 1006);
    }

    public b(Context context) {
        this(context, null);
    }

    public b(Context context, Looper looper) {
        this(context, looper, null);
    }

    public b(Context context, Looper looper, Looper looper2) {
        this(context, looper, looper2, null);
    }

    public b(Context context, Looper looper, Looper looper2, com.tencent.thumbplayer.e.b bVar) {
        com.tencent.thumbplayer.e.b bVar2;
        this.f34343l = null;
        this.f34344m = true;
        this.f34345n = false;
        this.f34346o = -1;
        this.f34352v = new AtomicInteger(1000);
        this.f34353w = false;
        this.f34354x = null;
        this.f34355y = new HashMap();
        this.f34356z = 0L;
        if (bVar != null) {
            bVar2 = new com.tencent.thumbplayer.e.b(bVar, "TPPlayer");
        } else {
            com.tencent.thumbplayer.e.b bVar3 = new com.tencent.thumbplayer.e.b("ThumbPlayer", String.valueOf(f34332u.incrementAndGet()), String.valueOf(this.f34352v.incrementAndGet()), "TPPlayer");
            this.f34353w = true;
            bVar2 = bVar3;
        }
        com.tencent.thumbplayer.e.a aVar = new com.tencent.thumbplayer.e.a(bVar2);
        this.f34351t = aVar;
        aVar.c("create TPPlayer");
        this.f34342k = new com.tencent.thumbplayer.tplayer.a(context.getApplicationContext());
        this.f34338g = new com.tencent.thumbplayer.tplayer.plugins.c();
        com.tencent.thumbplayer.tplayer.plugins.report.b bVar4 = new com.tencent.thumbplayer.tplayer.plugins.report.b(this.f34342k.a());
        this.f34336e = bVar4;
        this.f34338g.a(bVar4);
        a(100, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
        C0353b c0353b = new C0353b();
        this.f34334c = new c(this.f34351t.b());
        com.tencent.thumbplayer.adapter.a a10 = com.tencent.thumbplayer.adapter.e.a(bVar2, this.f34342k);
        this.f34333b = a10;
        a10.a((c.i) c0353b);
        a10.a((c.InterfaceC0340c) c0353b);
        a10.a((c.h) c0353b);
        a10.a((c.p) c0353b);
        a10.a((c.f) c0353b);
        a10.a((c.j) c0353b);
        a10.a((c.p) c0353b);
        a10.a((c.l) c0353b);
        a10.a((c.m) c0353b);
        a10.a((c.a) c0353b);
        a10.a((c.n) c0353b);
        a10.a((c.o) c0353b);
        a10.a((c.b) c0353b);
        a10.a((c.k) c0353b);
        a10.a((c.e) c0353b);
        a10.a((c.d) c0353b);
        if (looper == null || looper == Looper.getMainLooper()) {
            HandlerThread a11 = o.a().a("TP-workthread");
            this.f34339h = a11;
            looper = a11.getLooper();
        }
        this.f34340i = looper;
        this.f34341j = looper2 == null ? Looper.myLooper() == null ? new a(this, this.f34340i) : new a(this) : new a(this, looper2);
        a(101, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        com.tencent.thumbplayer.c.a a12 = com.tencent.thumbplayer.c.c.a(this.f34340i, this.f34342k);
        this.f34335d = a12;
        a12.a(c0353b);
        this.f34338g.a(new com.tencent.thumbplayer.tplayer.plugins.report.c());
        this.f34338g.a(new com.tencent.thumbplayer.tplayer.plugins.report.a());
        this.f34347p = new ArrayList<>();
        if (TPPlayerConfig.getNewReportEnable()) {
            g gVar = new g(this.f34342k.a());
            this.f34354x = gVar;
            gVar.a(new com.tencent.thumbplayer.common.a(a10));
            this.f34354x.a();
            this.f34342k.b().a(this.f34354x);
        }
    }

    private int a(String str) {
        if (this.f34335d.a()) {
            return 5;
        }
        return r.a(str);
    }

    private long a(long j10, String str) {
        this.f34355y.put(Long.valueOf(this.f34356z), Long.valueOf(j10));
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(str + ", convert opaque(" + j10 + ") => uniqueId(" + this.f34356z + ")");
        long j11 = this.f34356z;
        this.f34356z = 1 + j11;
        return j11;
    }

    private TPVideoInfo a(TPVideoInfo tPVideoInfo, int i9, int i10) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c("updateStartAndSkipEndTimeMsForDownloadParam, startTimeMs:" + i9 + ", skipEndTimeMs:" + i10);
        if (tPVideoInfo == null) {
            return new TPVideoInfo.Builder().downloadParam(b(i9, i10)).build();
        }
        ArrayList<TPDownloadParamData> downloadPraramList = tPVideoInfo.getDownloadPraramList();
        if (downloadPraramList == null || downloadPraramList.isEmpty()) {
            tPVideoInfo.getBuilder().downloadParam(b(i9, i10)).build();
            return tPVideoInfo;
        }
        Iterator<TPDownloadParamData> it = downloadPraramList.iterator();
        while (it.hasNext()) {
            TPDownloadParamData next = it.next();
            next.setStarTimeMS(i9);
            next.setEndTimeMS(i10);
        }
        return tPVideoInfo;
    }

    private void a(@TPPlayerDetailInfo.TPPlayerDetailInfoType int i9) {
        a aVar = this.f34341j;
        if (aVar != null) {
            Message obtainMessage = aVar.obtainMessage();
            obtainMessage.what = 1256;
            obtainMessage.obj = new TPPlayerDetailInfo(i9);
            this.f34341j.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, int i10) {
        com.tencent.thumbplayer.utils.g a10 = new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 3);
        a(108, i9, i10, "", a10.a("code", i9 + "." + i10).a());
        this.f34335d.a(3);
        this.f34335d.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, int i10, int i11, Object obj) {
        a aVar = this.f34341j;
        if (aVar != null) {
            Message obtainMessage = aVar.obtainMessage();
            obtainMessage.what = i9;
            obtainMessage.arg1 = i10;
            obtainMessage.arg2 = i11;
            obtainMessage.obj = obj;
            this.f34341j.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, int i10, int i11, String str, Object obj) {
        try {
            com.tencent.thumbplayer.tplayer.plugins.b bVar = this.f34338g;
            if (bVar != null) {
                bVar.a(i9, i10, i11, str, obj);
            }
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, long j10, long j11, Object obj) {
        if (i9 == 200) {
            this.f34335d.a(4);
            a(114, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a("format", 0).a("ptime", Long.valueOf(getCurrentPositionMs())).a("url", this.f34343l).a());
        } else if (i9 == 201) {
            e();
            a(115, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        } else if (i9 == 3) {
            long longValue = obj instanceof Long ? ((Long) obj).longValue() : -1L;
            this.f34351t.c("switch definition finish defId:".concat(String.valueOf(longValue)));
            if (longValue > 0) {
                this.f34335d.a(longValue);
            }
            a(121, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("switch", String.valueOf(longValue)).a());
        } else if (i9 == 106) {
            a(105, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        } else if (i9 == 501) {
            a(117, 0, 0, (String) null, obj);
        } else if (i9 == 107) {
            a(119, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
        } else if (i9 == 4) {
            a(123, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("opaque", obj).a("etime", Long.valueOf(System.currentTimeMillis())).a("code", String.valueOf(j11)).a());
        } else if (i9 == 101) {
            a(124, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
        } else if (i9 == 505 && (obj instanceof TPPlayerMsg.TPMediaDrmInfo)) {
            TPPlayerMsg.TPMediaDrmInfo tPMediaDrmInfo = (TPPlayerMsg.TPMediaDrmInfo) obj;
            com.tencent.thumbplayer.e.a aVar = this.f34351t;
            aVar.c("TPMediaDrmInfo secureDecoder:" + tPMediaDrmInfo.supportSecureDecoder + " secureDecrypt:" + tPMediaDrmInfo.supportSecureDecrypt + " componentName:" + tPMediaDrmInfo.componentName + " drmType:" + tPMediaDrmInfo.drmType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull Message message) {
        Object obj = message.obj;
        if (obj instanceof TPPlayerDetailInfo) {
            a((TPPlayerDetailInfo) obj);
        }
    }

    private void a(TPOptionalParam tPOptionalParam) {
        if (tPOptionalParam == null) {
            return;
        }
        if (tPOptionalParam.getKey() == 205) {
            this.f34344m = tPOptionalParam.getParamBoolean().value;
            com.tencent.thumbplayer.e.a aVar = this.f34351t;
            aVar.c("setPlayerOptionalParam, use p2p proxy, OPTION_ID_BEFORE_BOOLEAN_USE_PROXY=" + this.f34344m);
        } else if (tPOptionalParam.getKey() == 508) {
            this.f34345n = tPOptionalParam.getParamBoolean().value;
        } else if (tPOptionalParam.getKey() == 100) {
            this.A = (int) tPOptionalParam.getParamLong().value;
        } else if (tPOptionalParam.getKey() == 500) {
            this.B = (int) tPOptionalParam.getParamLong().value;
        }
    }

    private void a(@NonNull TPPlayerDetailInfo tPPlayerDetailInfo) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.onDetailInfo(this, tPPlayerDetailInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj) {
        if (obj instanceof TPPlayerMsg.TPAudioTrackInfo) {
            if (!d()) {
                this.f34351t.e("handleSelectAudioTrack, proxy is not enable");
                return;
            }
            TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = (TPPlayerMsg.TPAudioTrackInfo) obj;
            com.tencent.thumbplayer.e.a aVar = this.f34351t;
            aVar.c("handleSelectAudioTrack, audioTrack url:" + tPAudioTrackInfo.audioTrackUrl);
            if (TextUtils.isEmpty(tPAudioTrackInfo.audioTrackUrl)) {
                try {
                    this.f34335d.b();
                    return;
                } catch (Exception e10) {
                    this.f34351t.a(e10);
                    return;
                }
            }
            TPDownloadParamData tPDownloadParamData = null;
            Iterator<TPOptionalParam> it = tPAudioTrackInfo.paramData.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                TPOptionalParam next = it.next();
                if (next.getKey() == 0) {
                    tPDownloadParamData = (TPDownloadParamData) next.getParamObject().objectValue;
                    break;
                }
            }
            this.f34335d.a(tPAudioTrackInfo.audioTrackUrl, tPDownloadParamData != null ? tPDownloadParamData.getAudioTrackKeyId() : "");
        }
    }

    private void a(String str, int i9, boolean z10) {
        b.u uVar = new b.u();
        uVar.a(str);
        uVar.b(i9);
        uVar.a(z10);
        this.f34342k.b().a(uVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long b(long j10, String str) {
        if (!this.f34355y.containsKey(Long.valueOf(j10))) {
            com.tencent.thumbplayer.e.a aVar = this.f34351t;
            aVar.e(str + ", invalid uniqueId");
            return -1L;
        }
        long longValue = this.f34355y.get(Long.valueOf(j10)).longValue();
        com.tencent.thumbplayer.e.a aVar2 = this.f34351t;
        aVar2.c(str + ", convert uniqueId(" + j10 + ") => opaque(" + longValue + ")");
        return longValue;
    }

    private TPDownloadParamData b(int i9, int i10) {
        TPDownloadParamData tPDownloadParamData = new TPDownloadParamData(0);
        tPDownloadParamData.setStarTimeMS(i9);
        tPDownloadParamData.setEndTimeMS(i10);
        return tPDownloadParamData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i9) {
        int i10 = C.get(i9, -1);
        if (i10 == -1) {
            return;
        }
        c(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Object obj) {
        if (obj instanceof TPPlayerMsg.TPAudioTrackInfo) {
            if (!d()) {
                this.f34351t.c("handleAudioTrackProxy, proxy not enable and use orinal url");
                return;
            }
            TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = (TPPlayerMsg.TPAudioTrackInfo) obj;
            TPDownloadParamData tPDownloadParamData = null;
            Iterator<TPOptionalParam> it = tPAudioTrackInfo.paramData.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                TPOptionalParam next = it.next();
                if (next.getKey() == 0) {
                    tPDownloadParamData = (TPDownloadParamData) next.getParamObject().objectValue;
                    break;
                }
            }
            String a10 = this.f34335d.a(2, tPAudioTrackInfo.audioTrackUrl, tPDownloadParamData);
            this.f34347p.add(a10);
            tPAudioTrackInfo.proxyUrl = a10;
        }
    }

    private void b(String str) {
        b.p pVar = new b.p();
        pVar.a(str);
        this.f34342k.b().a(pVar);
    }

    private void c() {
        this.f34333b.j();
        a(107, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 1).a());
        this.f34335d.a(5);
        this.f34335d.h();
        this.f34348q = -1L;
        this.f34349r = -1L;
        this.f34350s = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(@TPPlayerDetailInfo.TPPlayerDetailInfoType int i9) {
        a(new TPPlayerDetailInfo(i9));
    }

    private boolean d() {
        return this.f34335d.f() && TPPlayerConfig.isUseP2P() && this.f34344m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.f34335d.a(this.f34333b.c() ? 0 : 5);
    }

    private void f() {
        e.a aVar = new e.a();
        aVar.f34381a = d() ? 1L : 0L;
        a(261, 1009, 0, (Object) aVar);
    }

    private boolean g() {
        int b10 = this.f34333b.b();
        return b10 == 4 || b10 == 5 || b10 == 6 || b10 == 7;
    }

    public Looper a() {
        return this.f34340i;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void addAudioTrackSource(String str, String str2) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "addAudioTrackSource, url:" + str + ", name:" + str2);
        addAudioTrackSource(str, str2, null);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void addAudioTrackSource(String str, String str2, TPDownloadParamData tPDownloadParamData) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "addAudioTrackSource, url:" + str + ", name:" + str2 + ", downloadParamData:" + tPDownloadParamData);
        if (TextUtils.isEmpty(str2) || !com.tencent.thumbplayer.utils.b.b(str)) {
            this.f34351t.e("handleAddAudioSource, illegal argument.");
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            TPOptionalParam tPOptionalParam = new TPOptionalParam();
            if (tPDownloadParamData != null) {
                tPOptionalParam.buildObject(0, tPDownloadParamData);
            }
            arrayList.add(tPOptionalParam);
            Map<String, String> map = null;
            if (tPDownloadParamData != null && tPDownloadParamData.getUrlCdnidHttpHeaderList() != null && !tPDownloadParamData.getUrlCdnidHttpHeaderList().isEmpty()) {
                map = tPDownloadParamData.getUrlCdnidHttpHeaderList().get(0);
            }
            this.f34333b.a(str, map, str2, arrayList);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(a = true, c = true)
    public void addSubtitleSource(String str, String str2, String str3) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "addSubtitleSource, url:" + str + ", mimeType:" + str2 + ", name:" + str3);
        addSubtitleSource(str, str2, str3, null);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(a = true, c = true)
    public void addSubtitleSource(@NonNull String str, String str2, @NonNull String str3, TPDownloadParamData tPDownloadParamData) {
        String str4;
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "addSubtitleSource, url:" + str + ", name:" + str3 + ", downloadParamData:" + tPDownloadParamData);
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (d() && com.tencent.thumbplayer.utils.b.b(str)) {
                str4 = this.f34335d.a(3, str, tPDownloadParamData);
                this.f34347p.add(str4);
            } else {
                str4 = str;
            }
            Map<String, String> map = null;
            if (tPDownloadParamData != null && tPDownloadParamData.getUrlCdnidHttpHeaderList() != null && !tPDownloadParamData.getUrlCdnidHttpHeaderList().isEmpty()) {
                map = tPDownloadParamData.getUrlCdnidHttpHeaderList().get(0);
            }
            this.f34333b.a(str4, map, str2, str3);
            a(118, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(currentTimeMillis)).a("etime", Long.valueOf(System.currentTimeMillis())).a("url", str).a("name", str3).a());
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    public String b() {
        return this.f34351t.b();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(a = true)
    public void captureVideo(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "captureVideo, params:" + tPCaptureParams + ", captureCallBack:" + tPCaptureCallBack);
        try {
            this.f34333b.a(tPCaptureParams, tPCaptureCallBack);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void deselectTrack(int i9, long j10) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "deselectTrack, trackIndex:" + i9 + ", opaque:" + j10);
        try {
            this.f34333b.b(i9, j10);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void enableTPAssetResourceLoader(ITPAssetResourceLoaderListener iTPAssetResourceLoaderListener, Looper looper) {
        if (iTPAssetResourceLoaderListener == null) {
            this.f34335d.a(false);
            return;
        }
        this.f34335d.a(true);
        com.tencent.thumbplayer.c.a.a aVar = this.f34337f;
        if (aVar != null) {
            aVar.c();
            this.f34337f = null;
        }
        com.tencent.thumbplayer.c.a.b bVar = new com.tencent.thumbplayer.c.a.b(this.f34342k.a(), looper);
        this.f34337f = bVar;
        bVar.a(iTPAssetResourceLoaderListener);
        this.f34337f.a();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public int getBufferPercent() {
        if (this.f34333b.m() == 0) {
            return 0;
        }
        return (int) ((((float) (this.f34333b.o() - this.f34333b.n())) * 100.0f) / ((float) this.f34333b.m()));
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public long getCurrentPositionMs() {
        return this.f34333b.n();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public int getCurrentState() {
        return this.f34333b.b();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public long getDurationMs() {
        return this.f34333b.m();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public ITPExtendReportController getExtendReportController() {
        return this.f34354x;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public long getPlayableDurationMs() {
        if (d()) {
            long j10 = this.f34349r;
            if (j10 > 0) {
                long j11 = this.f34350s;
                if (j11 > 0) {
                    return (long) (((j10 * 1.0d) / j11) * this.f34333b.m());
                }
            }
            return this.f34348q;
        }
        return this.f34333b.o();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public ITPPlayerProxy getPlayerProxy() {
        return this.f34335d;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public int getPlayerType() {
        return this.f34333b.d();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public TPProgramInfo[] getProgramInfo() {
        return this.f34333b.s();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public long getPropertyLong(int i9) {
        return this.f34333b.b(i9);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public String getPropertyString(int i9) {
        return this.f34333b.c(i9);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public ITPBusinessReportManager getReportManager() {
        return this.f34336e;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public TPTrackInfo[] getTrackInfo() {
        return this.f34333b.r();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public int getVideoHeight() {
        return this.f34333b.q();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public int getVideoWidth() {
        return this.f34333b.p();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void pause() {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "pause");
        this.f34333b.i();
        try {
            a(106, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
            this.f34335d.a(5);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void pauseDownload() {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "pauseDownload");
        try {
            this.f34333b.a(new TPOptionalParam().buildLong(502, 0L));
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
        this.f34335d.h();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void prepareAsync() {
        String str = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
        a(1003);
        this.f34351t.c(f34331a + "prepareAsync");
        try {
            this.f34335d.i();
            this.f34333b.g();
        } catch (RuntimeException e10) {
            this.f34351t.a(e10);
        }
        b(str);
        try {
            a(102, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a("url", this.f34343l).a("p2p", Boolean.valueOf(d())).a("flowid", str).a());
            f();
        } catch (Exception e11) {
            this.f34351t.a(e11);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(a = true)
    public void release() {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "release");
        this.f34333b.l();
        a(112, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 1).a());
        this.f34334c.a();
        this.f34335d.e();
        this.f34347p.clear();
        com.tencent.thumbplayer.c.a.a aVar2 = this.f34337f;
        if (aVar2 != null) {
            aVar2.c();
            this.f34337f = null;
        }
        this.f34348q = -1L;
        this.f34349r = -1L;
        this.f34350s = -1L;
        o.a().a(this.f34339h, this.f34341j);
        this.f34339h = null;
        this.f34341j = null;
        this.f34338g.c();
        g gVar = this.f34354x;
        if (gVar != null) {
            gVar.b();
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(a = true)
    public void reset() {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "reset");
        if (this.f34353w) {
            this.f34351t.a(String.valueOf(this.f34352v.incrementAndGet()));
            this.f34333b.a(this.f34351t.a());
            this.f34334c.a(this.f34351t.a().a());
        }
        this.f34333b.k();
        a(113, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("reason", 1).a());
        this.f34335d.d();
        this.f34346o = -1;
        this.f34347p.clear();
        com.tencent.thumbplayer.c.a.a aVar2 = this.f34337f;
        if (aVar2 != null) {
            aVar2.b();
        }
        a aVar3 = this.f34341j;
        if (aVar3 != null) {
            aVar3.removeCallbacksAndMessages(null);
        }
        this.f34348q = -1L;
        this.f34349r = -1L;
        this.f34350s = -1L;
        this.f34344m = true;
        this.f34345n = false;
        this.A = 0;
        this.B = 0;
        this.f34355y.clear();
        this.f34356z = 0L;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void resumeDownload() {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "resumeDownload");
        this.f34335d.i();
        try {
            this.f34333b.a(new TPOptionalParam().buildLong(502, 1L));
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void seekTo(int i9) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "seekTo, positionMs:" + i9);
        this.f34333b.a(i9);
        this.f34335d.a(1);
        a(109, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a("format", 0).a("pstime", Long.valueOf(getCurrentPositionMs())).a());
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void seekTo(int i9, int i10) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "seekTo, positionMs:" + i9 + ", mode:" + i10);
        if (i10 > 0) {
            this.f34333b.a(i9, i10);
        } else {
            this.f34333b.a(i9);
        }
        this.f34335d.a(1);
        a(109, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a("format", 0).a("pstime", Long.valueOf(getCurrentPositionMs())).a());
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void selectProgram(int i9, long j10) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "selectProgram, programIndex:" + i9 + ", opaque:" + j10);
        try {
            this.f34333b.c(i9, j10);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void selectTrack(int i9, long j10) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "selectTrack, trackIndex:" + i9 + ", opaque:" + j10);
        try {
            long a10 = a(j10, "selectTrack");
            TPTrackInfo[] r10 = this.f34333b.r();
            if (r10 != null && r10.length > i9) {
                a(122, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("opaque", Long.valueOf(a10)).a("tracktype", Integer.valueOf(r10[i9].getTrackType())).a("name", r10[i9].getName()).a("stime", Long.valueOf(System.currentTimeMillis())).a());
            }
            this.f34333b.a(i9, a10);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true)
    public void setAudioGainRatio(float f10) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setAudioGainRatio, gainRatio:" + f10);
        try {
            this.f34333b.a(f10);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true)
    public void setAudioNormalizeVolumeParams(String str) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setAudioNormalizeVolumeParams, audioNormalizeVolumeParams:" + str);
        try {
            this.f34333b.a(str);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setDataSource(AssetFileDescriptor assetFileDescriptor) {
        if (assetFileDescriptor == null) {
            throw new IllegalArgumentException("error : setDataSource , param is null");
        }
        if (this.f34333b.b() != 1) {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.f34333b.b());
        }
        a("", 4, false);
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setDataSource, AssetFileDescriptor");
        try {
            this.f34333b.a(assetFileDescriptor);
        } catch (IOException | SecurityException e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setDataSource(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            throw new IllegalArgumentException("error : setDataSource , param is null");
        }
        if (this.f34333b.b() != 1) {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.f34333b.b());
        }
        a("", 4, false);
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setDataSource, ParcelFileDescriptor");
        try {
            this.f34333b.a(parcelFileDescriptor);
        } catch (IOException | SecurityException e10) {
            this.f34351t.a(e10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
        if (r0.getDrmAllProperties().isEmpty() == false) goto L13;
     */
    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @com.tencent.thumbplayer.utils.n.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setDataSource(com.tencent.thumbplayer.api.composition.ITPMediaAsset r4) {
        /*
            r3 = this;
            if (r4 == 0) goto Lbc
            boolean r0 = r4 instanceof com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
            if (r0 == 0) goto L2c
            java.lang.String r0 = r4.getUrl()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L24
            r0 = r4
            com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset r0 = (com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset) r0
            java.util.Map r1 = r0.getDrmAllProperties()
            if (r1 == 0) goto L24
            java.util.Map r0 = r0.getDrmAllProperties()
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L24
            goto L2c
        L24:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "error : setDataSource , drm asset url is null or drm property is null"
            r4.<init>(r0)
            throw r4
        L2c:
            com.tencent.thumbplayer.adapter.a r0 = r3.f34333b
            int r0 = r0.b()
            r1 = 1
            if (r0 != r1) goto La2
            java.lang.String r0 = r4.getUrl()
            java.lang.String r1 = r4.getUrl()
            int r1 = r3.a(r1)
            boolean r2 = r3.d()
            r3.a(r0, r1, r2)
            r0 = 1000(0x3e8, float:1.401E-42)
            r3.a(r0)
            com.tencent.thumbplayer.e.a r0 = r3.f34351t
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = com.tencent.thumbplayer.tplayer.b.f34331a
            r1.append(r2)
            java.lang.String r2 = "setDataSource, ITPMediaAsset"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.c(r1)
            java.lang.String r0 = r4.getUrl()
            r3.f34343l = r0
            boolean r0 = r3.d()
            if (r0 == 0) goto L77
            com.tencent.thumbplayer.c.a r0 = r3.f34335d
            com.tencent.thumbplayer.api.composition.ITPMediaAsset r4 = r0.a(r4)
        L77:
            com.tencent.thumbplayer.e.a r0 = r3.f34351t
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "handleSetDataSource mediaAsset="
            r1.<init>(r2)
            java.lang.String r2 = r4.getUrl()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.c(r1)
            com.tencent.thumbplayer.adapter.a r0 = r3.f34333b     // Catch: java.lang.SecurityException -> L94 java.io.IOException -> L96
            r0.a(r4)     // Catch: java.lang.SecurityException -> L94 java.io.IOException -> L96
            goto L9c
        L94:
            r4 = move-exception
            goto L97
        L96:
            r4 = move-exception
        L97:
            com.tencent.thumbplayer.e.a r0 = r3.f34351t
            r0.a(r4)
        L9c:
            r4 = 1001(0x3e9, float:1.403E-42)
            r3.a(r4)
            return
        La2:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "error : setDataSource , state invalid. current state:"
            r0.<init>(r1)
            com.tencent.thumbplayer.adapter.a r1 = r3.f34333b
            int r1 = r1.b()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r4.<init>(r0)
            throw r4
        Lbc:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "error : setDataSource , param is null"
            r4.<init>(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tplayer.b.setDataSource(com.tencent.thumbplayer.api.composition.ITPMediaAsset):void");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setDataSource(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("error : setDataSource , param is invalid");
        }
        if (this.f34333b.b() != 1) {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.f34333b.b());
        }
        a(str, a(str), d());
        a(1000);
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setDataSource, url:" + str);
        this.f34343l = str;
        com.tencent.thumbplayer.adapter.a.e eVar = new com.tencent.thumbplayer.adapter.a.e(str);
        this.f34351t.c("handleSetDataSource originalUrl=".concat(String.valueOf(str)));
        if (d()) {
            eVar = this.f34335d.a(str, (Map<String, String>) null);
            updateTaskInfo(TPDownloadProxyEnum.TASKINFO_GET_METADATA_PLAY_OFFSET, 0);
            com.tencent.thumbplayer.e.a aVar2 = this.f34351t;
            aVar2.c("handleSetDataSource selfPlayerUrl=" + eVar.b());
            com.tencent.thumbplayer.e.a aVar3 = this.f34351t;
            aVar3.c("handleSetDataSource systemPlayerUrl=" + eVar.a());
        }
        this.f34333b.a(eVar);
        a(1001);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setDataSource(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("error : setDataSource , param is invalid");
        }
        if (this.f34333b.b() != 1) {
            throw new IllegalStateException("error : setDataSource , state invalid. current state:" + this.f34333b.b());
        }
        a(str, a(str), d());
        a(1000);
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setDataSource, url:" + str + ", httpHeader:" + map);
        this.f34343l = str;
        com.tencent.thumbplayer.adapter.a.e eVar = new com.tencent.thumbplayer.adapter.a.e(str);
        this.f34351t.c("handleSetDataSource originalUrl=".concat(String.valueOf(str)));
        if (d()) {
            eVar = this.f34335d.a(str, map);
            updateTaskInfo(TPDownloadProxyEnum.TASKINFO_GET_METADATA_PLAY_OFFSET, 0);
            com.tencent.thumbplayer.e.a aVar2 = this.f34351t;
            aVar2.c("handleSetDataSource selfPlayerUrl=" + eVar.b());
            com.tencent.thumbplayer.e.a aVar3 = this.f34351t;
            aVar3.c("handleSetDataSource systemPlayerUrl=" + eVar.a());
        }
        this.f34333b.a(eVar, map);
        a(1001);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void setLoopback(boolean z10) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setLoopback, isLoopback:" + z10);
        try {
            this.f34333b.b(z10);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void setLoopback(boolean z10, long j10, long j11) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setLoopback, isLoopback:" + z10 + ", loopStartPositionMs:" + j10 + ", loopEndPositionMs:" + j11);
        try {
            this.f34333b.a(z10, j10, j11);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnAudioFrameOutputListener(ITPPlayerListener.IOnAudioFrameOutputListener iOnAudioFrameOutputListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnAudioFrameOutputListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnAudioProcessFrameOutputListener(ITPPlayerListener.IOnAudioProcessFrameOutputListener iOnAudioProcessFrameOutputListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnAudioProcessFrameOutputListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnCompletionListener(ITPPlayerListener.IOnCompletionListener iOnCompletionListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnCompletionListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnDemuxerListener(ITPPlayerListener.IOnDemuxerListener iOnDemuxerListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnDemuxerListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnDetailInfoListener(ITPPlayerListener.IOnDetailInfoListener iOnDetailInfoListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnDetailInfoListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnErrorListener(ITPPlayerListener.IOnErrorListener iOnErrorListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnErrorListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnInfoListener(ITPPlayerListener.IOnInfoListener iOnInfoListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnInfoListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnPlayerStateChangeListener(ITPPlayerListener.IOnStateChangeListener iOnStateChangeListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnStateChangeListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnPreparedListener(ITPPlayerListener.IOnPreparedListener iOnPreparedListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnPreparedListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnSeekCompleteListener(ITPPlayerListener.IOnSeekCompleteListener iOnSeekCompleteListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnSeekCompleteListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnStopAsyncCompleteListener(ITPPlayerListener.IOnStopAsyncCompleteListener iOnStopAsyncCompleteListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnStopAsyncCompleteListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnSubtitleDataListener(ITPPlayerListener.IOnSubtitleDataListener iOnSubtitleDataListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnSubtitleDataListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnSubtitleFrameOutListener(ITPPlayerListener.IOnSubtitleFrameOutListener iOnSubtitleFrameOutListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnSubtitleFrameOutListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnVideoFrameOutListener(ITPPlayerListener.IOnVideoFrameOutListener iOnVideoFrameOutListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnVideoFrameOutListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnVideoProcessFrameOutputListener(ITPPlayerListener.IOnVideoProcessFrameOutputListener iOnVideoProcessFrameOutputListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnVideoProcessFrameOutputListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void setOnVideoSizeChangedListener(ITPPlayerListener.IOnVideoSizeChangedListener iOnVideoSizeChangedListener) {
        c cVar = this.f34334c;
        if (cVar != null) {
            cVar.a(iOnVideoSizeChangedListener);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true)
    public void setOutputMute(boolean z10) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setOutputMute, isOutputMute:" + z10);
        try {
            this.f34333b.a(z10);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true)
    public void setPlaySpeedRatio(float f10) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setPlaySpeedRatio, speedRatio:" + f10);
        try {
            this.f34335d.a(f10);
            this.f34333b.b(f10);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
        a(116, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("scene", Float.valueOf(f10)).a());
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(c = true)
    public void setPlayerOptionalParam(TPOptionalParam tPOptionalParam) {
        if (tPOptionalParam.getParamType() == 7 && !j.a(tPOptionalParam.getKey(), tPOptionalParam.getParamObject().objectValue)) {
            com.tencent.thumbplayer.e.a aVar = this.f34351t;
            aVar.d("set object param failed, optional id:" + tPOptionalParam.getKey());
            return;
        }
        a(tPOptionalParam);
        this.f34335d.a(tPOptionalParam);
        try {
            this.f34333b.a(tPOptionalParam);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setRichMediaSynchronizer(@Nullable ITPRichMediaSynchronizer iTPRichMediaSynchronizer) {
        this.f34333b.a(iTPRichMediaSynchronizer);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setSurface(Surface surface) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setSurface, surface:" + surface);
        try {
            this.f34333b.a(surface);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "setSurfaceHolder, SurfaceHolder:" + surfaceHolder);
        try {
            this.f34333b.a(surfaceHolder);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(c = true)
    public void setVideoInfo(TPVideoInfo tPVideoInfo) {
        if (tPVideoInfo != null) {
            try {
                a(tPVideoInfo, this.A, this.B);
                this.f34335d.a(tPVideoInfo);
                this.f34333b.a(tPVideoInfo);
            } catch (Exception e10) {
                this.f34351t.a(e10);
            }
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void start() {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "start");
        this.f34333b.h();
        try {
            a(104, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("stime", Long.valueOf(System.currentTimeMillis())).a());
            this.f34335d.a(0);
        } catch (Exception e10) {
            this.f34351t.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(a = true)
    public void stop() {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "stop");
        c();
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void stopAsync() {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "stopAsync");
        c();
        a(280, 0, 0, (Object) null);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(@NonNull ITPMediaAsset iTPMediaAsset, long j10, TPVideoInfo tPVideoInfo) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "switchDefinition, mediaAsset:" + iTPMediaAsset + ", defID:" + j10 + ", videoInfo:" + tPVideoInfo);
        switchDefinition(iTPMediaAsset, j10, tPVideoInfo, 0);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(@NonNull ITPMediaAsset iTPMediaAsset, long j10, TPVideoInfo tPVideoInfo, int i9) {
        if (!g()) {
            throw new IllegalStateException("error : switchDefinition , state invalid");
        }
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "switchDefinition, mediaAsset:" + iTPMediaAsset + ", defID:" + j10 + ", videoInfo:" + tPVideoInfo + ", mode:" + i9);
        TPVideoInfo a10 = a(tPVideoInfo, (int) getCurrentPositionMs(), this.B);
        if (d()) {
            iTPMediaAsset = this.f34335d.a(iTPMediaAsset, j10, a10);
        }
        if (iTPMediaAsset != null) {
            com.tencent.thumbplayer.e.a aVar2 = this.f34351t;
            aVar2.c("handleSwitchDef, proxyMediaAsset:" + iTPMediaAsset + ", defID:" + j10);
            this.f34333b.b(a10);
            this.f34333b.a(iTPMediaAsset, 0, j10);
            a(120, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("switch", String.valueOf(j10)).a());
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(@NonNull String str, long j10, TPVideoInfo tPVideoInfo) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "switchDefinition, defUrl:" + str + ", defID:" + j10);
        switchDefinition(str, j10, tPVideoInfo, 0);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(@NonNull String str, long j10, TPVideoInfo tPVideoInfo, int i9) {
        if (!g()) {
            throw new IllegalStateException("error : switchDefinition , state invalid");
        }
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "switchDefinition, defUrl:" + str + ", defID:" + j10 + ", mode:" + i9);
        TPVideoInfo a10 = a(tPVideoInfo, (int) getCurrentPositionMs(), this.B);
        com.tencent.thumbplayer.adapter.a.e eVar = new com.tencent.thumbplayer.adapter.a.e(str);
        if (d()) {
            eVar = this.f34335d.a(j10, str, a10, null);
            com.tencent.thumbplayer.e.a aVar2 = this.f34351t;
            aVar2.c("switchDefinition selfPlayerUrl=" + eVar.b());
            com.tencent.thumbplayer.e.a aVar3 = this.f34351t;
            aVar3.c("switchDefinition systemPlayerUrl=" + eVar.a());
        }
        com.tencent.thumbplayer.e.a aVar4 = this.f34351t;
        aVar4.c("switchDefinition, proxyUrl:" + str + ", defID:" + j10);
        this.f34333b.b(a10);
        this.f34333b.a(eVar, i9, j10);
        a(120, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("switch", String.valueOf(j10)).a());
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(@NonNull String str, long j10, TPVideoInfo tPVideoInfo, Map<String, String> map) {
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "switchDefinition, defUrl:" + str + ", defID:" + j10 + ", videoInfo:" + tPVideoInfo + ", httpHeader:" + map);
        switchDefinition(str, j10, tPVideoInfo, map, 0);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b(b = true, c = true)
    public void switchDefinition(@NonNull String str, long j10, TPVideoInfo tPVideoInfo, Map<String, String> map, int i9) {
        if (!g()) {
            throw new IllegalStateException("error : switchDefinition , state invalid");
        }
        com.tencent.thumbplayer.e.a aVar = this.f34351t;
        aVar.c(f34331a + "switchDefinition, defUrl:" + str + ", defID:" + j10 + ", httpHeader:" + map + ", mode:" + i9);
        TPVideoInfo a10 = a(tPVideoInfo, (int) getCurrentPositionMs(), this.B);
        com.tencent.thumbplayer.adapter.a.e eVar = new com.tencent.thumbplayer.adapter.a.e(str);
        if (d()) {
            eVar = this.f34335d.a(j10, str, a10, map);
            com.tencent.thumbplayer.e.a aVar2 = this.f34351t;
            aVar2.c("switchDefinition selfPlayerUrl=" + eVar.b());
            com.tencent.thumbplayer.e.a aVar3 = this.f34351t;
            aVar3.c("switchDefinition systemPlayerUrl=" + eVar.a());
        }
        com.tencent.thumbplayer.adapter.a.e eVar2 = eVar;
        com.tencent.thumbplayer.e.a aVar4 = this.f34351t;
        aVar4.c("switchDefinition, proxyUrl:" + str + ", defID:" + j10 + ", httpHeader:" + map);
        this.f34333b.b(a10);
        this.f34333b.a(eVar2, map, i9, j10);
        a(120, 0, 0, (String) null, new com.tencent.thumbplayer.utils.g().a("switch", String.valueOf(j10)).a());
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    public void updateLoggerContext(com.tencent.thumbplayer.e.b bVar) {
        if (bVar != null) {
            this.f34353w = false;
            this.f34351t.a(new com.tencent.thumbplayer.e.b(bVar, "TPPlayer"));
            this.f34333b.a(this.f34351t.a());
            this.f34334c.a(this.f34351t.a().a());
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayer
    @n.b
    public void updateTaskInfo(String str, Object obj) {
        com.tencent.thumbplayer.c.a aVar = this.f34335d;
        if (aVar != null) {
            aVar.a(str, obj);
        }
    }
}
