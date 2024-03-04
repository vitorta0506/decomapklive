package com.tencent.thumbplayer.c;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentTransaction;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPVideoInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset;
import com.tencent.thumbplayer.api.composition.ITPMediaTrack;
import com.tencent.thumbplayer.api.composition.ITPMediaTrackClip;
import com.tencent.thumbplayer.api.proxy.ITPPlayerProxyListener;
import com.tencent.thumbplayer.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.b.l;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.f;
import com.tencent.thumbplayer.utils.i;
import com.tencent.thumbplayer.utils.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class e implements com.tencent.thumbplayer.c.a, f.a, i.b {

    /* renamed from: g  reason: collision with root package name */
    private static int f33819g = -1;

    /* renamed from: a  reason: collision with root package name */
    private Context f33820a;

    /* renamed from: b  reason: collision with root package name */
    private a f33821b;

    /* renamed from: c  reason: collision with root package name */
    private ITPDownloadProxy f33822c;

    /* renamed from: e  reason: collision with root package name */
    private b f33824e;

    /* renamed from: f  reason: collision with root package name */
    private ITPPlayListener f33825f;

    /* renamed from: i  reason: collision with root package name */
    private ArrayList<TPDownloadParamData> f33827i;

    /* renamed from: j  reason: collision with root package name */
    private String f33828j;

    /* renamed from: k  reason: collision with root package name */
    private int f33829k;

    /* renamed from: l  reason: collision with root package name */
    private TPVideoInfo f33830l;

    /* renamed from: m  reason: collision with root package name */
    private String f33831m;

    /* renamed from: o  reason: collision with root package name */
    private LinkedList<c> f33833o;

    /* renamed from: p  reason: collision with root package name */
    private HashMap<String, Integer> f33834p;

    /* renamed from: q  reason: collision with root package name */
    private long f33835q;

    /* renamed from: r  reason: collision with root package name */
    private long f33836r;

    /* renamed from: y  reason: collision with root package name */
    private m f33843y;

    /* renamed from: d  reason: collision with root package name */
    private int f33823d = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f33826h = f33819g;

    /* renamed from: n  reason: collision with root package name */
    private ITPPlayerProxyListener f33832n = null;

    /* renamed from: s  reason: collision with root package name */
    private boolean f33837s = false;

    /* renamed from: t  reason: collision with root package name */
    private boolean f33838t = true;

    /* renamed from: u  reason: collision with root package name */
    private boolean f33839u = false;

    /* renamed from: v  reason: collision with root package name */
    private boolean f33840v = false;

    /* renamed from: w  reason: collision with root package name */
    private long f33841w = 100000000;

    /* renamed from: x  reason: collision with root package name */
    private boolean f33842x = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (e.this.f33825f == null) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "handleMessage failed, mPlayListener is null and return");
                return;
            }
            int i9 = message.what;
            if (i9 == 4196) {
                e.this.g(message.arg1);
            } else if (i9 == 4197) {
                e.this.h(message.arg1);
            } else {
                switch (i9) {
                    case 4097:
                        e.this.f33825f.onDownloadFinish();
                        return;
                    case 4098:
                        e.this.f33825f.onDownloadError(message.arg1, message.arg2, (String) message.obj);
                        return;
                    case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                        e.this.f33825f.onDownloadCdnUrlUpdate((String) message.obj);
                        return;
                    case FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_OPEN /* 4100 */:
                        TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = (TPPlayerMsg.TPCDNURLInfo) message.obj;
                        e.this.f33825f.onDownloadCdnUrlInfoUpdate(tPCDNURLInfo.url, tPCDNURLInfo.cdnIp, tPCDNURLInfo.uIp, tPCDNURLInfo.errorStr);
                        return;
                    case 4101:
                        e.this.f33825f.onDownloadStatusUpdate(message.arg1);
                        return;
                    case 4102:
                        TPPlayerMsg.TPProtocolInfo tPProtocolInfo = (TPPlayerMsg.TPProtocolInfo) message.obj;
                        e.this.f33825f.onDownloadProtocolUpdate(tPProtocolInfo.protocolName, tPProtocolInfo.protocolVersion);
                        return;
                    case 4103:
                        e.this.f33825f.onDownloadCdnUrlExpired((Map) message.obj);
                        return;
                    case 4104:
                        C0343e c0343e = (C0343e) message.obj;
                        f fVar = (f) c0343e.f33850a;
                        c0343e.f33851b.a(e.this.f33825f.onPlayCallback(fVar.f33852a, fVar.f33853b, fVar.f33854c, fVar.f33855d, fVar.f33856e));
                        return;
                    case 4105:
                        C0343e c0343e2 = (C0343e) message.obj;
                        c0343e2.f33851b.a(e.this.f33825f.getPlayInfo(((Long) c0343e2.f33850a).longValue()));
                        return;
                    case 4106:
                        TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = (TPPlayerMsg.TPDownLoadProgressInfo) message.obj;
                        e.this.f33825f.onDownloadProgressUpdate((int) tPDownLoadProgressInfo.playableDurationMS, tPDownLoadProgressInfo.downloadSpeedKBps, tPDownLoadProgressInfo.currentDownloadSize, tPDownLoadProgressInfo.totalFileSize, tPDownLoadProgressInfo.extraInfo);
                        return;
                    case 4107:
                        C0343e c0343e3 = (C0343e) message.obj;
                        c0343e3.f33851b.a(e.this.f33825f.getPlayInfo((String) c0343e3.f33850a));
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements ITPPlayListener {
        private b() {
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getAdvRemainTime() {
            return e.this.f33825f.getAdvRemainTime();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public String getContentType(int i9, String str) {
            return e.this.f33825f.getContentType(i9, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int getCurrentPlayClipNo() {
            return e.this.f33825f.getCurrentPlayClipNo();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPlayOffset() {
            return e.this.f33825f.getCurrentPlayOffset();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPosition() {
            return e.this.f33825f.getCurrentPosition();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public String getDataFilePath(int i9, String str) {
            return e.this.f33825f.getDataFilePath(i9, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getDataTotalSize(int i9, String str) {
            return e.this.f33825f.getDataTotalSize(i9, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(long j10) {
            com.tencent.thumbplayer.utils.e eVar = new com.tencent.thumbplayer.utils.e();
            C0343e c0343e = new C0343e();
            c0343e.f33850a = Long.valueOf(j10);
            c0343e.f33851b = eVar;
            e.this.a(4105, c0343e);
            return e.this.a(eVar);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(String str) {
            com.tencent.thumbplayer.utils.e eVar = new com.tencent.thumbplayer.utils.e();
            C0343e c0343e = new C0343e();
            c0343e.f33850a = str;
            c0343e.f33851b = eVar;
            e.this.a(4107, c0343e);
            return e.this.a(eVar);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public long getPlayerBufferLength() {
            return e.this.f33825f.getPlayerBufferLength();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlExpired(Map<String, String> map) {
            e.this.a(4103, map);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4) {
            TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = new TPPlayerMsg.TPCDNURLInfo();
            tPCDNURLInfo.url = str;
            tPCDNURLInfo.cdnIp = str2;
            tPCDNURLInfo.uIp = str3;
            tPCDNURLInfo.errorStr = str4;
            e.this.a((int) FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_OPEN, tPCDNURLInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlUpdate(String str) {
            e.this.a((int) FragmentTransaction.TRANSIT_FRAGMENT_FADE, str);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadError(int i9, int i10, String str) {
            e.this.a(4098, i9, i10, str, false, false, 0L);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadFinish() {
            e.this.a(4097, (Object) null);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProgressUpdate(int i9, int i10, long j10, long j11, String str) {
            TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = new TPPlayerMsg.TPDownLoadProgressInfo();
            tPDownLoadProgressInfo.playableDurationMS = i9;
            tPDownLoadProgressInfo.downloadSpeedKBps = i10;
            tPDownLoadProgressInfo.currentDownloadSize = j10;
            tPDownLoadProgressInfo.totalFileSize = j11;
            tPDownLoadProgressInfo.extraInfo = str;
            e.this.a(4106, tPDownLoadProgressInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProtocolUpdate(String str, String str2) {
            TPPlayerMsg.TPProtocolInfo tPProtocolInfo = new TPPlayerMsg.TPProtocolInfo();
            tPProtocolInfo.protocolVersion = str2;
            tPProtocolInfo.protocolName = str;
            e.this.a(4102, tPProtocolInfo);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public void onDownloadStatusUpdate(int i9) {
            e.this.a(4101, i9, 0, null, false, false, 0L);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public Object onPlayCallback(int i9, Object obj, Object obj2, Object obj3, Object obj4) {
            f fVar = new f();
            fVar.f33852a = i9;
            fVar.f33853b = obj;
            fVar.f33854c = obj2;
            fVar.f33855d = obj3;
            fVar.f33856e = obj4;
            com.tencent.thumbplayer.utils.e eVar = new com.tencent.thumbplayer.utils.e();
            C0343e c0343e = new C0343e();
            c0343e.f33850a = fVar;
            c0343e.f33851b = eVar;
            e.this.a(4104, c0343e);
            return e.this.a(eVar);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onReadData(int i9, String str, long j10, long j11) {
            return e.this.f33825f.onReadData(i9, str, j10, j11);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onStartReadData(int i9, String str, long j10, long j11) {
            return e.this.f33825f.onStartReadData(i9, str, j10, j11);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
        public int onStopReadData(int i9, String str, int i10) {
            return e.this.f33825f.onStopReadData(i9, str, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        long f33846a;

        /* renamed from: b  reason: collision with root package name */
        int f33847b;

        c(long j10, int i9) {
            this.f33846a = j10;
            this.f33847b = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        int f33848a;

        /* renamed from: b  reason: collision with root package name */
        int f33849b;

        d(int i9, int i10) {
            this.f33848a = i9;
            this.f33849b = i10;
        }
    }

    /* renamed from: com.tencent.thumbplayer.c.e$e  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class C0343e {

        /* renamed from: a  reason: collision with root package name */
        Object f33850a;

        /* renamed from: b  reason: collision with root package name */
        com.tencent.thumbplayer.utils.e f33851b;

        private C0343e() {
        }
    }

    /* loaded from: classes4.dex */
    static class f {

        /* renamed from: a  reason: collision with root package name */
        int f33852a;

        /* renamed from: b  reason: collision with root package name */
        Object f33853b;

        /* renamed from: c  reason: collision with root package name */
        Object f33854c;

        /* renamed from: d  reason: collision with root package name */
        Object f33855d;

        /* renamed from: e  reason: collision with root package name */
        Object f33856e;

        private f() {
        }
    }

    public e(Context context, Looper looper) {
        this.f33820a = context;
        this.f33821b = new a(looper);
        com.tencent.thumbplayer.utils.f.a(this);
        com.tencent.thumbplayer.utils.i.a().a(this);
        this.f33824e = new b();
        this.f33825f = new com.tencent.thumbplayer.c.f("TPThumbPlayer[TPPlayManagerImpl.java]");
        this.f33834p = new HashMap<>();
        this.f33827i = new ArrayList<>();
        this.f33843y = new m();
    }

    private int a(List<ITPMediaTrackClip> list, String str, ArrayList<TPDownloadParamData> arrayList) {
        int i9 = -1;
        if (com.tencent.thumbplayer.utils.b.a(list)) {
            TPLogUtil.w("TPThumbPlayer[TPPlayManagerImpl.java]", "clipList is empty, return");
            return -1;
        }
        int size = list.size();
        HashMap hashMap = new HashMap();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            ITPMediaTrackClip iTPMediaTrackClip = list.get(i11);
            if ((iTPMediaTrackClip instanceof com.tencent.thumbplayer.b.h) && com.tencent.thumbplayer.utils.b.b(((com.tencent.thumbplayer.b.h) iTPMediaTrackClip).getFilePath())) {
                hashMap.put(iTPMediaTrackClip, new d(i10, i11));
                i10++;
            }
        }
        if (com.tencent.thumbplayer.utils.b.a(hashMap)) {
            TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "all urls is local file url, return");
            return -1;
        }
        try {
            int startClipPlay = this.f33822c.startClipPlay(str, hashMap.size(), this.f33824e);
            try {
                if (startClipPlay <= 0) {
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start clip play failed, cause : playId < 0");
                    return startClipPlay;
                }
                for (Map.Entry entry : hashMap.entrySet()) {
                    ITPMediaTrackClip iTPMediaTrackClip2 = (ITPMediaTrackClip) entry.getKey();
                    d dVar = (d) entry.getValue();
                    if (iTPMediaTrackClip2 instanceof com.tencent.thumbplayer.b.h) {
                        com.tencent.thumbplayer.b.h hVar = (com.tencent.thumbplayer.b.h) iTPMediaTrackClip2;
                        TPDownloadParamData a10 = a(arrayList, dVar.f33849b);
                        if (a10 == null) {
                            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "fatal err, paramData is null.");
                            return -1;
                        }
                        TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "multi trackClipIndex:" + dVar.f33849b + ", download seq:" + dVar.f33848a + ", clip.url:" + hVar.getUrl() + ", clip.getFilePath:" + hVar.getFilePath() + ", paramData.savePath:" + a10.getSavePath() + ", paramData.DownloadFileID:" + a10.getDownloadFileID());
                        if (this.f33822c.setClipInfo(startClipPlay, dVar.f33848a, a10.getDownloadFileID(), a(hVar.getFilePath(), a10, (Map<String, String>) null))) {
                            hVar.a(this.f33822c.getClipPlayUrl(startClipPlay, dVar.f33848a, 1));
                        }
                    }
                }
                return startClipPlay;
            } catch (Throwable th2) {
                th = th2;
                i9 = startClipPlay;
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th);
                return i9;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private com.tencent.thumbplayer.adapter.a.e a(long j10, String str, TPDownloadParamData tPDownloadParamData, Map<String, String> map) {
        com.tencent.thumbplayer.adapter.a.e eVar = new com.tencent.thumbplayer.adapter.a.e(str);
        if (com.tencent.thumbplayer.utils.b.b(str) && !o()) {
            if (this.f33833o == null) {
                this.f33833o = new LinkedList<>();
            }
            String str2 = null;
            TPDownloadParam a10 = tPDownloadParamData != null ? a(str, tPDownloadParamData, map) : null;
            if (tPDownloadParamData != null) {
                try {
                    str2 = tPDownloadParamData.getDownloadFileID();
                } catch (Throwable th2) {
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2, "p2p proxy switch def failed");
                }
            }
            int startPlay = this.f33822c.startPlay(str2, a10, this.f33824e);
            if (startPlay <= 0) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch def failed, cause : playId <= 0");
                return eVar;
            }
            String playUrl = this.f33822c.getPlayUrl(startPlay, 1);
            if (TextUtils.isEmpty(playUrl)) {
                playUrl = str;
            }
            eVar.b(playUrl);
            String playUrl2 = this.f33822c.getPlayUrl(startPlay, 0);
            if (!TextUtils.isEmpty(playUrl2)) {
                str = playUrl2;
            }
            eVar.a(str);
            this.f33833o.offer(new c(j10, startPlay));
            TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch def sucess, defId:" + j10 + ",playId:" + startPlay);
            return eVar;
        }
        return eVar;
    }

    @NonNull
    private ITPMediaAsset a(ITPMediaDRMAsset iTPMediaDRMAsset, long j10, TPVideoInfo tPVideoInfo) {
        iTPMediaDRMAsset.setDrmPlayUrl(a(j10, iTPMediaDRMAsset.getDrmPlayUrl(), (tPVideoInfo.getDownloadPraramList() == null || tPVideoInfo.getDownloadPraramList().size() <= 0) ? null : tPVideoInfo.getDownloadPraramList().get(0), (Map<String, String>) null).b());
        return iTPMediaDRMAsset;
    }

    @NonNull
    private ITPMediaAsset a(@NonNull com.tencent.thumbplayer.b.j jVar) {
        jVar.setDrmPlayUrl(a(jVar.getDrmPlayUrl(), (Map<String, String>) null).b());
        return jVar;
    }

    @NonNull
    private ITPMediaAsset a(@NonNull l lVar) {
        lVar.setStreamUrl(a(lVar.getStreamUrl(), (Map<String, String>) null).b());
        return lVar;
    }

    @NonNull
    private ITPMediaAsset a(l lVar, long j10, TPVideoInfo tPVideoInfo) {
        lVar.setStreamUrl(a(j10, lVar.getStreamUrl(), tPVideoInfo, (Map<String, String>) null).b());
        return lVar;
    }

    private TPDownloadParamData a(ArrayList<TPDownloadParamData> arrayList, int i9) {
        if (com.tencent.thumbplayer.utils.b.a(arrayList) || i9 >= arrayList.size()) {
            return null;
        }
        return arrayList.get(i9);
    }

    private TPDownloadParam a(String str, TPDownloadParamData tPDownloadParamData, Map<String, String> map) {
        return k.a(str, tPDownloadParamData, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(com.tencent.thumbplayer.utils.e eVar) {
        try {
            return eVar.a(500L);
        } catch (Throwable th2) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "onPlayCallback getResult has exception:" + th2.toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, int i10, int i11, Object obj, boolean z10, boolean z11, long j10) {
        StringBuilder sb2;
        String str;
        this.f33843y.readLock().lock();
        a aVar = this.f33821b;
        if (aVar == null) {
            sb2 = new StringBuilder();
            sb2.append(f(i9));
            str = " , send failed , handler null";
        } else if (!z10 || obj != null) {
            if (z11) {
                aVar.removeMessages(i9);
            }
            Message obtainMessage = this.f33821b.obtainMessage();
            obtainMessage.what = i9;
            obtainMessage.arg1 = i10;
            obtainMessage.arg2 = i11;
            obtainMessage.obj = obj;
            this.f33821b.sendMessageDelayed(obtainMessage, j10);
            this.f33843y.readLock().unlock();
        } else {
            sb2 = new StringBuilder();
            sb2.append(f(i9));
            str = ", send failed , params null";
        }
        sb2.append(str);
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", sb2.toString());
        this.f33843y.readLock().unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, Object obj) {
        a(i9, 0, 0, obj, false, false, 0L);
    }

    private ITPMediaAsset b(@NonNull ITPMediaAsset iTPMediaAsset) {
        List<ITPMediaTrackClip> c10 = c(iTPMediaAsset);
        if (!com.tencent.thumbplayer.utils.b.a(c10)) {
            this.f33829k = a(c10, p(), this.f33827i);
            l();
            m();
        }
        return iTPMediaAsset;
    }

    @NonNull
    private ITPMediaAsset b(ITPMediaAsset iTPMediaAsset, long j10, TPVideoInfo tPVideoInfo) {
        List<ITPMediaTrackClip> c10 = c(iTPMediaAsset);
        if (!com.tencent.thumbplayer.utils.b.a(c10) && tPVideoInfo != null) {
            int a10 = a(c10, tPVideoInfo.getProxyFileID(), tPVideoInfo.getDownloadPraramList());
            if (a10 > 0) {
                this.f33833o.offer(new c(j10, a10));
                TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch def sucess, defId:" + j10 + ",playId:" + a10);
                return iTPMediaAsset;
            }
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy switch clip def failed, cause : playId < 0");
        }
        return iTPMediaAsset;
    }

    private void b(TPVideoInfo tPVideoInfo) {
        String str;
        if (o()) {
            return;
        }
        this.f33830l = tPVideoInfo;
        if (tPVideoInfo == null || tPVideoInfo.getDownloadPraramList() == null) {
            str = "video or downloadParamList is null, return";
        } else if (this.f33829k > 0) {
            try {
                ArrayList<TPDownloadParamData> downloadPraramList = tPVideoInfo.getDownloadPraramList();
                for (int i9 = 0; i9 < downloadPraramList.size(); i9++) {
                    TPDownloadParamData tPDownloadParamData = downloadPraramList.get(i9);
                    if (!this.f33822c.setClipInfo(this.f33829k, tPDownloadParamData.getClipNo(), tPDownloadParamData.getDownloadFileID(), a(tPDownloadParamData.getUrl(), tPDownloadParamData, (Map<String, String>) null))) {
                        TPLogUtil.w("TPThumbPlayer[TPPlayManagerImpl.java]", "setClipInfo failed, playID:" + this.f33829k + ", clipNo:" + tPDownloadParamData.getClipNo() + ", downloadFileID:" + tPDownloadParamData.getDownloadFileID());
                    }
                }
                return;
            } catch (Throwable th2) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2);
                return;
            }
        } else {
            str = "p2p proxy not start, return";
        }
        TPLogUtil.w("TPThumbPlayer[TPPlayManagerImpl.java]", str);
    }

    private boolean b(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        HashMap hashMap = new HashMap();
        hashMap.put(TPDownloadProxyEnum.DLPARAM_DATA_TRANSFER_MODE, 1);
        try {
            return this.f33822c.setClipInfo(this.f33829k, 2, str2, new TPDownloadParam(arrayList, 3, hashMap));
        } catch (Throwable th2) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2);
            return false;
        }
    }

    private List<ITPMediaTrackClip> c(ITPMediaAsset iTPMediaAsset) {
        ITPMediaTrack iTPMediaTrack;
        if (iTPMediaAsset instanceof com.tencent.thumbplayer.b.e) {
            List<ITPMediaTrack> allAVTracks = ((com.tencent.thumbplayer.b.e) iTPMediaAsset).getAllAVTracks();
            if (com.tencent.thumbplayer.utils.b.a(allAVTracks) || (iTPMediaTrack = allAVTracks.get(0)) == null || com.tencent.thumbplayer.utils.b.a(iTPMediaTrack.getAllTrackClips())) {
                return null;
            }
            return iTPMediaTrack.getAllTrackClips();
        } else if (iTPMediaAsset instanceof ITPMediaTrack) {
            ITPMediaTrack iTPMediaTrack2 = (ITPMediaTrack) iTPMediaAsset;
            if (com.tencent.thumbplayer.utils.b.a(iTPMediaTrack2.getAllTrackClips())) {
                return null;
            }
            return iTPMediaTrack2.getAllTrackClips();
        } else if (iTPMediaAsset instanceof ITPMediaTrackClip) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add((ITPMediaTrackClip) iTPMediaAsset);
            return arrayList;
        } else {
            return null;
        }
    }

    private void c(int i9) {
        try {
            this.f33822c.pauseDownload(i9);
        } catch (Throwable th2) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2, "p2p proxy pause download failed, taskId:".concat(String.valueOf(i9)));
        }
    }

    private void d(int i9) {
        try {
            this.f33822c.resumeDownload(this.f33829k);
        } catch (Throwable th2) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2, "p2p proxy resume download failed, taskId:".concat(String.valueOf(i9)));
        }
    }

    private void e(int i9) {
        if (o()) {
            return;
        }
        try {
            this.f33822c.stopPlay(i9);
        } catch (Throwable th2) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2, "p2p proxy stop play failed, taskID:".concat(String.valueOf(i9)));
        }
    }

    private String f(int i9) {
        switch (i9) {
            case 4097:
                return "onDownloadFinish";
            case 4098:
                return "onDownloadError";
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                return "onDownloadCdnUrlUpdate";
            case FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_OPEN /* 4100 */:
                return "onDownloadCdnUrlInfoUpdate";
            case 4101:
                return "onDownloadStatusUpdate";
            case 4102:
                return "onDownloadProtocolUpdate";
            case 4103:
                return "onDownloadCdnUrlExpired";
            case 4104:
                return "onPlayCallback";
            case 4105:
            case 4107:
                return "getPlayInfo";
            case 4106:
                return "onDownloadProgressUpdate";
            default:
                return "unknown";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i9) {
        switch (i9) {
            case TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND /* 100001 */:
                b(13);
                return;
            case TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND /* 100002 */:
                b(14);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i9) {
        if (i9 == 1) {
            b(1);
            b(10);
        } else if (i9 == 2) {
            b(2);
            b(9);
        } else if (i9 != 3) {
        } else {
            b(2);
            b(10);
        }
    }

    private boolean k() {
        if (this.f33826h == f33819g) {
            this.f33826h = TPPlayerConfig.getProxyServiceType();
        }
        com.tencent.thumbplayer.c.b a10 = i.a().a(this.f33826h);
        if (a10 == null || a10.a() == null) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "initProxy failed, serviceType:" + this.f33826h + ", playProxyManager:" + a10);
            return false;
        }
        try {
            ITPDownloadProxy a11 = a10.a();
            this.f33822c = a11;
            a11.setUserData(TPDownloadProxyEnum.USER_IS_VIP, Boolean.valueOf(TPPlayerConfig.isUserIsVip()));
            if (!TextUtils.isEmpty(TPPlayerConfig.getUserUin())) {
                this.f33822c.setUserData(TPDownloadProxyEnum.USER_UIN, TPPlayerConfig.getUserUin());
            }
            if (!TextUtils.isEmpty(TPPlayerConfig.getAppVersionName(this.f33820a))) {
                this.f33822c.setUserData(TPDownloadProxyEnum.USER_APP_VERSION, TPPlayerConfig.getAppVersionName(this.f33820a));
            }
            if (TPPlayerConfig.getBuildNumber(this.f33820a) != -1) {
                this.f33822c.setUserData(TPDownloadProxyEnum.USER_APP_VERSION_CODE, String.valueOf(TPPlayerConfig.getBuildNumber(this.f33820a)));
            }
            this.f33822c.setUserData(TPDownloadProxyEnum.USER_UPC, TPPlayerConfig.getUserUpc());
            this.f33822c.setUserData(TPDownloadProxyEnum.USER_UPC_STATE, Integer.valueOf(TPPlayerConfig.getUserUpcState()));
            this.f33822c.setUserData(TPDownloadProxyEnum.USER_EXTERNAL_NETWORK_IP, TPPlayerConfig.getOutNetIp());
            this.f33822c.setUserData(TPDownloadProxyEnum.TAB_ABUSERID, TPPlayerConfig.getAbUserId());
            return true;
        } catch (Throwable th2) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2);
            return false;
        }
    }

    private void l() {
        try {
            this.f33822c.setPlayState(this.f33829k, this.f33838t ? 101 : 100);
        } catch (Throwable th2) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2);
        }
    }

    private void m() {
        int i9 = this.f33829k;
        if (i9 > 0) {
            this.f33822c.updateTaskInfo(i9, TPDownloadProxyEnum.TASKINFO_ADAPTIVE_DYNAMIC_SWITCH, Integer.valueOf((this.f33839u || this.f33840v) ? 1 : 0));
            this.f33822c.updateTaskInfo(this.f33829k, TPDownloadProxyEnum.TASKINFO_MAX_BITRATE, Long.valueOf(this.f33841w));
        }
    }

    private void n() {
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "reset");
        this.f33828j = "";
        this.f33831m = "";
        this.f33830l = null;
        this.f33835q = 0L;
        this.f33836r = 0L;
        this.f33837s = false;
        this.f33838t = true;
        this.f33839u = false;
        this.f33840v = false;
        if (!com.tencent.thumbplayer.utils.b.a(this.f33827i)) {
            this.f33827i.clear();
        }
        this.f33823d = 0;
        this.f33826h = f33819g;
        this.f33822c = null;
        this.f33841w = 100000000L;
    }

    private boolean o() {
        if (!TPPlayerConfig.isUseP2P()) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "config set don't use p2p proxy!");
            return true;
        }
        if (this.f33823d == 0) {
            this.f33823d = k() ? 2 : 1;
        }
        return this.f33823d == 1;
    }

    private String p() {
        return this.f33828j;
    }

    private void q() {
        try {
            this.f33822c.setUserData(TPDownloadProxyEnum.DLPARAM_PLAY_START_TIME, Long.valueOf(this.f33835q));
            this.f33822c.setUserData(TPDownloadProxyEnum.DLPARAM_PLAY_END_TIME, Long.valueOf(this.f33836r));
        } catch (Throwable th2) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2);
        }
    }

    private void r() {
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "inner event : release handler");
        this.f33843y.writeLock().lock();
        a aVar = this.f33821b;
        if (aVar != null) {
            aVar.removeCallbacksAndMessages(null);
            this.f33821b = null;
        }
        this.f33843y.writeLock().unlock();
    }

    @Override // com.tencent.thumbplayer.c.a
    public com.tencent.thumbplayer.adapter.a.e a(long j10, String str, TPVideoInfo tPVideoInfo, Map<String, String> map) {
        if (tPVideoInfo == null) {
            return new com.tencent.thumbplayer.adapter.a.e(str);
        }
        TPDownloadParamData tPDownloadParamData = null;
        if (tPVideoInfo.getDownloadPraramList() != null && tPVideoInfo.getDownloadPraramList().size() > 0) {
            tPDownloadParamData = tPVideoInfo.getDownloadPraramList().get(0);
        }
        return a(j10, str, tPDownloadParamData, map);
    }

    @Override // com.tencent.thumbplayer.c.a
    @NonNull
    public com.tencent.thumbplayer.adapter.a.e a(String str, Map<String, String> map) {
        com.tencent.thumbplayer.adapter.a.e eVar = new com.tencent.thumbplayer.adapter.a.e(str);
        if (com.tencent.thumbplayer.utils.b.b(str) && !o()) {
            q();
            this.f33831m = str;
            TPDownloadParamData a10 = a(this.f33827i, 0);
            if (this.f33842x && a10 != null && a10.getDlType() == 1) {
                a10 = new TPDownloadParamData(11);
            }
            TPDownloadParam a11 = a10 != null ? a(str, a10, map) : null;
            try {
                StringBuilder sb2 = new StringBuilder("single url:");
                sb2.append(str);
                sb2.append(", paramData.savePath:");
                sb2.append(a10 != null ? a10.getSavePath() : "null");
                sb2.append(", paramData.DownloadFileID:");
                sb2.append(a10 != null ? a10.getDownloadFileID() : "null");
                TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", sb2.toString());
                int startPlay = this.f33822c.startPlay(p(), a11, this.f33824e);
                if (startPlay > 0) {
                    String playUrl = this.f33822c.getPlayUrl(startPlay, 0);
                    if (TextUtils.isEmpty(playUrl)) {
                        playUrl = str;
                    }
                    TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "startDownloadPlay, playId:".concat(String.valueOf(startPlay)));
                    eVar.b(playUrl);
                    String playUrl2 = this.f33822c.getPlayUrl(startPlay, 1);
                    if (!TextUtils.isEmpty(playUrl2)) {
                        str = playUrl2;
                    }
                    eVar.a(str);
                    this.f33829k = startPlay;
                    l();
                    m();
                } else {
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start play failed, cause : playId <= 0");
                }
            } catch (Throwable th2) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2, "p2p proxy start play failed");
            }
            return eVar;
        }
        return eVar;
    }

    @Override // com.tencent.thumbplayer.c.a
    @NonNull
    public ITPMediaAsset a(@NonNull ITPMediaAsset iTPMediaAsset) {
        if (o()) {
            return iTPMediaAsset;
        }
        q();
        return iTPMediaAsset instanceof com.tencent.thumbplayer.b.j ? a((com.tencent.thumbplayer.b.j) iTPMediaAsset) : iTPMediaAsset instanceof l ? a((l) iTPMediaAsset) : b(iTPMediaAsset);
    }

    @Override // com.tencent.thumbplayer.c.a
    public ITPMediaAsset a(ITPMediaAsset iTPMediaAsset, long j10, TPVideoInfo tPVideoInfo) {
        if (o() || iTPMediaAsset == null) {
            return iTPMediaAsset;
        }
        if (this.f33833o == null) {
            this.f33833o = new LinkedList<>();
        }
        return tPVideoInfo == null ? iTPMediaAsset : iTPMediaAsset instanceof ITPMediaDRMAsset ? a((ITPMediaDRMAsset) iTPMediaAsset, j10, tPVideoInfo) : iTPMediaAsset instanceof l ? a((l) iTPMediaAsset, j10, tPVideoInfo) : b(iTPMediaAsset, j10, tPVideoInfo);
    }

    @Override // com.tencent.thumbplayer.c.a
    public String a(int i9, String str, TPDownloadParamData tPDownloadParamData) {
        TPDownloadParam tPDownloadParam;
        String a10;
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "return coz url is empty";
        } else if (!com.tencent.thumbplayer.utils.b.b(str)) {
            str2 = "return coz url is locol url, not need use proxy";
        } else if (!o()) {
            int i10 = 2;
            int i11 = 1;
            try {
                if (tPDownloadParamData != null) {
                    tPDownloadParam = k.a(str, tPDownloadParamData, null);
                    if (tPDownloadParamData.getTaskType() != 1) {
                        i10 = 1;
                    }
                    a10 = tPDownloadParamData.getDownloadFileID();
                    if (TextUtils.isEmpty(a10)) {
                        a10 = com.tencent.thumbplayer.utils.b.a(str);
                    }
                    i11 = i10;
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(str);
                    tPDownloadParam = new TPDownloadParam(arrayList, i9 == 2 ? 3 : 0, null);
                    a10 = com.tencent.thumbplayer.utils.b.a(str);
                }
                int startPlay = this.f33822c.startPlay(a10, tPDownloadParam, this.f33824e);
                if (startPlay <= 0) {
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start play failed, cause : playId <= 0");
                    return str;
                }
                TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start play, url type".concat(String.valueOf(i11)));
                String playUrl = this.f33822c.getPlayUrl(startPlay, i11);
                this.f33834p.put(playUrl, Integer.valueOf(startPlay));
                return playUrl;
            } catch (Throwable th2) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "p2p proxy start play failed:".concat(String.valueOf(th2)));
                return str;
            }
        } else {
            str2 = "return coz download proxy init failed";
        }
        TPLogUtil.w("TPThumbPlayer[TPPlayManagerImpl.java]", str2);
        return str;
    }

    @Override // com.tencent.thumbplayer.c.a
    public void a(float f10) {
        if (o()) {
            return;
        }
        if (f10 <= 0.0f) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "set play speed ratio, value invalid:".concat(String.valueOf(f10)));
            return;
        }
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "set play speed value to proxy:".concat(String.valueOf(f10)));
        this.f33822c.updateTaskInfo(this.f33829k, TPDownloadProxyEnum.TASKINFO_SPEED_RATIO, Float.valueOf(f10));
    }

    @Override // com.tencent.thumbplayer.c.a
    public void a(int i9) {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "setProxyPlayState: ".concat(String.valueOf(i9)));
        if (o()) {
            return;
        }
        try {
            this.f33822c.setPlayState(this.f33829k, i9);
            if ((i9 == 5 || i9 == 0) && !com.tencent.thumbplayer.utils.b.a(this.f33833o)) {
                Iterator<c> it = this.f33833o.iterator();
                while (it.hasNext()) {
                    c next = it.next();
                    if (next != null) {
                        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "setProxyPlayState definitionID:" + next.f33846a + ", taskID:" + next.f33847b + ", state:" + i9);
                        this.f33822c.setPlayState(next.f33847b, i9);
                    }
                }
            }
        } catch (Throwable th2) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2);
        }
    }

    @Override // com.tencent.thumbplayer.utils.i.b
    public void a(int i9, int i10, int i11, int i12) {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "onNetworkStatusChanged oldNetStatus: " + i9 + ", netStatus: " + i10);
        a(4197, i10, 0, null, false, false, 0L);
    }

    @Override // com.tencent.thumbplayer.utils.f.a
    public void a(int i9, int i10, int i11, Object obj) {
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "onEvent eventId: " + i9 + ", arg1: " + i10 + ", arg2: " + i11 + ", object" + obj);
        a(4196, i9, 0, null, false, false, 0L);
    }

    @Override // com.tencent.thumbplayer.c.a
    public void a(long j10) {
        c cVar;
        if (o()) {
            return;
        }
        try {
            if (com.tencent.thumbplayer.utils.b.a(this.f33833o)) {
                return;
            }
            c peek = this.f33833o.peek();
            while (true) {
                cVar = peek;
                if (cVar == null || cVar.f33846a == j10) {
                    break;
                }
                TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "stop proxy definitionID:" + cVar.f33846a + ", taskID:" + cVar.f33847b);
                e(cVar.f33847b);
                this.f33833o.removeFirst();
                peek = this.f33833o.peek();
            }
            if (cVar != null) {
                TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "stop proxy task id:" + cVar.f33847b);
                e(this.f33829k);
                this.f33829k = cVar.f33847b;
                l();
                m();
                this.f33833o.remove(cVar);
            }
        } catch (Exception e10) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", e10, "playerSwitchDefComplete exception");
        }
    }

    @Override // com.tencent.thumbplayer.c.a
    public void a(TPOptionalParam tPOptionalParam) {
        if (o() || tPOptionalParam == null) {
            return;
        }
        if (tPOptionalParam.getKey() == 100) {
            this.f33835q = tPOptionalParam.getParamLong().value;
        } else if (tPOptionalParam.getKey() == 500) {
            try {
                long j10 = tPOptionalParam.getParamLong().value;
                this.f33836r = j10;
                if (this.f33829k > 0) {
                    this.f33822c.setUserData(TPDownloadProxyEnum.DLPARAM_PLAY_END_TIME, Long.valueOf(j10));
                }
            } catch (Throwable th2) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2);
            }
        } else if (tPOptionalParam.getKey() == 503) {
            this.f33841w = tPOptionalParam.getParamLong().param1;
            m();
        } else if (tPOptionalParam.getKey() == 508) {
            this.f33839u = tPOptionalParam.getParamBoolean().value;
            m();
        } else if (tPOptionalParam.getKey() == 504) {
            this.f33840v = tPOptionalParam.getParamLong().value != 0;
            m();
        }
    }

    @Override // com.tencent.thumbplayer.c.a
    public void a(TPVideoInfo tPVideoInfo) {
        if (tPVideoInfo == null) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "setVideoInfo, param is null ");
            return;
        }
        if (tPVideoInfo.getDownloadPraramList() != null && tPVideoInfo.getDownloadPraramList().size() > 0) {
            TPDownloadParamData a10 = a(tPVideoInfo.getDownloadPraramList(), 0);
            if (this.f33840v && a10 != null) {
                a10.setSelfAdaption(true);
            }
        }
        if (this.f33830l != null) {
            b(tPVideoInfo);
        }
        this.f33830l = tPVideoInfo;
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "setVideoInfo, enter");
        this.f33828j = tPVideoInfo.getProxyFileID();
        if (!com.tencent.thumbplayer.utils.b.a(this.f33827i)) {
            this.f33827i.clear();
        }
        if (tPVideoInfo.getDownloadPraramList() == null || tPVideoInfo.getDownloadPraramList().size() <= 0) {
            return;
        }
        this.f33827i.addAll(tPVideoInfo.getDownloadPraramList());
    }

    @Override // com.tencent.thumbplayer.c.a
    public void a(ITPPlayListener iTPPlayListener) {
        if (iTPPlayListener == null) {
            this.f33825f = new com.tencent.thumbplayer.c.f("TPThumbPlayer[TPPlayManagerImpl.java]");
        } else {
            this.f33825f = iTPPlayListener;
        }
    }

    @Override // com.tencent.thumbplayer.c.a
    public void a(String str, Object obj) {
        ITPDownloadProxy iTPDownloadProxy = this.f33822c;
        if (iTPDownloadProxy != null) {
            iTPDownloadProxy.updateTaskInfo(this.f33829k, str, obj);
        }
    }

    @Override // com.tencent.thumbplayer.c.a
    public void a(String str, String str2) {
        if (!com.tencent.thumbplayer.utils.b.b(str) || TextUtils.isEmpty(str2)) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, audioTrackUrl:" + str + ", keyId:" + str2);
        } else if (o()) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, download proxy init failed.");
        } else {
            if (this.f33837s) {
                int i9 = this.f33829k;
                if (i9 > 0) {
                    e(i9);
                }
                this.f33829k = 0;
                a(this.f33831m, (Map<String, String>) null);
                if (!b(str, str2)) {
                    TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, addAudioTrack err.");
                    return;
                }
            } else if (!b(str, str2)) {
                TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "startRemuxer, addAudioTrack err.");
                return;
            }
            this.f33837s = true;
        }
    }

    @Override // com.tencent.thumbplayer.c.a
    public void a(boolean z10) {
        this.f33842x = z10;
    }

    @Override // com.tencent.thumbplayer.c.a
    public boolean a() {
        return this.f33842x;
    }

    @Override // com.tencent.thumbplayer.c.a
    public void b() {
        if (o()) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", "stopRemuxer, download proxy init failed.");
            return;
        }
        if (this.f33837s) {
            int i9 = this.f33829k;
            if (i9 > 0) {
                e(i9);
            }
            this.f33829k = 0;
            a(this.f33831m, (Map<String, String>) null);
        }
        this.f33837s = false;
    }

    public void b(int i9) {
        if (o()) {
            return;
        }
        try {
            this.f33822c.pushEvent(i9);
        } catch (Throwable th2) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2, "p2p proxy pushEvent failed, event:".concat(String.valueOf(i9)));
        }
    }

    @Override // com.tencent.thumbplayer.c.a
    public boolean c() {
        LinkedList<c> linkedList;
        return (o() || (linkedList = this.f33833o) == null || linkedList.size() <= 0) ? false : true;
    }

    @Override // com.tencent.thumbplayer.c.a
    public void d() {
        TPLogUtil.i("TPThumbPlayer[TPPlayManagerImpl.java]", "stopDownload, playId:" + this.f33829k);
        int i9 = this.f33829k;
        if (i9 > 0) {
            e(i9);
        }
        this.f33829k = 0;
        if (!com.tencent.thumbplayer.utils.b.a(this.f33833o)) {
            Iterator<c> it = this.f33833o.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next != null) {
                    e(next.f33847b);
                }
            }
            this.f33833o.clear();
        }
        if (!com.tencent.thumbplayer.utils.b.a(this.f33834p)) {
            for (Integer num : this.f33834p.values()) {
                e(num.intValue());
            }
            this.f33834p.clear();
        }
        n();
    }

    @Override // com.tencent.thumbplayer.c.a
    public void e() {
        d();
        com.tencent.thumbplayer.utils.i.a().b(this);
        com.tencent.thumbplayer.utils.f.b(this);
        r();
        this.f33832n = null;
        this.f33825f = new com.tencent.thumbplayer.c.f("TPThumbPlayer[TPPlayManagerImpl.java]");
        this.f33824e = null;
        this.f33822c = null;
    }

    @Override // com.tencent.thumbplayer.c.a
    public boolean f() {
        return !o();
    }

    @Override // com.tencent.thumbplayer.c.a
    public String g() {
        if (o()) {
            return null;
        }
        try {
            return this.f33822c.getPlayErrorCodeStr(this.f33829k);
        } catch (Throwable th2) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", th2);
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.c.a
    public void h() {
        if (o()) {
            return;
        }
        c(this.f33829k);
        if (!com.tencent.thumbplayer.utils.b.a(this.f33833o)) {
            Iterator<c> it = this.f33833o.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next != null) {
                    c(next.f33847b);
                }
            }
        }
        if (com.tencent.thumbplayer.utils.b.a(this.f33834p)) {
            return;
        }
        for (Integer num : this.f33834p.values()) {
            c(num.intValue());
        }
    }

    @Override // com.tencent.thumbplayer.c.a
    public void i() {
        if (o()) {
            return;
        }
        d(this.f33829k);
        if (!com.tencent.thumbplayer.utils.b.a(this.f33833o)) {
            Iterator<c> it = this.f33833o.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next != null) {
                    d(next.f33847b);
                }
            }
        }
        if (com.tencent.thumbplayer.utils.b.a(this.f33834p)) {
            return;
        }
        for (Integer num : this.f33834p.values()) {
            d(num.intValue());
        }
    }

    @Override // com.tencent.thumbplayer.c.a
    public ITPPlayerProxyListener j() {
        return this.f33832n;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPlayerProxy
    public void pushEvent(int i9) {
        if (o()) {
            return;
        }
        try {
            b(h.b(i9));
        } catch (IllegalArgumentException e10) {
            TPLogUtil.e("TPThumbPlayer[TPPlayManagerImpl.java]", e10);
        }
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPlayerProxy
    public void setIsActive(boolean z10) {
        TPLogUtil.d("TPThumbPlayer[TPPlayManagerImpl.java]", "setIsActive: ".concat(String.valueOf(z10)));
        this.f33838t = z10;
        if (o()) {
            return;
        }
        l();
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPlayerProxy
    public void setProxyServiceType(int i9) {
        this.f33826h = i9;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPlayerProxy
    public void setTPPlayerProxyListener(ITPPlayerProxyListener iTPPlayerProxyListener) {
        this.f33832n = iTPPlayerProxyListener;
    }
}
