package cn.jiguang.ay;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static volatile l f2278a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f2279b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private long f2280c = 86400000;

    /* renamed from: d  reason: collision with root package name */
    private long f2281d = 1800000;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, Pair<LinkedHashSet<cn.jiguang.ax.g>, Long>> f2282e = new HashMap();

    /* loaded from: classes.dex */
    static class a implements Callable<LinkedHashSet<cn.jiguang.ax.g>> {

        /* renamed from: a  reason: collision with root package name */
        private String f2283a;

        /* renamed from: b  reason: collision with root package name */
        private l f2284b;

        a(String str, l lVar) {
            this.f2283a = str;
            this.f2284b = lVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public LinkedHashSet<cn.jiguang.ax.g> call() {
            LinkedHashSet<cn.jiguang.ax.g> a10 = l.a(this.f2283a);
            if (a10 != null && a10.size() > 0) {
                this.f2284b.a(this.f2283a, new Pair(a10, Long.valueOf(System.currentTimeMillis())));
            }
            return a10;
        }
    }

    private l() {
    }

    private Pair<LinkedHashSet<cn.jiguang.ax.g>, Boolean> a(String str, long j10, long j11) {
        Object obj;
        Pair<LinkedHashSet<cn.jiguang.ax.g>, Long> pair = this.f2282e.get(str);
        boolean z10 = pair == null || (obj = pair.first) == null || ((LinkedHashSet) obj).size() == 0;
        long longValue = ((Long) (z10 ? cn.jiguang.g.b.a((Context) null, cn.jiguang.g.a.e(str)) : pair.second)).longValue();
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis > longValue + j10) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (z10) {
            String str2 = (String) cn.jiguang.g.b.a((Context) null, cn.jiguang.g.a.d(str));
            if (!TextUtils.isEmpty(str2)) {
                for (String str3 : str2.split(",")) {
                    cn.jiguang.ax.g a10 = cn.jiguang.ax.g.a(str3);
                    if (a10 != null && a10.a()) {
                        linkedHashSet.add(a10);
                    }
                }
                this.f2282e.put(str, new Pair<>(linkedHashSet, Long.valueOf(System.currentTimeMillis())));
            }
        } else {
            linkedHashSet = (LinkedHashSet) pair.first;
        }
        if (linkedHashSet.isEmpty()) {
            return null;
        }
        return new Pair<>(linkedHashSet, Boolean.valueOf(currentTimeMillis > longValue + j11));
    }

    public static l a() {
        if (f2278a == null) {
            synchronized (f2279b) {
                if (f2278a == null) {
                    f2278a = new l();
                }
            }
        }
        return f2278a;
    }

    public static LinkedHashSet<cn.jiguang.ax.g> a(String str) {
        String[] a10;
        e eVar;
        i a11;
        h[] b10;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] b11 = b(str);
            cn.jiguang.as.d.c("SRVLoader", "srv host:" + str);
            LinkedHashSet<cn.jiguang.ax.g> linkedHashSet = new LinkedHashSet<>();
            try {
                a10 = k.b().a();
            } catch (Throwable th2) {
                cn.jiguang.as.d.h("SRVLoader", "Get default ports error with Exception:" + th2);
            }
            if (a10 != null && a10.length != 0) {
                LinkedHashSet<InetAddress> linkedHashSet2 = new LinkedHashSet();
                cn.jiguang.ba.b a12 = cn.jiguang.ba.b.a();
                for (String str2 : a10) {
                    InetAddress a13 = a12.a((Context) null, str2, 3000L, false);
                    if (a13 != null) {
                        linkedHashSet2.add(a13);
                    }
                }
                for (InetAddress inetAddress : linkedHashSet2) {
                    try {
                        eVar = new e(o.a(null, new InetSocketAddress(inetAddress, 53), b11, System.currentTimeMillis() + 1000));
                        a11 = eVar.a();
                    } catch (IOException e10) {
                        cn.jiguang.as.d.g("SRVLoader", "tcp send to " + inetAddress.getHostAddress() + " err:" + e10);
                    }
                    if (a11 == null) {
                        break;
                    }
                    for (h hVar : eVar.b(1)) {
                        if (hVar.d() == a11.g() && hVar.c() == a11.e() && hVar.b().equals(a11.d())) {
                            Iterator a14 = hVar.a();
                            while (a14.hasNext()) {
                                m mVar = (m) a14.next();
                                if (mVar.j() > 0) {
                                    String gVar = mVar.k().toString();
                                    if (!TextUtils.isEmpty(gVar)) {
                                        if (gVar.endsWith(".")) {
                                            gVar = gVar.substring(0, gVar.length() - 1);
                                        }
                                        cn.jiguang.ax.g gVar2 = new cn.jiguang.ax.g(gVar, mVar.j());
                                        if (gVar2.a()) {
                                            linkedHashSet.add(gVar2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return linkedHashSet;
            }
            return linkedHashSet;
        } catch (IOException e11) {
            cn.jiguang.as.d.g("SRVLoader", "can't srv, create query:" + e11);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void a(String str, Pair<LinkedHashSet<cn.jiguang.ax.g>, Long> pair) {
        Object obj = pair.first;
        if (obj == null || ((LinkedHashSet) obj).size() <= 0 || pair.second == null) {
            return;
        }
        this.f2282e.put(str, pair);
        StringBuilder sb2 = new StringBuilder();
        Iterator it = ((LinkedHashSet) pair.first).iterator();
        while (it.hasNext()) {
            sb2.append(((cn.jiguang.ax.g) it.next()).toString());
            sb2.append(",");
        }
        sb2.deleteCharAt(sb2.length() - 1);
        cn.jiguang.g.b.a((Context) null, cn.jiguang.g.a.d(str).a((cn.jiguang.g.a<String>) sb2.toString()), cn.jiguang.g.a.e(str).a((cn.jiguang.g.a<Long>) pair.second));
    }

    private static byte[] b(String str) {
        return e.a(i.a(g.a(g.a(str), g.f2256a), 33, 1)).c(65535);
    }

    public LinkedHashSet<cn.jiguang.ax.g> a(String str, long j10) {
        LinkedHashSet<cn.jiguang.ax.g> linkedHashSet;
        StringBuilder sb2;
        LinkedHashSet<cn.jiguang.ax.g> linkedHashSet2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Pair<LinkedHashSet<cn.jiguang.ax.g>, Boolean> a10 = a(str, this.f2280c, this.f2281d);
        if (a10 != null) {
            Object obj = a10.first;
            linkedHashSet = (obj == null || ((LinkedHashSet) obj).size() <= 0) ? null : (LinkedHashSet) a10.first;
            if (!((Boolean) a10.second).booleanValue()) {
                return linkedHashSet;
            }
        } else {
            linkedHashSet = null;
        }
        FutureTask futureTask = new FutureTask(new a(str, this));
        cn.jiguang.av.b.d(futureTask, new int[0]);
        if (j10 == 0) {
            sb2 = new StringBuilder();
        } else {
            try {
                linkedHashSet2 = (LinkedHashSet) futureTask.get(j10, TimeUnit.MILLISECONDS);
            } catch (Throwable th2) {
                cn.jiguang.as.d.g("SRVLoader", "run futureTask e:" + th2);
            }
            if (linkedHashSet2 != null && linkedHashSet2.size() > 0) {
                cn.jiguang.as.d.c("SRVLoader", "use resolved result=" + linkedHashSet2);
                return linkedHashSet2;
            }
            sb2 = new StringBuilder();
        }
        sb2.append("use cache=");
        sb2.append(linkedHashSet);
        cn.jiguang.as.d.c("SRVLoader", sb2.toString());
        return linkedHashSet;
    }
}
