package cn.jiguang.az;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.api.JDispatchAction;
import cn.jiguang.internal.JConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static volatile k f2362a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f2363b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private Map<Long, String> f2364c = new HashMap();

    public static k a() {
        if (f2362a == null) {
            synchronized (f2363b) {
                if (f2362a == null) {
                    f2362a = new k();
                }
            }
        }
        return f2362a;
    }

    private String a(Context context, String str, String str2) {
        String str3 = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.a(str));
        if (TextUtils.isEmpty(str2) || str2.equals(str3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("need not ");
            sb2.append(str);
            sb2.append(" userctrl,newest version:");
            if (TextUtils.isEmpty(str2)) {
                str2 = "null";
            }
            sb2.append(str2);
            cn.jiguang.as.d.a("UserCtrlHelper", sb2.toString());
            return "";
        }
        return str2;
    }

    private void a(Context context, short s10, String str, String str2) {
        cn.jiguang.as.d.c("UserCtrlHelper", "sendUserCtrlInfo sdkType:" + str2 + ",property:" + ((int) s10) + ",verInfo:" + str);
        long b10 = j.b();
        cn.jiguang.av.b.a(context, JConstants.SDK_TYPE, 26, 0, b10, 10000L, cn.jiguang.bb.b.a(s10, (short) 1, str));
        this.f2364c.put(Long.valueOf(b10), str2);
    }

    public void a(Context context) {
        if (context == null) {
            cn.jiguang.as.d.g("UserCtrlHelper", "handleUserCtrl failed,context is null");
            return;
        }
        ConcurrentHashMap<String, JDispatchAction> concurrentHashMap = b.f2294a;
        if (concurrentHashMap == null || concurrentHashMap.isEmpty()) {
            return;
        }
        for (Map.Entry<String, JDispatchAction> entry : concurrentHashMap.entrySet()) {
            JDispatchAction value = entry.getValue();
            if (value != null) {
                String a10 = a(context, entry.getKey(), value.getSdkVersion(entry.getKey()));
                if (!TextUtils.isEmpty(a10)) {
                    a(context, value.getUserCtrlProperty(entry.getKey()), a10, entry.getKey());
                }
            }
        }
    }

    public void a(Context context, long j10) {
        String str;
        Map<Long, String> map;
        String remove = this.f2364c.remove(Long.valueOf(j10));
        if (TextUtils.isEmpty(remove)) {
            str = "userCtrlSuccess but not found rid:" + j10;
        } else {
            cn.jiguang.as.d.c("UserCtrlHelper", "userCtrlSuccess rid:" + j10 + ",sdkType:" + remove);
            String b10 = b.a().b(remove, "");
            if (!TextUtils.isEmpty(b10)) {
                cn.jiguang.g.b.a(context, cn.jiguang.g.a.a(remove).a((cn.jiguang.g.a<String>) b10));
                map = this.f2364c;
                if (map == null && map.isEmpty() && !cn.jiguang.ar.c.a().a(context)) {
                    h.a().a(context, "tcp_a21", null);
                    return;
                }
                return;
            }
            str = "userCtrlSuccess but not found sdkversion by sdkType:" + remove;
        }
        cn.jiguang.as.d.c("UserCtrlHelper", str);
        map = this.f2364c;
        if (map == null) {
        }
    }

    public void a(Context context, long j10, int i9) {
        String str;
        String remove = this.f2364c.remove(Long.valueOf(j10));
        if (TextUtils.isEmpty(remove)) {
            str = "onUserCtrlFailed but not found rid:" + j10;
        } else {
            cn.jiguang.as.d.c("UserCtrlHelper", "onUserCtrlFailed rid:" + j10 + ",sdkType:" + remove + ",errorCode:" + i9);
            if (!TextUtils.isEmpty(b.a().b(remove, ""))) {
                return;
            }
            str = "onUserCtrlFailed but not found sdkversion by sdkType:" + remove;
        }
        cn.jiguang.as.d.c("UserCtrlHelper", str);
    }

    public void b(Context context, long j10) {
        cn.jiguang.as.d.c("UserCtrlHelper", "onUserCtrlTimeout rid:" + j10);
        this.f2364c.remove(Long.valueOf(j10));
    }

    public boolean b(Context context) {
        if (context == null) {
            cn.jiguang.as.d.h("UserCtrlHelper", "get isNeedUserCtrl failed,context is null");
            return false;
        }
        ConcurrentHashMap<String, JDispatchAction> concurrentHashMap = b.f2294a;
        if (concurrentHashMap != null && !concurrentHashMap.isEmpty()) {
            for (Map.Entry<String, JDispatchAction> entry : concurrentHashMap.entrySet()) {
                JDispatchAction value = entry.getValue();
                if (value != null && !TextUtils.isEmpty(a(context, entry.getKey(), value.getSdkVersion(entry.getKey())))) {
                    return true;
                }
            }
        }
        return false;
    }
}
