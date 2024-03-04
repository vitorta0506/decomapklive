package j0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import j0.n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class r {

    /* renamed from: e  reason: collision with root package name */
    private static final c f52934e = new c();

    /* renamed from: f  reason: collision with root package name */
    private static final n<Object, Object> f52935f = new a();

    /* renamed from: a  reason: collision with root package name */
    private final List<b<?, ?>> f52936a;

    /* renamed from: b  reason: collision with root package name */
    private final c f52937b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<b<?, ?>> f52938c;

    /* renamed from: d  reason: collision with root package name */
    private final Pools.Pool<List<Throwable>> f52939d;

    /* loaded from: classes.dex */
    private static class a implements n<Object, Object> {
        a() {
        }

        @Override // j0.n
        @Nullable
        public n.a<Object> a(@NonNull Object obj, int i9, int i10, @NonNull e0.e eVar) {
            return null;
        }

        @Override // j0.n
        public boolean b(@NonNull Object obj) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b<Model, Data> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<Model> f52940a;

        /* renamed from: b  reason: collision with root package name */
        final Class<Data> f52941b;

        /* renamed from: c  reason: collision with root package name */
        final o<? extends Model, ? extends Data> f52942c;

        public b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
            this.f52940a = cls;
            this.f52941b = cls2;
            this.f52942c = oVar;
        }

        public boolean a(@NonNull Class<?> cls) {
            return this.f52940a.isAssignableFrom(cls);
        }

        public boolean b(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return a(cls) && this.f52941b.isAssignableFrom(cls2);
        }
    }

    /* loaded from: classes.dex */
    static class c {
        c() {
        }

        @NonNull
        public <Model, Data> q<Model, Data> a(@NonNull List<n<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            return new q<>(list, pool);
        }
    }

    public r(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(pool, f52934e);
    }

    private <Model, Data> void a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar, boolean z10) {
        b<?, ?> bVar = new b<>(cls, cls2, oVar);
        List<b<?, ?>> list = this.f52936a;
        list.add(z10 ? list.size() : 0, bVar);
    }

    @NonNull
    private <Model, Data> n<Model, Data> c(@NonNull b<?, ?> bVar) {
        return (n) v0.j.d(bVar.f52942c.c(this));
    }

    @NonNull
    private static <Model, Data> n<Model, Data> f() {
        return (n<Model, Data>) f52935f;
    }

    @NonNull
    private <Model, Data> o<Model, Data> h(@NonNull b<?, ?> bVar) {
        return (o<Model, Data>) bVar.f52942c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized <Model, Data> void b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        a(cls, cls2, oVar, true);
    }

    @NonNull
    public synchronized <Model, Data> n<Model, Data> d(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z10 = false;
            for (b<?, ?> bVar : this.f52936a) {
                if (this.f52938c.contains(bVar)) {
                    z10 = true;
                } else if (bVar.b(cls, cls2)) {
                    this.f52938c.add(bVar);
                    arrayList.add(c(bVar));
                    this.f52938c.remove(bVar);
                }
            }
            if (arrayList.size() > 1) {
                return this.f52937b.a(arrayList, this.f52939d);
            } else if (arrayList.size() == 1) {
                return (n) arrayList.get(0);
            } else if (z10) {
                return f();
            } else {
                throw new Registry.NoModelLoaderAvailableException((Class<?>) cls, (Class<?>) cls2);
            }
        } catch (Throwable th2) {
            this.f52938c.clear();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public synchronized <Model> List<n<Model, ?>> e(@NonNull Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b<?, ?> bVar : this.f52936a) {
                if (!this.f52938c.contains(bVar) && bVar.a(cls)) {
                    this.f52938c.add(bVar);
                    arrayList.add(c(bVar));
                    this.f52938c.remove(bVar);
                }
            }
        } catch (Throwable th2) {
            this.f52938c.clear();
            throw th2;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public synchronized List<Class<?>> g(@NonNull Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b<?, ?> bVar : this.f52936a) {
            if (!arrayList.contains(bVar.f52941b) && bVar.a(cls)) {
                arrayList.add(bVar.f52941b);
            }
        }
        return arrayList;
    }

    @NonNull
    synchronized <Model, Data> List<o<? extends Model, ? extends Data>> i(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<b<?, ?>> it = this.f52936a.iterator();
        while (it.hasNext()) {
            b<?, ?> next = it.next();
            if (next.b(cls, cls2)) {
                it.remove();
                arrayList.add(h(next));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public synchronized <Model, Data> List<o<? extends Model, ? extends Data>> j(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        List<o<? extends Model, ? extends Data>> i9;
        i9 = i(cls, cls2);
        b(cls, cls2, oVar);
        return i9;
    }

    @VisibleForTesting
    r(@NonNull Pools.Pool<List<Throwable>> pool, @NonNull c cVar) {
        this.f52936a = new ArrayList();
        this.f52938c = new HashSet();
        this.f52939d = pool;
        this.f52937b = cVar;
    }
}
