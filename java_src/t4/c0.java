package t4;

import androidx.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f58028a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private Queue f58029b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f58030c;

    public final void a(@NonNull b0 b0Var) {
        synchronized (this.f58028a) {
            if (this.f58029b == null) {
                this.f58029b = new ArrayDeque();
            }
            this.f58029b.add(b0Var);
        }
    }

    public final void b(@NonNull g gVar) {
        b0 b0Var;
        synchronized (this.f58028a) {
            if (this.f58029b != null && !this.f58030c) {
                this.f58030c = true;
                while (true) {
                    synchronized (this.f58028a) {
                        b0Var = (b0) this.f58029b.poll();
                        if (b0Var == null) {
                            this.f58030c = false;
                            return;
                        }
                    }
                    b0Var.c(gVar);
                }
            }
        }
    }
}
