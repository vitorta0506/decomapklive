package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Pair;
import com.xiaomi.push.b3;
import com.xiaomi.push.dc;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public class u {

    /* renamed from: d  reason: collision with root package name */
    private static volatile u f37370d;

    /* renamed from: a  reason: collision with root package name */
    protected SharedPreferences f37371a;

    /* renamed from: b  reason: collision with root package name */
    protected SharedPreferences f37372b;

    /* renamed from: c  reason: collision with root package name */
    private HashSet<a> f37373c = new HashSet<>();

    /* loaded from: classes5.dex */
    public static abstract class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private int f37374a;

        /* renamed from: b  reason: collision with root package name */
        private String f37375b;

        public a(int i9, String str) {
            this.f37374a = i9;
            this.f37375b = str;
        }

        protected abstract void b();

        public boolean equals(Object obj) {
            return (obj instanceof a) && this.f37374a == ((a) obj).f37374a;
        }

        public int hashCode() {
            return this.f37374a;
        }

        @Override // java.lang.Runnable
        public final void run() {
            b();
        }
    }

    private u(Context context) {
        this.f37371a = context.getSharedPreferences("mipush_oc_normal", 0);
        this.f37372b = context.getSharedPreferences("mipush_oc_custom", 0);
    }

    public static u c(Context context) {
        if (f37370d == null) {
            synchronized (u.class) {
                if (f37370d == null) {
                    f37370d = new u(context);
                }
            }
        }
        return f37370d;
    }

    private String d(int i9) {
        return "oc_" + i9;
    }

    private String e(dc dcVar) {
        return "oc_version_" + dcVar.a();
    }

    private void g(SharedPreferences.Editor editor, Pair<Integer, Object> pair, String str) {
        Object obj = pair.second;
        if (obj instanceof Integer) {
            editor.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            editor.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof String) {
            editor.putString(str, (String) obj);
        } else if (obj instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) obj).booleanValue());
        }
    }

    public int a(int i9, int i10) {
        try {
            String d10 = d(i9);
            return this.f37372b.contains(d10) ? this.f37372b.getInt(d10, 0) : this.f37371a.contains(d10) ? this.f37371a.getInt(d10, 0) : i10;
        } catch (Exception e10) {
            tf.c.l(i9 + " oc int error " + e10);
            return i10;
        }
    }

    public int b(dc dcVar, int i9) {
        try {
            return this.f37371a.getInt(e(dcVar), i9);
        } catch (Exception e10) {
            tf.c.l(dcVar + " version error " + e10);
            return i9;
        }
    }

    public synchronized void f() {
        this.f37373c.clear();
    }

    public synchronized void h(a aVar) {
        if (!this.f37373c.contains(aVar)) {
            this.f37373c.add(aVar);
        }
    }

    public void i(List<Pair<Integer, Object>> list) {
        if (b3.a(list)) {
            return;
        }
        SharedPreferences.Editor edit = this.f37372b.edit();
        for (Pair<Integer, Object> pair : list) {
            Object obj = pair.first;
            if (obj != null) {
                String d10 = d(((Integer) obj).intValue());
                if (pair.second == null) {
                    edit.remove(d10);
                } else {
                    g(edit, pair, d10);
                }
            }
        }
        edit.apply();
    }

    public void j(List<Pair<dc, Integer>> list, List<Pair<Integer, Object>> list2) {
        if (b3.a(list) || b3.a(list2)) {
            tf.c.l("not update oc, because versions or configs are empty");
            return;
        }
        SharedPreferences.Editor edit = this.f37371a.edit();
        edit.clear();
        for (Pair<dc, Integer> pair : list) {
            Object obj = pair.first;
            if (obj != null && pair.second != null) {
                edit.putInt(e((dc) obj), ((Integer) pair.second).intValue());
            }
        }
        for (Pair<Integer, Object> pair2 : list2) {
            Object obj2 = pair2.first;
            if (obj2 != null && pair2.second != null) {
                g(edit, pair2, d(((Integer) obj2).intValue()));
            }
        }
        edit.apply();
    }

    public boolean k(int i9, boolean z10) {
        try {
            String d10 = d(i9);
            return this.f37372b.contains(d10) ? this.f37372b.getBoolean(d10, false) : this.f37371a.contains(d10) ? this.f37371a.getBoolean(d10, false) : z10;
        } catch (Exception e10) {
            tf.c.l(i9 + " oc boolean error " + e10);
            return z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        tf.c.t("OC_Callback : receive new oc data");
        HashSet hashSet = new HashSet();
        synchronized (this) {
            hashSet.addAll(this.f37373c);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar != null) {
                aVar.run();
            }
        }
        hashSet.clear();
    }
}
