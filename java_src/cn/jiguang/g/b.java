package cn.jiguang.g;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import cn.jiguang.bg.d;
import cn.jiguang.internal.JConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, SharedPreferences> f2592a = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static Handler f2595a;

        /* renamed from: b  reason: collision with root package name */
        private static final Object f2596b = new Object();

        /* renamed from: c  reason: collision with root package name */
        private static final LinkedList<Runnable> f2597c = new LinkedList<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f2598d = true;

        /* renamed from: e  reason: collision with root package name */
        private static final Object f2599e = new Object();

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: cn.jiguang.g.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class HandlerC0039a extends Handler {
            HandlerC0039a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    d.a("FUTURE_TASK", new cn.jiguang.bg.b() { // from class: cn.jiguang.g.b.a.a.1
                        @Override // cn.jiguang.bg.b
                        public void a() {
                            a.c();
                        }
                    });
                }
            }
        }

        public static void a(Runnable runnable, boolean z10) {
            try {
                Handler b10 = b();
                if (b10 != null) {
                    synchronized (f2596b) {
                        f2597c.add(runnable);
                        if (z10 && f2598d) {
                            b10.sendEmptyMessageDelayed(1, 100L);
                        } else {
                            b10.sendEmptyMessage(1);
                        }
                    }
                }
            } catch (Throwable th2) {
                cn.jiguang.as.d.g("Sp", "sp task add queue failed, " + th2.getMessage());
            }
        }

        private static Handler b() {
            if (f2595a == null) {
                synchronized (f2596b) {
                    if (f2595a == null) {
                        f2595a = new HandlerC0039a(Looper.getMainLooper());
                    }
                }
            }
            return f2595a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void c() {
            LinkedList linkedList;
            try {
                long currentTimeMillis = System.currentTimeMillis();
                synchronized (f2599e) {
                    synchronized (f2596b) {
                        LinkedList<Runnable> linkedList2 = f2597c;
                        linkedList = (LinkedList) linkedList2.clone();
                        linkedList2.clear();
                        Handler b10 = b();
                        if (b10 != null) {
                            b10.removeMessages(1);
                        }
                    }
                    if (linkedList.size() > 0) {
                        Iterator it = linkedList.iterator();
                        while (it.hasNext()) {
                            ((Runnable) it.next()).run();
                        }
                        if (JConstants.INTERNAL_USE && JConstants.DEBUG_MODE) {
                            cn.jiguang.as.d.c("Sp", "sp processing " + linkedList.size() + " items took " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
                        }
                    }
                }
            } catch (Throwable th2) {
                cn.jiguang.as.d.g("Sp", "sp commit task error, " + th2.getMessage());
            }
        }
    }

    public static <T> T a(Context context, cn.jiguang.g.a<T> aVar) {
        T t10 = (T) b(context, aVar);
        return t10 != null ? t10 : aVar.f2589e;
    }

    private static <T> T a(SharedPreferences sharedPreferences, String str, T t10) {
        if (sharedPreferences != null && sharedPreferences.contains(str)) {
            try {
                if (t10 instanceof Boolean) {
                    return (T) Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) t10).booleanValue()));
                }
                if (t10 instanceof String) {
                    return (T) sharedPreferences.getString(str, (String) t10);
                }
                if (t10 instanceof Integer) {
                    return (T) Integer.valueOf(sharedPreferences.getInt(str, ((Integer) t10).intValue()));
                }
                if (t10 instanceof Long) {
                    return (T) Long.valueOf(sharedPreferences.getLong(str, ((Long) t10).longValue()));
                }
                if (t10 instanceof Float) {
                    return (T) Float.valueOf(sharedPreferences.getFloat(str, ((Float) t10).floatValue()));
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void a(Context context, cn.jiguang.g.a<T> aVar, cn.jiguang.g.a<T> aVar2) {
        Object b10;
        if (b(context, aVar) != null || (b10 = b(context, aVar2)) == null) {
            return;
        }
        a(context, aVar.a((cn.jiguang.g.a<T>) b10));
        a(context, aVar2.a((cn.jiguang.g.a<T>) null));
    }

    public static void a(Context context, String str) {
        SharedPreferences e10 = e(context, str);
        if (e10 != null) {
            e10.edit().clear().apply();
        }
    }

    private static void a(final Context context, boolean z10, final cn.jiguang.g.a<?>... aVarArr) {
        try {
            cn.jiguang.bg.b bVar = new cn.jiguang.bg.b() { // from class: cn.jiguang.g.b.1
                @Override // cn.jiguang.bg.b
                public void a() {
                    cn.jiguang.g.a[] aVarArr2;
                    SharedPreferences e10;
                    try {
                        HashMap hashMap = new HashMap();
                        for (cn.jiguang.g.a aVar : aVarArr) {
                            SharedPreferences.Editor editor = (SharedPreferences.Editor) hashMap.get(aVar.f2587c);
                            if (editor == null && (e10 = b.e(context, aVar.f2587c)) != null) {
                                editor = e10.edit();
                                hashMap.put(aVar.f2587c, editor);
                            }
                            b.b(editor, aVar.f2588d, aVar.f2589e, aVar.f2591g);
                        }
                        for (String str : hashMap.keySet()) {
                            SharedPreferences.Editor editor2 = (SharedPreferences.Editor) hashMap.get(str);
                            if (editor2 != null && !editor2.commit()) {
                                cn.jiguang.as.d.g("Sp", "sp commit failed, sp_file: " + str);
                            }
                        }
                    } catch (Throwable th2) {
                        cn.jiguang.as.d.g("Sp", "sp commit failed, " + th2.getMessage());
                    }
                }
            };
            if (z10) {
                a.a(bVar, false);
            } else {
                bVar.run();
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(Context context, cn.jiguang.g.a<?>... aVarArr) {
        if (aVarArr == null || aVarArr.length <= 0) {
            return;
        }
        if (!a()) {
            b(context, aVarArr);
            return;
        }
        cn.jiguang.as.d.c("Sp", "main thread, async sp set");
        a(context, true, aVarArr);
    }

    private static boolean a() {
        try {
            return Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId();
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("Sp", "[isMainThread] failed:" + th2.getMessage());
            return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T b(Context context, cn.jiguang.g.a<T> aVar) {
        Object a10 = a(e(context, aVar.f2587c), aVar.f2588d, aVar.f2589e);
        if (a10 == null && aVar.f2590f) {
            a10 = (T) a(d(context, aVar.f2587c), aVar.f2588d, aVar.f2589e);
        }
        if (a10 != null) {
            if (aVar.f2591g && (a10 instanceof String)) {
                String str = a10;
                if (str.length() > 0) {
                    a10 = (T) cn.jiguang.bh.d.b(str);
                }
            }
            aVar.a((cn.jiguang.g.a<T>) a10);
            return (T) a10;
        }
        return null;
    }

    public static void b(Context context, cn.jiguang.g.a<?>... aVarArr) {
        if (aVarArr == null || aVarArr.length <= 0) {
            return;
        }
        a(context, false, aVarArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void b(SharedPreferences.Editor editor, String str, T t10, boolean z10) {
        if (editor != null) {
            if (t10 == null) {
                editor.remove(str);
            } else if (t10 instanceof Boolean) {
                editor.putBoolean(str, ((Boolean) t10).booleanValue());
            } else if (t10 instanceof String) {
                if (z10) {
                    String str2 = (String) t10;
                    if (str2.length() > 0) {
                        t10 = (T) cn.jiguang.bh.d.a(str2);
                    }
                }
                editor.putString(str, (String) t10);
            } else if (t10 instanceof Integer) {
                editor.putInt(str, ((Integer) t10).intValue());
            } else if (t10 instanceof Long) {
                editor.putLong(str, ((Long) t10).longValue());
            } else if (t10 instanceof Float) {
                editor.putFloat(str, ((Float) t10).floatValue());
            }
        }
    }

    private static void c(Context context, String str) {
        cn.jiguang.g.a D;
        cn.jiguang.g.a<String> D2;
        String str2;
        cn.jiguang.g.a<String> i9;
        String str3 = (String) a(context, cn.jiguang.g.a.w());
        if (TextUtils.isEmpty(str3) || str3.startsWith("1.")) {
            if (str.equals(cn.jiguang.g.a.f2585a)) {
                a(context, cn.jiguang.g.a.i(), cn.jiguang.g.a.i().h("cn.jpush.android.user.profile"));
                a(context, cn.jiguang.g.a.j(), cn.jiguang.g.a.j().h("cn.jpush.android.user.profile"));
                D = cn.jiguang.g.a.k();
                i9 = cn.jiguang.g.a.k().h("cn.jpush.android.user.profile");
            } else if (str.equals("cn.jiguang.sdk.user.set.profile")) {
                a(context, cn.jiguang.g.a.l(), cn.jiguang.g.a.l().h("cn.jpush.preferences.v2"));
                D = cn.jiguang.g.a.m();
                i9 = cn.jiguang.g.a.m().a((cn.jiguang.g.a<String>) "cn.jpush.android.user.profile");
            } else {
                if (str.equals("cn.jiguang.sdk.user.profile")) {
                    a(context, cn.jiguang.g.a.c(), cn.jiguang.g.a.c().h("cn.jpush.android.user.profile").i("device_uid"));
                    a(context, cn.jiguang.g.a.d(), cn.jiguang.g.a.d().h("cn.jpush.android.user.profile").i("device_registration_id"));
                    D = cn.jiguang.g.a.e();
                    D2 = cn.jiguang.g.a.e().h("cn.jpush.android.user.profile");
                    str2 = "device_password";
                } else if (str.equals("cn.jiguang.sdk.address")) {
                    a(context, cn.jiguang.g.a.P(), cn.jiguang.g.a.P().h("cn.jpush.android.user.profile").i("conn"));
                    D = cn.jiguang.g.a.Q();
                    D2 = cn.jiguang.g.a.Q().h("cn.jpush.android.user.profile");
                    str2 = "srv";
                } else if (!str.equals(cn.jiguang.g.a.f2586b)) {
                    return;
                } else {
                    a(context, cn.jiguang.g.a.C(), cn.jiguang.g.a.C().i("device_registered_appkey"));
                    D = cn.jiguang.g.a.D();
                    D2 = cn.jiguang.g.a.D();
                    str2 = "imei";
                }
                i9 = D2.i(str2);
            }
            a(context, D, i9);
        }
    }

    private static SharedPreferences d(Context context, String str) {
        if (context != null) {
            context.getSharedPreferences(str, 4);
            return context.getSharedPreferences(str, 0);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SharedPreferences e(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, SharedPreferences> map = f2592a;
        SharedPreferences sharedPreferences = map.get(str);
        if (sharedPreferences != null || context == null) {
            return sharedPreferences;
        }
        SharedPreferences sharedPreferences2 = context.getSharedPreferences(str, 0);
        map.put(str, sharedPreferences2);
        c(context, str);
        return sharedPreferences2;
    }
}
