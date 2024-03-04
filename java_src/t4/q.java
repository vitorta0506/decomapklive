package t4;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class q<TResult, TContinuationResult> implements e<TContinuationResult>, d, b, b0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f58052a;

    /* renamed from: b  reason: collision with root package name */
    private final a f58053b;

    /* renamed from: c  reason: collision with root package name */
    private final g0 f58054c;

    public q(@NonNull Executor executor, @NonNull a aVar, @NonNull g0 g0Var) {
        this.f58052a = executor;
        this.f58053b = aVar;
        this.f58054c = g0Var;
    }

    @Override // t4.b0
    public final void E() {
        throw new UnsupportedOperationException();
    }

    @Override // t4.d
    public final void a(@NonNull Exception exc) {
        this.f58054c.q(exc);
    }

    @Override // t4.b
    public final void b() {
        this.f58054c.s();
    }

    @Override // t4.b0
    public final void c(@NonNull g gVar) {
        this.f58052a.execute(new p(this, gVar));
    }

    @Override // t4.e
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f58054c.r(tcontinuationresult);
    }
}
