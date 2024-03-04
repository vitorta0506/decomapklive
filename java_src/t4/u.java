package t4;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class u implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f58061a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f58062b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private c f58063c;

    public u(@NonNull Executor executor, @NonNull c cVar) {
        this.f58061a = executor;
        this.f58063c = cVar;
    }

    @Override // t4.b0
    public final void E() {
        synchronized (this.f58062b) {
            this.f58063c = null;
        }
    }

    @Override // t4.b0
    public final void c(@NonNull g gVar) {
        synchronized (this.f58062b) {
            if (this.f58063c == null) {
                return;
            }
            this.f58061a.execute(new t(this, gVar));
        }
    }
}
