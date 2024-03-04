package ek;

import java.security.spec.AlgorithmParameterSpec;
/* loaded from: classes7.dex */
public class k implements AlgorithmParameterSpec, dk.a {

    /* renamed from: a  reason: collision with root package name */
    private m f39493a;

    /* renamed from: b  reason: collision with root package name */
    private String f39494b;

    /* renamed from: c  reason: collision with root package name */
    private String f39495c;

    /* renamed from: d  reason: collision with root package name */
    private String f39496d;

    public k(m mVar) {
        this.f39493a = mVar;
        this.f39495c = zi.a.f60565p.O();
        this.f39496d = null;
    }

    public k(String str, String str2) {
        this(str, str2, null);
    }

    public k(String str, String str2, String str3) {
        zi.d dVar;
        try {
            dVar = zi.c.a(new org.bouncycastle.asn1.n(str));
        } catch (IllegalArgumentException unused) {
            org.bouncycastle.asn1.n b10 = zi.c.b(str);
            if (b10 != null) {
                str = b10.O();
                dVar = zi.c.a(b10);
            } else {
                dVar = null;
            }
        }
        if (dVar == null) {
            throw new IllegalArgumentException("no key parameter set for passed in name/OID.");
        }
        this.f39493a = new m(dVar.y(), dVar.z(), dVar.x());
        this.f39494b = str;
        this.f39495c = str2;
        this.f39496d = str3;
    }

    public static k e(zi.e eVar) {
        return eVar.y() != null ? new k(eVar.B().O(), eVar.x().O(), eVar.y().O()) : new k(eVar.B().O(), eVar.x().O());
    }

    @Override // dk.a
    public m a() {
        return this.f39493a;
    }

    @Override // dk.a
    public String b() {
        return this.f39496d;
    }

    @Override // dk.a
    public String c() {
        return this.f39494b;
    }

    @Override // dk.a
    public String d() {
        return this.f39495c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (this.f39493a.equals(kVar.f39493a) && this.f39495c.equals(kVar.f39495c)) {
                String str = this.f39496d;
                String str2 = kVar.f39496d;
                return str == str2 || (str != null && str.equals(str2));
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f39493a.hashCode() ^ this.f39495c.hashCode();
        String str = this.f39496d;
        return hashCode ^ (str != null ? str.hashCode() : 0);
    }
}
