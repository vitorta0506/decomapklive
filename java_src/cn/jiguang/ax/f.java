package cn.jiguang.ax;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private LinkedHashSet<g> f2158a = new LinkedHashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private LinkedHashSet<g> f2159b = new LinkedHashSet<>();

    /* renamed from: c  reason: collision with root package name */
    private List<Boolean> f2160c = new ArrayList();

    private g a(boolean z10, boolean z11) {
        LinkedHashSet<g> linkedHashSet = z10 ? this.f2159b : this.f2158a;
        LinkedHashSet<g> linkedHashSet2 = z11 ? null : z10 ? this.f2158a : this.f2159b;
        return (g) ((linkedHashSet2 == null || linkedHashSet2.isEmpty() || !(linkedHashSet == null || linkedHashSet.isEmpty() || a(z10))) ? a(linkedHashSet) : a(linkedHashSet2));
    }

    private static <T> T a(Collection<T> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        Iterator<T> it = collection.iterator();
        if (it.hasNext()) {
            T next = it.next();
            collection.remove(next);
            return next;
        }
        return null;
    }

    private boolean a(boolean z10) {
        if (this.f2160c.size() < 2) {
            return false;
        }
        for (int size = this.f2160c.size() - 1; size >= this.f2160c.size() - 2; size--) {
            if (this.f2160c.get(size).booleanValue() != z10) {
                return false;
            }
        }
        return true;
    }

    public g a(int i9) {
        List<Boolean> list;
        Boolean bool;
        cn.jiguang.as.d.c("IpPool", "current ipv4List=" + this.f2158a + " ipv6List=" + this.f2159b);
        g a10 = i9 != 0 ? i9 != 1 ? i9 != 2 ? i9 != 3 ? null : a(true, false) : a(true, true) : a(false, true) : a(false, false);
        cn.jiguang.as.d.c("IpPool", "get ipPort=" + a10);
        if (a10 != null) {
            InetAddress inetAddress = a10.f2163c;
            if (inetAddress instanceof Inet4Address) {
                list = this.f2160c;
                bool = Boolean.FALSE;
            } else if (inetAddress instanceof Inet6Address) {
                list = this.f2160c;
                bool = Boolean.TRUE;
            }
            list.add(bool);
        }
        return a10;
    }

    public void a() {
        try {
            this.f2158a.clear();
            this.f2159b.clear();
        } catch (Throwable unused) {
        }
    }

    public boolean a(g gVar) {
        LinkedHashSet<g> linkedHashSet;
        if (gVar == null || !gVar.a()) {
            return false;
        }
        InetAddress inetAddress = gVar.f2163c;
        if (inetAddress instanceof Inet4Address) {
            linkedHashSet = this.f2158a;
        } else if (!(inetAddress instanceof Inet6Address)) {
            return false;
        } else {
            linkedHashSet = this.f2159b;
        }
        return linkedHashSet.add(gVar);
    }
}
