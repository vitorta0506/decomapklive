package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public class x0 {

    /* renamed from: c  reason: collision with root package name */
    private static volatile x0 f36318c;

    /* renamed from: a  reason: collision with root package name */
    private Context f36319a;

    /* renamed from: b  reason: collision with root package name */
    private List<r0> f36320b = new ArrayList();

    private x0(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f36319a = applicationContext;
        if (applicationContext == null) {
            this.f36319a = context;
        }
    }

    public static x0 b(Context context) {
        if (f36318c == null) {
            synchronized (x0.class) {
                if (f36318c == null) {
                    f36318c = new x0(context);
                }
            }
        }
        return f36318c;
    }

    public int a(String str) {
        synchronized (this.f36320b) {
            r0 r0Var = new r0();
            r0Var.f36287b = str;
            if (this.f36320b.contains(r0Var)) {
                for (r0 r0Var2 : this.f36320b) {
                    if (r0Var2.equals(r0Var)) {
                        return r0Var2.f36286a;
                    }
                }
            }
            return 0;
        }
    }

    public synchronized String c(am amVar) {
        return this.f36319a.getSharedPreferences("mipush_extra", 0).getString(amVar.name(), "");
    }

    public synchronized void d(am amVar, String str) {
        SharedPreferences sharedPreferences = this.f36319a.getSharedPreferences("mipush_extra", 0);
        sharedPreferences.edit().putString(amVar.name(), str).commit();
    }

    public void e(String str) {
        synchronized (this.f36320b) {
            r0 r0Var = new r0();
            r0Var.f36286a = 0;
            r0Var.f36287b = str;
            if (this.f36320b.contains(r0Var)) {
                this.f36320b.remove(r0Var);
            }
            this.f36320b.add(r0Var);
        }
    }

    public boolean f(String str) {
        synchronized (this.f36320b) {
            r0 r0Var = new r0();
            r0Var.f36287b = str;
            return this.f36320b.contains(r0Var);
        }
    }

    public void g(String str) {
        synchronized (this.f36320b) {
            r0 r0Var = new r0();
            r0Var.f36287b = str;
            if (this.f36320b.contains(r0Var)) {
                Iterator<r0> it = this.f36320b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    r0 next = it.next();
                    if (r0Var.equals(next)) {
                        r0Var = next;
                        break;
                    }
                }
            }
            r0Var.f36286a++;
            this.f36320b.remove(r0Var);
            this.f36320b.add(r0Var);
        }
    }

    public void h(String str) {
        synchronized (this.f36320b) {
            r0 r0Var = new r0();
            r0Var.f36287b = str;
            if (this.f36320b.contains(r0Var)) {
                this.f36320b.remove(r0Var);
            }
        }
    }
}
