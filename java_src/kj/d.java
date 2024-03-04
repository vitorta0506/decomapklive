package kj;

import kotlin.jvm.internal.ByteCompanionObject;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
/* loaded from: classes7.dex */
public class d extends m {

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f53988d = {-87, -42, -21, 69, -15, 60, 112, -126, ByteCompanionObject.MIN_VALUE, -60, -106, 123, 35, 31, 94, -83, -10, 88, -21, -92, -64, 55, 41, 29, 56, -39, 107, -16, 37, -54, 78, 23, -8, -23, 114, 13, -58, 21, -76, 58, 40, -105, 95, 11, -63, -34, -93, 100, 56, -75, 100, -22, 44, 23, -97, -48, 18, 62, 109, -72, -6, -59, 121, 4};

    /* renamed from: a  reason: collision with root package name */
    private n f53989a;

    /* renamed from: b  reason: collision with root package name */
    private b f53990b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f53991c = f53988d;

    public d(b bVar) {
        this.f53990b = bVar;
    }

    public d(n nVar) {
        this.f53989a = nVar;
    }

    public static d B(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            s K = s.K(obj);
            d dVar = K.M(0) instanceof n ? new d(n.P(K.M(0))) : new d(b.F(K.M(0)));
            if (K.size() == 2) {
                byte[] M = o.K(K.M(1)).M();
                dVar.f53991c = M;
                if (M.length != f53988d.length) {
                    throw new IllegalArgumentException("object parse error");
                }
            }
            return dVar;
        }
        throw new IllegalArgumentException("object parse error");
    }

    public static byte[] y() {
        return org.bouncycastle.util.a.e(f53988d);
    }

    public n F() {
        return this.f53989a;
    }

    public boolean G() {
        return this.f53989a != null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        org.bouncycastle.asn1.e eVar = this.f53989a;
        if (eVar == null) {
            eVar = this.f53990b;
        }
        fVar.a(eVar);
        if (!org.bouncycastle.util.a.a(this.f53991c, f53988d)) {
            fVar.a(new w0(this.f53991c));
        }
        return new a1(fVar);
    }

    public byte[] x() {
        return org.bouncycastle.util.a.e(this.f53991c);
    }

    public b z() {
        return this.f53990b;
    }
}
