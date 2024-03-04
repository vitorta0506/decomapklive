package cn.jiguang.ai;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import cn.jiguang.f.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes.dex */
class d {

    /* renamed from: a  reason: collision with root package name */
    private Context f1875a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context) {
        this.f1875a = context;
    }

    private String a(Context context) {
        String str;
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        try {
        } catch (Throwable unused) {
            str = "";
        }
        if (Build.VERSION.SDK_INT < 29 || (wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi")) == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            return "";
        }
        str = connectionInfo.getSupplicantState() == SupplicantState.COMPLETED ? connectionInfo.getSSID() : "";
        try {
            int networkId = connectionInfo.getNetworkId();
            for (WifiConfiguration wifiConfiguration : wifiManager.getConfiguredNetworks()) {
                if (wifiConfiguration.networkId == networkId) {
                    str = wifiConfiguration.SSID;
                }
            }
        } catch (Throwable unused2) {
        }
        cn.jiguang.al.a.a("JLocationWifi", "ssid is " + str);
        return str.replace("\"", "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<cn.jiguang.aj.c> a(int i9) {
        String str;
        if (cn.jiguang.o.d.m(this.f1875a)) {
            WifiManager wifiManager = (WifiManager) this.f1875a.getApplicationContext().getSystemService("wifi");
            if (wifiManager == null) {
                cn.jiguang.al.a.d("JLocationWifi", "get wifiManager failed");
                return null;
            } else if (wifiManager.isWifiEnabled()) {
                ArrayList arrayList = new ArrayList();
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                cn.jiguang.aj.c cVar = new cn.jiguang.aj.c();
                cVar.f1893a = cn.jiguang.o.d.h(this.f1875a);
                cVar.f1894b = g.b((TextUtils.isEmpty(connectionInfo.getSSID()) || "<unknown ssid>".equals(connectionInfo.getSSID())) ? a(this.f1875a) : connectionInfo.getSSID());
                cVar.f1895c = "connect";
                cVar.f1896d = connectionInfo.getRssi();
                cVar.f1897e = connectionInfo.getBSSID();
                cn.jiguang.al.a.a("JLocationWifi", "connectingWifi:" + cVar.toString());
                arrayList.add(cVar);
                if (Build.VERSION.SDK_INT < 23 || cn.jiguang.o.d.a(this.f1875a, "android.permission.ACCESS_COARSE_LOCATION") || cn.jiguang.o.d.a(this.f1875a, "android.permission.ACCESS_FINE_LOCATION")) {
                    List<ScanResult> scanResults = wifiManager.getScanResults();
                    if (scanResults != null && scanResults.size() != 0) {
                        cn.jiguang.al.a.a("JLocationWifi", "scan wifi list success:" + scanResults);
                        ArrayList<ScanResult> arrayList2 = new ArrayList(scanResults);
                        for (ScanResult scanResult : arrayList2) {
                            if (!(cVar.f1894b.equals(cn.jiguang.o.d.d(scanResult.SSID)) && cVar.f1897e.equals(scanResult.BSSID)) && scanResult.level >= -200) {
                                for (ScanResult scanResult2 : arrayList2) {
                                    if (scanResult2 != scanResult && scanResult.SSID.equals(scanResult2.SSID) && scanResult.BSSID.equals(scanResult2.BSSID)) {
                                        scanResults.remove(scanResult);
                                    }
                                }
                            } else {
                                scanResults.remove(scanResult);
                            }
                        }
                        arrayList2.clear();
                        Collections.sort(scanResults, new Comparator<ScanResult>() { // from class: cn.jiguang.ai.d.1
                            @Override // java.util.Comparator
                            /* renamed from: a */
                            public int compare(ScanResult scanResult3, ScanResult scanResult4) {
                                return scanResult4.level - scanResult3.level;
                            }
                        });
                        for (int i10 = 0; i10 < scanResults.size() && i10 != i9 - 1; i10++) {
                            ScanResult scanResult3 = scanResults.get(i10);
                            String d10 = cn.jiguang.o.d.d(scanResult3.SSID);
                            cn.jiguang.aj.c cVar2 = new cn.jiguang.aj.c();
                            cVar2.f1893a = cn.jiguang.o.d.h(this.f1875a);
                            cVar2.f1894b = d10;
                            cVar2.f1895c = null;
                            if (i10 == 0) {
                                cVar2.f1895c = "strongest";
                            }
                            cVar2.f1896d = scanResult3.level;
                            cVar2.f1897e = scanResult3.BSSID;
                            arrayList.add(cVar2);
                        }
                        return arrayList;
                    }
                    str = "scan wifi list failed";
                } else {
                    str = "scan wifi list failed because has no Manifest.permission.LOCATION";
                }
                cn.jiguang.al.a.d("JLocationWifi", str);
                return arrayList;
            } else {
                return null;
            }
        }
        return null;
    }
}
