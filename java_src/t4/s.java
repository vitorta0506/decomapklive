package t4;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class s implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f58056a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f58057b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private b f58058c;

    public s(@NonNull Executor executor, @NonNull b bVar) {
        this.f58056a = executor;
        this.f58058c = bVar;
    }

    @Override // t4.b0
    public final void E() {
        synchronized (this.f58057b) {
            this.f58058c = null;
        }
    }

    @Override // t4.b0
    public final void c(@NonNull g gVar) {
        if (gVar.m()) {
            synchronized (this.f58057b) {
                if (this.f58058c == null) {
                    return;
                }
                this.f58056a.execute(new r(this));
            }
        }
    }
}
