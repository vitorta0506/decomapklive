package vj;

import com.tencent.ugc.datereport.UGCDataReportDef;
import java.math.BigInteger;
import java.util.Objects;
/* loaded from: classes7.dex */
public class l implements fk.d {

    /* renamed from: g  reason: collision with root package name */
    private final fk.e f59222g;

    /* renamed from: h  reason: collision with root package name */
    private final byte[] f59223h;

    /* renamed from: i  reason: collision with root package name */
    private final fk.i f59224i;

    /* renamed from: j  reason: collision with root package name */
    private final BigInteger f59225j;

    /* renamed from: k  reason: collision with root package name */
    private final BigInteger f59226k;

    /* renamed from: l  reason: collision with root package name */
    private BigInteger f59227l;

    public l(fk.e eVar, fk.i iVar, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eVar, iVar, bigInteger, bigInteger2, null);
    }

    public l(fk.e eVar, fk.i iVar, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.f59227l = null;
        Objects.requireNonNull(eVar, "curve");
        Objects.requireNonNull(bigInteger, "n");
        this.f59222g = eVar;
        this.f59224i = f(eVar, iVar);
        this.f59225j = bigInteger;
        this.f59226k = bigInteger2;
        this.f59223h = org.bouncycastle.util.a.e(bArr);
    }

    public l(pj.i iVar) {
        this(iVar.x(), iVar.y(), iVar.F(), iVar.z(), iVar.G());
    }

    static fk.i f(fk.e eVar, fk.i iVar) {
        Objects.requireNonNull(iVar, "Point cannot be null");
        fk.i y10 = fk.c.b(eVar, iVar).y();
        if (y10.t()) {
            throw new IllegalArgumentException("Point at infinity");
        }
        if (y10.v()) {
            return y10;
        }
        throw new IllegalArgumentException("Point not on curve");
    }

    public fk.e a() {
        return this.f59222g;
    }

    public fk.i b() {
        return this.f59224i;
    }

    public BigInteger c() {
        return this.f59226k;
    }

    public BigInteger d() {
        return this.f59225j;
    }

    public byte[] e() {
        return org.bouncycastle.util.a.e(this.f59223h);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            return this.f59222g.j(lVar.f59222g) && this.f59224i.e(lVar.f59224i) && this.f59225j.equals(lVar.f59225j);
        }
        return false;
    }

    public fk.i g(fk.i iVar) {
        return f(a(), iVar);
    }

    public int hashCode() {
        return ((((this.f59222g.hashCode() ^ UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_WATERMARK) * 257) ^ this.f59224i.hashCode()) * 257) ^ this.f59225j.hashCode();
    }
}
