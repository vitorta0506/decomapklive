package v0;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Executor f58605a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final Executor f58606b = new b();

    /* loaded from: classes.dex */
    class a implements Executor {
        a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            k.v(runnable);
        }
    }

    /* loaded from: classes.dex */
    class b implements Executor {
        b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    }

    public static Executor a() {
        return f58606b;
    }

    public static Executor b() {
        return f58605a;
    }
}
