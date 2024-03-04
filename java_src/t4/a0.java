package t4;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class a0<TResult, TContinuationResult> implements e<TContinuationResult>, d, b, b0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f58025a;

    /* renamed from: b  reason: collision with root package name */
    private final f f58026b;

    /* renamed from: c  reason: collision with root package name */
    private final g0 f58027c;

    public a0(@NonNull Executor executor, @NonNull f fVar, @NonNull g0 g0Var) {
        this.f58025a = executor;
        this.f58026b = fVar;
        this.f58027c = g0Var;
    }

    @Override // t4.b0
    public final void E() {
        throw new UnsupportedOperationException();
    }

    @Override // t4.d
    public final void a(@NonNull Exception exc) {
        this.f58027c.q(exc);
    }

    @Override // t4.b
    public final void b() {
        this.f58027c.s();
    }

    @Override // t4.b0
    public final void c(@NonNull g gVar) {
        this.f58025a.execute(new z(this, gVar));
    }

    @Override // t4.e
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f58027c.r(tcontinuationresult);
    }
}
