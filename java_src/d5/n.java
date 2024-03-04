package d5;

import androidx.annotation.GuardedBy;
import java.util.ArrayDeque;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final Object f37932a = new Object();
    @GuardedBy("lock")

    /* renamed from: b  reason: collision with root package name */
    private Queue f37933b;
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private boolean f37934c;

    public final void a(m mVar) {
        synchronized (this.f37932a) {
            if (this.f37933b == null) {
                this.f37933b = new ArrayDeque();
            }
            this.f37933b.add(mVar);
        }
    }

    public final void b(d dVar) {
        m mVar;
        synchronized (this.f37932a) {
            if (this.f37933b != null && !this.f37934c) {
                this.f37934c = true;
                while (true) {
                    synchronized (this.f37932a) {
                        mVar = (m) this.f37933b.poll();
                        if (mVar == null) {
                            this.f37934c = false;
                            return;
                        }
                    }
                    mVar.a(dVar);
                }
            }
        }
    }
}
