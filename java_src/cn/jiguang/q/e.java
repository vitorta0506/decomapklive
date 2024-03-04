package cn.jiguang.q;

import android.content.Context;
import android.text.TextUtils;
import com.meizu.cloud.pushsdk.notification.model.AppIconSetting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e extends cn.jiguang.o.a {

    /* renamed from: b  reason: collision with root package name */
    private static volatile e f2747b;

    /* renamed from: a  reason: collision with root package name */
    private Context f2748a;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f2749c;

    private e() {
    }

    public static e a() {
        if (f2747b == null) {
            synchronized (e.class) {
                if (f2747b == null) {
                    f2747b = new e();
                }
            }
        }
        return f2747b;
    }

    public static void a(Context context, ArrayList<String> arrayList) {
        if (context == null || arrayList == null) {
            cn.jiguang.al.a.a("JDeviceIdsMap", "save DeviceIds fail, context or deviceIds is null");
            return;
        }
        try {
            String j10 = cn.jiguang.o.b.j(context);
            ArrayList arrayList2 = new ArrayList();
            if (!TextUtils.isEmpty(j10)) {
                cn.jiguang.al.a.a("JDeviceIdsMap", "old share process deviceIds is " + j10);
                for (String str : j10.split(",")) {
                    arrayList2.add(str);
                }
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet(arrayList2);
            linkedHashSet.addAll(arrayList);
            StringBuilder sb2 = new StringBuilder();
            Iterator it = linkedHashSet.iterator();
            while (true) {
                sb2.append((String) it.next());
                if (!it.hasNext()) {
                    cn.jiguang.al.a.a("JDeviceIdsMap", "new share process deviceIds is " + sb2.toString());
                    cn.jiguang.o.b.y(context, sb2.toString());
                    return;
                }
                sb2.append(',');
            }
        } catch (Throwable unused) {
        }
    }

    private boolean a(String str) {
        String i9 = cn.jiguang.o.b.i(this.f2748a);
        if (TextUtils.isEmpty(i9)) {
            cn.jiguang.al.a.a("JDeviceIdsMap", "dIds cache is empty");
            return true;
        }
        return !i9.equals(str);
    }

    private void e() {
        try {
            Object opt = this.f2749c.opt("deviceids");
            if (opt != null) {
                cn.jiguang.o.b.x(this.f2748a, opt.toString());
                cn.jiguang.al.a.a("JDeviceIdsMap", "dids refresh cache success, dIds: " + opt);
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JDeviceIdsMap", "ids encrypted failed, err: " + th2.getMessage());
        }
    }

    public static void e(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            cn.jiguang.al.a.a("JDeviceIdsMap", "save DeviceId fail, context or deviceId is null");
        } else if (!cn.jiguang.r.c.a(context) || cn.jiguang.r.c.b(context)) {
        } else {
            cn.jiguang.al.a.a("JDeviceIdsMap", "start save deviceId into sd by mediaStore");
            boolean z10 = false;
            try {
                String a10 = cn.jiguang.f.e.a(context, "jdevice_id_map");
                JSONArray jSONArray = null;
                boolean z11 = true;
                if (TextUtils.isEmpty(a10)) {
                    jSONArray = new JSONArray();
                    jSONArray.put(str);
                } else {
                    String g10 = cn.jiguang.o.d.g(a10);
                    cn.jiguang.al.a.a("JDeviceIdsMap", "old deviceIds is " + g10 + " from sd");
                    if (!g10.contains(str)) {
                        jSONArray = new JSONArray(g10);
                        jSONArray.put(str);
                        z10 = true;
                    }
                    z11 = z10;
                }
                if (!z11 || jSONArray == null) {
                    return;
                }
                cn.jiguang.al.a.a("JDeviceIdsMap", "save deviceId " + str + " into sd, new deviceIds is " + jSONArray.toString());
                cn.jiguang.f.e.a(context, "jdevice_id_map", cn.jiguang.o.d.f(jSONArray.toString()));
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JDeviceIdsMap", "save deviceId info sd error :" + th2);
            }
        }
    }

    @Override // cn.jiguang.o.a
    protected String a(Context context) {
        this.f2748a = context;
        return "JDeviceIdsMap";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void b(Context context, String str) {
        String[] split;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        String g10 = cn.jiguang.o.d.g(context);
        String j10 = cn.jiguang.o.b.j(context);
        if (!TextUtils.isEmpty(j10)) {
            try {
                cn.jiguang.al.a.d("JDeviceIdsMap", "collect share process dIds " + j10);
                ArrayList arrayList = new ArrayList();
                for (String str2 : j10.split(",")) {
                    if (!TextUtils.isEmpty(str2) && !TextUtils.equals(str2, g10)) {
                        arrayList.add(str2);
                    }
                }
                if (arrayList.size() > 0) {
                    linkedHashSet.addAll(arrayList);
                }
            } catch (Throwable unused) {
            }
        }
        if (cn.jiguang.r.c.a(context) && !cn.jiguang.r.c.b(context)) {
            String a10 = cn.jiguang.f.e.a(context, "jdevice_id_map");
            if (!TextUtils.isEmpty(a10)) {
                String g11 = cn.jiguang.o.d.g(a10);
                cn.jiguang.al.a.d("JDeviceIdsMap", "collect sd dIds " + g11);
                try {
                    JSONArray jSONArray = new JSONArray(g11);
                    int length = jSONArray.length();
                    ArrayList arrayList2 = new ArrayList();
                    for (int i9 = 0; i9 < length; i9++) {
                        String optString = jSONArray.optString(i9);
                        if (!TextUtils.isEmpty(optString) && !TextUtils.equals(optString, g10)) {
                            arrayList2.add(optString);
                        }
                    }
                    if (arrayList2.size() > 0) {
                        linkedHashSet.addAll(arrayList2);
                    }
                } catch (Throwable unused2) {
                }
            }
        }
        if (cn.jiguang.aq.b.b(context).f2008u) {
            cn.jiguang.al.a.d("JDeviceIdsMap", "collect waked dIds");
            try {
                JSONArray b10 = cn.jiguang.aq.e.b(context);
                if (b10 != null && b10.length() > 0) {
                    cn.jiguang.al.a.a("JDeviceIdsMap", "waked dIds is " + b10.toString());
                    int length2 = b10.length();
                    for (int i10 = 0; i10 < length2; i10++) {
                        JSONObject optJSONObject = b10.optJSONObject(i10);
                        if (optJSONObject != null) {
                            String optString2 = optJSONObject.optString(AppIconSetting.DEFAULT_LARGE_ICON);
                            if (!TextUtils.isEmpty(optString2) && !TextUtils.equals(optString2, g10)) {
                                linkedHashSet.add(optString2);
                            }
                        }
                    }
                }
            } catch (Throwable unused3) {
            }
            cn.jiguang.aq.e.c(context);
        }
        try {
            if (linkedHashSet.size() > 0) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator it = linkedHashSet.iterator();
                do {
                    jSONArray2.put((String) it.next());
                } while (it.hasNext());
                jSONArray2.put(g10);
                if (!a(jSONArray2.toString())) {
                    cn.jiguang.al.a.a("JDeviceIdsMap", "dids not changed, need not report");
                    return;
                }
                if (this.f2749c == null) {
                    this.f2749c = new JSONObject();
                }
                this.f2749c.put("deviceids", jSONArray2);
                cn.jiguang.al.a.a("JDeviceIdsMap", "collect success:" + this.f2749c + ", origin dIds : " + jSONArray2.toString());
                super.b(context, str);
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JDeviceIdsMap", "collect dIds fail, error is " + th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void d(Context context, String str) {
        JSONObject jSONObject = this.f2749c;
        if (jSONObject == null) {
            cn.jiguang.al.a.d("JDeviceIdsMap", "there are no data to report");
            return;
        }
        cn.jiguang.o.d.a(context, jSONObject, "device_id_map");
        cn.jiguang.o.d.a(context, (Object) this.f2749c);
        super.d(context, str);
        e();
        cn.jiguang.al.a.a("JDeviceIdsMap", str + "report success, reportData: " + this.f2749c);
        this.f2749c = null;
    }
}
