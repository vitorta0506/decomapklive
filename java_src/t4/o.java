package t4;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class o implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f58047a;

    /* renamed from: b  reason: collision with root package name */
    private final a f58048b;

    /* renamed from: c  reason: collision with root package name */
    private final g0 f58049c;

    public o(@NonNull Executor executor, @NonNull a aVar, @NonNull g0 g0Var) {
        this.f58047a = executor;
        this.f58048b = aVar;
        this.f58049c = g0Var;
    }

    @Override // t4.b0
    public final void E() {
        throw new UnsupportedOperationException();
    }

    @Override // t4.b0
    public final void c(@NonNull g gVar) {
        this.f58047a.execute(new n(this, gVar));
    }
}
