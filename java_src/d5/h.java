package d5;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class h implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f37919a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f37920b = new Object();
    @Nullable
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private final a f37921c;

    public h(Executor executor, a aVar) {
        this.f37919a = executor;
        this.f37921c = aVar;
    }

    @Override // d5.m
    public final void a(d dVar) {
        synchronized (this.f37920b) {
            if (this.f37921c == null) {
                return;
            }
            this.f37919a.execute(new g(this, dVar));
        }
    }
}
