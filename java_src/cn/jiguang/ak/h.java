package cn.jiguang.ak;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import com.facebook.internal.security.CertificateUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes.dex */
public class h {

    /* renamed from: b  reason: collision with root package name */
    private static String f1946b = "WifiHelper";

    /* renamed from: a  reason: collision with root package name */
    protected int f1947a;

    /* renamed from: c  reason: collision with root package name */
    private f f1948c;

    /* renamed from: d  reason: collision with root package name */
    private Comparator<ScanResult> f1949d;

    /* renamed from: e  reason: collision with root package name */
    private Comparator<Long> f1950e;

    /* renamed from: f  reason: collision with root package name */
    private g<Long> f1951f;

    /* renamed from: g  reason: collision with root package name */
    private List<ScanResult> f1952g;

    /* renamed from: h  reason: collision with root package name */
    private WifiManager f1953h;

    /* renamed from: i  reason: collision with root package name */
    private Context f1954i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Comparator<Long> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Long l10, Long l11) {
            if (l10.longValue() == l11.longValue()) {
                return 0;
            }
            return l10.longValue() > l11.longValue() ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Comparator<ScanResult> {
        b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(ScanResult scanResult, ScanResult scanResult2) {
            return scanResult2.level - scanResult.level;
        }
    }

    public h(Context context) {
        this.f1954i = context;
        b();
    }

    private void b() {
        this.f1952g = new ArrayList();
        this.f1949d = new b();
        a aVar = new a();
        this.f1950e = aVar;
        this.f1951f = new g<>(aVar);
        this.f1947a = 101;
        this.f1953h = (WifiManager) this.f1954i.getSystemService("wifi");
        ArrayList<Long> arrayList = c.f1930o;
        if (arrayList == null) {
            c.f1930o = new ArrayList<>();
        } else if (arrayList.isEmpty()) {
        } else {
            Collections.sort(c.f1930o, this.f1950e);
        }
    }

    private void b(List<ScanResult> list) {
        List<Long> a10;
        try {
            ArrayList arrayList = new ArrayList();
            if (list != null && list.size() != 0) {
                Collections.sort(list, this.f1949d);
                int i9 = 0;
                for (int i10 = 0; i10 < list.size(); i10++) {
                    ScanResult scanResult = list.get(i10);
                    if (scanResult != null) {
                        long parseLong = Long.parseLong(scanResult.BSSID.replaceAll(CertificateUtil.DELIMITER, ""), 16);
                        if (parseLong != 0 && scanResult.level > c.f1923h && !arrayList.contains(Long.valueOf(parseLong))) {
                            if (i9 >= c.f1922g) {
                                break;
                            }
                            arrayList.add(Long.valueOf(parseLong));
                            this.f1952g.add(scanResult);
                            i9++;
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    Collections.sort(arrayList, this.f1950e);
                    if (!c.f1930o.isEmpty() && (a10 = this.f1951f.a(arrayList, c.f1930o)) != null && !a10.isEmpty() && ((int) (((arrayList.size() - a10.size()) / arrayList.size()) * 100.0d)) < c.f1924i) {
                        c();
                        return;
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                a(arrayList);
            }
            this.f1948c.a(this.f1952g);
        } catch (Throwable th2) {
            String str = f1946b;
            cn.jiguang.al.a.a(str, "" + th2);
        }
        this.f1947a = 101;
    }

    private void c() {
        try {
            this.f1952g.clear();
            cn.jiguang.al.a.a(f1946b, "clearWifiData ");
        } catch (Throwable th2) {
            String str = f1946b;
            cn.jiguang.al.a.a(str, "" + th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        try {
            if (c.f1916a && this.f1947a == 101) {
                boolean b10 = d.a().b();
                Context context = this.f1954i;
                boolean a10 = context != null ? cn.jiguang.o.d.a(context, "android.permission.ACCESS_WIFI_STATE") : false;
                String str = f1946b;
                cn.jiguang.al.a.a(str, "doSample checkSafeStatus = " + b10 + "  , wifi permission:" + a10);
                if (!b10 || !a10) {
                    this.f1947a = 101;
                    return;
                }
                this.f1952g.clear();
                this.f1947a = 100;
                b(this.f1953h.getScanResults());
            }
        } catch (Throwable th2) {
            String str2 = f1946b;
            cn.jiguang.al.a.d(str2, "[WifiHelper] startScan error:" + th2);
        }
    }

    public void a(f fVar) {
        this.f1948c = fVar;
    }

    public void a(List<Long> list) {
        if (list != null) {
            try {
                if (list.size() <= 0) {
                    return;
                }
                c.f1930o.clear();
                for (int i9 = 0; i9 < list.size(); i9++) {
                    c.f1930o.add(Long.valueOf(list.get(i9).longValue()));
                    int size = list.size() - 1;
                }
            } catch (Throwable th2) {
                cn.jiguang.al.a.a(f1946b, "" + th2);
            }
        }
    }
}
