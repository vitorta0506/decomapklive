package bk;

import java.math.BigInteger;
import javax.crypto.spec.DHParameterSpec;
import vj.f;
/* loaded from: classes7.dex */
public class a extends DHParameterSpec {

    /* renamed from: a  reason: collision with root package name */
    private final BigInteger f1363a;

    /* renamed from: b  reason: collision with root package name */
    private final BigInteger f1364b;

    /* renamed from: c  reason: collision with root package name */
    private final int f1365c;

    /* renamed from: d  reason: collision with root package name */
    private f f1366d;

    public a(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i9) {
        this(bigInteger, bigInteger2, bigInteger3, bigInteger4, 0, i9);
    }

    public a(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i9, int i10) {
        super(bigInteger, bigInteger3, i10);
        this.f1363a = bigInteger2;
        this.f1364b = bigInteger4;
        this.f1365c = i9;
    }

    public a(vj.c cVar) {
        this(cVar.f(), cVar.g(), cVar.b(), cVar.c(), cVar.e(), cVar.d());
        this.f1366d = cVar.h();
    }

    public vj.c a() {
        return new vj.c(getP(), getG(), this.f1363a, this.f1365c, getL(), this.f1364b, this.f1366d);
    }

    public BigInteger b() {
        return this.f1363a;
    }
}
