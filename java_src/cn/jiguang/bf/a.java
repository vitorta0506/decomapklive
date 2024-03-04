package cn.jiguang.bf;

import android.text.TextUtils;
import cn.jiguang.api.JAction;
import cn.jiguang.api.JActionExtra;
import cn.jiguang.api.JCoreManager;
import java.util.HashMap;
/* loaded from: classes.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    private static volatile a f2479d;

    /* renamed from: a  reason: collision with root package name */
    public static HashMap<String, g> f2476a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    public static HashMap<String, JAction> f2477b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    public static HashMap<String, JActionExtra> f2478c = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private static final Object f2480e = new Object();

    private a() {
    }

    public static a a() {
        if (f2479d == null) {
            synchronized (f2480e) {
                if (f2479d == null) {
                    f2479d = new a();
                }
            }
        }
        return f2479d;
    }

    public JAction a(String str) {
        if (f2477b.containsKey(str)) {
            return f2477b.get(str);
        }
        return null;
    }

    public void a(String str, String str2) {
        d.a("DispacthManager", "addAction type:" + str + ",action:" + str2);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (!f2476a.containsKey(str)) {
            g gVar = new g();
            JCoreManager.addDispatchAction(str, g.class.getCanonicalName());
            f2476a.put(str, gVar);
        }
        if (f2477b.containsKey(str)) {
            return;
        }
        try {
            Object newInstance = Class.forName(str2).newInstance();
            if (newInstance instanceof JAction) {
                f2477b.put(str, (JAction) newInstance);
            }
        } catch (Throwable th2) {
            d.d("DispacthManager", "#unexcepted - instance " + str2 + " class failed:" + th2);
        }
    }

    public JActionExtra b(String str) {
        if (f2478c.containsKey(str)) {
            return f2478c.get(str);
        }
        return null;
    }

    public void b(String str, String str2) {
        d.a("DispacthManager", "addActionExtra type:" + str + ",action:" + str2);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (!f2476a.containsKey(str)) {
            g gVar = new g();
            JCoreManager.addDispatchAction(str, g.class.getCanonicalName());
            f2476a.put(str, gVar);
        }
        if (f2478c.containsKey(str)) {
            return;
        }
        try {
            Object newInstance = Class.forName(str2).newInstance();
            if (newInstance instanceof JActionExtra) {
                f2478c.put(str, (JActionExtra) newInstance);
            }
        } catch (Throwable th2) {
            d.d("DispacthManager", "#unexcepted - instance " + str2 + " class failed:" + th2);
        }
    }
}
