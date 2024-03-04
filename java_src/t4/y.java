package t4;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class y implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f58071a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f58072b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private e f58073c;

    public y(@NonNull Executor executor, @NonNull e eVar) {
        this.f58071a = executor;
        this.f58073c = eVar;
    }

    @Override // t4.b0
    public final void E() {
        synchronized (this.f58072b) {
            this.f58073c = null;
        }
    }

    @Override // t4.b0
    public final void c(@NonNull g gVar) {
        if (gVar.o()) {
            synchronized (this.f58072b) {
                if (this.f58073c == null) {
                    return;
                }
                this.f58071a.execute(new x(this, gVar));
            }
        }
    }
}
