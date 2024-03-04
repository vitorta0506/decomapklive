package com.xiaomi.push.service;

import android.content.Context;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xiaomi.push.service.XMPushService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.light.utils.FileUtils;
/* loaded from: classes5.dex */
public class az {

    /* renamed from: c  reason: collision with root package name */
    private static az f37138c;

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap<String, HashMap<String, b>> f37139a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private List<a> f37140b = new ArrayList();

    /* loaded from: classes5.dex */
    public interface a {
        void a();
    }

    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f37141a;

        /* renamed from: b  reason: collision with root package name */
        public String f37142b;

        /* renamed from: c  reason: collision with root package name */
        public String f37143c;

        /* renamed from: d  reason: collision with root package name */
        public String f37144d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f37145e;

        /* renamed from: f  reason: collision with root package name */
        public String f37146f;

        /* renamed from: g  reason: collision with root package name */
        public String f37147g;

        /* renamed from: h  reason: collision with root package name */
        public String f37148h;

        /* renamed from: i  reason: collision with root package name */
        public String f37149i;

        /* renamed from: j  reason: collision with root package name */
        public String f37150j;

        /* renamed from: k  reason: collision with root package name */
        public s1 f37151k;

        /* renamed from: l  reason: collision with root package name */
        public Context f37152l;

        /* renamed from: p  reason: collision with root package name */
        private XMPushService f37156p;

        /* renamed from: r  reason: collision with root package name */
        Messenger f37158r;

        /* renamed from: m  reason: collision with root package name */
        c f37153m = c.unbind;

        /* renamed from: n  reason: collision with root package name */
        private int f37154n = 0;

        /* renamed from: o  reason: collision with root package name */
        private List<a> f37155o = new ArrayList();

        /* renamed from: q  reason: collision with root package name */
        c f37157q = null;

        /* renamed from: s  reason: collision with root package name */
        private boolean f37159s = false;

        /* renamed from: t  reason: collision with root package name */
        private XMPushService.c f37160t = new XMPushService.c(this);

        /* renamed from: u  reason: collision with root package name */
        IBinder.DeathRecipient f37161u = null;

        /* renamed from: v  reason: collision with root package name */
        final C0371b f37162v = new C0371b();

