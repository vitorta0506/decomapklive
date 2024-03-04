package cn.jiguang.ak;

import android.content.Context;
import android.location.Location;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.SystemClock;
import android.telephony.NeighboringCellInfo;
import android.text.TextUtils;
import cn.jiguang.api.JCoreManager;
import com.facebook.appevents.integrity.IntegrityManager;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static f f1940a;

    /* renamed from: b  reason: collision with root package name */
    private Context f1941b;

    /* renamed from: c  reason: collision with root package name */
    private a f1942c;

    /* renamed from: d  reason: collision with root package name */
    private h f1943d;

    private f(Context context) {
        try {
            this.f1941b = context;
            d.a().a(context);
            a aVar = new a(context);
            this.f1942c = aVar;
            aVar.a(this);
            h hVar = new h(context);
            this.f1943d = hVar;
            hVar.a(this);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("LBSManager", "LBSManageer init error:" + th2);
            th2.printStackTrace();
        }
    }

    public static f a(Context context) {
        if (f1940a == null) {
            f1940a = new f(JCoreManager.getAppContext(context));
        }
        return f1940a;
    }

    private String a(ScanResult scanResult, WifiInfo wifiInfo) {
        String str;
        long currentTimeMillis = System.currentTimeMillis() - (((SystemClock.elapsedRealtimeNanos() / 1000) / 1000) - (scanResult.timestamp / 1000));
        String str2 = "";
        if (scanResult == null) {
            if (wifiInfo != null) {
                String replace = wifiInfo.getSSID().replace(HiAnalyticsConstant.REPORT_VAL_SEPARATOR, "").replace("#", "").replace(",", "");
                return replace + "#" + wifiInfo.getBSSID() + "#" + wifiInfo.getRssi() + "##" + currentTimeMillis + "#connect";
            }
            return "";
        }
        String replace2 = scanResult.SSID.replace(HiAnalyticsConstant.REPORT_VAL_SEPARATOR, "").replace("#", "").replace(",", "");
        if (wifiInfo != null && (str = scanResult.BSSID) != null && str.equals(wifiInfo.getBSSID())) {
            str2 = "connect";
        }
        return replace2 + "#" + scanResult.BSSID + "#" + scanResult.level + "#" + scanResult.capabilities + "#" + currentTimeMillis + "#" + str2;
    }

    private String b(Location location) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("g|");
        sb2.append(System.currentTimeMillis());
        sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        if (location == null) {
            sb2.append(IntegrityManager.INTEGRITY_TYPE_NONE);
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append("0");
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append("0");
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append("0");
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append("0");
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append("0");
        } else {
            sb2.append(location.getProvider());
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(location.getLongitude());
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(location.getLatitude());
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(location.getAltitude());
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(location.getBearing());
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(location.getAccuracy());
        }
        return sb2.toString();
    }

    private String b(b bVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("c|");
        sb2.append(System.currentTimeMillis());
        sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        if (bVar == null) {
            sb2.append(0);
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(0);
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(0);
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(0);
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append("");
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append("");
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append("");
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        } else {
            sb2.append(bVar.a());
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(bVar.b());
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(bVar.c());
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(bVar.d());
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(bVar.h());
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(bVar.f());
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb2.append(bVar.g().replace(HiAnalyticsConstant.REPORT_VAL_SEPARATOR, " "));
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            List<NeighboringCellInfo> e10 = bVar.e();
            if (e10 != null) {
                cn.jiguang.al.a.a("LBSManager", "neighborCells size:" + e10.size());
                for (int i9 = 0; i9 < e10.size(); i9++) {
                    sb2.append(e10.get(i9).getCid());
                    if (i9 < e10.size() - 1) {
                        sb2.append(",");
                    }
                }
            } else {
                cn.jiguang.al.a.a("LBSManager", "neighborCells is null");
            }
        }
        return sb2.toString();
    }

    private String b(List<ScanResult> list) {
        WifiInfo wifiInfo;
        StringBuilder sb2 = new StringBuilder();
        WifiManager wifiManager = (WifiManager) this.f1941b.getSystemService("wifi");
        if (wifiManager != null) {
            wifiInfo = wifiManager.getConnectionInfo();
            cn.jiguang.al.a.a("LBSManager", "connectingWifi:" + wifiInfo.toString());
        } else {
            wifiInfo = null;
        }
        if (list != null) {
            if (list.size() > 0) {
                sb2.append("w|");
                for (int i9 = 0; i9 < list.size(); i9++) {
                    String a10 = a(list.get(i9), wifiInfo);
                    if (!TextUtils.isEmpty(a10)) {
                        sb2.append(a10);
                        if (i9 < list.size() - 1) {
                            sb2.append(",");
                        }
                    }
                }
            } else if (wifiInfo != null) {
                sb2.append("w|");
                sb2.append(a(null, wifiInfo));
            }
        }
        return sb2.toString();
    }

    public void a() {
        if (this.f1943d != null) {
            cn.jiguang.al.a.a("LBSManager", "start scan wifi");
            this.f1943d.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Location location) {
        String b10 = b(location);
        cn.jiguang.al.a.a("LBSManager", "location data:" + b10);
        if (TextUtils.isEmpty(b10)) {
            return;
        }
        a(b10);
    }

    public void a(b bVar) {
        String b10 = b(bVar);
        cn.jiguang.al.a.a("LBSManager", "cell data：" + b10);
        if (TextUtils.isEmpty(b10)) {
            return;
        }
        a(b10);
    }

    public void a(String str) {
        synchronized (this) {
            Context context = this.f1941b;
            boolean b10 = cn.jiguang.s.c.b(context, "rl2.catch", str + IOUtils.LINE_SEPARATOR_UNIX);
            cn.jiguang.al.a.a("LBSManager", "save lbs data success:" + b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(List<ScanResult> list) {
        cn.jiguang.al.a.a("LBSManager", "wifi data. size:" + list.size());
        String b10 = b(list);
        cn.jiguang.al.a.a("LBSManager", "info:" + b10);
        if (TextUtils.isEmpty(b10)) {
            return;
        }
        a(b10);
    }

    public void b() {
        if (this.f1942c != null) {
            cn.jiguang.al.a.a("LBSManager", "start scanGps");
            this.f1942c.a();
        }
    }

    public void c() {
        boolean b10 = d.a().b();
        a aVar = this.f1942c;
        if (aVar == null || !b10) {
            return;
        }
        Location a10 = aVar.a(false);
        cn.jiguang.al.a.a("LBSManager", "get gps");
        if (a10 != null) {
            a(a10);
        }
    }

    public void d() {
        if (this.f1942c != null) {
            cn.jiguang.al.a.a("LBSManager", "start scan cell");
            this.f1942c.b();
        }
    }

    public JSONObject e() {
        String[] split;
        synchronized (this) {
            String c10 = cn.jiguang.s.c.c(this.f1941b, "rl2.catch");
            if (TextUtils.isEmpty(c10)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONArray();
            JSONArray jSONArray3 = new JSONArray();
            for (String str : c10.split(IOUtils.LINE_SEPARATOR_UNIX)) {
                if (!TextUtils.isEmpty(str)) {
                    if (str.startsWith("g|")) {
                        jSONArray2.put(str.replaceFirst("g\\|", ""));
                    } else if (str.startsWith("w|")) {
                        jSONArray.put(str.replaceFirst("w\\|", ""));
                    } else if (str.startsWith("c|")) {
                        jSONArray3.put(str.replaceFirst("c\\|", ""));
                    }
                }
            }
            if (cn.jiguang.i.a.a().d(1502)) {
                jSONObject.put("g", jSONArray2);
            }
            if (cn.jiguang.i.a.a().d(1505)) {
                jSONObject.put("w", jSONArray);
            }
            if (cn.jiguang.i.a.a().d(1501)) {
                jSONObject.put(com.huawei.hms.opendevice.c.f27627a, jSONArray3);
            }
            if (cn.jiguang.i.a.a().d(1503)) {
                jSONObject.put("local_dns", cn.jiguang.o.d.f());
            }
            if (cn.jiguang.i.a.a().d(1504)) {
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, cn.jiguang.o.d.k(this.f1941b));
            }
            return jSONObject;
        }
    }

    public void f() {
        synchronized (this) {
            cn.jiguang.s.c.d(this.f1941b, "rl2.catch");
        }
    }
}
