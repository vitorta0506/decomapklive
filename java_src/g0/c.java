package g0;

import g0.l;
import java.util.Queue;
/* loaded from: classes.dex */
abstract class c<T extends l> {

    /* renamed from: a  reason: collision with root package name */
    private final Queue<T> f39851a = v0.k.f(20);

    abstract T a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public T b() {
        T poll = this.f39851a.poll();
        return poll == null ? a() : poll;
    }

    public void c(T t10) {
        if (this.f39851a.size() < 20) {
            this.f39851a.offer(t10);
        }
    }
}
