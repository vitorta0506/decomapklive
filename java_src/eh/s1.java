package eh;

import androidx.core.app.NotificationCompat;
import com.google.common.collect.w7;
import eh.g2;
import io.grpc.Status;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class s1 {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Map<String, z1<b>>> f39298a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Map<String, Map<t1, z1<d>>>> f39299b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final com.google.common.base.w<com.google.common.base.u> f39300c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f39301a;

        /* renamed from: b  reason: collision with root package name */
        private final String f39302b;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicLong f39303c;

        /* renamed from: d  reason: collision with root package name */
        private final ConcurrentMap<String, AtomicLong> f39304d;

        /* renamed from: e  reason: collision with root package name */
        private final com.google.common.base.u f39305e;

        /* JADX INFO: Access modifiers changed from: private */
        public c e() {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, AtomicLong> entry : this.f39304d.entrySet()) {
                hashMap.put(entry.getKey(), Long.valueOf(entry.getValue().get()));
            }
            this.f39304d.clear();
            long d10 = this.f39305e.d(TimeUnit.NANOSECONDS);
            this.f39305e.f().g();
            return new c(hashMap, this.f39303c.getAndSet(0L), d10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b() {
            this.f39303c.getAndIncrement();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void c(String str) {
            AtomicLong putIfAbsent = this.f39304d.putIfAbsent(str, new AtomicLong(1L));
            if (putIfAbsent != null) {
                putIfAbsent.getAndIncrement();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void d() {
            s1.this.g(this.f39301a, this.f39302b);
        }

        private b(String str, String str2, com.google.common.base.u uVar) {
            this.f39303c = new AtomicLong();
            this.f39304d = new ConcurrentHashMap();
            this.f39301a = (String) com.google.common.base.o.t(str, "clusterName");
            this.f39302b = str2;
            this.f39305e = (com.google.common.base.u) com.google.common.base.o.t(uVar, NotificationCompat.CATEGORY_STOPWATCH);
            uVar.f().g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, Long> f39307a;

        /* renamed from: b  reason: collision with root package name */
        private final long f39308b;

        /* renamed from: c  reason: collision with root package name */
        private final long f39309c;

        private c(Map<String, Long> map, long j10, long j11) {
            this.f39307a = Collections.unmodifiableMap((Map) com.google.common.base.o.t(map, "categorizedDrops"));
            this.f39308b = j10;
            this.f39309c = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f39310a;

        /* renamed from: b  reason: collision with root package name */
        private final String f39311b;

        /* renamed from: c  reason: collision with root package name */
        private final t1 f39312c;

        /* renamed from: d  reason: collision with root package name */
        private final com.google.common.base.u f39313d;

        /* renamed from: e  reason: collision with root package name */
        private final AtomicLong f39314e;

        /* renamed from: f  reason: collision with root package name */
        private final AtomicLong f39315f;

        /* renamed from: g  reason: collision with root package name */
        private final AtomicLong f39316g;

        /* renamed from: h  reason: collision with root package name */
        private final AtomicLong f39317h;

        /* JADX INFO: Access modifiers changed from: private */
        public e e() {
            long d10 = this.f39313d.d(TimeUnit.NANOSECONDS);
            this.f39313d.f().g();
            return new e(this.f39315f.getAndSet(0L), this.f39314e.get(), this.f39316g.getAndSet(0L), this.f39317h.getAndSet(0L), d10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b(Status status) {
            this.f39314e.getAndDecrement();
            if (status.p()) {
                this.f39315f.getAndIncrement();
            } else {
                this.f39316g.getAndIncrement();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void c() {
            this.f39317h.getAndIncrement();
            this.f39314e.getAndIncrement();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void d() {
            s1.this.h(this.f39310a, this.f39311b, this.f39312c);
        }

        private d(String str, String str2, t1 t1Var, com.google.common.base.u uVar) {
            this.f39314e = new AtomicLong();
            this.f39315f = new AtomicLong();
            this.f39316g = new AtomicLong();
            this.f39317h = new AtomicLong();
            this.f39310a = (String) com.google.common.base.o.t(str, "clusterName");
            this.f39311b = str2;
            this.f39312c = (t1) com.google.common.base.o.t(t1Var, "locality");
            this.f39313d = (com.google.common.base.u) com.google.common.base.o.t(uVar, NotificationCompat.CATEGORY_STOPWATCH);
            uVar.f().g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private final long f39319a;

        /* renamed from: b  reason: collision with root package name */
        private final long f39320b;

        /* renamed from: c  reason: collision with root package name */
        private final long f39321c;

        /* renamed from: d  reason: collision with root package name */
        private final long f39322d;

        /* renamed from: e  reason: collision with root package name */
        private final long f39323e;

        private e(long j10, long j11, long j12, long j13, long j14) {
            this.f39319a = j10;
            this.f39320b = j11;
            this.f39321c = j12;
            this.f39322d = j13;
            this.f39323e = j14;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s1(com.google.common.base.w<com.google.common.base.u> wVar) {
        this.f39300c = (com.google.common.base.w) com.google.common.base.o.t(wVar, "stopwatchSupplier");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g(String str, String str2) {
        com.google.common.base.o.E(this.f39298a.containsKey(str) && this.f39298a.get(str).containsKey(str2), "stats for cluster %s, edsServiceName %s not exits", str, str2);
        this.f39298a.get(str).get(str2).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void h(String str, String str2, t1 t1Var) {
        com.google.common.base.o.F(this.f39299b.containsKey(str) && this.f39299b.get(str).containsKey(str2) && this.f39299b.get(str).get(str2).containsKey(t1Var), "stats for cluster %s, edsServiceName %s, locality %s not exits", str, str2, t1Var);
        this.f39299b.get(str).get(str2).get(t1Var).c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized List<g2> c() {
        ArrayList arrayList;
        w7.g<String> q10 = w7.q(this.f39298a.keySet(), this.f39299b.keySet());
        arrayList = new ArrayList();
        for (String str : q10) {
            arrayList.addAll(f(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized b d(String str, String str2) {
        z1<b> z1Var;
        if (!this.f39298a.containsKey(str)) {
            this.f39298a.put(str, new HashMap());
        }
        Map<String, z1<b>> map = this.f39298a.get(str);
        if (!map.containsKey(str2)) {
            map.put(str2, z1.e(new b(str, str2, this.f39300c.get())));
        }
        z1Var = map.get(str2);
        z1Var.d();
        return z1Var.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized d e(String str, String str2, t1 t1Var) {
        z1<d> z1Var;
        if (!this.f39299b.containsKey(str)) {
            this.f39299b.put(str, new HashMap());
        }
        Map<String, Map<t1, z1<d>>> map = this.f39299b.get(str);
        if (!map.containsKey(str2)) {
            map.put(str2, new HashMap());
        }
        Map<t1, z1<d>> map2 = map.get(str2);
        if (!map2.containsKey(t1Var)) {
            map2.put(t1Var, z1.e(new d(str, str2, t1Var, this.f39300c.get())));
        }
        z1Var = map2.get(t1Var);
        z1Var.d();
        return z1Var.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized List<g2> f(String str) {
        String str2 = str;
        synchronized (this) {
            if (!this.f39298a.containsKey(str2) && !this.f39299b.containsKey(str2)) {
                return Collections.emptyList();
            }
            Map<String, z1<b>> map = this.f39298a.get(str2);
            Map<String, Map<t1, z1<d>>> map2 = this.f39299b.get(str2);
            HashMap hashMap = new HashMap();
            if (map != null) {
                HashSet hashSet = new HashSet();
                for (String str3 : map.keySet()) {
                    g2.a d10 = g2.e().d(str2);
                    if (str3 != null) {
                        d10.e(str3);
                    }
                    z1<b> z1Var = map.get(str3);
                    if (z1Var.b() == 0) {
                        hashSet.add(str3);
                    }
                    c e10 = z1Var.a().e();
                    long j10 = 0;
                    for (Map.Entry entry : e10.f39307a.entrySet()) {
                        d10.a(h2.b((String) entry.getKey(), ((Long) entry.getValue()).longValue()));
                        j10 += ((Long) entry.getValue()).longValue();
                    }
                    d10.i(j10 + e10.f39308b);
                    d10.h(e10.f39309c);
                    hashMap.put(str3, d10);
                    str2 = str;
                }
                map.keySet().removeAll(hashSet);
            }
            if (map2 != null) {
                HashSet hashSet2 = new HashSet();
                for (String str4 : map2.keySet()) {
                    g2.a aVar = (g2.a) hashMap.get(str4);
                    if (aVar == null) {
                        aVar = g2.e().d(str);
                        if (str4 != null) {
                            aVar.e(str4);
                        }
                        hashMap.put(str4, aVar);
                    }
                    Map<t1, z1<d>> map3 = map2.get(str4);
                    HashSet hashSet3 = new HashSet();
                    for (t1 t1Var : map3.keySet()) {
                        z1<d> z1Var2 = map3.get(t1Var);
                        e e11 = z1Var2.a().e();
                        if (z1Var2.b() == 0 && e11.f39320b == 0) {
                            hashSet3.add(t1Var);
                        }
                        aVar.b(i2.a(t1Var, e11.f39322d, e11.f39319a, e11.f39321c, e11.f39320b));
                        aVar.h(Math.max(aVar.g(), e11.f39323e));
                    }
                    map3.keySet().removeAll(hashSet3);
                    if (map3.isEmpty()) {
                        hashSet2.add(str4);
                    }
                }
                map2.keySet().removeAll(hashSet2);
            }
            ArrayList arrayList = new ArrayList();
            for (g2.a aVar2 : hashMap.values()) {
                arrayList.add(aVar2.c());
            }
            return Collections.unmodifiableList(arrayList);
        }
    }
}
