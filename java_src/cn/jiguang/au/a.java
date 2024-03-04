package cn.jiguang.au;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.analytics.page.PushSA;
import com.guochao.faceshow.utils.TimeUtil;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile a f2094c;

    /* renamed from: d  reason: collision with root package name */
    private static final Object f2095d = new Object();

    /* renamed from: a  reason: collision with root package name */
    private long f2096a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Set<String>> f2097b = new HashMap();

    private a() {
    }

    public static a a() {
        if (f2094c == null) {
            synchronized (f2095d) {
                if (f2094c == null) {
                    f2094c = new a();
                }
            }
        }
        return f2094c;
    }

    private void a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() != 0) {
            try {
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray optJSONArray = jSONObject.optJSONArray(next);
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    if (optJSONArray != null) {
                        for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                            linkedHashSet.add(optJSONArray.getString(i9));
                        }
                    }
                    hashMap.put(next, linkedHashSet);
                }
                if (hashMap.isEmpty()) {
                    return;
                }
                this.f2097b = hashMap;
            } catch (JSONException unused) {
            }
        }
    }

    public a a(Context context) {
        try {
            long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.u())).longValue();
            long j10 = this.f2096a;
            if (j10 == 0 || j10 != longValue) {
                this.f2096a = longValue;
                String str = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.s());
                if (!TextUtils.isEmpty(str)) {
                    a(new JSONObject(str));
                }
            }
        } catch (Throwable unused) {
        }
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "normal";
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1245458676:
                if (str.equals(PushSA.REPORT_ACTIVE_LAUNCH)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1177318867:
                if (str.equals("account")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1091230153:
                if (str.equals("android_awake_target2")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1051289244:
                if (str.equals("active_user")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1039745817:
                if (str.equals("normal")) {
                    c10 = 4;
                    break;
                }
                break;
            case -820729752:
                if (str.equals(PushSA.REPORT_ACTIVE_TERMINATE)) {
                    c10 = 5;
                    break;
                }
                break;
            case -693746763:
                if (str.equals("android_awake")) {
                    c10 = 6;
                    break;
                }
                break;
            case -295020531:
                if (str.equals("android_notification_state")) {
                    c10 = 7;
                    break;
                }
                break;
            case -31313123:
                if (str.equals("android_awake2")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 96275:
                if (str.equals("aa3")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 2986591:
                if (str.equals("aat3")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 93223301:
                if (str.equals("awake")) {
                    c10 = 11;
                    break;
                }
                break;
            case 907150721:
                if (str.equals("detach_account")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 1350272347:
                if (str.equals("android_awake_target")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 1973539834:
                if (str.equals("identify_account")) {
                    c10 = 14;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 3:
            case 5:
                return "active_user";
            case 1:
            case '\f':
            case 14:
                return "account";
            case 2:
            case 6:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\r':
                return "awake";
            case 4:
                break;
            case 7:
                return "android_notification_state";
            default:
                if (this.f2097b.containsKey(str)) {
                    return str;
                }
                break;
        }
        return "normal";
    }

    public String a(Set<String> set) {
        if (set != null) {
            try {
                if (!set.isEmpty()) {
                    String str = null;
                    for (String str2 : set) {
                        String a10 = a(str2);
                        if (str == null) {
                            str = a10;
                        } else if (!str.equals(a10)) {
                            cn.jiguang.as.d.g("AddressGroupManager", "Report JSONArray belong more than one space, using normal-space");
                            return "normal";
                        }
                    }
                    return str;
                }
            } catch (Throwable unused) {
            }
        }
        return "normal";
    }

    public void a(Context context, JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("sis_ips");
        long j10 = 3600000;
        try {
            long j11 = jSONObject.getLong(RemoteMessageConst.TTL);
            if (j11 >= 0) {
                j10 = j11;
            }
        } catch (JSONException unused) {
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("ips");
        cn.jiguang.g.a[] aVarArr = new cn.jiguang.g.a[4];
        aVarArr[0] = cn.jiguang.g.a.t().a((cn.jiguang.g.a<String>) optJSONArray.toString());
        aVarArr[1] = cn.jiguang.g.a.v().a((cn.jiguang.g.a<Long>) Long.valueOf(j10 * 1000));
        aVarArr[2] = cn.jiguang.g.a.u().a((cn.jiguang.g.a<Long>) Long.valueOf(System.currentTimeMillis()));
        aVarArr[3] = cn.jiguang.g.a.s().a((cn.jiguang.g.a<String>) (optJSONObject != null ? optJSONObject.toString() : ""));
        cn.jiguang.g.b.a(context, aVarArr);
        a(optJSONObject);
    }

    public a b(Context context) {
        boolean z10;
        try {
            long currentTimeMillis = System.currentTimeMillis();
            a(context);
            long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.v())).longValue();
            if (longValue < 0) {
                longValue = 3600000;
            } else if (longValue < 60000) {
                longValue = 60000;
            }
            if (longValue > TimeUtil.WEEK) {
                longValue = 604800000;
            }
            SimpleDateFormat a10 = cn.jiguang.f.b.a("yyyy-MM-dd HH:mm:ss");
            cn.jiguang.as.d.c("AddressGroupManager", "lastUpdateTime=" + a10.format(new Date(this.f2096a)) + " now=" + a10.format(new Date(currentTimeMillis)) + " expire=" + (longValue / 1000));
            long j10 = this.f2096a;
            if (j10 == 0 || j10 + longValue < currentTimeMillis) {
                cn.jiguang.as.d.c("AddressGroupManager", "cache invalid, fetch new urls");
                Map<String, Set<String>> map = this.f2097b;
                if (map != null && !map.isEmpty()) {
                    z10 = false;
                    e.a(context, z10);
                }
                z10 = true;
                e.a(context, z10);
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("AddressGroupManager", "refresh e" + th2);
        }
        return this;
    }

    public Set<String> b(Set<String> set) {
        if (set != null && !set.isEmpty()) {
            Set<String> set2 = null;
            for (String str : set) {
                Set<String> set3 = this.f2097b.get(a(str));
                if (set3 != null && !set3.isEmpty()) {
                    if (set2 == null) {
                        set2 = set3;
                    } else {
                        set2.retainAll(set3);
                    }
                    if (set2.isEmpty()) {
                    }
                }
            }
            return set2;
        }
        return this.f2097b.get("normal");
    }
}
