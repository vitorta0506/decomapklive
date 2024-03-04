package dj;

import kotlin.UByte;
import org.bouncycastle.asn1.n0;
/* loaded from: classes7.dex */
public class b extends n0 {
    public b(n0 n0Var) {
        super(n0Var.L(), n0Var.N());
    }

    @Override // org.bouncycastle.asn1.b
    public String toString() {
        return "NetscapeCertType: 0x" + Integer.toHexString(this.f55900a[0] & UByte.MAX_VALUE);
    }
}