        /* loaded from: classes5.dex */
        public interface a {
            void a(c cVar, c cVar2, int i9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.xiaomi.push.service.az$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class C0371b extends XMPushService.j {

            /* renamed from: b  reason: collision with root package name */
            int f37163b;

            /* renamed from: c  reason: collision with root package name */
            int f37164c;

            /* renamed from: d  reason: collision with root package name */
            String f37165d;

            /* renamed from: e  reason: collision with root package name */
            String f37166e;

            public C0371b() {
                super(0);
            }

            @Override // com.xiaomi.push.service.XMPushService.j
            public String b() {
                return "notify job";
            }

            @Override // com.xiaomi.push.service.XMPushService.j
            public void c() {
                if (b.this.l(this.f37163b, this.f37164c, this.f37166e)) {
                    b.this.g(this.f37163b, this.f37164c, this.f37165d, this.f37166e);
                    return;
                }
                tf.c.s(" ignore notify client :" + b.this.f37148h);
            }

            public XMPushService.j d(int i9, int i10, String str, String str2) {
                this.f37163b = i9;
                this.f37164c = i10;
                this.f37166e = str2;
                this.f37165d = str;
                return this;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class c implements IBinder.DeathRecipient {

            /* renamed from: a  reason: collision with root package name */
            final b f37168a;

            /* renamed from: b  reason: collision with root package name */
            final Messenger f37169b;

            c(b bVar, Messenger messenger) {
                this.f37168a = bVar;
                this.f37169b = messenger;
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                tf.c.s("peer died, chid = " + this.f37168a.f37148h);
                b.this.f37156p.a(new c0(this, 0), 0L);
                if ("9".equals(this.f37168a.f37148h) && "com.xiaomi.xmsf".equals(b.this.f37156p.getPackageName())) {
                    b.this.f37156p.a(new d0(this, 0), 60000L);
                }
            }
        }

        public b() {
        }

        public b(XMPushService xMPushService) {
            this.f37156p = xMPushService;
            i(new b0(this));
        }

        public static String e(String str) {
            int lastIndexOf;
            return (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(FileUtils.RES_PREFIX_STORAGE)) == -1) ? "" : str.substring(lastIndexOf + 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(int i9, int i10, String str, String str2) {
            c cVar = this.f37153m;
            this.f37157q = cVar;
            if (i9 == 2) {
                this.f37151k.f(this.f37152l, this, i10);
            } else if (i9 == 3) {
                this.f37151k.g(this.f37152l, this, str2, str);
            } else if (i9 == 1) {
                boolean z10 = cVar == c.binded;
                if (!z10 && "wait".equals(str2)) {
                    this.f37154n++;
                } else if (z10) {
                    this.f37154n = 0;
                    if (this.f37158r != null) {
                        try {
                            this.f37158r.send(Message.obtain(null, 16, this.f37156p.f333a));
                        } catch (RemoteException unused) {
                        }
                    }
                }
                this.f37151k.h(this.f37156p, this, z10, i10, str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean l(int i9, int i10, String str) {
            boolean z10;
            StringBuilder sb2;
            String str2;
            c cVar = this.f37157q;
            if (cVar == null || !(z10 = this.f37159s)) {
                return true;
            }
            if (cVar == this.f37153m) {
                sb2 = new StringBuilder();
                str2 = " status recovered, don't notify client:";
            } else if (this.f37158r != null && z10) {
                tf.c.s("Peer alive notify status to client:" + this.f37148h);
                return true;
            } else {
                sb2 = new StringBuilder();
                str2 = "peer died, ignore notify ";
            }
            sb2.append(str2);
            sb2.append(this.f37148h);
            tf.c.s(sb2.toString());
            return false;
        }

        private boolean n(int i9, int i10, String str) {
            if (i9 == 1) {
                return (this.f37153m == c.binded || !this.f37156p.m1542d() || i10 == 21 || (i10 == 7 && "wait".equals(str))) ? false : true;
            } else if (i9 != 2) {
                if (i9 != 3) {
                    return false;
                }
                return !"wait".equals(str);
            } else {
                return this.f37156p.m1542d();
            }
        }

        public long a() {
            return (((long) ((Math.random() * 20.0d) - 10.0d)) + ((this.f37154n + 1) * 15)) * 1000;
        }

        public String d(int i9) {
            return i9 != 1 ? i9 != 2 ? i9 != 3 ? "unknown" : "KICK" : "CLOSE" : "OPEN";
        }

        void f() {
            try {
                Messenger messenger = this.f37158r;
                if (messenger != null && this.f37161u != null) {
                    messenger.getBinder().unlinkToDeath(this.f37161u, 0);
                }
            } catch (Exception unused) {
            }
            this.f37157q = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void h(Messenger messenger) {
            f();
            try {
                if (messenger != null) {
                    this.f37158r = messenger;
                    this.f37159s = true;
                    this.f37161u = new c(this, messenger);
                    messenger.getBinder().linkToDeath(this.f37161u, 0);
                } else {
                    tf.c.s("peer linked with old sdk chid = " + this.f37148h);
                }
            } catch (Exception e10) {
                tf.c.s("peer linkToDeath err: " + e10.getMessage());
                this.f37158r = null;
                this.f37159s = false;
            }
        }

        public void i(a aVar) {
            synchronized (this.f37155o) {
                this.f37155o.add(aVar);
            }
        }

        public void k(c cVar, int i9, int i10, String str, String str2) {
            boolean z10;
            synchronized (this.f37155o) {
                for (a aVar : this.f37155o) {
                    aVar.a(this.f37153m, cVar, i10);
                }
            }
            c cVar2 = this.f37153m;
            int i11 = 0;
            if (cVar2 != cVar) {
                tf.c.l(String.format("update the client %7$s status. %1$s->%2$s %3$s %4$s %5$s %6$s", cVar2, cVar, d(i9), e0.a(i10), str, str2, this.f37148h));
                this.f37153m = cVar;
            }
            if (this.f37151k == null) {
                tf.c.u("status changed while the client dispatcher is missing");
            } else if (cVar != c.binding) {
                if (this.f37157q != null && (z10 = this.f37159s)) {
                    i11 = (this.f37158r == null || !z10) ? 10100 : 1000;
                }
                this.f37156p.b(this.f37162v);
                if (n(i9, i10, str2)) {
                    g(i9, i10, str, str2);
                } else {
                    this.f37156p.a(this.f37162v.d(i9, i10, str, str2), i11);
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    public enum c {
        unbind,
        binding,
        binded
    }

    private az() {
    }

    public static synchronized az c() {
        az azVar;
        synchronized (az.class) {
            if (f37138c == null) {
                f37138c = new az();
            }
            azVar = f37138c;
        }
        return azVar;
    }

    private String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf("@");
        return indexOf > 0 ? str.substring(0, indexOf) : str;
    }

    public synchronized int a() {
        return this.f37139a.size();
    }

    public synchronized b b(String str, String str2) {
        HashMap<String, b> hashMap = this.f37139a.get(str);
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(d(str2));
    }

    public synchronized ArrayList<b> e() {
        ArrayList<b> arrayList;
        arrayList = new ArrayList<>();
        for (HashMap<String, b> hashMap : this.f37139a.values()) {
            arrayList.addAll(hashMap.values());
        }
        return arrayList;
    }

    public synchronized Collection<b> f(String str) {
        if (this.f37139a.containsKey(str)) {
            return ((HashMap) this.f37139a.get(str).clone()).values();
        }
        return new ArrayList();
    }

    public synchronized List<String> g(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (HashMap<String, b> hashMap : this.f37139a.values()) {
            for (b bVar : hashMap.values()) {
                if (str.equals(bVar.f37141a)) {
                    arrayList.add(bVar.f37148h);
                }
            }
        }
        return arrayList;
    }

    public synchronized void h() {
        Iterator<b> it = e().iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        this.f37139a.clear();
    }

    public synchronized void i(Context context) {
        for (HashMap<String, b> hashMap : this.f37139a.values()) {
            for (b bVar : hashMap.values()) {
                bVar.k(c.unbind, 1, 3, null, null);
            }
        }
    }

    public synchronized void j(Context context, int i9) {
        for (HashMap<String, b> hashMap : this.f37139a.values()) {
            for (b bVar : hashMap.values()) {
                bVar.k(c.unbind, 2, i9, null, null);
            }
        }
    }

    public synchronized void k(a aVar) {
        this.f37140b.add(aVar);
    }

    public synchronized void l(b bVar) {
        HashMap<String, b> hashMap = this.f37139a.get(bVar.f37148h);
        if (hashMap == null) {
            hashMap = new HashMap<>();
            this.f37139a.put(bVar.f37148h, hashMap);
        }
        hashMap.put(d(bVar.f37142b), bVar);
        tf.c.l("add active client. " + bVar.f37141a);
        for (a aVar : this.f37140b) {
            aVar.a();
        }
    }

    public synchronized void m(String str) {
        HashMap<String, b> hashMap = this.f37139a.get(str);
        if (hashMap != null) {
            for (b bVar : hashMap.values()) {
                bVar.f();
            }
            hashMap.clear();
            this.f37139a.remove(str);
        }
        for (a aVar : this.f37140b) {
            aVar.a();
        }
    }

    public synchronized void n(String str, String str2) {
        HashMap<String, b> hashMap = this.f37139a.get(str);
        if (hashMap != null) {
            b bVar = hashMap.get(d(str2));
            if (bVar != null) {
                bVar.f();
            }
            hashMap.remove(d(str2));
            if (hashMap.isEmpty()) {
                this.f37139a.remove(str);
            }
        }
        for (a aVar : this.f37140b) {
            aVar.a();
        }
    }

    public synchronized void o() {
        this.f37140b.clear();
    }
}
