package cn.jpush.android.n;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.Logger;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e {

    /* renamed from: c  reason: collision with root package name */
    public static int f3146c = 200;

    /* renamed from: f  reason: collision with root package name */
    private static e f3147f;

    /* renamed from: a  reason: collision with root package name */
    protected Context f3148a;

    /* renamed from: b  reason: collision with root package name */
    protected int f3149b = 100;

    /* renamed from: d  reason: collision with root package name */
    private volatile LinkedHashMap<String, cn.jpush.android.b.b> f3150d;

    /* renamed from: e  reason: collision with root package name */
    private volatile LinkedHashMap<String, cn.jpush.android.b.b> f3151e;

    /* renamed from: g  reason: collision with root package name */
    private a f3152g;

    /* loaded from: classes.dex */
    public interface a {
        void a(cn.jpush.android.b.b bVar);

        void a(cn.jpush.android.b.b bVar, cn.jpush.android.b.b bVar2);

        void a(boolean z10);

        void b(cn.jpush.android.b.b bVar);
    }

    private e() {
    }

    private static cn.jpush.android.b.b a(cn.jpush.android.d.d dVar) {
        cn.jpush.android.b.b bVar = new cn.jpush.android.b.b();
        bVar.f2952a = dVar.f2998ag;
        bVar.f2953b = dVar.f2999ah;
        bVar.f2954c = dVar.f3000ai;
        bVar.f2955d = dVar.f3001aj;
        bVar.f2956e = dVar.f3003al;
        bVar.f2957f = dVar.am;
        bVar.f2958g = dVar.an;
        bVar.f2959h = dVar.ao;
        return bVar;
    }

    public static e a() {
        if (f3147f == null) {
            synchronized (e.class) {
                if (f3147f == null) {
                    f3147f = new e();
                }
            }
        }
        return f3147f;
    }

    private LinkedHashMap<String, cn.jpush.android.b.b> a(Context context, int i9) {
        FileInputStream fileInputStream = null;
        if (context == null) {
            Logger.w("GeofenceDataHelper", "unexcepted , context is null");
            return null;
        }
        LinkedHashMap<String, cn.jpush.android.b.b> linkedHashMap = new LinkedHashMap<>();
        try {
            File a10 = cn.jpush.android.af.c.a(context, i9 == 2 ? "jpush_geofence_v5_report" : "jpush_geofence_v5");
            if (a10.exists()) {
                FileInputStream fileInputStream2 = new FileInputStream(a10);
                try {
                    JSONObject jSONObject = new JSONObject(new String(j.a((InputStream) fileInputStream2)));
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        cn.jpush.android.b.b a11 = cn.jpush.android.b.b.a(context, jSONObject.getJSONObject(keys.next()));
                        if (a11 != null) {
                            linkedHashMap.put(a11.f2952a, a11);
                        }
                    }
                    fileInputStream = fileInputStream2;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    try {
                        Logger.w("GeofenceDataHelper", "load objects error:" + th.getMessage());
                        return linkedHashMap;
                    } finally {
                        j.a((Closeable) fileInputStream);
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return linkedHashMap;
    }

    private void a(String str, JSONObject jSONObject, int i9, boolean z10) {
        a aVar;
        LinkedHashMap<String, cn.jpush.android.b.b> d10 = d(i9);
        Logger.dd("GeofenceDataHelper", "Before update.Current geofence size:" + d10.size() + ",type:" + i9);
        cn.jpush.android.b.b bVar = d10.get(str);
        if (bVar == null) {
            Logger.ww("GeofenceDataHelper", "can not update geofence because origin one not found");
            return;
        }
        bVar.b(jSONObject);
        if (bVar.f2956e * 1000 <= System.currentTimeMillis()) {
            d10.remove(str);
            a(bVar);
        } else if (z10 && (aVar = this.f3152g) != null) {
            aVar.a(bVar, bVar);
        }
        e(i9);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:1|(4:2|3|(1:7)|8)|(13:50|(1:(2:69|(1:71)))(2:53|(5:57|(2:60|58)|61|62|(2:64|65)))|14|15|16|(1:18)|19|(1:21)(3:32|(4:35|(3:40|41|42)|43|33)|46)|22|(1:31)|(1:30)|27|28)(1:12)|13|14|15|16|(0)|19|(0)(0)|22|(0)|31|(0)|30|27|28|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c0, code lost:
        if (r8.f3150d.isEmpty() == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00da, code lost:
        r9 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00de, code lost:
        cn.jpush.android.helper.Logger.dd("GeofenceDataHelper", "recover geofence failed:" + r9);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x015c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0163 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(android.content.Context r9) {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.n.e.b(android.content.Context):void");
    }

    private boolean b(int i9) {
        LinkedHashMap<String, cn.jpush.android.b.b> linkedHashMap = i9 == 2 ? this.f3151e : this.f3150d;
        boolean z10 = false;
        if (linkedHashMap != null && !linkedHashMap.isEmpty()) {
            Iterator<Map.Entry<String, cn.jpush.android.b.b>> it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                cn.jpush.android.b.b value = it.next().getValue();
                if (value != null && value.f2956e * 1000 <= System.currentTimeMillis()) {
                    z10 = true;
                    Logger.dd("GeofenceDataHelper", "Geofence " + value.f2952a + " is out of date!");
                    it.remove();
                }
            }
        }
        return z10;
    }

    private void c(int i9) {
        LinkedHashMap<String, cn.jpush.android.b.b> linkedHashMap;
        String str;
        if (i9 == 0) {
            c(2);
            c(1);
            return;
        }
        if (i9 == 2) {
            linkedHashMap = this.f3151e;
            Logger.dd("GeofenceDataHelper", "save report geofence to file");
            str = "jpush_geofence_v5_report";
        } else {
            linkedHashMap = this.f3150d;
            Logger.dd("GeofenceDataHelper", "save show geofence to file");
            str = "jpush_geofence_v5";
        }
        if (linkedHashMap == null) {
            return;
        }
        try {
            File a10 = cn.jpush.android.af.c.a(this.f3148a, str);
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, cn.jpush.android.b.b> entry : linkedHashMap.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue().a());
            }
            cn.jpush.android.af.c.a(a10.getAbsolutePath(), jSONObject.toString());
        } catch (Throwable th2) {
            Logger.ww("GeofenceDataHelper", "save geo to file error:" + th2.getMessage());
        }
    }

    private boolean c(cn.jpush.android.b.b bVar) {
        if (bVar != null && !TextUtils.isEmpty(bVar.f2952a) && bVar.f2953b != -1) {
            double d10 = bVar.f2958g;
            if (d10 >= -90.0d && d10 <= 90.0d) {
                double d11 = bVar.f2957f;
                if (d11 >= -180.0d && d11 <= 180.0d) {
                    return true;
                }
            }
        }
        Logger.ww("GeofenceDataHelper", "The geofence is invalid, won't operate!");
        return false;
    }

    private LinkedHashMap<String, cn.jpush.android.b.b> d(int i9) {
        return i9 == 2 ? this.f3151e : this.f3150d;
    }

    private void e(int i9) {
        c(i9);
        a aVar = this.f3152g;
        if (aVar != null) {
            aVar.a(this.f3150d.isEmpty() && this.f3151e.isEmpty());
        }
    }

    private void f(int i9) {
        int size = this.f3150d.size();
        if (size > i9) {
            Logger.dd("GeofenceDataHelper", "ShowGeofence count= " + size + ",limit=" + i9 + ",need remove earliest");
            Iterator<cn.jpush.android.b.b> it = this.f3150d.values().iterator();
            while (it.hasNext() && size > i9) {
                cn.jpush.android.b.b next = it.next();
                if (next != null) {
                    a(next);
                }
                it.remove();
                size--;
            }
        }
    }

    public void a(int i9) {
        cn.jpush.android.cache.a.d(this.f3148a, i9);
        this.f3149b = i9;
        f(i9);
    }

    public synchronized void a(Context context) {
        if (context == null) {
            return;
        }
        this.f3148a = context.getApplicationContext();
        this.f3149b = cn.jpush.android.cache.a.e(context, 10);
        b(context);
        f(this.f3149b);
    }

    public void a(cn.jpush.android.b.b bVar) {
        if (bVar == null || !TextUtils.isEmpty(bVar.f2952a)) {
            int i9 = bVar.f2960i;
            String str = bVar.f2952a;
            LinkedHashMap<String, cn.jpush.android.b.b> d10 = d(i9);
            Logger.dd("GeofenceDataHelper", "Before delete.Current geofence size:" + d10.size() + ",type:" + i9);
            if (d10.remove(str) != null) {
                e(i9);
                a aVar = this.f3152g;
                if (aVar != null) {
                    aVar.b(bVar);
                    return;
                }
                return;
            }
            Logger.d("GeofenceDataHelper", "geofence=" + bVar.f2952a + " already not exists");
        }
    }

    public void a(a aVar) {
        this.f3152g = aVar;
    }

    public void a(String str) {
        Logger.d("GeofenceDataHelper", "will delete geofence=" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        cn.jpush.android.b.b bVar = this.f3150d.get(str);
        cn.jpush.android.b.b bVar2 = this.f3151e.get(str);
        if (bVar != null) {
            a(bVar);
        }
        if (bVar2 != null) {
            a(bVar2);
        }
        if (bVar == null && bVar2 == null) {
            Logger.d("GeofenceDataHelper", "geofence=" + str + " already not exists");
        }
    }

    public void a(String str, JSONObject jSONObject, boolean z10) {
        int i9;
        if (TextUtils.isEmpty(str) || jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        if (jSONObject.has("type")) {
            i9 = jSONObject.optInt("type", 1);
        } else {
            a(str, jSONObject, 1, z10);
            i9 = 2;
        }
        a(str, jSONObject, i9, z10);
    }

    public void a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        LinkedHashMap<String, cn.jpush.android.b.b> linkedHashMap = new LinkedHashMap<>();
        int i9 = 0;
        while (true) {
            try {
                int length = jSONArray.length();
                int i10 = f3146c;
                if (length <= i10) {
                    i10 = jSONArray.length();
                }
                if (i9 >= i10) {
                    break;
                }
                cn.jpush.android.b.b a10 = cn.jpush.android.b.b.a(jSONArray.getJSONObject(i9));
                linkedHashMap.put(a10.f2952a, a10);
                i9++;
            } catch (Throwable th2) {
                Logger.dd("GeofenceDataHelper", "Replace report geofences failed:" + th2.getMessage());
                return;
            }
        }
        this.f3151e = linkedHashMap;
        e(2);
        a aVar = this.f3152g;
        if (aVar != null) {
            aVar.a(null, null);
        }
    }

    public LinkedHashMap<String, cn.jpush.android.b.b> b() {
        LinkedHashMap<String, cn.jpush.android.b.b> linkedHashMap = new LinkedHashMap<>();
        linkedHashMap.putAll(this.f3151e);
        linkedHashMap.putAll(this.f3150d);
        return linkedHashMap;
    }

    public void b(cn.jpush.android.b.b bVar) {
        StringBuilder sb2;
        String str;
        if (c(bVar)) {
            int i9 = bVar.f2960i;
            LinkedHashMap<String, cn.jpush.android.b.b> d10 = d(i9);
            Logger.dd("GeofenceDataHelper", "Before add.Current geofence size:" + d10.size() + ",type:" + i9);
            cn.jpush.android.b.b bVar2 = d10.get(bVar.f2952a);
            if (bVar2 == null) {
                if (i9 == 2 && d10.size() >= f3146c) {
                    sb2 = new StringBuilder();
                    sb2.append("Report geofence size limit :");
                    sb2.append(f3146c);
                    sb2.append(",won't add geofence");
                    str = bVar.f2952a;
                } else if (bVar.f2956e * 1000 <= System.currentTimeMillis()) {
                    sb2 = new StringBuilder();
                    sb2.append("The geofence ");
                    sb2.append(bVar.f2952a);
                    str = " is out of date, will not create!";
                } else {
                    f(this.f3149b - 1);
                    d10.put(bVar.f2952a, bVar);
                    a aVar = this.f3152g;
                    if (aVar != null) {
                        aVar.a(bVar);
                    }
                }
                sb2.append(str);
                Logger.dd("GeofenceDataHelper", sb2.toString());
                return;
            } else if (bVar.f2956e * 1000 <= System.currentTimeMillis()) {
                d10.remove(bVar.f2952a);
                a(bVar2);
            } else {
                bVar.a(bVar2);
                d10.put(bVar.f2952a, bVar);
                a aVar2 = this.f3152g;
                if (aVar2 != null) {
                    aVar2.a(bVar2, bVar);
                }
            }
            e(i9);
        }
    }

    public int c() {
        return this.f3150d.size() + this.f3151e.size();
    }
}
