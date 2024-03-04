package j0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final r f52921a;

    /* renamed from: b  reason: collision with root package name */
    private final a f52922b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Map<Class<?>, C0534a<?>> f52923a = new HashMap();

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j0.p$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0534a<Model> {

            /* renamed from: a  reason: collision with root package name */
            final List<n<Model, ?>> f52924a;

            public C0534a(List<n<Model, ?>> list) {
                this.f52924a = list;
            }
        }

        a() {
        }

        public void a() {
            this.f52923a.clear();
        }

        @Nullable
        public <Model> List<n<Model, ?>> b(Class<Model> cls) {
            C0534a<?> c0534a = this.f52923a.get(cls);
            if (c0534a == null) {
                return null;
            }
            return (List<n<Model, ?>>) c0534a.f52924a;
        }

        public <Model> void c(Class<Model> cls, List<n<Model, ?>> list) {
            if (this.f52923a.put(cls, new C0534a<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }
    }

    public p(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(new r(pool));
    }

    @NonNull
    private static <A> Class<A> b(@NonNull A a10) {
        return (Class<A>) a10.getClass();
    }

    @NonNull
    private synchronized <A> List<n<A, ?>> e(@NonNull Class<A> cls) {
        List<n<A, ?>> b10;
        b10 = this.f52922b.b(cls);
        if (b10 == null) {
            b10 = Collections.unmodifiableList(this.f52921a.e(cls));
            this.f52922b.c(cls, b10);
        }
        return b10;
    }

    private <Model, Data> void g(@NonNull List<o<? extends Model, ? extends Data>> list) {
        for (o<? extends Model, ? extends Data> oVar : list) {
            oVar.a();
        }
    }

    public synchronized <Model, Data> void a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        this.f52921a.b(cls, cls2, oVar);
        this.f52922b.a();
    }

    @NonNull
    public synchronized List<Class<?>> c(@NonNull Class<?> cls) {
        return this.f52921a.g(cls);
    }

    @NonNull
    public <A> List<n<A, ?>> d(@NonNull A a10) {
        List<n<A, ?>> e10 = e(b(a10));
        if (!e10.isEmpty()) {
            int size = e10.size();
            List<n<A, ?>> emptyList = Collections.emptyList();
            boolean z10 = true;
            for (int i9 = 0; i9 < size; i9++) {
                n<A, ?> nVar = e10.get(i9);
                if (nVar.b(a10)) {
                    if (z10) {
                        emptyList = new ArrayList<>(size - i9);
                        z10 = false;
                    }
                    emptyList.add(nVar);
                }
            }
            if (emptyList.isEmpty()) {
                throw new Registry.NoModelLoaderAvailableException(a10, e10);
            }
            return emptyList;
        }
        throw new Registry.NoModelLoaderAvailableException(a10);
    }

    public synchronized <Model, Data> void f(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        g(this.f52921a.j(cls, cls2, oVar));
        this.f52922b.a();
    }

    private p(@NonNull r rVar) {
        this.f52922b = new a();
        this.f52921a = rVar;
    }
}
