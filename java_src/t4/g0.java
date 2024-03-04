package t4;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.DuplicateTaskCompletionException;
import com.google.android.gms.tasks.RuntimeExecutionException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g0<TResult> extends g<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f58033a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final c0 f58034b = new c0();

    /* renamed from: c  reason: collision with root package name */
    private boolean f58035c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f58036d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Object f58037e;

    /* renamed from: f  reason: collision with root package name */
    private Exception f58038f;

    private final void v() {
        com.google.android.gms.common.internal.p.o(this.f58035c, "Task is not yet complete");
    }

    private final void w() {
        if (this.f58036d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    private final void x() {
        if (this.f58035c) {
            throw DuplicateTaskCompletionException.of(this);
        }
    }

    private final void y() {
        synchronized (this.f58033a) {
            if (this.f58035c) {
                this.f58034b.b(this);
            }
        }
    }

    @Override // t4.g
    @NonNull
    public final g<TResult> a(@NonNull Executor executor, @NonNull b bVar) {
        this.f58034b.a(new s(executor, bVar));
        y();
        return this;
    }

    @Override // t4.g
    @NonNull
    public final g<TResult> b(@NonNull Executor executor, @NonNull c<TResult> cVar) {
        this.f58034b.a(new u(executor, cVar));
        y();
        return this;
    }

    @Override // t4.g
    @NonNull
    public final g<TResult> c(@NonNull c<TResult> cVar) {
        this.f58034b.a(new u(i.f58042a, cVar));
        y();
        return this;
    }

    @Override // t4.g
    @NonNull
    public final g<TResult> d(@NonNull Activity activity, @NonNull d dVar) {
        w wVar = new w(i.f58042a, dVar);
        this.f58034b.a(wVar);
        f0.l(activity).m(wVar);
        y();
        return this;
    }

    @Override // t4.g
    @NonNull
    public final g<TResult> e(@NonNull Executor executor, @NonNull d dVar) {
        this.f58034b.a(new w(executor, dVar));
        y();
        return this;
    }

    @Override // t4.g
    @NonNull
    public final g<TResult> f(@NonNull Activity activity, @NonNull e<? super TResult> eVar) {
        y yVar = new y(i.f58042a, eVar);
        this.f58034b.a(yVar);
        f0.l(activity).m(yVar);
        y();
        return this;
    }

    @Override // t4.g
    @NonNull
    public final g<TResult> g(@NonNull Executor executor, @NonNull e<? super TResult> eVar) {
        this.f58034b.a(new y(executor, eVar));
        y();
        return this;
    }

    @Override // t4.g
    @NonNull
    public final <TContinuationResult> g<TContinuationResult> h(@NonNull Executor executor, @NonNull a<TResult, TContinuationResult> aVar) {
        g0 g0Var = new g0();
        this.f58034b.a(new o(executor, aVar, g0Var));
        y();
        return g0Var;
    }

    @Override // t4.g
    @NonNull
    public final <TContinuationResult> g<TContinuationResult> i(@NonNull Executor executor, @NonNull a<TResult, g<TContinuationResult>> aVar) {
        g0 g0Var = new g0();
        this.f58034b.a(new q(executor, aVar, g0Var));
        y();
        return g0Var;
    }

    @Override // t4.g
    @Nullable
    public final Exception j() {
        Exception exc;
        synchronized (this.f58033a) {
            exc = this.f58038f;
        }
        return exc;
    }

    @Override // t4.g
    public final TResult k() {
        TResult tresult;
        synchronized (this.f58033a) {
            v();
            w();
            Exception exc = this.f58038f;
            if (exc == null) {
                tresult = (TResult) this.f58037e;
            } else {
                throw new RuntimeExecutionException(exc);
            }
        }
        return tresult;
    }

    @Override // t4.g
    public final <X extends Throwable> TResult l(@NonNull Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.f58033a) {
            v();
            w();
            if (!cls.isInstance(this.f58038f)) {
                Exception exc = this.f58038f;
                if (exc == null) {
                    tresult = (TResult) this.f58037e;
                } else {
                    throw new RuntimeExecutionException(exc);
                }
            } else {
                throw cls.cast(this.f58038f);
            }
        }
        return tresult;
    }

    @Override // t4.g
    public final boolean m() {
        return this.f58036d;
    }

    @Override // t4.g
    public final boolean n() {
        boolean z10;
        synchronized (this.f58033a) {
            z10 = this.f58035c;
        }
        return z10;
    }

    @Override // t4.g
    public final boolean o() {
        boolean z10;
        synchronized (this.f58033a) {
            z10 = false;
            if (this.f58035c && !this.f58036d && this.f58038f == null) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // t4.g
    @NonNull
    public final <TContinuationResult> g<TContinuationResult> p(Executor executor, f<TResult, TContinuationResult> fVar) {
        g0 g0Var = new g0();
        this.f58034b.a(new a0(executor, fVar, g0Var));
        y();
        return g0Var;
    }

    public final void q(@NonNull Exception exc) {
        com.google.android.gms.common.internal.p.k(exc, "Exception must not be null");
        synchronized (this.f58033a) {
            x();
            this.f58035c = true;
            this.f58038f = exc;
        }
        this.f58034b.b(this);
    }

    public final void r(@Nullable Object obj) {
        synchronized (this.f58033a) {
            x();
            this.f58035c = true;
            this.f58037e = obj;
        }
        this.f58034b.b(this);
    }

    public final boolean s() {
        synchronized (this.f58033a) {
            if (this.f58035c) {
                return false;
            }
            this.f58035c = true;
            this.f58036d = true;
            this.f58034b.b(this);
            return true;
        }
    }

    public final boolean t(@NonNull Exception exc) {
        com.google.android.gms.common.internal.p.k(exc, "Exception must not be null");
        synchronized (this.f58033a) {
            if (this.f58035c) {
                return false;
            }
            this.f58035c = true;
            this.f58038f = exc;
            this.f58034b.b(this);
            return true;
        }
    }

    public final boolean u(@Nullable Object obj) {
        synchronized (this.f58033a) {
            if (this.f58035c) {
                return false;
            }
            this.f58035c = true;
            this.f58037e = obj;
            this.f58034b.b(this);
            return true;
        }
    }
}
