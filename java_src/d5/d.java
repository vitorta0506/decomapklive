package d5;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public abstract class d<ResultT> {
    @NonNull
    public abstract d<ResultT> a(@NonNull a<ResultT> aVar);

    @NonNull
    public abstract d<ResultT> b(@NonNull Executor executor, @NonNull b bVar);

    @NonNull
    public abstract d<ResultT> c(@NonNull Executor executor, @NonNull c<? super ResultT> cVar);

    @Nullable
    public abstract Exception d();

    @NonNull
    public abstract ResultT e();

    public abstract boolean f();

    public abstract boolean g();
}
