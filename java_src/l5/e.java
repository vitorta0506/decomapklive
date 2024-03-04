package l5;

import java.util.List;
/* loaded from: classes2.dex */
public class e implements d {

    /* renamed from: a  reason: collision with root package name */
    private final List<d> f54206a;

    public e(List<d> list) {
        this.f54206a = list;
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws Exception {
        shutdown();
    }

    @Override // l5.d
    public boolean isShutdown() {
        for (d dVar : this.f54206a) {
            if (!dVar.isShutdown()) {
                return false;
            }
        }
        return true;
    }

    @Override // l5.d
    public void shutdown() {
        for (d dVar : this.f54206a) {
            dVar.shutdown();
        }
    }
}
