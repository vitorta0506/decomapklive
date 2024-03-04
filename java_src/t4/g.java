package t4;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public abstract class g<TResult> {
    @NonNull
    public g<TResult> a(@NonNull Executor executor, @NonNull b bVar) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    @NonNull
    public g<TResult> b(@NonNull Executor executor, @NonNull c<TResult> cVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    public g<TResult> c(@NonNull c<TResult> cVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    public abstract g<TResult> d(@NonNull Activity activity, @NonNull d dVar);

    @NonNull
    public abstract g<TResult> e(@NonNull Executor executor, @NonNull d dVar);

    @NonNull
    public abstract g<TResult> f(@NonNull Activity activity, @NonNull e<? super TResult> eVar);

    @NonNull
    public abstract g<TResult> g(@NonNull Executor executor, @NonNull e<? super TResult> eVar);

    @NonNull
    public <TContinuationResult> g<TContinuationResult> h(@NonNull Executor executor, @NonNull a<TResult, TContinuationResult> aVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    @NonNull
    public <TContinuationResult> g<TContinuationResult> i(@NonNull Executor executor, @NonNull a<TResult, g<TContinuationResult>> aVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    @Nullable
    public abstract Exception j();

    public abstract TResult k();

    public abstract <X extends Throwable> TResult l(@NonNull Class<X> cls) throws Throwable;

    public abstract boolean m();

    public abstract boolean n();

    public abstract boolean o();

    @NonNull
    public <TContinuationResult> g<TContinuationResult> p(@NonNull Executor executor, @NonNull f<TResult, TContinuationResult> fVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
