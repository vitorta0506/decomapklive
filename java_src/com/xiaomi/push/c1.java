package com.xiaomi.push;

import android.os.SystemClock;
import android.util.Pair;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.az;
import java.io.Reader;
import java.io.Writer;
import java.util.Collection;
import java.util.LinkedList;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public abstract class c1 {

    /* renamed from: r  reason: collision with root package name */
    private static final AtomicInteger f36410r = new AtomicInteger(0);

    /* renamed from: s  reason: collision with root package name */
    public static boolean f36411s;

    /* renamed from: n  reason: collision with root package name */
    protected d1 f36425n;

    /* renamed from: o  reason: collision with root package name */
    protected XMPushService f36426o;

    /* renamed from: a  reason: collision with root package name */
    protected int f36412a = 0;

    /* renamed from: b  reason: collision with root package name */
    protected long f36413b = -1;

    /* renamed from: c  reason: collision with root package name */
    protected volatile long f36414c = 0;

    /* renamed from: d  reason: collision with root package name */
    protected volatile long f36415d = 0;

    /* renamed from: e  reason: collision with root package name */
    private LinkedList<Pair<Integer, Long>> f36416e = new LinkedList<>();

    /* renamed from: f  reason: collision with root package name */
    private final Collection<e1> f36417f = new CopyOnWriteArrayList();

    /* renamed from: g  reason: collision with root package name */
    protected final Map<g1, a> f36418g = new ConcurrentHashMap();

    /* renamed from: h  reason: collision with root package name */
    protected final Map<g1, a> f36419h = new ConcurrentHashMap();

    /* renamed from: i  reason: collision with root package name */
    protected m1 f36420i = null;

    /* renamed from: j  reason: collision with root package name */
    protected String f36421j = "";

    /* renamed from: k  reason: collision with root package name */
    protected String f36422k = "";

    /* renamed from: l  reason: collision with root package name */
    private int f36423l = 2;

    /* renamed from: m  reason: collision with root package name */
    protected final int f36424m = f36410r.getAndIncrement();

    /* renamed from: p  reason: collision with root package name */
    private long f36427p = 0;

    /* renamed from: q  reason: collision with root package name */
    protected long f36428q = 0;

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private g1 f36429a;

        /* renamed from: b  reason: collision with root package name */
        private n1 f36430b;

        public a(g1 g1Var, n1 n1Var) {
            this.f36429a = g1Var;
            this.f36430b = n1Var;
        }

        public void a(r0 r0Var) {
            this.f36429a.b(r0Var);
        }

        public void b(r1 r1Var) {
            n1 n1Var = this.f36430b;
            if (n1Var == null || n1Var.mo1404a(r1Var)) {
                this.f36429a.a(r1Var);
            }
        }
    }

    static {
        f36411s = false;
        try {
            f36411s = Boolean.getBoolean("smack.debugEnabled");
        } catch (Exception unused) {
        }
        h1.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c1(XMPushService xMPushService, d1 d1Var) {
        this.f36425n = d1Var;
        this.f36426o = xMPushService;
        r();
    }

    private String d(int i9) {
        return i9 == 1 ? "connected" : i9 == 0 ? "connecting" : i9 == 2 ? "disconnected" : "unknown";
    }

    private void f(int i9) {
        synchronized (this.f36416e) {
            if (i9 == 1) {
                this.f36416e.clear();
            } else {
                this.f36416e.add(new Pair<>(Integer.valueOf(i9), Long.valueOf(System.currentTimeMillis())));
                if (this.f36416e.size() > 6) {
                    this.f36416e.remove(0);
                }
            }
        }
    }

    public void A() {
        synchronized (this.f36416e) {
            this.f36416e.clear();
        }
    }

    public int a() {
        return this.f36423l;
    }

    public d1 b() {
        return this.f36425n;
    }

    public String c() {
        return this.f36425n.k();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map<g1, a> e() {
        return this.f36418g;
    }

    public void g(int i9, int i10, Exception exc) {
        int i11 = this.f36423l;
        if (i9 != i11) {
            tf.c.l(String.format("update the connection status. %1$s -> %2$s : %3$s ", d(i11), d(i9), com.xiaomi.push.service.e0.a(i10)));
        }
        if (p3.m(this.f36426o)) {
            f(i9);
        }
        if (i9 == 1) {
            this.f36426o.a(10);
            if (this.f36423l != 0) {
                tf.c.l("try set connected while not connecting.");
            }
            this.f36423l = i9;
            for (e1 e1Var : this.f36417f) {
                e1Var.b(this);
            }
        } else if (i9 == 0) {
            if (this.f36423l != 2) {
                tf.c.l("try set connecting while not disconnected.");
            }
            this.f36423l = i9;
            for (e1 e1Var2 : this.f36417f) {
                e1Var2.a(this);
            }
        } else if (i9 == 2) {
            this.f36426o.a(10);
            int i12 = this.f36423l;
            if (i12 == 0) {
                for (e1 e1Var3 : this.f36417f) {
                    e1Var3.a(this, exc == null ? new CancellationException("disconnect while connecting") : exc);
                }
            } else if (i12 == 1) {
                for (e1 e1Var4 : this.f36417f) {
                    e1Var4.a(this, i10, exc);
                }
            }
            this.f36423l = i9;
        }
    }

    public void h(e1 e1Var) {
        if (e1Var == null || this.f36417f.contains(e1Var)) {
            return;
        }
        this.f36417f.add(e1Var);
    }

    public void i(g1 g1Var, n1 n1Var) {
        Objects.requireNonNull(g1Var, "Packet listener is null.");
        this.f36418g.put(g1Var, new a(g1Var, n1Var));
    }

    public abstract void j(r1 r1Var);

    public abstract void k(az.b bVar);

    public synchronized void l(String str) {
        if (this.f36423l == 0) {
            tf.c.l("setChallenge hash = " + f.b(str).substring(0, 8));
            this.f36421j = str;
            g(1, 0, null);
        } else {
            tf.c.l("ignore setChallenge because connection was disconnected");
        }
    }

    public abstract void m(String str, String str2);

    public abstract void n(r0[] r0VarArr);

    public boolean o() {
        return false;
    }

    public synchronized boolean p(long j10) {
        return this.f36427p >= j10;
    }

    public String q() {
        return this.f36425n.i();
    }

    protected void r() {
        String str;
        if (this.f36425n.g() && this.f36420i == null) {
            Class<?> cls = null;
            try {
                str = System.getProperty("smack.debuggerClass");
            } catch (Throwable unused) {
                str = null;
            }
            if (str != null) {
                try {
                    cls = Class.forName(str);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (cls == null) {
                this.f36420i = new a1(this);
                return;
            }
            try {
                this.f36420i = (m1) cls.getConstructor(c1.class, Writer.class, Reader.class).newInstance(this);
            } catch (Exception e11) {
                throw new IllegalArgumentException("Can't initialize the configured debugger!", e11);
            }
        }
    }

    public abstract void s(int i9, Exception exc);

    public abstract void t(r0 r0Var);

    public void u(e1 e1Var) {
        this.f36417f.remove(e1Var);
    }

    public void v(g1 g1Var, n1 n1Var) {
        Objects.requireNonNull(g1Var, "Packet listener is null.");
        this.f36419h.put(g1Var, new a(g1Var, n1Var));
    }

    public abstract void w(boolean z10);

    public boolean x() {
        return this.f36423l == 0;
    }

    public synchronized void y() {
        this.f36427p = SystemClock.elapsedRealtime();
    }

    public boolean z() {
        return this.f36423l == 1;
    }
}
