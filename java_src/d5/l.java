package d5;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class l implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f37929a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f37930b = new Object();
    @Nullable
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private final c f37931c;

    public l(Executor executor, c cVar) {
        this.f37929a = executor;
        this.f37931c = cVar;
    }

    @Override // d5.m
    public final void a(d dVar) {
        if (dVar.g()) {
            synchronized (this.f37930b) {
                if (this.f37931c == null) {
                    return;
                }
                this.f37929a.execute(new k(this, dVar));
            }
        }
    }
}
