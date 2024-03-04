package w1;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.Closeable;
@WorkerThread
/* loaded from: classes.dex */
public interface d extends Closeable {
    Iterable<n1.o> H();

    boolean H0(n1.o oVar);

    void J(n1.o oVar, long j10);

    Iterable<k> L1(n1.o oVar);

    @Nullable
    k Q0(n1.o oVar, n1.i iVar);

    long d1(n1.o oVar);

    void u0(Iterable<k> iterable);

    int x();

    void z(Iterable<k> iterable);
}
