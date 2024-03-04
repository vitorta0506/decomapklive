package j0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.GlideException;
import j0.n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
class q<Model, Data> implements n<Model, Data> {

    /* renamed from: a  reason: collision with root package name */
    private final List<n<Model, Data>> f52925a;

    /* renamed from: b  reason: collision with root package name */
    private final Pools.Pool<List<Throwable>> f52926b;

    /* loaded from: classes.dex */
    static class a<Data> implements com.bumptech.glide.load.data.d<Data>, d.a<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final List<com.bumptech.glide.load.data.d<Data>> f52927a;

        /* renamed from: b  reason: collision with root package name */
        private final Pools.Pool<List<Throwable>> f52928b;

        /* renamed from: c  reason: collision with root package name */
        private int f52929c;

        /* renamed from: d  reason: collision with root package name */
        private Priority f52930d;

        /* renamed from: e  reason: collision with root package name */
        private d.a<? super Data> f52931e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private List<Throwable> f52932f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f52933g;

        a(@NonNull List<com.bumptech.glide.load.data.d<Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            this.f52928b = pool;
            v0.j.c(list);
            this.f52927a = list;
            this.f52929c = 0;
        }

        private void g() {
            if (this.f52933g) {
                return;
            }
            if (this.f52929c < this.f52927a.size() - 1) {
                this.f52929c++;
                e(this.f52930d, this.f52931e);
                return;
            }
            v0.j.d(this.f52932f);
            this.f52931e.c(new GlideException("Fetch failed", new ArrayList(this.f52932f)));
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.f52927a.get(0).a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            List<Throwable> list = this.f52932f;
            if (list != null) {
                this.f52928b.release(list);
            }
            this.f52932f = null;
            for (com.bumptech.glide.load.data.d<Data> dVar : this.f52927a) {
                dVar.b();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void c(@NonNull Exception exc) {
            ((List) v0.j.d(this.f52932f)).add(exc);
            g();
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
            this.f52933g = true;
            for (com.bumptech.glide.load.data.d<Data> dVar : this.f52927a) {
                dVar.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public DataSource d() {
            return this.f52927a.get(0).d();
        }

        @Override // com.bumptech.glide.load.data.d
        public void e(@NonNull Priority priority, @NonNull d.a<? super Data> aVar) {
            this.f52930d = priority;
            this.f52931e = aVar;
            this.f52932f = this.f52928b.acquire();
            this.f52927a.get(this.f52929c).e(priority, this);
            if (this.f52933g) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void f(@Nullable Data data) {
            if (data != null) {
                this.f52931e.f(data);
            } else {
                g();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(@NonNull List<n<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
        this.f52925a = list;
        this.f52926b = pool;
    }

    @Override // j0.n
    public n.a<Data> a(@NonNull Model model, int i9, int i10, @NonNull e0.e eVar) {
        n.a<Data> a10;
        int size = this.f52925a.size();
        ArrayList arrayList = new ArrayList(size);
        e0.b bVar = null;
        for (int i11 = 0; i11 < size; i11++) {
            n<Model, Data> nVar = this.f52925a.get(i11);
            if (nVar.b(model) && (a10 = nVar.a(model, i9, i10, eVar)) != null) {
                bVar = a10.f52918a;
                arrayList.add(a10.f52920c);
            }
        }
        if (arrayList.isEmpty() || bVar == null) {
            return null;
        }
        return new n.a<>(bVar, new a(arrayList, this.f52926b));
    }

    @Override // j0.n
    public boolean b(@NonNull Model model) {
        for (n<Model, Data> nVar : this.f52925a) {
            if (nVar.b(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f52925a.toArray()) + '}';
    }
}
