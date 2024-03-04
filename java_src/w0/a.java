package w0;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final g<Object> f59262a = new C0672a();

    /* renamed from: w0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0672a implements g<Object> {
        C0672a() {
        }

        @Override // w0.a.g
        public void a(@NonNull Object obj) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes.dex */
    public class b<T> implements d<List<T>> {
        b() {
        }

        @Override // w0.a.d
        @NonNull
        /* renamed from: b */
        public List<T> a() {
            return new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes.dex */
    public class c<T> implements g<List<T>> {
        c() {
        }

        @Override // w0.a.g
        /* renamed from: b */
        public void a(@NonNull List<T> list) {
            list.clear();
        }
    }

    /* loaded from: classes.dex */
    public interface d<T> {
        T a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e<T> implements Pools.Pool<T> {

        /* renamed from: a  reason: collision with root package name */
        private final d<T> f59263a;

        /* renamed from: b  reason: collision with root package name */
        private final g<T> f59264b;

        /* renamed from: c  reason: collision with root package name */
        private final Pools.Pool<T> f59265c;

        e(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar, @NonNull g<T> gVar) {
            this.f59265c = pool;
            this.f59263a = dVar;
            this.f59264b = gVar;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            T acquire = this.f59265c.acquire();
            if (acquire == null) {
                acquire = this.f59263a.a();
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + acquire.getClass());
                }
            }
            if (acquire instanceof f) {
                ((f) acquire).d().b(false);
            }
            return acquire;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t10) {
            if (t10 instanceof f) {
                ((f) t10).d().b(true);
            }
            this.f59264b.a(t10);
            return this.f59265c.release(t10);
        }
    }

    /* loaded from: classes.dex */
    public interface f {
        @NonNull
        w0.c d();
    }

    /* loaded from: classes.dex */
    public interface g<T> {
        void a(@NonNull T t10);
    }

    @NonNull
    private static <T extends f> Pools.Pool<T> a(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar) {
        return b(pool, dVar, c());
    }

    @NonNull
    private static <T> Pools.Pool<T> b(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar, @NonNull g<T> gVar) {
        return new e(pool, dVar, gVar);
    }

    @NonNull
    private static <T> g<T> c() {
        return (g<T>) f59262a;
    }

    @NonNull
    public static <T extends f> Pools.Pool<T> d(int i9, @NonNull d<T> dVar) {
        return a(new Pools.SynchronizedPool(i9), dVar);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> e() {
        return f(20);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> f(int i9) {
        return b(new Pools.SynchronizedPool(i9), new b(), new c());
    }
}
