package gj;

import java.io.IOException;
import java.util.Enumeration;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.d1;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.asn1.y;
/* loaded from: classes7.dex */
public class d extends m {

    /* renamed from: a  reason: collision with root package name */
    private k f40169a;

    /* renamed from: b  reason: collision with root package name */
    private oj.a f40170b;

    /* renamed from: c  reason: collision with root package name */
    private o f40171c;

    /* renamed from: d  reason: collision with root package name */
    private u f40172d;

    /* renamed from: e  reason: collision with root package name */
    private org.bouncycastle.asn1.b f40173e;

    public d(oj.a aVar, org.bouncycastle.asn1.e eVar) throws IOException {
        this(aVar, eVar, null, null);
    }

    public d(oj.a aVar, org.bouncycastle.asn1.e eVar, u uVar) throws IOException {
        this(aVar, eVar, uVar, null);
    }

    public d(oj.a aVar, org.bouncycastle.asn1.e eVar, u uVar, byte[] bArr) throws IOException {
        this.f40169a = new k(bArr != null ? org.bouncycastle.util.b.f56260b : org.bouncycastle.util.b.f56259a);
        this.f40170b = aVar;
        this.f40171c = new w0(eVar);
        this.f40172d = uVar;
        this.f40173e = bArr == null ? null : new n0(bArr);
    }

    private d(s sVar) {
        Enumeration N = sVar.N();
        k K = k.K(N.nextElement());
        this.f40169a = K;
        int G = G(K);
        this.f40170b = oj.a.y(N.nextElement());
        this.f40171c = o.K(N.nextElement());
        int i9 = -1;
        while (N.hasMoreElements()) {
            y yVar = (y) N.nextElement();
            int N2 = yVar.N();
            if (N2 <= i9) {
                throw new IllegalArgumentException("invalid optional field in private key info");
            }
            if (N2 == 0) {
                this.f40172d = u.M(yVar, false);
            } else if (N2 != 1) {
                throw new IllegalArgumentException("unknown optional field in private key info");
            } else {
                if (G < 1) {
                    throw new IllegalArgumentException("'publicKey' requires version v2(1) or later");
                }
                this.f40173e = n0.Q(yVar, false);
            }
            i9 = N2;
        }
    }

    private static int G(k kVar) {
        int R = kVar.R();
        if (R < 0 || R > 1) {
            throw new IllegalArgumentException("invalid version for private key info");
        }
        return R;
    }

    public static d y(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(s.K(obj));
        }
        return null;
    }

    public oj.a B() {
        return this.f40170b;
    }

    public org.bouncycastle.asn1.b F() {
        return this.f40173e;
    }

    public boolean H() {
        return this.f40173e != null;
    }

    public org.bouncycastle.asn1.e I() throws IOException {
        return r.G(this.f40171c.M());
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(5);
        fVar.a(this.f40169a);
        fVar.a(this.f40170b);
        fVar.a(this.f40171c);
        u uVar = this.f40172d;
        if (uVar != null) {
            fVar.a(new d1(false, 0, uVar));
        }
        org.bouncycastle.asn1.b bVar = this.f40173e;
        if (bVar != null) {
            fVar.a(new d1(false, 1, bVar));
        }
        return new a1(fVar);
    }

    public u x() {
        return this.f40172d;
    }

    public o z() {
        return new w0(this.f40171c.M());
    }
}
