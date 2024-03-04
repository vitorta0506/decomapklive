package w0;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public abstract class c {

    /* loaded from: classes.dex */
    private static class b extends c {

        /* renamed from: a  reason: collision with root package name */
        private volatile boolean f59266a;

        b() {
            super();
        }

        @Override // w0.c
        public void b(boolean z10) {
            this.f59266a = z10;
        }

        @Override // w0.c
        public void c() {
            if (this.f59266a) {
                throw new IllegalStateException("Already released");
            }
        }
    }

    private c() {
    }

    @NonNull
    public static c a() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(boolean z10);

    public abstract void c();
}
