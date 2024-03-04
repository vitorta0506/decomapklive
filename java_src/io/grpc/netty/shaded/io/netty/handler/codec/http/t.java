package io.grpc.netty.shaded.io.netty.handler.codec.http;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public abstract class t implements Iterable<Map.Entry<String, String>> {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static final t f44060a = k.b0();

    private static boolean y(CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        if (z10) {
            int u10 = io.grpc.netty.shaded.io.netty.util.c.u(charSequence, ',', 0);
            if (u10 == -1) {
                if (io.grpc.netty.shaded.io.netty.util.c.l(io.grpc.netty.shaded.io.netty.util.c.U(charSequence), charSequence2)) {
                    return true;
                }
            } else {
                int i9 = 0;
                while (!io.grpc.netty.shaded.io.netty.util.c.l(io.grpc.netty.shaded.io.netty.util.c.U(charSequence.subSequence(i9, u10)), charSequence2)) {
                    i9 = u10 + 1;
                    u10 = io.grpc.netty.shaded.io.netty.util.c.u(charSequence, ',', i9);
                    if (u10 == -1) {
                        if (i9 < charSequence.length() && io.grpc.netty.shaded.io.netty.util.c.l(io.grpc.netty.shaded.io.netty.util.c.U(charSequence.subSequence(i9, charSequence.length())), charSequence2)) {
                            return true;
                        }
                    }
                }
                return true;
            }
        } else {
            int u11 = io.grpc.netty.shaded.io.netty.util.c.u(charSequence, ',', 0);
            if (u11 == -1) {
                if (io.grpc.netty.shaded.io.netty.util.c.j(io.grpc.netty.shaded.io.netty.util.c.U(charSequence), charSequence2)) {
                    return true;
                }
            } else {
                int i10 = 0;
                while (!io.grpc.netty.shaded.io.netty.util.c.j(io.grpc.netty.shaded.io.netty.util.c.U(charSequence.subSequence(i10, u11)), charSequence2)) {
                    i10 = u11 + 1;
                    u11 = io.grpc.netty.shaded.io.netty.util.c.u(charSequence, ',', i10);
                    if (u11 == -1) {
                        if (i10 < charSequence.length() && io.grpc.netty.shaded.io.netty.util.c.j(io.grpc.netty.shaded.io.netty.util.c.U(charSequence.subSequence(i10, charSequence.length())), charSequence2)) {
                            return true;
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    public t B() {
        return new e().M(this);
    }

    public String F(CharSequence charSequence) {
        return G(charSequence.toString());
    }

    public abstract String G(String str);

    public List<String> H(CharSequence charSequence) {
        return I(charSequence.toString());
    }

    public abstract List<String> I(String str);

    public abstract Iterator<Map.Entry<CharSequence, CharSequence>> J();

    public t K(CharSequence charSequence) {
        return L(charSequence.toString());
    }

    public abstract t L(String str);

    public t M(t tVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(tVar, "headers");
        g();
        if (tVar.isEmpty()) {
            return this;
        }
        Iterator<Map.Entry<String, String>> it = tVar.iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            f(next.getKey(), next.getValue());
        }
        return this;
    }

    public t N(CharSequence charSequence, Iterable<?> iterable) {
        return P(charSequence.toString(), iterable);
    }

    public t O(CharSequence charSequence, Object obj) {
        return Q(charSequence.toString(), obj);
    }

    public abstract t P(String str, Iterable<?> iterable);

    public abstract t Q(String str, Object obj);

    public Iterator<? extends CharSequence> R(CharSequence charSequence) {
        return S(charSequence);
    }

    public Iterator<String> S(CharSequence charSequence) {
        return H(charSequence).iterator();
    }

    public t c(t tVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(tVar, "headers");
        Iterator<Map.Entry<String, String>> it = tVar.iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            f(next.getKey(), next.getValue());
        }
        return this;
    }

    public t d(CharSequence charSequence, Object obj) {
        return f(charSequence.toString(), obj);
    }

    public abstract t f(String str, Object obj);

    public abstract t g();

    public abstract boolean isEmpty();

    @Override // java.lang.Iterable
    @Deprecated
    public abstract Iterator<Map.Entry<String, String>> iterator();

    public boolean m(CharSequence charSequence) {
        return u(charSequence.toString());
    }

    public boolean n(CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        return x(charSequence.toString(), charSequence2.toString(), z10);
    }

    public abstract int size();

    public String toString() {
        return pg.j.d(getClass(), J(), size());
    }

    public abstract boolean u(String str);

    public boolean x(String str, String str2, boolean z10) {
        Iterator<String> S = S(str);
        if (z10) {
            while (S.hasNext()) {
                if (S.next().equalsIgnoreCase(str2)) {
                    return true;
                }
            }
            return false;
        }
        while (S.hasNext()) {
            if (S.next().equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public boolean z(CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        Iterator<? extends CharSequence> R = R(charSequence);
        while (R.hasNext()) {
            if (y(R.next(), charSequence2, z10)) {
                return true;
            }
        }
        return false;
    }
}
