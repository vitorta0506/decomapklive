package ug;

import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes5.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    private static final b0 f58427a = new a();

    /* loaded from: classes5.dex */
    static class a implements b0 {
        a() {
        }

        @Override // ug.b0
        public void a(Runnable runnable, f0 f0Var) {
            throw new RejectedExecutionException();
        }
    }

    public static b0 a() {
        return f58427a;
    }
}
