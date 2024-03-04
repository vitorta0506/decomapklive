package pk;

import java.math.BigInteger;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
/* loaded from: classes7.dex */
public class f extends org.bouncycastle.asn1.m {

    /* renamed from: e  reason: collision with root package name */
    private static final BigInteger f57039e = BigInteger.valueOf(0);

    /* renamed from: a  reason: collision with root package name */
    private int f57040a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f57041b;

    /* renamed from: c  reason: collision with root package name */
    private int[] f57042c;

    /* renamed from: d  reason: collision with root package name */
    private int[] f57043d;

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        org.bouncycastle.asn1.f fVar2 = new org.bouncycastle.asn1.f();
        org.bouncycastle.asn1.f fVar3 = new org.bouncycastle.asn1.f();
        int i9 = 0;
        while (true) {
            int[] iArr = this.f57041b;
            if (i9 >= iArr.length) {
                org.bouncycastle.asn1.f fVar4 = new org.bouncycastle.asn1.f();
                fVar4.a(new org.bouncycastle.asn1.k(this.f57040a));
                fVar4.a(new a1(fVar));
                fVar4.a(new a1(fVar2));
                fVar4.a(new a1(fVar3));
                return new a1(fVar4);
            }
            fVar.a(new org.bouncycastle.asn1.k(iArr[i9]));
            fVar2.a(new org.bouncycastle.asn1.k(this.f57042c[i9]));
            fVar3.a(new org.bouncycastle.asn1.k(this.f57043d[i9]));
            i9++;
        }
    }
}
