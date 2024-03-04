package com.tencent.thumbplayer.tplayer.plugins.report;

import android.app.UiModeManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.webkit.ProxyConfig;
import com.huawei.hms.framework.common.ContainerUtils;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.thumbplayer.api.TPErrorCode;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import com.tencent.thumbplayer.api.report.ITPBusinessReportManager;
import com.tencent.thumbplayer.api.report.TPDefaultReportInfo;
import com.tencent.thumbplayer.api.report.TPLiveReportInfo;
import com.tencent.thumbplayer.api.report.TPVodReportInfo;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyHelper;
import com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.f;
import com.tencent.thumbplayer.utils.l;
import com.tencent.thumbplayer.utils.o;
import com.tencent.ugc.datereport.UGCDataReportDef;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class b implements ITPBusinessReportManager, com.tencent.thumbplayer.tplayer.plugins.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f34385a = String.format("Android %s", TPSystemInfo.getOsVersion());

    /* renamed from: b  reason: collision with root package name */
    private static String f34386b = "";

    /* renamed from: c  reason: collision with root package name */
    private static boolean f34387c = false;

    /* renamed from: h  reason: collision with root package name */
    private static com.tencent.thumbplayer.utils.c f34388h = null;
    private Context I;

    /* renamed from: d  reason: collision with root package name */
    private HandlerThread f34389d;

    /* renamed from: e  reason: collision with root package name */
    private HandlerC0354b f34390e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f34391f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private boolean f34392g = false;

    /* renamed from: i  reason: collision with root package name */
    private TPDefaultReportInfo f34393i = null;

    /* renamed from: j  reason: collision with root package name */
    private TPReportParams f34394j = null;

    /* renamed from: k  reason: collision with root package name */
    private int f34395k = 1;

    /* renamed from: l  reason: collision with root package name */
    private int f34396l = 0;

    /* renamed from: m  reason: collision with root package name */
    private boolean f34397m = true;

    /* renamed from: n  reason: collision with root package name */
    private boolean f34398n = true;

    /* renamed from: o  reason: collision with root package name */
    private boolean f34399o = false;

    /* renamed from: p  reason: collision with root package name */
    private boolean f34400p = false;

    /* renamed from: q  reason: collision with root package name */
    private long f34401q = 0;

    /* renamed from: r  reason: collision with root package name */
    private long f34402r = 0;

    /* renamed from: s  reason: collision with root package name */
    private int f34403s = 81;

    /* renamed from: t  reason: collision with root package name */
    private int f34404t = 0;

    /* renamed from: u  reason: collision with root package name */
    private int f34405u = 0;

    /* renamed from: v  reason: collision with root package name */
    private int f34406v = 0;

    /* renamed from: w  reason: collision with root package name */
    private boolean f34407w = false;

    /* renamed from: x  reason: collision with root package name */
    private boolean f34408x = false;

    /* renamed from: y  reason: collision with root package name */
    private boolean f34409y = false;

    /* renamed from: z  reason: collision with root package name */
    private String f34410z = "0";
    private String A = "";
    private String B = "";
    private String C = "";
    private int D = 0;
    private int E = 0;
    private String F = "";
    private int G = 0;
    private long H = 0;
    private int J = -1;
    private c K = new a();
    private TPReportParams.BufferingOnceParams L = null;
    private TPReportParams.UserSeekOnceParams M = null;
    private final e N = new e();
    private f.a O = new f.a() { // from class: com.tencent.thumbplayer.tplayer.plugins.report.b.1
        @Override // com.tencent.thumbplayer.utils.f.a
        public void a(int i9, int i10, int i11, Object obj) {
            int i12;
            TPLogUtil.i("TPReportManager", "OnGlobalEventChangeListener eventId: ".concat(String.valueOf(i9)));
            switch (i9) {
                case TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND /* 100001 */:
                    i12 = PushConstants.BROADCAST_MESSAGE_ARRIVE;
                    break;
                case TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND /* 100002 */:
                    i12 = 2101;
                    break;
                default:
                    return;
            }
            b.this.f34390e.obtainMessage(i12, null).sendToTarget();
        }
    };

    /* loaded from: classes4.dex */
    class a implements c {
        a() {
        }

        @Override // com.tencent.thumbplayer.tplayer.plugins.report.b.c
        public void a(int i9, @NonNull com.tencent.thumbplayer.common.a.a aVar) {
            b.this.a(aVar, i9, i9 <= 30);
            b.this.b(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.thumbplayer.tplayer.plugins.report.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class HandlerC0354b extends Handler {
        HandlerC0354b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj = message.obj;
            Map map = obj instanceof Map ? (Map) obj : null;
            int i9 = message.what;
            if (i9 == 100) {
                b.this.k();
            } else if (i9 == 3000) {
                b.this.e();
            } else if (i9 == 4000) {
                b.this.i();
            } else if (i9 == 2100) {
                b.this.h();
            } else if (i9 == 2101) {
                b.this.f();
            } else {
                switch (i9) {
                    case 999:
                        b.this.a(map);
                        return;
                    case 1000:
                        b.this.b(map);
                        return;
                    case 1001:
                        b.this.c(map);
                        return;
                    case 1002:
                        b.this.d(map);
                        return;
                    case 1003:
                        b.this.e(map);
                        return;
                    case 1004:
                        b.this.g(map);
                        return;
                    case 1005:
                        b.this.h(map);
                        return;
                    case 1006:
                        b.this.i(map);
                        return;
                    case 1007:
                        b.this.j(map);
                        return;
                    case 1008:
                        b.this.k(map);
                        return;
                    case 1009:
                        b.this.n(map);
                        return;
                    case 1010:
                        b.this.p(map);
                        return;
                    case 1011:
                        b.this.o(map);
                        return;
                    case 1012:
                        b.this.f(map);
                        return;
                    case 1013:
                        b.this.l(map);
                        return;
                    case 1014:
                        b.this.m(map);
                        return;
                    case 1015:
                        b.this.r(map);
                        return;
                    case 1016:
                        if (obj instanceof String) {
                            b.this.a((String) obj);
                            return;
                        }
                        return;
                    case 1017:
                        b.this.C(map);
                        return;
                    case 1018:
                        b.this.D(map);
                        return;
                    case 1019:
                        b.this.A(map);
                        return;
                    case 1020:
                        b.this.y(map);
                        return;
                    case 1021:
                        b.this.z(map);
                        return;
                    case 1022:
                        b.this.B(map);
                        return;
                    case UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER /* 1023 */:
                        b.this.E(map);
                        return;
                    default:
                        switch (i9) {
                            case 2000:
                                b.this.s(map);
                                return;
                            case 2001:
                                b.this.t(map);
                                return;
                            case 2002:
                                b.this.v(map);
                                return;
                            case 2003:
                                b.this.u(map);
                                return;
                            case 2004:
                                b.this.w(map);
                                return;
                            case 2005:
                                b.this.x(map);
                                return;
                            default:
                                return;
                        }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface c {
        void a(int i9, @NonNull com.tencent.thumbplayer.common.a.a aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements c {
        d() {
        }

        @Override // com.tencent.thumbplayer.tplayer.plugins.report.b.c
        public void a(int i9, @NonNull com.tencent.thumbplayer.common.a.a aVar) {
            l lVar = new l();
            boolean z10 = i9 <= 30 || i9 == 263;
            if (i9 == 30) {
                i9 = 205;
            } else if (i9 == 50) {
                b.this.f34390e.removeMessages(3000);
                i9 = TPReportParams.LIVE_STEP_PLAY;
            } else if (i9 == 150) {
                b.this.f34390e.removeMessages(3000);
            } else if (i9 != 263) {
                return;
            } else {
                b.this.f34390e.removeMessages(3000);
                b.this.f34390e.sendEmptyMessageDelayed(3000, 60000L);
            }
            b.this.a(lVar, i9, z10);
            b.this.b(lVar, z10);
            if (i9 != 205) {
                lVar.a("loadingtime", 0);
            }
            TPLogUtil.i("TPReportManager", "liveExParam.prePlayLengthInt: " + b.this.f34394j.getLiveExParam().prePlayLengthInt);
            b.this.b(lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        long f34415a;

        /* renamed from: b  reason: collision with root package name */
        int f34416b;

        /* renamed from: c  reason: collision with root package name */
        long f34417c;

        /* renamed from: d  reason: collision with root package name */
        long f34418d;

        /* renamed from: e  reason: collision with root package name */
        int f34419e;

        /* renamed from: f  reason: collision with root package name */
        int f34420f;

        /* renamed from: g  reason: collision with root package name */
        long f34421g;

        /* renamed from: h  reason: collision with root package name */
        long f34422h;

        /* renamed from: i  reason: collision with root package name */
        int f34423i;

        /* renamed from: j  reason: collision with root package name */
        int f34424j;

        /* renamed from: k  reason: collision with root package name */
        int f34425k;

        /* renamed from: l  reason: collision with root package name */
        int f34426l;

        /* renamed from: m  reason: collision with root package name */
        boolean f34427m;

        /* renamed from: n  reason: collision with root package name */
        boolean f34428n;

        /* renamed from: o  reason: collision with root package name */
        boolean f34429o;

        /* renamed from: p  reason: collision with root package name */
        int f34430p;

        /* renamed from: q  reason: collision with root package name */
        String f34431q;

        /* renamed from: r  reason: collision with root package name */
        String f34432r;

        /* renamed from: s  reason: collision with root package name */
        String f34433s;

        /* renamed from: t  reason: collision with root package name */
        String f34434t;

        /* renamed from: u  reason: collision with root package name */
        String f34435u;

        /* renamed from: v  reason: collision with root package name */
        String f34436v;

        /* renamed from: w  reason: collision with root package name */
        ArrayList<f> f34437w;

        private e() {
            this.f34415a = 0L;
            this.f34416b = 0;
            this.f34417c = 0L;
            this.f34418d = 0L;
            this.f34419e = 0;
            this.f34420f = 0;
            this.f34421g = 0L;
            this.f34422h = 0L;
            this.f34423i = 0;
            this.f34424j = 0;
            this.f34425k = 0;
            this.f34426l = 0;
            this.f34427m = false;
            this.f34428n = false;
            this.f34429o = false;
            this.f34430p = -1;
            this.f34431q = "";
            this.f34432r = "";
            this.f34433s = "";
            this.f34434t = "";
            this.f34435u = "";
            this.f34436v = "";
            this.f34437w = new ArrayList<>();
        }

        void a() {
            this.f34415a = 0L;
            this.f34416b = 0;
            this.f34417c = 0L;
            this.f34418d = 0L;
            this.f34419e = 0;
            this.f34420f = 0;
            this.f34421g = 0L;
            this.f34422h = 0L;
            this.f34423i = 0;
            this.f34424j = 0;
            this.f34425k = 0;
            this.f34426l = 0;
            this.f34427m = false;
            this.f34428n = false;
            this.f34429o = false;
            this.f34430p = -1;
            this.f34431q = "";
            this.f34432r = "";
            this.f34433s = "";
            this.f34434t = "";
            this.f34435u = "";
            this.f34436v = "";
            this.f34437w.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f {

        /* renamed from: a  reason: collision with root package name */
        String f34439a;

        /* renamed from: b  reason: collision with root package name */
        String f34440b;

        /* renamed from: c  reason: collision with root package name */
        long f34441c = -1;

        f(String str, String str2) {
            this.f34439a = str;
            this.f34440b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements c {
        g() {
        }

        @Override // com.tencent.thumbplayer.tplayer.plugins.report.b.c
        public void a(int i9, @NonNull com.tencent.thumbplayer.common.a.a aVar) {
            boolean z10 = i9 <= 30;
            b.this.a(aVar, i9, z10);
            b.this.a(aVar, z10);
            b.this.b(aVar);
        }
    }

    public b(Context context) {
        this.I = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        TPReportParams.LiveExParam liveExParam = this.f34394j.getLiveExParam();
        long a10 = a(map, "stime", System.currentTimeMillis());
        liveExParam.getSyncFrameDurationInt = (int) (a10 - this.N.f34417c);
        this.f34394j.getFirstLoadParams().firstPacketReadTimeUnix = a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.f34394j.getFirstLoadParams().firstOpenTimeUnix = a(map, "stime", System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        int a10 = a(map, "speed", 0);
        this.f34404t = a10;
        e eVar = this.N;
        eVar.f34425k += a10;
        eVar.f34426l++;
        if (a10 > eVar.f34424j) {
            eVar.f34424j = a10;
        }
        String a11 = a(map, "spanId", "");
        if (TextUtils.isEmpty(a11)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(a11);
            if (jSONObject.has("spanId")) {
                this.N.f34435u = jSONObject.getString("spanId");
            }
        } catch (Exception e10) {
            TPLogUtil.e("TPReportManager", e10);
        }
        b(a11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.N.f34432r = a(map, "url", "");
        this.N.f34433s = a(map, "cdnip", "");
        this.N.f34434t = a(map, "cdnuip", "");
        if (TextUtils.isEmpty(this.N.f34432r) || !this.N.f34432r.contains("sid=")) {
            return;
        }
        int indexOf = this.N.f34432r.indexOf("sid=");
        int indexOf2 = this.N.f34432r.indexOf(ContainerUtils.FIELD_DELIMITER, indexOf);
        e eVar = this.N;
        eVar.f34436v = indexOf2 >= 0 ? eVar.f34432r.substring(indexOf + 4, indexOf2) : eVar.f34432r.substring(indexOf + 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(Map<String, Object> map) {
        this.A = a(map, "proto", "");
        this.B = a(map, "protover", "");
    }

    private float a(Map<String, Object> map, String str, float f10) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? f10 : ((Float) obj).floatValue();
    }

    private int a(Map<String, Object> map, String str, int i9) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? i9 : ((Integer) obj).intValue();
    }

    private long a(Map<String, Object> map, String str, long j10) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? j10 : ((Long) obj).longValue();
    }

    private static String a(int i9) {
        if (i9 != 5) {
            if (i9 != 15) {
                if (i9 != 30) {
                    if (i9 != 40) {
                        if (i9 != 50) {
                            if (i9 != 150) {
                                if (i9 != 205) {
                                    if (i9 != 263) {
                                        switch (i9) {
                                            case 32:
                                                return "first_rendering";
                                            case 33:
                                                return "load_subtitle";
                                            case 34:
                                                return "302_redirect";
                                            case 35:
                                                return "second_buffering";
                                            default:
                                                return "";
                                        }
                                    }
                                    return "live_period";
                                }
                                return "live_loading";
                            }
                            return "live_error";
                        }
                        return "play_done";
                    }
                    return "user_seek";
                }
                return "first_load";
            }
            return "get_cdn_url";
        }
        return "init_player";
    }

    private String a(Map<String, Object> map, String str, String str2) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? str2 : (String) obj;
    }

    private static void a(com.tencent.thumbplayer.common.a.a aVar) {
        String str;
        HashMap hashMap = new HashMap();
        aVar.a(hashMap);
        if (!hashMap.containsKey("step") || (str = hashMap.get("step")) == null) {
            return;
        }
        String a10 = a(Integer.parseInt(str));
        if (TextUtils.isEmpty(a10)) {
            return;
        }
        TPLogUtil.i("TPReportManager", "reportEvent: eventId = ".concat(String.valueOf(a10)));
        com.tencent.thumbplayer.common.a.b.a(a10, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.tencent.thumbplayer.common.a.a aVar, int i9, boolean z10) {
        TPReportParams.CommonParams commonParams = this.f34394j.getCommonParams();
        commonParams.stepInt = i9;
        commonParams.seqInt++;
        String str = this.C;
        commonParams.flowIdString = str;
        commonParams.playNoString = str;
        commonParams.signalStrengthInt = this.f34403s;
        commonParams.networkSpeedInt = this.f34404t;
        commonParams.networkTypeInt = m();
        commonParams.deviceNameString = TPSystemInfo.getDeviceName();
        commonParams.deviceResolutionString = l();
        commonParams.osVersionString = f34385a;
        commonParams.p2pVersionString = TPDownloadProxyHelper.getNativeLibVersion();
        commonParams.playerVersionString = TPPlayerConfig.VERSION;
        commonParams.playerTypeInt = this.D;
        commonParams.p2pInt = this.f34409y ? 1 : 0;
        commonParams.proto = this.A;
        commonParams.protover = this.B;
        commonParams.playTypeInt = this.J;
        TPDefaultReportInfo tPDefaultReportInfo = this.f34393i;
        if (tPDefaultReportInfo != null && z10) {
            commonParams.testIdInt = tPDefaultReportInfo.testId;
            commonParams.cdnIdInt = tPDefaultReportInfo.cdnId;
            commonParams.downloadTypeInt = tPDefaultReportInfo.dlType;
            commonParams.loginTypeInt = tPDefaultReportInfo.loginType;
            commonParams.mediaFormatInt = tPDefaultReportInfo.mediaFormat;
            commonParams.mediaRateInt = tPDefaultReportInfo.mediaRate;
            commonParams.platformLong = tPDefaultReportInfo.platform;
            commonParams.onlineInt = tPDefaultReportInfo.isOnline ? 1 : 0;
            commonParams.mediaDurationFloat = tPDefaultReportInfo.mediaDuration;
            commonParams.uinString = tPDefaultReportInfo.uin;
            commonParams.qqOpenIdString = tPDefaultReportInfo.qqOpenId;
            commonParams.wxOpenIdString = tPDefaultReportInfo.wxOpenId;
            commonParams.guidString = tPDefaultReportInfo.guid;
            commonParams.uipString = tPDefaultReportInfo.uip;
            commonParams.cdnUipString = tPDefaultReportInfo.cdnUip;
            commonParams.cdnIpString = tPDefaultReportInfo.cdnIp;
            commonParams.appVersionString = tPDefaultReportInfo.appVersion;
            commonParams.vidString = tPDefaultReportInfo.vid;
            commonParams.mediaResolutionString = tPDefaultReportInfo.mediaResolution;
            commonParams.scenesId = tPDefaultReportInfo.scenesId;
            Properties properties = tPDefaultReportInfo.reportInfoProperties;
            if (properties != null) {
                for (Map.Entry entry : properties.entrySet()) {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    if (value == null) {
                        aVar.a(key.toString(), "");
                    } else {
                        aVar.a(key.toString(), value.toString());
                    }
                }
            }
            this.J = this.f34393i.getPlayType();
        }
        if (commonParams.platformLong <= 0) {
            commonParams.platformLong = TPPlayerConfig.getPlatform();
        }
        if (TextUtils.isEmpty(commonParams.uinString)) {
            commonParams.uinString = TPPlayerConfig.getUserUin();
        }
        if (TextUtils.isEmpty(commonParams.guidString)) {
            commonParams.guidString = TPPlayerConfig.getGuid();
        }
        if (TextUtils.isEmpty(commonParams.appVersionString)) {
            commonParams.appVersionString = TPPlayerConfig.getAppVersionName(this.I);
        }
        if (TextUtils.isEmpty(commonParams.uipString)) {
            commonParams.uipString = this.N.f34434t;
        }
        if (TextUtils.isEmpty(commonParams.cdnUipString)) {
            commonParams.cdnUipString = this.N.f34434t;
        }
        if (TextUtils.isEmpty(commonParams.cdnIpString)) {
            commonParams.cdnIpString = this.N.f34433s;
        }
        if (commonParams.downloadTypeInt <= 0) {
            commonParams.downloadTypeInt = this.E;
        }
        if (TextUtils.isEmpty(commonParams.mediaResolutionString)) {
            commonParams.mediaResolutionString = this.F;
        }
        if (commonParams.mediaDurationFloat <= 0.0f) {
            commonParams.mediaDurationFloat = ((float) this.H) / 1000.0f;
        }
        if (commonParams.mediaRateInt <= 0) {
            commonParams.mediaRateInt = this.G;
        }
        commonParams.paramsToProperties(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.tencent.thumbplayer.common.a.a aVar, boolean z10) {
        TPReportParams.VodExParam vodExParam = this.f34394j.getVodExParam();
        if (vodExParam == null) {
            return;
        }
        TPDefaultReportInfo tPDefaultReportInfo = this.f34393i;
        if (tPDefaultReportInfo != null && (tPDefaultReportInfo instanceof TPVodReportInfo) && z10) {
            vodExParam.currentPlayInt = ((TPVodReportInfo) tPDefaultReportInfo).currentPlayState;
            vodExParam.optimizedPlayInt = ((TPVodReportInfo) tPDefaultReportInfo).optimizedPlay;
            vodExParam.hasSubtitleInt = ((TPVodReportInfo) tPDefaultReportInfo).hasSubtitles ? 1 : 0;
            vodExParam.bizIdInt = ((TPVodReportInfo) tPDefaultReportInfo).bizId;
            vodExParam.clipInt = ((TPVodReportInfo) tPDefaultReportInfo).clipCount;
            vodExParam.statusInt = ((TPVodReportInfo) tPDefaultReportInfo).videoStatus;
            vodExParam.freeTypeInt = tPDefaultReportInfo.freeType;
        }
        e eVar = this.N;
        vodExParam.multiTrackInt = eVar.f34428n ? 1 : 0;
        vodExParam.isSelectedSubtitleInt = eVar.f34427m ? 1 : 0;
        vodExParam.hevcLcInt = 0;
        vodExParam.hitDownloaded = eVar.f34430p;
        vodExParam.paramsToProperties(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            TPLogUtil.i("TPReportManager", "onHandleHlsTag, tag is null");
        } else if (!str.startsWith("#EXT-X-PROGRAM-DATE-TIME:")) {
            TPLogUtil.i("TPReportManager", "onHandleHlsTag, tag is not start with #EXT-X-PROGRAM-DATE-TIME:");
        } else {
            try {
                String substring = str.substring(25);
                int indexOf = substring.indexOf(43);
                if (indexOf != -1) {
                    substring = substring.substring(0, indexOf);
                } else {
                    TPLogUtil.i("TPReportManager", "handleOnPlayerPrivaterHlsM3u8Tag , player_m3u8_tag , tag do not contains time zone");
                }
                str2 = substring.replace('T', ' ');
            } catch (Exception e10) {
                TPLogUtil.e("TPReportManager", e10);
                str2 = "";
            }
            if (TextUtils.isEmpty(str2)) {
                TPLogUtil.i("TPReportManager", "onHandleHlsTag , player_m3u8_tag , dataTime is null ");
                return;
            }
            long j10 = 0;
            try {
                Date parse = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str2);
                if (parse != null) {
                    j10 = parse.getTime();
                }
            } catch (Exception e11) {
                TPLogUtil.e("TPReportManager", e11);
            }
            long currentTimeMillis = System.currentTimeMillis();
            StringBuilder sb2 = new StringBuilder("onHandleHlsTag , player_m3u8_tag , sysCurTime: ");
            sb2.append(currentTimeMillis);
            sb2.append(", time:");
            sb2.append(j10);
            sb2.append(", delay:");
            long j11 = currentTimeMillis - j10;
            sb2.append(j11);
            TPLogUtil.i("TPReportManager", sb2.toString());
            this.N.f34423i = (int) j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerCreateStart");
        if (map == null) {
            return;
        }
        this.f34394j.getInitParams().playStarTimeUnix = a(map, "stime", System.currentTimeMillis());
    }

    private boolean a(Map<String, Object> map, String str, boolean z10) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? z10 : ((Boolean) obj).booleanValue();
    }

    private int b(int i9) {
        switch (i9) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 3;
            case 13:
                return 4;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.tencent.thumbplayer.common.a.a aVar) {
        TPLogUtil.i("TPReportManager", "onReportEvent: " + aVar.toString());
        a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.tencent.thumbplayer.common.a.a aVar, boolean z10) {
        TPReportParams.LiveExParam liveExParam = this.f34394j.getLiveExParam();
        if (liveExParam == null) {
            return;
        }
        TPDefaultReportInfo tPDefaultReportInfo = this.f34393i;
        if (tPDefaultReportInfo != null && (tPDefaultReportInfo instanceof TPLiveReportInfo) && z10) {
            liveExParam.adPlayLengthInt = ((TPLiveReportInfo) tPDefaultReportInfo).adPlayLength;
            liveExParam.liveProgramIdInt = ((TPLiveReportInfo) tPDefaultReportInfo).programId;
            liveExParam.streamIdInt = ((TPLiveReportInfo) tPDefaultReportInfo).streamId;
            liveExParam.contentIdInt = ((TPLiveReportInfo) tPDefaultReportInfo).contentId;
            liveExParam.playTimeInt = ((TPLiveReportInfo) tPDefaultReportInfo).playTime;
            liveExParam.liveTypeInt = ((TPLiveReportInfo) tPDefaultReportInfo).liveType;
            liveExParam.isUserPayInt = ((TPLiveReportInfo) tPDefaultReportInfo).isUserPay ? 1 : 0;
            liveExParam.isLookBackInt = ((TPLiveReportInfo) tPDefaultReportInfo).isLookBack ? 1 : 0;
            liveExParam.cdnServerString = ((TPLiveReportInfo) tPDefaultReportInfo).cdnServer;
            liveExParam.freeTypeInt = tPDefaultReportInfo.freeType;
            liveExParam.userQQString = tPDefaultReportInfo.uin;
            liveExParam.userIpString = tPDefaultReportInfo.uip;
            liveExParam.isStreamP2PInt = tPDefaultReportInfo.enableP2p ? 1 : 0;
        }
        if (tPDefaultReportInfo != null && (tPDefaultReportInfo instanceof TPLiveReportInfo)) {
            liveExParam.liveDelayInt = ((TPLiveReportInfo) tPDefaultReportInfo).liveDelay;
        }
        liveExParam.isUseP2PInt = this.f34409y ? 1 : 0;
        String str = this.N.f34432r;
        liveExParam.downloadUrl = str;
        if (TextUtils.isEmpty(str)) {
            liveExParam.downloadUrl = this.f34394j.getFirstLoadParams().cdnUrlString;
        }
        liveExParam.downloadServerIpString = this.N.f34433s;
        liveExParam.reportTimeLong = System.currentTimeMillis();
        e eVar = this.N;
        if (eVar.f34415a > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.N;
            eVar.f34416b = (int) (eVar.f34416b + (currentTimeMillis - eVar2.f34415a));
            if (this.f34397m || this.f34408x || eVar2.f34429o) {
                eVar2.f34415a = 0L;
            } else {
                eVar2.f34415a = System.currentTimeMillis();
            }
        }
        e eVar3 = this.N;
        liveExParam.prePlayLengthInt = eVar3.f34416b;
        eVar3.f34416b = 0;
        liveExParam.playerVersionString = TPPlayerConfig.VERSION;
        liveExParam.deviceTypeInt = n();
        liveExParam.networkTypeInt = m();
        e eVar4 = this.N;
        liveExParam.maxSpeedInt = eVar4.f34424j;
        eVar4.f34424j = 0;
        liveExParam.testSpeedInt = this.f34404t;
        int i9 = eVar4.f34426l;
        if (i9 > 0) {
            liveExParam.downSpeedInt = eVar4.f34425k / i9;
            eVar4.f34425k = 0;
            eVar4.f34426l = 0;
        }
        liveExParam.liveTagInt = 0;
        liveExParam.extraInfoString = "";
        liveExParam.reconnectCntInt = 0;
        liveExParam.connectTimeInt = 0;
        liveExParam.getUrlTimeInt = 0;
        liveExParam.defSwitchString = eVar4.f34431q;
        liveExParam.loadingTimeLong = eVar4.f34418d - eVar4.f34417c;
        liveExParam.blockTimeInt = eVar4.f34420f;
        liveExParam.blockCountInt = eVar4.f34419e;
        eVar4.f34419e = 0;
        eVar4.f34420f = 0;
        liveExParam.errCodeInt = 0;
        liveExParam.fullErrCodeString = this.f34410z;
        liveExParam.spanId = eVar4.f34435u;
        liveExParam.tuid = eVar4.f34436v;
        liveExParam.paramsToProperties(aVar);
    }

    private void b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("hitDownloaded")) {
                e eVar = this.N;
                if (eVar.f34430p == -1) {
                    eVar.f34430p = jSONObject.getInt("hitDownloaded");
                }
            }
        } catch (Exception e10) {
            TPLogUtil.e("TPReportManager", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerCreateDone");
        if (map == null) {
            return;
        }
        l lVar = new l();
        TPReportParams.PlayerInitParams initParams = this.f34394j.getInitParams();
        initParams.playEndTimeUnix = a(map, "etime", System.currentTimeMillis());
        initParams.errCodeString = this.f34410z;
        initParams.paramsToProperties(lVar);
    }

    private void c() {
        this.f34389d = o.a().a("TP-ReportThread");
        this.f34390e = new HandlerC0354b(this.f34389d.getLooper());
        this.f34394j = new TPReportParams();
        com.tencent.thumbplayer.utils.f.a(this.O);
        synchronized (b.class) {
            if (f34388h == null) {
                f34388h = new com.tencent.thumbplayer.utils.c(this.I, "TPReportCache");
            }
            if (!f34387c) {
                this.f34390e.obtainMessage(TPErrorCode.TP_ERROR_TYPE_DOWNLOAD_PROXY).sendToTarget();
            }
            f34387c = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(java.util.Map<java.lang.String, java.lang.Object> r9) {
        /*
            r8 = this;
            boolean r0 = r8.f34399o
            if (r0 == 0) goto L5
            return
        L5:
            java.lang.String r0 = "TPReportManager"
            java.lang.String r1 = "onStartPrepare"
            com.tencent.thumbplayer.utils.TPLogUtil.i(r0, r1)
            r0 = 0
            r8.f34397m = r0
            java.lang.String r1 = "flowid"
            java.lang.String r2 = ""
            java.lang.String r1 = r8.a(r9, r1, r2)
            r8.C = r1
            java.lang.String r1 = "p2p"
            boolean r1 = r8.a(r9, r1, r0)
            r8.f34409y = r1
            com.tencent.thumbplayer.api.report.TPDefaultReportInfo r1 = r8.f34393i
            if (r1 == 0) goto L2b
            int r1 = r1.getPlayType()
            r8.J = r1
        L2b:
            int r1 = r8.J
            r3 = 1
            if (r1 != r3) goto L38
            com.tencent.thumbplayer.tplayer.plugins.report.b$d r1 = new com.tencent.thumbplayer.tplayer.plugins.report.b$d
            r1.<init>()
        L35:
            r8.K = r1
            goto L40
        L38:
            if (r1 != 0) goto L40
            com.tencent.thumbplayer.tplayer.plugins.report.b$g r1 = new com.tencent.thumbplayer.tplayer.plugins.report.b$g
            r1.<init>()
            goto L35
        L40:
            com.tencent.thumbplayer.utils.l r1 = new com.tencent.thumbplayer.utils.l
            r1.<init>()
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams r4 = r8.f34394j
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams$PlayerInitParams r4 = r4.getInitParams()
            r4.paramsToProperties(r1)
            com.tencent.thumbplayer.tplayer.plugins.report.b$c r4 = r8.K
            r5 = 5
            r4.a(r5, r1)
            com.tencent.thumbplayer.tplayer.plugins.report.b$e r1 = r8.N
            long r4 = java.lang.System.currentTimeMillis()
            r1.f34417c = r4
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams r1 = r8.f34394j
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams$FirstLoadParams r1 = r1.getFirstLoadParams()
            com.tencent.thumbplayer.tplayer.plugins.report.b$e r4 = r8.N
            java.lang.String r4 = r4.f34432r
            r1.cdnUrlString = r4
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 == 0) goto L77
            java.lang.String r4 = "url"
            java.lang.String r2 = r8.a(r9, r4, r2)
            r1.cdnUrlString = r2
        L77:
            com.tencent.thumbplayer.api.report.TPDefaultReportInfo r2 = r8.f34393i
            if (r2 == 0) goto L7f
            int r2 = r2.cdnUrlIndex
            r1.cgiUrlIndex = r2
        L7f:
            java.lang.String r2 = "urlindex"
            int r0 = r8.a(r9, r2, r0)
            r1.cgiUrlIndex = r0
            java.lang.String r0 = "stime"
            r4 = 0
            long r6 = r8.a(r9, r0, r4)
            r1.starTimeUnix = r6
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams r1 = r8.f34394j
            com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams$FirstRenderParams r1 = r1.getFirstRenderParams()
            long r4 = r8.a(r9, r0, r4)
            r1.starTimeUnix = r4
            r8.f34399o = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tplayer.plugins.report.b.c(java.util.Map):void");
    }

    private void d() {
        TPLogUtil.i("TPReportManager", "release: ");
        com.tencent.thumbplayer.utils.f.b(this.O);
        HandlerThread handlerThread = this.f34389d;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.f34389d = null;
        }
        TPLogUtil.i("TPReportManager", "release: end!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Map<String, Object> map) {
        if (this.f34399o) {
            this.f34399o = false;
            TPLogUtil.i("TPReportManager", "onPrepareDone");
            if (map == null) {
                return;
            }
            this.N.f34418d = System.currentTimeMillis();
            this.N.f34428n = a(map, "multitrack", false);
            l lVar = new l();
            if (a(map, "playertype", 0) == 1) {
                this.D = 0;
            } else {
                this.D = 1;
            }
            this.F = a(map, "definition", "");
            this.H = a(map, "duration", 0L);
            this.G = (int) a(map, "rate", 0L);
            String a10 = a(map, "fmt", "");
            if (a10 == null || !a10.contains("hls")) {
                this.E = 1;
            } else {
                this.E = 3;
            }
            TPReportParams.FirstLoadParams firstLoadParams = this.f34394j.getFirstLoadParams();
            firstLoadParams.endTimeUnix = a(map, "etime", 0L);
            firstLoadParams.errCodeString = this.f34410z;
            firstLoadParams.paramsToProperties(lVar);
            this.K.a(30, lVar);
            this.f34394j.getFirstLoadParams().reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        TPLogUtil.i("TPReportManager", "onLivePeriodReport");
        this.K.a(TPReportParams.LIVE_STEP_PLAY, new l());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onStartPlayer");
        this.f34397m = false;
        if (map == null) {
            return;
        }
        this.N.f34415a = System.currentTimeMillis();
        long a10 = a(map, "stime", 0L);
        if (this.f34401q > 0) {
            this.f34402r += System.currentTimeMillis() - a10;
        }
        this.f34401q = a10;
        if (this.J == 1) {
            this.f34390e.removeMessages(3000);
            this.f34390e.sendEmptyMessageDelayed(3000, 60000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        TPLogUtil.i("TPReportManager", "onAppForeground");
        if (this.f34398n) {
            return;
        }
        this.f34398n = true;
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onRenderingStart");
        if (map == null) {
            return;
        }
        l lVar = new l();
        TPReportParams.FirstRenderParams firstRenderParams = this.f34394j.getFirstRenderParams();
        firstRenderParams.endTimeUnix = a(map, "etime", 0L);
        firstRenderParams.errCodeString = this.f34410z;
        firstRenderParams.paramsToProperties(lVar);
        this.K.a(32, lVar);
        this.f34394j.getFirstRenderParams().reset();
    }

    private void g() {
        TPLogUtil.i("TPReportManager", "removeCacheEvent: mFlowId: " + this.C);
        if (f34388h == null || TextUtils.isEmpty(this.C)) {
            return;
        }
        f34388h.a(this.C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerPause");
        if (map == null) {
            return;
        }
        if (this.f34401q > 0) {
            this.f34402r += a(map, "stime", System.currentTimeMillis()) - this.f34401q;
            this.f34401q = 0L;
        }
        e eVar = this.N;
        if (eVar.f34415a > 0) {
            int i9 = eVar.f34416b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.N;
            eVar.f34416b = i9 + ((int) (currentTimeMillis - eVar2.f34415a));
            eVar2.f34415a = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        TPLogUtil.i("TPReportManager", "onAppBackground");
        if (this.f34397m || this.J == 1 || !this.f34398n) {
            return;
        }
        this.f34398n = false;
        l lVar = new l();
        this.f34394j.getBufferingTotalParams().paramsToProperties(lVar);
        this.f34394j.getUserSeekTotalParams().paramsToProperties(lVar);
        TPReportParams.PlayDoneParams playDoneParams = this.f34394j.getPlayDoneParams();
        playDoneParams.endTimeUnix = System.currentTimeMillis();
        playDoneParams.reasonInt = 2;
        playDoneParams.errCodeString = this.f34410z;
        e eVar = this.N;
        if (eVar.f34415a > 0) {
            int i9 = eVar.f34416b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.N;
            eVar.f34416b = i9 + ((int) (currentTimeMillis - eVar2.f34415a));
            eVar2.f34415a = 0L;
        }
        long j10 = this.f34401q;
        if (j10 > 0) {
            this.f34402r += playDoneParams.endTimeUnix - j10;
            this.f34401q = 0L;
        }
        playDoneParams.playDurationFloat = ((float) this.f34402r) / 1000.0f;
        playDoneParams.paramsToProperties(lVar);
        TPReportParams.CommonParams commonParams = this.f34394j.getCommonParams();
        commonParams.stepInt = 50;
        commonParams.paramsToProperties(lVar);
        int i10 = this.J;
        if (i10 == 0) {
            a((com.tencent.thumbplayer.common.a.a) lVar, false);
        } else if (i10 == 1) {
            b((com.tencent.thumbplayer.common.a.a) lVar, false);
        }
        if (f34388h == null || TextUtils.isEmpty(this.C)) {
            return;
        }
        TPLogUtil.i("TPReportManager", "Cache report event. mFlowId: " + this.C);
        f34388h.a(this.C, lVar.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerStop");
        if (map == null) {
            return;
        }
        if (this.f34401q > 0) {
            this.f34402r += a(map, "etime", System.currentTimeMillis()) - this.f34401q;
            this.f34401q = 0L;
        }
        e eVar = this.N;
        if (eVar.f34415a > 0) {
            int i9 = eVar.f34416b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.N;
            eVar.f34416b = i9 + ((int) (currentTimeMillis - eVar2.f34415a));
            eVar2.f34415a = 0L;
        }
        map.put("reason", 1);
        q(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        TPLogUtil.i("TPReportManager", "onReportLastEvent");
        com.tencent.thumbplayer.utils.c cVar = f34388h;
        if (cVar == null) {
            return;
        }
        try {
            ArrayList arrayList = (ArrayList) cVar.a();
            if (arrayList == null) {
                return;
            }
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                try {
                    Properties properties = (Properties) arrayList.get(i9);
                    if (properties != null) {
                        b(new l(properties));
                    }
                } catch (Exception e10) {
                    TPLogUtil.e("TPReportManager", e10);
                }
            }
        } catch (Exception e11) {
            TPLogUtil.e("TPReportManager", e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerError");
        if (map == null) {
            return;
        }
        e eVar = this.N;
        if (eVar.f34415a > 0) {
            int i9 = eVar.f34416b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.N;
            eVar.f34416b = i9 + ((int) (currentTimeMillis - eVar2.f34415a));
            eVar2.f34415a = 0L;
        }
        this.f34410z = a(map, "code", "0");
        if (this.J == 1) {
            this.K.a(150, new l());
            return;
        }
        map.put("reason", 3);
        q(map);
    }

    private void j() {
        this.f34401q = 0L;
        this.f34402r = 0L;
        this.f34406v = 0;
        this.f34405u = 0;
        this.f34407w = false;
        this.f34408x = false;
        this.f34399o = false;
        this.f34400p = false;
        this.C = "";
        this.D = 0;
        this.E = 0;
        this.G = 0;
        this.H = 0L;
        this.f34404t = 0;
        this.f34409y = false;
        this.A = "";
        this.B = "";
        this.F = "";
        this.J = -1;
        this.f34410z = "0";
        this.N.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onStartSeek");
        if (map == null) {
            return;
        }
        if (this.f34408x) {
            m(new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        }
        if (this.f34407w) {
            k(new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a("petime", Long.valueOf(a(map, "pstime", 0L) / 1000)).a());
        }
        this.f34407w = true;
        this.f34396l = 1;
        TPReportParams.UserSeekOnceParams createUserSeekOnceParams = this.f34394j.createUserSeekOnceParams();
        this.M = createUserSeekOnceParams;
        createUserSeekOnceParams.seekStartTimeUnix = a(map, "stime", System.currentTimeMillis());
        TPReportParams.CommonParams commonParams = this.f34394j.getCommonParams();
        TPReportParams.UserSeekOnceParams userSeekOnceParams = this.M;
        userSeekOnceParams.formatInt = commonParams.mediaFormatInt;
        userSeekOnceParams.startPresentTimeLong = a(map, "pstime", 0L) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        TPLogUtil.d("TPReportManager", "handleReportThreadExit");
        synchronized (this.f34391f) {
            this.f34392g = true;
            this.f34391f.notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(Map<String, Object> map) {
        TPReportParams.UserSeekOnceParams userSeekOnceParams;
        TPLogUtil.i("TPReportManager", "onSeekComplete");
        this.f34407w = false;
        if (map == null || (userSeekOnceParams = this.M) == null) {
            return;
        }
        userSeekOnceParams.seekEndTimeUnix = a(map, "etime", System.currentTimeMillis());
        this.M.endPresentTimeLong = a(map, "petime", 0L) / 1000;
        TPReportParams.UserSeekOnceParams userSeekOnceParams2 = this.M;
        userSeekOnceParams2.errCodeString = this.f34410z;
        long j10 = userSeekOnceParams2.seekEndTimeUnix - userSeekOnceParams2.seekStartTimeUnix;
        if (j10 > 1200) {
            this.f34406v++;
            this.f34405u = (int) (this.f34405u + j10);
        }
        TPReportParams.UserSeekTotalParams userSeekTotalParams = this.f34394j.getUserSeekTotalParams();
        userSeekTotalParams.seekTotalCountInt++;
        userSeekTotalParams.seekBufferingDurationInt = this.f34405u;
        userSeekTotalParams.seekBufferingCountInt = this.f34406v;
        if (userSeekTotalParams.seekOnceParamsList.size() < 20) {
            userSeekTotalParams.seekOnceParamsList.add(this.M);
            l lVar = new l();
            this.M.paramsToProperties(lVar);
            this.K.a(40, lVar);
        }
        this.M = null;
    }

    private String l() {
        if (this.I == null) {
            return "0";
        }
        if (TextUtils.isEmpty(f34386b)) {
            int i9 = this.I.getResources().getDisplayMetrics().widthPixels;
            String str = this.I.getResources().getDisplayMetrics().heightPixels + ProxyConfig.MATCH_ALL_SCHEMES + i9;
            f34386b = str;
            return str;
        }
        return f34386b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onBufferingStart");
        if (map == null) {
            return;
        }
        this.f34408x = true;
        if (this.f34407w) {
            return;
        }
        e eVar = this.N;
        if (eVar.f34415a > 0) {
            int i9 = eVar.f34416b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.N;
            eVar.f34416b = i9 + ((int) (currentTimeMillis - eVar2.f34415a));
            eVar2.f34415a = 0L;
        }
        this.N.f34421g = a(map, "stime", System.currentTimeMillis());
        TPReportParams.BufferingOnceParams createBufferingOnceParams = this.f34394j.createBufferingOnceParams();
        this.L = createBufferingOnceParams;
        createBufferingOnceParams.starTimeUnix = this.N.f34421g;
        createBufferingOnceParams.formatInt = a(map, "format", 0);
        TPReportParams.CommonParams commonParams = this.f34394j.getCommonParams();
        TPReportParams.BufferingOnceParams bufferingOnceParams = this.L;
        bufferingOnceParams.formatInt = commonParams.mediaFormatInt;
        bufferingOnceParams.reasonInt = a(map, "reason", 0);
        TPReportParams.BufferingOnceParams bufferingOnceParams2 = this.L;
        bufferingOnceParams2.lastEventInt = this.f34396l;
        bufferingOnceParams2.sceneInt = this.f34395k;
        bufferingOnceParams2.bufferingPresentTimeLong = a(map, "ptime", 0L) / 1000;
        this.L.urlString = a(map, "url", "");
    }

    private int m() {
        NetworkInfo activeNetworkInfo;
        Context context = this.I;
        if (context == null) {
            return 0;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
                return 0;
            }
            int type = activeNetworkInfo.getType();
            if (type != 0) {
                if (type != 1) {
                    return type != 9 ? 0 : 10;
                }
                return 1;
            }
            return b(activeNetworkInfo.getSubtype());
        } catch (Exception e10) {
            TPLogUtil.e("TPReportManager", e10);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onBufferingEnd");
        this.f34408x = false;
        e eVar = this.N;
        if (!eVar.f34429o) {
            eVar.f34415a = System.currentTimeMillis();
        }
        if (map == null) {
            return;
        }
        long a10 = a(map, "etime", System.currentTimeMillis());
        e eVar2 = this.N;
        long j10 = eVar2.f34421g;
        int i9 = (int) (a10 - j10);
        if (i9 > 1200 && !this.f34407w) {
            eVar2.f34419e++;
            eVar2.f34422h = a10;
            eVar2.f34420f += (int) (a10 - j10);
            TPReportParams.BufferingOnceParams bufferingOnceParams = this.L;
            if (bufferingOnceParams == null) {
                return;
            }
            bufferingOnceParams.endTimeUnix = a(map, "etime", 0L);
            this.L.errCodeString = this.f34410z;
            TPReportParams.BufferingTotalParams bufferingTotalParams = this.f34394j.getBufferingTotalParams();
            bufferingTotalParams.bufferingCountInt++;
            bufferingTotalParams.bufferingDurationInt += i9;
            if (bufferingTotalParams.bufferingOnceParamsList.size() < 20) {
                bufferingTotalParams.bufferingOnceParamsList.add(this.L);
                l lVar = new l();
                this.L.paramsToProperties(lVar);
                this.K.a(35, lVar);
            }
            this.L = null;
        }
    }

    private int n() {
        UiModeManager uiModeManager = (UiModeManager) this.I.getSystemService("uimode");
        if (uiModeManager == null) {
            return 2;
        }
        if (uiModeManager.getCurrentModeType() == 4) {
            return 9;
        }
        return (this.I.getResources().getConfiguration().screenLayout & 15) >= 3 ? 5 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayComplete");
        if (map == null) {
            return;
        }
        map.put("reason", 0);
        q(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerReset");
        if (map == null) {
            return;
        }
        map.put("reason", 1);
        q(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayerRelease");
        if (map == null) {
            return;
        }
        map.put("reason", 1);
        q(map);
    }

    private void q(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onPlayEnd");
        if (map == null || this.f34397m) {
            return;
        }
        this.f34397m = true;
        if (this.J != 1 && this.f34399o) {
            d(new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        }
        if (this.f34408x) {
            m(new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        }
        if (this.f34407w) {
            k(new com.tencent.thumbplayer.utils.g().a("etime", Long.valueOf(System.currentTimeMillis())).a());
        }
        e eVar = this.N;
        if (eVar.f34415a > 0) {
            int i9 = eVar.f34416b;
            long currentTimeMillis = System.currentTimeMillis();
            e eVar2 = this.N;
            eVar.f34416b = i9 + ((int) (currentTimeMillis - eVar2.f34415a));
            eVar2.f34415a = 0L;
        }
        this.f34407w = false;
        l lVar = new l();
        this.f34394j.getBufferingTotalParams().paramsToProperties(lVar);
        this.f34394j.getBufferingTotalParams().reset();
        this.f34394j.getUserSeekTotalParams().paramsToProperties(lVar);
        this.f34394j.getUserSeekTotalParams().reset();
        TPReportParams.PlayDoneParams playDoneParams = this.f34394j.getPlayDoneParams();
        playDoneParams.endTimeUnix = a(map, "etime", System.currentTimeMillis());
        playDoneParams.reasonInt = a(map, "reason", 0);
        playDoneParams.errCodeString = this.f34410z;
        long j10 = this.f34401q;
        if (j10 > 0) {
            this.f34402r += playDoneParams.endTimeUnix - j10;
            this.f34401q = 0L;
        }
        playDoneParams.playDurationFloat = ((float) this.f34402r) / 1000.0f;
        playDoneParams.paramsToProperties(lVar);
        this.K.a(50, lVar);
        this.f34410z = "0";
        this.f34394j.resetAllParam();
        g();
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.f34395k = a(map, "scene", 1.0f) != 1.0f ? 2 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onGetCdn");
        if (map == null) {
            return;
        }
        l lVar = new l();
        TPReportParams.GetCdnUrlParams getCdnParams = this.f34394j.getGetCdnParams();
        getCdnParams.proxyIpString = a(map, "ip", "");
        getCdnParams.starTimeUnix = a(map, "stime", 0L);
        getCdnParams.endTimeUnix = a(map, "etime", 0L);
        getCdnParams.errCodeString = a(map, "code", "0");
        getCdnParams.paramsToProperties(lVar);
        this.K.a(15, lVar);
        if (TextUtils.isEmpty(getCdnParams.errCodeString) || getCdnParams.errCodeString.equals("0") || getCdnParams.errCodeString.equals("0.0")) {
            return;
        }
        this.f34410z = getCdnParams.errCodeString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "on302Redirect");
        if (map == null) {
            return;
        }
        l lVar = new l();
        TPReportParams.RedirectParams redirectParams = this.f34394j.getRedirectParams();
        redirectParams.cdnTypeInt = a(map, "vt", 0);
        redirectParams.redirectCountInt = a(map, "t302", 0);
        redirectParams.redirectedUrlString = a(map, "url", "");
        redirectParams.starTimeUnix = a(map, "stime", 0L);
        redirectParams.endTimeUnix = a(map, "etime", 0L);
        redirectParams.errCodeString = a(map, "code", "0");
        redirectParams.paramsToProperties(lVar);
        this.K.a(34, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.C = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
        this.f34410z = a(map, "code", "0");
        TPDefaultReportInfo tPDefaultReportInfo = this.f34393i;
        if (tPDefaultReportInfo != null) {
            this.J = tPDefaultReportInfo.getPlayType();
        }
        if (this.J == 1) {
            this.K.a(150, new l());
            return;
        }
        map.put("reason", 3);
        this.f34397m = false;
        q(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onLoadSubtitle");
        if (map == null) {
            return;
        }
        this.N.f34437w.add(new f(a(map, "name", ""), a(map, "url", "")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSelectTrack");
        if (map == null || this.N.f34437w.size() == 0 || a(map, "tracktype", 0) != 3) {
            return;
        }
        this.f34400p = true;
        this.N.f34427m = true;
        TPReportParams.LoadSubtitleParams loadSubtitleParams = this.f34394j.getLoadSubtitleParams();
        loadSubtitleParams.starTimeUnix = a(map, "stime", 0L);
        TPDefaultReportInfo tPDefaultReportInfo = this.f34393i;
        if (tPDefaultReportInfo != null) {
            loadSubtitleParams.cdnTypeInt = tPDefaultReportInfo.subtitleCdnType;
            loadSubtitleParams.cgiUrlIndex = tPDefaultReportInfo.subtitleUrlIndex;
        }
        long a10 = a(map, "opaque", -1L);
        String a11 = a(map, "name", "");
        Iterator<f> it = this.N.f34437w.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!TextUtils.isEmpty(a11) && next.f34439a.equals(a11)) {
                loadSubtitleParams.subtitleUrlString = next.f34440b;
                next.f34441c = a10;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSelectTrackDone");
        if (!this.f34400p || map == null || this.N.f34437w.size() == 0) {
            return;
        }
        long a10 = a(map, "opaque", -1L);
        if (a10 == -1) {
            return;
        }
        Iterator<f> it = this.N.f34437w.iterator();
        while (it.hasNext()) {
            if (it.next().f34441c == a10) {
                TPReportParams.LoadSubtitleParams loadSubtitleParams = this.f34394j.getLoadSubtitleParams();
                loadSubtitleParams.endTimeUnix = a(map, "etime", 0L);
                loadSubtitleParams.errCodeString = a(map, "code", "0");
                loadSubtitleParams.bufferingDurationInt = (int) (loadSubtitleParams.endTimeUnix - loadSubtitleParams.starTimeUnix);
                l lVar = new l();
                loadSubtitleParams.paramsToProperties(lVar);
                this.K.a(33, lVar);
                this.f34400p = false;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSwitchDef");
        if (map == null) {
            return;
        }
        this.N.f34431q = a(map, "switch", "");
        this.N.f34429o = true;
        if (this.J == 1) {
            this.f34390e.removeMessages(3000);
            e();
            e eVar = this.N;
            eVar.f34417c = 0L;
            eVar.f34418d = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(Map<String, Object> map) {
        TPLogUtil.i("TPReportManager", "onSwitchDefEnd");
        if (map == null) {
            return;
        }
        this.N.f34431q = a(map, "switch", "");
        this.N.f34429o = false;
        if (this.J == 1) {
            this.K.a(30, new l());
            this.f34390e.removeMessages(3000);
            this.f34390e.sendEmptyMessageDelayed(3000, 60000L);
            this.N.f34415a = System.currentTimeMillis();
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void a() {
        c();
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void a(int i9, int i10, int i11, String str, Object obj) {
        int i12;
        switch (i9) {
            case 100:
                i12 = 999;
                break;
            case 101:
                i12 = 1000;
                break;
            case 102:
                i12 = 1001;
                break;
            case 103:
                i12 = 1002;
                break;
            case 104:
                i12 = 1003;
                break;
            case 105:
                i12 = 1012;
                break;
            case 106:
                i12 = 1004;
                break;
            case 107:
                i12 = 1005;
                break;
            case 108:
                i12 = 1006;
                break;
            case 109:
                i12 = 1007;
                break;
            case 110:
                i12 = 1008;
                break;
            case 111:
                i12 = 1009;
                break;
            case 112:
                i12 = 1010;
                break;
            case 113:
                i12 = 1011;
                break;
            case 114:
                i12 = 1013;
                break;
            case 115:
                i12 = 1014;
                break;
            case 116:
                i12 = 1015;
                break;
            case 117:
                i12 = 1016;
                break;
            case 118:
                i12 = 2002;
                break;
            case 119:
                i12 = 1019;
                break;
            case 120:
                i12 = 1020;
                break;
            case 121:
                i12 = 1021;
                break;
            case 122:
                i12 = 2004;
                break;
            case 123:
                i12 = 2005;
                break;
            case 124:
                i12 = 1022;
                break;
            default:
                switch (i9) {
                    case 200:
                        i12 = 1017;
                        break;
                    case 201:
                        i12 = 1018;
                        break;
                    case 202:
                        i12 = UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER;
                        break;
                    default:
                        return;
                }
        }
        this.f34390e.obtainMessage(i12, obj).sendToTarget();
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void b() {
        d();
    }

    @Override // com.tencent.thumbplayer.api.report.ITPBusinessReportManager
    public void reportEvent(int i9, Map<String, Object> map) {
    }

    @Override // com.tencent.thumbplayer.api.report.ITPBusinessReportManager
    public void setReportInfoGetter(TPDefaultReportInfo tPDefaultReportInfo) {
        this.f34393i = tPDefaultReportInfo;
    }
}
