package wb;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: d  reason: collision with root package name */
    private static final h f59423d = new h();

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f59425b = xb.a.a();

    /* renamed from: a  reason: collision with root package name */
    private final Executor f59424a = new a();

    /* renamed from: c  reason: collision with root package name */
    private final Executor f59426c = xb.a.b();

    /* loaded from: classes4.dex */
    static final class a implements Executor {
        a() {
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    }

    private h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService a() {
        return f59423d.f59425b;
    }

    public static Executor b() {
        return f59423d.f59426c;
    }
}
