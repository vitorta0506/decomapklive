package t4;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class w implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f58066a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f58067b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private d f58068c;

    public w(@NonNull Executor executor, @NonNull d dVar) {
        this.f58066a = executor;
        this.f58068c = dVar;
    }

    @Override // t4.b0
    public final void E() {
        synchronized (this.f58067b) {
            this.f58068c = null;
        }
    }

    @Override // t4.b0
    public final void c(@NonNull g gVar) {
        if (gVar.o() || gVar.m()) {
            return;
        }
        synchronized (this.f58067b) {
            if (this.f58068c == null) {
                return;
            }
            this.f58066a.execute(new v(this, gVar));
        }
    }
}
