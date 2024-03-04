package io.grpc.netty.shaded.io.netty.handler.codec.http;

import com.huawei.hms.framework.common.ContainerUtils;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.c f43953a = io.grpc.netty.shaded.io.netty.util.c.z(((Object) s.f44045l) + ContainerUtils.KEY_VALUE_DELIMITER);

    /* renamed from: b  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.c f43954b = io.grpc.netty.shaded.io.netty.util.c.g(";");

    /* renamed from: c  reason: collision with root package name */
    private static final String f43955c = String.valueOf(',');

    public static String a(InetSocketAddress inetSocketAddress) {
        String c10 = io.grpc.netty.shaded.io.netty.util.n.c(inetSocketAddress);
        if (io.grpc.netty.shaded.io.netty.util.n.o(c10)) {
            if (!inetSocketAddress.isUnresolved()) {
                c10 = io.grpc.netty.shaded.io.netty.util.n.r(inetSocketAddress.getAddress());
            }
            return '[' + c10 + ']';
        }
        return c10;
    }

    public static long b(v vVar, long j10) {
        String F = vVar.h().F(r.f44024w);
        if (F != null) {
            return Long.parseLong(F);
        }
        long c10 = c(vVar);
        return c10 >= 0 ? c10 : j10;
    }

    private static int c(v vVar) {
        t h10 = vVar.h();
        return vVar instanceof d0 ? (y.f44082c.equals(((d0) vVar).method()) && h10.m(r.f43987d0) && h10.m(r.f43989e0)) ? 8 : -1 : ((vVar instanceof f0) && ((f0) vVar).t().a() == 101 && h10.m(r.f43993g0) && h10.m(r.f43991f0)) ? 16 : -1;
    }

    public static boolean d(v vVar) {
        return f(vVar) && vVar.h().n(r.I, s.f44049p, true);
    }

    public static boolean e(v vVar) {
        return vVar.h().m(r.f44024w);
    }

    private static boolean f(v vVar) {
        return (vVar instanceof d0) && vVar.b().compareTo(j0.f43961i) >= 0;
    }

    public static boolean g(v vVar) {
        t h10 = vVar.h();
        io.grpc.netty.shaded.io.netty.util.c cVar = r.f44016s;
        return !h10.z(cVar, s.f44047n, true) && (vVar.b().c() || vVar.h().z(cVar, s.B, true));
    }

    public static boolean h(v vVar) {
        return vVar.h().z(r.f44015r0, s.f44046m, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i(v vVar) {
        String F;
        return (!f(vVar) || (F = vVar.h().F(r.I)) == null || s.f44049p.toString().equalsIgnoreCase(F)) ? false : true;
    }

    public static long j(List<? extends CharSequence> list, boolean z10, boolean z11) {
        if (list.isEmpty()) {
            return -1L;
        }
        String charSequence = list.get(0).toString();
        boolean z12 = true;
        if (list.size() <= 1 && charSequence.indexOf(44) < 0) {
            z12 = false;
        }
        if (z12 && !z10) {
            if (z11) {
                String str = null;
                for (CharSequence charSequence2 : list) {
                    for (String str2 : charSequence2.toString().split(f43955c, -1)) {
                        String trim = str2.trim();
                        if (str == null) {
                            str = trim;
                        } else if (!trim.equals(str)) {
                            throw new IllegalArgumentException("Multiple Content-Length values found: " + list);
                        }
                    }
                }
                charSequence = str;
            } else {
                throw new IllegalArgumentException("Multiple Content-Length values found: " + list);
            }
        }
        if (!charSequence.isEmpty() && Character.isDigit(charSequence.charAt(0))) {
            try {
                return io.grpc.netty.shaded.io.netty.util.internal.s.o(Long.parseLong(charSequence), "Content-Length value");
            } catch (NumberFormatException e10) {
                throw new IllegalArgumentException("Content-Length value is not a number: " + charSequence, e10);
            }
        }
        throw new IllegalArgumentException("Content-Length value is not a number: " + charSequence);
    }

    public static void k(v vVar, boolean z10) {
        if (z10) {
            vVar.h().O(r.f44015r0, s.f44046m);
            vVar.h().K(r.f44024w);
            return;
        }
        List<String> H = vVar.h().H(r.f44015r0);
        if (H.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(H);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (s.f44046m.k((CharSequence) it.next())) {
                it.remove();
            }
        }
        if (arrayList.isEmpty()) {
            vVar.h().K(r.f44015r0);
        } else {
            vVar.h().N(r.f44015r0, arrayList);
        }
    }
}
