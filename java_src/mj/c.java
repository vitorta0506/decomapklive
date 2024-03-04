package mj;

import java.util.Enumeration;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.y;
/* loaded from: classes7.dex */
public class c extends m implements org.bouncycastle.asn1.d {

    /* renamed from: f  reason: collision with root package name */
    private static d f55162f = nj.b.O;

    /* renamed from: a  reason: collision with root package name */
    private boolean f55163a;

    /* renamed from: b  reason: collision with root package name */
    private int f55164b;

    /* renamed from: c  reason: collision with root package name */
    private d f55165c;

    /* renamed from: d  reason: collision with root package name */
    private b[] f55166d;

    /* renamed from: e  reason: collision with root package name */
    private a1 f55167e;

    public c(d dVar, c cVar) {
        this.f55165c = dVar;
        this.f55166d = cVar.f55166d;
        this.f55167e = cVar.f55167e;
    }

    private c(d dVar, s sVar) {
        this.f55165c = dVar;
        this.f55166d = new b[sVar.size()];
        Enumeration N = sVar.N();
        boolean z10 = true;
        int i9 = 0;
        while (N.hasMoreElements()) {
            Object nextElement = N.nextElement();
            b y10 = b.y(nextElement);
            z10 &= y10 == nextElement;
            this.f55166d[i9] = y10;
            i9++;
        }
        this.f55167e = z10 ? a1.P(sVar) : new a1(this.f55166d);
    }

    private c(s sVar) {
        this(f55162f, sVar);
    }

    public static c x(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(s.K(obj));
        }
        return null;
    }

    public static c y(d dVar, Object obj) {
        if (obj instanceof c) {
            return new c(dVar, (c) obj);
        }
        if (obj != null) {
            return new c(dVar, s.K(obj));
        }
        return null;
    }

    public static c z(y yVar, boolean z10) {
        return x(s.L(yVar, true));
    }

    public b[] B() {
        return (b[]) this.f55166d.clone();
    }

    @Override // org.bouncycastle.asn1.m
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof c) || (obj instanceof s)) {
            if (f().F(((e) obj).f())) {
                return true;
            }
            try {
                return this.f55165c.c(this, new c(s.K(((e) obj).f())));
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        return this.f55167e;
    }

    @Override // org.bouncycastle.asn1.m
    public int hashCode() {
        if (this.f55163a) {
            return this.f55164b;
        }
        this.f55163a = true;
        int a10 = this.f55165c.a(this);
        this.f55164b = a10;
        return a10;
    }

    public String toString() {
        return this.f55165c.b(this);
    }
}
