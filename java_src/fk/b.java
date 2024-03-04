package fk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public abstract class b implements h {
    protected i a(i iVar) {
        return c.a(iVar);
    }

    public i b(i iVar, BigInteger bigInteger) {
        int signum = bigInteger.signum();
        if (signum == 0 || iVar.t()) {
            return iVar.i().r();
        }
        i c10 = c(iVar, bigInteger.abs());
        if (signum <= 0) {
            c10 = c10.x();
        }
        return a(c10);
    }

    protected abstract i c(i iVar, BigInteger bigInteger);
}
