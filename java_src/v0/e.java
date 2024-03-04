package v0;
/* loaded from: classes.dex */
public final class e {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes.dex */
    class a<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        private volatile T f58607a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f58608b;

        a(b bVar) {
            this.f58608b = bVar;
        }

        @Override // v0.e.b
        public T get() {
            if (this.f58607a == null) {
                synchronized (this) {
                    if (this.f58607a == null) {
                        this.f58607a = (T) j.d(this.f58608b.get());
                    }
                }
            }
            return this.f58607a;
        }
    }

    /* loaded from: classes.dex */
    public interface b<T> {
        T get();
    }

    public static <T> b<T> a(b<T> bVar) {
        return new a(bVar);
    }
}
