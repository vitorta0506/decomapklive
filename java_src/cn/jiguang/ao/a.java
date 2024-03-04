package cn.jiguang.ao;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import cn.jiguang.o.e;
import cn.jiguang.s.f;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a extends e {

    /* renamed from: a  reason: collision with root package name */
    private Context f1978a;

    /* renamed from: c  reason: collision with root package name */
    private cn.jiguang.ap.a f1979c;

    /* renamed from: d  reason: collision with root package name */
    private String f1980d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cn.jiguang.ao.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0036a extends e {

        /* renamed from: a  reason: collision with root package name */
        private Context f1981a;

        public C0036a(Context context) {
            this.f1981a = context;
            this.f2707b = "JWake#RequestConfigAction";
        }

        @Override // cn.jiguang.o.e
        public void a() {
            a.d(this.f1981a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        private Context f1982a;

        public b(Context context) {
            this.f1982a = context;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                cn.jiguang.al.a.a("JWake", "unbind wake ServiceConnection");
                this.f1982a.getApplicationContext().unbindService(this);
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JWake", "onServiceConnected throwable" + th2.getMessage());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public a(Context context, String str) {
        this.f1978a = context;
        this.f1980d = str;
        this.f2707b = "JWake";
    }

    public static Object a(Context context, Object obj) {
        if (obj instanceof List) {
            return cn.jiguang.aq.c.a(cn.jiguang.aq.b.b(context), (List) obj);
        }
        return obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x015c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0167  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<cn.jiguang.ap.b> a(android.content.Context r23, java.util.List<cn.jiguang.ap.c> r24) {
        /*
            Method dump skipped, instructions count: 823
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ao.a.a(android.content.Context, java.util.List):java.util.List");
    }

    public static void a(Context context) {
        try {
            cn.jiguang.o.d.a(new C0036a(context));
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWake", "[requestConfig failed] " + th2.getMessage());
        }
    }

    private static void a(Context context, cn.jiguang.ap.a aVar) {
        boolean z10 = true;
        boolean z11 = aVar.f1989b && aVar.f1991d;
        if (!aVar.f1992e) {
            z11 = (z11 && cn.jiguang.o.b.b(context)) ? false : false;
        }
        cn.jiguang.aq.a.a(context, z11);
    }

    public static void a(Context context, String str) {
        try {
            cn.jiguang.o.d.a(new a(context, str));
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWake", "[doAction failed] " + str + " :" + th2.getMessage());
        }
    }

    private static boolean a(Context context, Bundle bundle, Intent intent) {
        String str;
        try {
            if (intent == null) {
                cn.jiguang.al.a.d("JWake", "Fail to start activity ,activityIntent is null !!");
                return false;
            }
            intent.addFlags(276824064);
            intent.putExtras(bundle);
            context.startActivity(intent);
            if (intent.getComponent() != null) {
                String className = intent.getComponent().getClassName();
                if (!"cn.jpush.android.service.DActivity".equals(className) && !"cn.jpush.android.service.BActivity".equals(className)) {
                    str = "JWake_activity";
                    cn.jiguang.o.b.e(context, str);
                    return true;
                }
                str = "JWake_dactivity";
                cn.jiguang.o.b.e(context, str);
                return true;
            }
            return true;
        } catch (Throwable th2) {
            cn.jiguang.al.a.a("JWake", "Fail to start activity caused by:" + th2);
            return false;
        }
    }

    private boolean a(Intent intent, String str, boolean z10) {
        return cn.jiguang.aq.a.a(this.f1978a, str, intent, z10);
    }

    private boolean a(String str) {
        StringBuilder sb2;
        String str2;
        List<String> list = this.f1979c.f2003p;
        if (list != null && list.contains(str)) {
            sb2 = new StringBuilder();
            sb2.append(str);
            str2 = " is in black list";
        } else if (TextUtils.isEmpty(this.f1979c.f2001n)) {
            return false;
        } else {
            if (this.f1979c.f2001n.equals("exclude")) {
                if (!this.f1979c.f2002o.contains(str)) {
                    return false;
                }
                sb2 = new StringBuilder();
                sb2.append(str);
                str2 = " is in excloude list";
            } else if (!this.f1979c.f2001n.equals("include") || this.f1979c.f2002o.contains(str)) {
                return false;
            } else {
                sb2 = new StringBuilder();
                sb2.append(str);
                str2 = " is not in include list";
            }
        }
        sb2.append(str2);
        cn.jiguang.al.a.a("JWake", sb2.toString());
        return true;
    }

    private boolean a(List<String> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    for (String str : list) {
                        if (cn.jiguang.f.a.h(this.f1978a, str)) {
                            cn.jiguang.al.a.a("JWake", "checkSafeStatus blackPkgName = " + str);
                            return false;
                        }
                    }
                    return true;
                }
                return true;
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JWake", "checkSafeStatus error:" + th2);
                return true;
            }
        }
        return true;
    }

    public static Object b(Context context) {
        boolean z10 = cn.jiguang.aq.b.b(context).f1992e || cn.jiguang.o.b.b(context);
        cn.jiguang.al.a.a("JWake", "isActionUserEnable :" + z10);
        return Boolean.valueOf(z10);
    }

    private boolean b() {
        boolean z10 = this.f1979c.f1992e || cn.jiguang.o.b.b(this.f1978a);
        cn.jiguang.al.a.a("JWake", "isActionUserEnable :" + z10);
        return z10;
    }

    private void c() {
        long j10 = this.f1979c.f1999l;
        long f10 = cn.jiguang.o.b.f(this.f1978a, "JWakeConfigHelper");
        long currentTimeMillis = System.currentTimeMillis();
        cn.jiguang.al.a.a("JWake", "[refeshWakeConfig] currentTimeMillis:" + currentTimeMillis + ",lastBusinessTime:" + f10 + ",wakeConfigInterval:" + j10);
        if (currentTimeMillis - f10 < j10) {
            cn.jiguang.al.a.a("JWake", "need not get wake config");
            return;
        }
        cn.jiguang.ap.a d10 = d(this.f1978a);
        if (d10 != null) {
            this.f1979c = d10;
        }
        c.a(this.f1978a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static cn.jiguang.ap.a d(Context context) {
        try {
            JSONObject a10 = cn.jiguang.aq.b.a(context);
            if (a10 != null) {
                cn.jiguang.aq.b.a(context, f.b(a10.toString()));
                return cn.jiguang.aq.b.a(context, a10);
            }
            return null;
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWake", "[requestConfigNow] failed:" + th2.getMessage());
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x019d A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<cn.jiguang.ap.c> d() {
        /*
            Method dump skipped, instructions count: 689
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ao.a.d():java.util.List");
    }

    @Override // cn.jiguang.o.e
    public void a() {
        try {
            cn.jiguang.al.a.a("JWake", "wake with:" + this.f1980d);
            if (!cn.jiguang.o.d.e(this.f1978a)) {
                cn.jiguang.al.a.d("JWake", "can't wake because not registered yet");
                return;
            }
            this.f1979c = cn.jiguang.aq.b.b(this.f1978a);
            c();
            cn.jiguang.al.a.a("JWake", "use config:" + this.f1979c);
            a(this.f1978a, this.f1979c);
            if (!b()) {
                cn.jiguang.al.a.a("JWake", "wake is disabled by user");
                return;
            }
            cn.jiguang.ap.a aVar = this.f1979c;
            if (aVar.f1988a && aVar.f1990c) {
                if (!a(aVar.f2010w)) {
                    cn.jiguang.al.a.a("JWake", "wake is disabled by unsafe package");
                    return;
                }
                cn.jiguang.ap.a aVar2 = this.f1979c;
                if (aVar2.f2009v == 7) {
                    cn.jiguang.al.a.a("JWake", "all wakeup type is unsupported of app, not wakeup any package");
                    return;
                } else if (aVar2.f1996i && this.f1980d.equals("start")) {
                    cn.jiguang.aq.c.a(this.f1978a, this.f1979c, a(this.f1978a, d()));
                    return;
                } else if (!this.f1979c.f1995h) {
                    cn.jiguang.al.a.a("JWake", "time disabled");
                    return;
                } else {
                    long f10 = cn.jiguang.o.b.f(this.f1978a, "JWake");
                    long j10 = this.f1979c.f1994g;
                    long currentTimeMillis = System.currentTimeMillis();
                    cn.jiguang.al.a.a("JWake", "[wakeUp]currentTimeMillis:" + currentTimeMillis + ",lastBusinessTime:" + f10 + ",wakeInterval:" + j10);
                    if (currentTimeMillis - f10 < j10) {
                        cn.jiguang.al.a.a("JWake", "need not wake up");
                        return;
                    }
                    cn.jiguang.aq.c.a(this.f1978a, this.f1979c, a(this.f1978a, d()));
                    return;
                }
            }
            cn.jiguang.al.a.a("JWake", "wake is disabled by server");
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWake", "wake failed:" + th2.getMessage());
        }
    }
}
