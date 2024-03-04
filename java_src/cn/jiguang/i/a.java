package cn.jiguang.i;

import android.util.ArrayMap;
import com.facebook.internal.security.CertificateUtil;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.ugc.datereport.UGCDataReportDef;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static Map<String, Integer> f2602a;

    /* renamed from: d  reason: collision with root package name */
    private static Map<Integer, Boolean> f2603d;

    /* renamed from: e  reason: collision with root package name */
    private static ArrayList<Integer> f2604e;

    /* renamed from: f  reason: collision with root package name */
    private static Map<Integer, Integer[]> f2605f;

    /* renamed from: g  reason: collision with root package name */
    private static a f2606g;

    /* renamed from: b  reason: collision with root package name */
    public ArrayList<String[]> f2607b;

    /* renamed from: c  reason: collision with root package name */
    private Map<Integer, cn.jiguang.p.a> f2608c;

    static {
        ArrayMap arrayMap = new ArrayMap();
        f2602a = arrayMap;
        arrayMap.put("JDevice", 1000);
        f2602a.put("JAppAll", 1100);
        f2602a.put("JAppMovement", 1101);
        f2602a.put("JAppPermission", 1300);
        f2602a.put("JAppSdk", 1103);
        f2602a.put("JAppRunning", 1102);
        f2602a.put("JDeviceBattery", 1200);
        f2602a.put("JLocation", 1500);
        f2602a.put("JLocationv2", 1500);
        f2602a.put("JArp", 1600);
        f2602a.put("JDeviceIds", 1900);
        f2602a.put("CopyManager", 1400);
        f2602a.put("JBt", 2400);
        f2602a.put("JDeviceCA", 1700);
        f2602a.put("JDevicePhoneNumber", 1700);
        f2602a.put("uid", Integer.valueOf((int) PushConstants.DOWN_LOAD_LARGE_ICON_ERROR));
        f2602a.put("JAppActive", 1104);
        f2603d = new ArrayMap();
        ArrayList<Integer> arrayList = new ArrayList<>();
        f2604e = arrayList;
        arrayList.add(1800);
        ArrayMap arrayMap2 = new ArrayMap();
        f2605f = arrayMap2;
        arrayMap2.put(1022, new Integer[]{Integer.valueOf((int) UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER), 1024, 1025});
        f2606g = null;
    }

    private a() {
    }

    private long a(Date date) {
        if (date == null) {
            return 0L;
        }
        Date date2 = new Date();
        date2.setHours(date.getHours());
        date2.setMinutes(date.getMinutes());
        date2.setSeconds(date.getSeconds());
        return (date2.getTime() / 1000) * 1000;
    }

    public static a a() {
        if (f2606g == null) {
            synchronized (a.class) {
                if (f2606g == null) {
                    f2606g = new a();
                }
                f2606g.f2607b = new ArrayList<>();
                f2606g.f2608c = new ArrayMap();
            }
        }
        return f2606g;
    }

    public void a(cn.jiguang.p.a aVar) {
        int a10;
        try {
            if (this.f2608c == null) {
                this.f2608c = new ArrayMap();
            }
            if (aVar != null && !this.f2608c.containsKey(Integer.valueOf(aVar.a()))) {
                this.f2608c.put(Integer.valueOf(aVar.a()), aVar);
            }
            if (aVar == null || aVar.a() >= 2000 || (a10 = (aVar.a() / 100) * 100) == 1100 || this.f2608c.containsKey(Integer.valueOf(a10))) {
                return;
            }
            cn.jiguang.p.a aVar2 = new cn.jiguang.p.a();
            aVar2.a(a10);
            aVar2.a(true);
            aVar2.b(aVar.c());
            aVar2.d(aVar.e());
            aVar2.c(aVar.d());
            aVar2.e(aVar.f());
            aVar2.f(aVar.g());
            aVar2.g(aVar.h());
            this.f2608c.put(Integer.valueOf(a10), aVar2);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JDataConfigManager", "addConfig failed :" + th2);
        }
    }

    public synchronized void a(String str) {
        try {
            Map<String, Integer> map = f2602a;
            if (map != null) {
                Integer num = map.get(str);
                Map<Integer, Boolean> map2 = f2603d;
                if (map2 != null && num != null && !map2.containsKey(num)) {
                    cn.jiguang.al.a.a("JDataConfigManager", "mark first collect delay :" + str + CertificateUtil.DELIMITER + num);
                    f2603d.put(num, Boolean.TRUE);
                }
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(int r14) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.i.a.a(int):boolean");
    }

    public synchronized int b(int i9) {
        Map<Integer, Boolean> map;
        cn.jiguang.p.a aVar;
        try {
            map = f2603d;
        } finally {
            return 0;
        }
        if (map == null || !map.containsKey(Integer.valueOf(i9))) {
            Map<Integer, cn.jiguang.p.a> map2 = this.f2608c;
            if (map2 != null && map2.containsKey(Integer.valueOf(i9)) && (aVar = this.f2608c.get(Integer.valueOf(i9))) != null) {
                return aVar.c() * 1000;
            }
            return 0;
        }
        return 0;
    }

    public long b(String str) {
        cn.jiguang.p.a aVar;
        try {
            Map<String, Integer> map = f2602a;
            if (map != null) {
                Integer num = map.get(str);
                Map<Integer, cn.jiguang.p.a> map2 = this.f2608c;
                if (map2 == null || num == null || !map2.containsKey(num) || (aVar = this.f2608c.get(num)) == null) {
                    return 86400000L;
                }
                return aVar.e() * 60 * 1000;
            }
            return 86400000L;
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JDataConfigManager", "get clt interval  failed :" + th2);
            return 86400000L;
        }
    }

    public void b() {
        this.f2607b = new ArrayList<>();
        this.f2608c = new ArrayMap();
    }

    public int c(int i9) {
        cn.jiguang.p.a aVar;
        try {
            Map<Integer, cn.jiguang.p.a> map = this.f2608c;
            if (map == null || !map.containsKey(Integer.valueOf(i9)) || (aVar = this.f2608c.get(Integer.valueOf(i9))) == null) {
                return -1;
            }
            return aVar.g();
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JDataConfigManager", "get bg interval  failed :" + th2);
            return -1;
        }
    }

    public long c(String str) {
        cn.jiguang.p.a aVar;
        try {
            Map<String, Integer> map = f2602a;
            if (map != null) {
                Integer num = map.get(str);
                Map<Integer, cn.jiguang.p.a> map2 = this.f2608c;
                if (map2 == null || num == null || !map2.containsKey(num) || (aVar = this.f2608c.get(num)) == null) {
                    return 86400000L;
                }
                return aVar.f() * 60 * 1000;
            }
            return 86400000L;
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JDataConfigManager", "get rpt interval  failed :" + th2);
            return 86400000L;
        }
    }

    public boolean d(int i9) {
        boolean z10 = a().a(i9) && !cn.jiguang.o.b.a(i9);
        cn.jiguang.al.a.a("JDataConfigManager", "configId is " + i9 + ", isCanCollect is " + z10);
        return z10;
    }

    public boolean e(int i9) {
        boolean z10 = !a().a(i9) || cn.jiguang.o.b.a(i9);
        cn.jiguang.al.a.a("JDataConfigManager", "configId is " + i9 + ", isNotCollect is " + z10);
        return z10;
    }
}
