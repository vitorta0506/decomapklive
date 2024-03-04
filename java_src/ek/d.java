package ek;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
/* loaded from: classes7.dex */
public class d implements AlgorithmParameterSpec {

    /* renamed from: a  reason: collision with root package name */
    private fk.e f39486a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f39487b;

    /* renamed from: c  reason: collision with root package name */
    private fk.i f39488c;

    /* renamed from: d  reason: collision with root package name */
    private BigInteger f39489d;

    /* renamed from: e  reason: collision with root package name */
    private BigInteger f39490e;

    public d(fk.e eVar, fk.i iVar, BigInteger bigInteger) {
        this.f39486a = eVar;
        this.f39488c = iVar.y();
        this.f39489d = bigInteger;
        this.f39490e = BigInteger.valueOf(1L);
        this.f39487b = null;
    }

    public d(fk.e eVar, fk.i iVar, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.f39486a = eVar;
        this.f39488c = iVar.y();
        this.f39489d = bigInteger;
        this.f39490e = bigInteger2;
        this.f39487b = bArr;
    }

    public fk.e a() {
        return this.f39486a;
    }

    public fk.i b() {
        return this.f39488c;
    }

    public BigInteger c() {
        return this.f39490e;
    }

    public BigInteger d() {
        return this.f39489d;
    }

    public byte[] e() {
        return this.f39487b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            return a().j(dVar.a()) && b().e(dVar.b());
        }
        return false;
    }

    public int hashCode() {
        return a().hashCode() ^ b().hashCode();
    }
}
