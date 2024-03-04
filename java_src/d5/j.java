package d5;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class j implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f37924a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f37925b = new Object();
    @Nullable
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private final b f37926c;

    public j(Executor executor, b bVar) {
        this.f37924a = executor;
        this.f37926c = bVar;
    }

    @Override // d5.m
    public final void a(d dVar) {
        if (dVar.g()) {
            return;
        }
        synchronized (this.f37925b) {
            if (this.f37926c == null) {
                return;
            }
            this.f37924a.execute(new i(this, dVar));
        }
    }
}
