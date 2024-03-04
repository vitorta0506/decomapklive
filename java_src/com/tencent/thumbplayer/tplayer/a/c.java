package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
import com.tencent.thumbplayer.api.reportv2.ITPReportChannelListener;
import com.tencent.thumbplayer.api.reportv2.ITPReportInfoGetter;
import com.tencent.thumbplayer.api.reportv2.TPExtendCommonKey;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyHelper;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.d.b;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class c implements a {

    /* renamed from: i  reason: collision with root package name */
    private static com.tencent.thumbplayer.utils.c f34256i;

    /* renamed from: a  reason: collision with root package name */
    protected ITPReportInfoGetter f34257a;

    /* renamed from: b  reason: collision with root package name */
    protected com.tencent.thumbplayer.tplayer.a.a.a f34258b;

    /* renamed from: c  reason: collision with root package name */
    protected CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> f34259c;

    /* renamed from: d  reason: collision with root package name */
    protected Context f34260d;

    /* renamed from: e  reason: collision with root package name */
    protected l f34261e;

    /* renamed from: f  reason: collision with root package name */
    protected j f34262f = null;

    /* renamed from: g  reason: collision with root package name */
    protected int f34263g = 0;

    /* renamed from: h  reason: collision with root package name */
    protected Map<String, Object> f34264h = new HashMap();

    private synchronized void a(@NonNull Context context, @NonNull String str) {
        if (f34256i != null) {
            return;
        }
        f34256i = new com.tencent.thumbplayer.utils.c(this.f34260d, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(@NonNull Map<String, String> map, @NonNull Map<String, String> map2, @NonNull Map<String, String> map3) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (c(entry.getKey())) {
                map2.put(entry.getKey(), entry.getValue());
            } else if (b(entry.getKey())) {
                map3.put(entry.getKey(), entry.getValue());
            } else {
                TPLogUtil.e("TPBaseReporter", "invalid extend info <" + entry.getKey() + ", " + entry.getValue() + "> from ITPReportInfoGetter, key valid!");
            }
        }
    }

    protected static boolean b(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("ext_");
    }

    private synchronized void c() {
        com.tencent.thumbplayer.utils.c cVar = f34256i;
        if (cVar == null) {
            return;
        }
        Iterator<String> it = cVar.b().iterator();
        while (it.hasNext()) {
            String next = it.next();
            String d10 = d(next);
            com.tencent.thumbplayer.tplayer.a.b.a aVar = (com.tencent.thumbplayer.tplayer.a.b.a) f34256i.b(next);
            if (d10 != null && aVar != null) {
                Map<String, String> b10 = aVar.b();
                b(d10, b10);
                com.tencent.thumbplayer.common.a.b.a(d10, b10);
                TPLogUtil.i("TPBaseReporter", "report cached reportEvent, key:".concat(String.valueOf(next)));
            }
        }
        f34256i.c();
    }

    protected static boolean c(String str) {
        Field[] declaredFields;
        if (str == null) {
            return false;
        }
        for (Field field : TPExtendCommonKey.class.getDeclaredFields()) {
            try {
                field.setAccessible(true);
                String str2 = (String) field.get(TPExtendCommonKey.class);
                if (str2 != null && str2.equals(str)) {
                    return true;
                }
            } catch (IllegalAccessException e10) {
                TPLogUtil.e("TPBaseReporter", e10);
            }
        }
        return false;
    }

    private static String d(@NonNull String str) {
        Field[] declaredFields;
        for (Field field : i.class.getDeclaredFields()) {
            field.setAccessible(true);
            if (field.getType() == String.class) {
                try {
                    String str2 = (String) field.get(i.class);
                    if (str2 != null && str.endsWith(str2)) {
                        return str2;
                    }
                } catch (IllegalAccessException unused) {
                    TPLogUtil.w("TPBaseReporter", "fail to get value of field(" + field.getName() + ") in TPReportEventId.class)");
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public TPDynamicStatisticParams a(boolean z10) {
        com.tencent.thumbplayer.tplayer.a.a.a aVar = this.f34258b;
        if (aVar == null) {
            TPLogUtil.e("TPBaseReporter", "getDynamicStatParamsFromCore failed, mPlayerInfoGetter is null, return default value");
            return new TPDynamicStatisticParams();
        }
        return aVar.a(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public TPGeneralPlayFlowParams a(b.a aVar) {
        TPGeneralPlayFlowParams tPGeneralPlayFlowParams;
        if (aVar instanceof b.n) {
            tPGeneralPlayFlowParams = ((b.n) aVar).d();
        } else if (aVar instanceof b.l) {
            tPGeneralPlayFlowParams = ((b.l) aVar).d();
        } else if (aVar instanceof b.i) {
            tPGeneralPlayFlowParams = ((b.i) aVar).f();
        } else {
            TPLogUtil.e("TPBaseReporter", "event info do not have generalPlayFlowParams");
            tPGeneralPlayFlowParams = null;
        }
        return tPGeneralPlayFlowParams == null ? new TPGeneralPlayFlowParams() : tPGeneralPlayFlowParams;
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a() {
        CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> copyOnWriteArrayList = this.f34259c;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
            this.f34259c = null;
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a(int i9, b.a aVar) {
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a(@NonNull Context context, @NonNull l lVar) {
        this.f34260d = context;
        this.f34259c = new CopyOnWriteArrayList<>();
        this.f34261e = lVar;
        this.f34262f = new j(context);
        a(context, "TPReporterCache");
        c();
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a(@NonNull ITPReportChannelListener iTPReportChannelListener) {
        CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> copyOnWriteArrayList = this.f34259c;
        if (copyOnWriteArrayList == null) {
            TPLogUtil.w("TPBaseReporter", "mReportChannelListenerList is null");
            return;
        }
        Iterator<WeakReference<ITPReportChannelListener>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (it.next().get() == iTPReportChannelListener) {
                TPLogUtil.w("TPBaseReporter", "mReportChannelListenerList has contain reportChannelListener");
                return;
            }
        }
        this.f34259c.add(new WeakReference<>(iTPReportChannelListener));
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a(@Nullable ITPReportInfoGetter iTPReportInfoGetter) {
        this.f34257a = iTPReportInfoGetter;
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a(@Nullable com.tencent.thumbplayer.tplayer.a.a.a aVar) {
        this.f34258b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(b bVar) {
        com.tencent.thumbplayer.tplayer.a.a.a aVar = this.f34258b;
        if (aVar == null) {
            TPLogUtil.e("TPBaseReporter", "fillStreamInfoToCommonParams fail, not set mPlayerInfoGetter");
            return;
        }
        TPGeneralPlayFlowParams a10 = aVar.a();
        bVar.f34116a.a(this.f34261e.f34307i);
        bVar.f34116a.a(a10.mPlayerBaseMediaParams.mDurationMs);
        bVar.f34116a.e(a10.mPlayerBaseMediaParams.mHlsSourceType);
        bVar.f34116a.f(this.f34261e.f34305g);
        bVar.f34116a.g(this.f34261e.f34304f);
        bVar.f34116a.i(a10.mPlayerBaseMediaParams.mFormatContainer);
        bVar.f34116a.h(a10.mPlayerBaseMediaParams.mVideoEncodeFormat);
        bVar.f34116a.i(a10.mPlayerBaseMediaParams.mAudioEncodeFormat);
        bVar.f34116a.j(a10.mPlayerBaseMediaParams.mSubtitleEncodeFormat);
        bVar.f34116a.b(a10.mPlayerBaseMediaParams.mVideoStreamBitrateKbps);
        bVar.f34116a.a(a10.mPlayerBaseMediaParams.mVideoFrameRate);
        bVar.f34116a.j(this.f34261e.f34303e);
        bVar.f34116a.k(a10.mPlayerBaseMediaParams.mVideoWidth + ProxyConfig.MATCH_ALL_SCHEMES + a10.mPlayerBaseMediaParams.mVideoHeight);
        bVar.f34116a.l(TPDownloadProxyHelper.getNativeLibVersion());
        bVar.f34116a.k(bVar.f34117b);
        bVar.f34116a.o(bVar.f34120e);
        bVar.f34116a.m(bVar.f34119d);
        bVar.f34116a.n(bVar.f34118c);
        bVar.f34116a.l(this.f34261e.f34306h);
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
            bVar.f34116a.p(new JSONObject(this.f34264h).toString());
        } catch (NullPointerException e10) {
            TPLogUtil.e("TPBaseReporter", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(@NonNull String str) {
        com.tencent.thumbplayer.utils.c cVar = f34256i;
        if (cVar == null) {
            return;
        }
        Iterator<String> it = cVar.b().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.startsWith(str)) {
                f34256i.a(next);
                TPLogUtil.i("TPBaseReporter", "remove cache, key:".concat(next));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(@NonNull String str, @NonNull com.tencent.thumbplayer.tplayer.a.b.a aVar) {
        com.tencent.thumbplayer.utils.c cVar = f34256i;
        if (cVar == null) {
            return;
        }
        cVar.a(aVar.a() + str, aVar);
        TPLogUtil.i("TPBaseReporter", "write cache, flowid:" + aVar.a() + ", reportId:" + str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, @NonNull Map<String, String> map) {
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        String str2 = ":{";
        while (true) {
            sb2.append(str2);
            if (!it.hasNext()) {
                sb2.append("}");
                TPLogUtil.i("TPBaseReporter", sb2.toString());
                return;
            }
            Map.Entry<String, String> next = it.next();
            sb2.append(next.getKey());
            sb2.append(CertificateUtil.DELIMITER);
            sb2.append(next.getValue());
            str2 = ",";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public TPDynamicStatisticParams b(b.a aVar) {
        TPDynamicStatisticParams tPDynamicStatisticParams;
        if (aVar instanceof b.n) {
            tPDynamicStatisticParams = ((b.n) aVar).e();
        } else if (aVar instanceof b.l) {
            tPDynamicStatisticParams = ((b.l) aVar).e();
        } else if (aVar instanceof b.i) {
            tPDynamicStatisticParams = ((b.i) aVar).g();
        } else {
            TPLogUtil.e("TPBaseReporter", "event info do not have dynamicStatisticParams");
            tPDynamicStatisticParams = null;
        }
        return tPDynamicStatisticParams == null ? new TPDynamicStatisticParams() : tPDynamicStatisticParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public TPGeneralPlayFlowParams b() {
        com.tencent.thumbplayer.tplayer.a.a.a aVar = this.f34258b;
        if (aVar == null) {
            TPLogUtil.e("TPBaseReporter", "getGeneralPlayFlowParams failed, mPlayerInfoGetter is null, return default value");
            return new TPGeneralPlayFlowParams();
        }
        return aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(@NonNull b bVar) {
        ITPReportInfoGetter iTPReportInfoGetter = this.f34257a;
        if (iTPReportInfoGetter == null) {
            return;
        }
        Map<String, String> initExtendReportInfo = iTPReportInfoGetter.getInitExtendReportInfo();
        if (initExtendReportInfo == null) {
            TPLogUtil.e("TPBaseReporter", "fillInitExtReportInfoToCommonParams fail, initExtendReportInfo is null");
            return;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        a(initExtendReportInfo, hashMap, hashMap2);
        bVar.f34116a.a(hashMap);
        bVar.f34116a.b(hashMap2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str, @NonNull Map<String, String> map) {
        if (this.f34259c.size() == 0) {
            return;
        }
        for (int i9 = 0; i9 < this.f34259c.size(); i9++) {
            ITPReportChannelListener iTPReportChannelListener = this.f34259c.get(i9).get();
            if (iTPReportChannelListener != null) {
                iTPReportChannelListener.reportEvent(str, map);
            }
        }
    }
}
