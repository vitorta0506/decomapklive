package j0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Queue;
/* loaded from: classes.dex */
public class m<A, B> {

    /* renamed from: a  reason: collision with root package name */
    private final v0.g<b<A>, B> f52912a;

    /* loaded from: classes.dex */
    class a extends v0.g<b<A>, B> {
        a(long j10) {
            super(j10);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // v0.g
        /* renamed from: n */
        public void j(@NonNull b<A> bVar, @Nullable B b10) {
            bVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class b<A> {

        /* renamed from: d  reason: collision with root package name */
        private static final Queue<b<?>> f52914d = v0.k.f(0);

        /* renamed from: a  reason: collision with root package name */
        private int f52915a;

        /* renamed from: b  reason: collision with root package name */
        private int f52916b;

        /* renamed from: c  reason: collision with root package name */
        private A f52917c;

        private b() {
        }

        static <A> b<A> a(A a10, int i9, int i10) {
            b<A> bVar;
            Queue<b<?>> queue = f52914d;
            synchronized (queue) {
                bVar = (b<A>) queue.poll();
            }
            if (bVar == null) {
                bVar = new b<>();
            }
            bVar.b(a10, i9, i10);
            return bVar;
        }

        private void b(A a10, int i9, int i10) {
            this.f52917c = a10;
            this.f52916b = i9;
            this.f52915a = i10;
        }

        public void c() {
            Queue<b<?>> queue = f52914d;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.f52916b == bVar.f52916b && this.f52915a == bVar.f52915a && this.f52917c.equals(bVar.f52917c);
            }
            return false;
        }

        public int hashCode() {
            return (((this.f52915a * 31) + this.f52916b) * 31) + this.f52917c.hashCode();
        }
    }

    public m(long j10) {
        this.f52912a = new a(j10);
    }

    @Nullable
    public B a(A a10, int i9, int i10) {
        b<A> a11 = b.a(a10, i9, i10);
        B g10 = this.f52912a.g(a11);
        a11.c();
        return g10;
    }

    public void b(A a10, int i9, int i10, B b10) {
        this.f52912a.k(b.a(a10, i9, i10), b10);
    }
}
