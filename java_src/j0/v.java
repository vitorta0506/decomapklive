package j0;

import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import j0.n;
/* loaded from: classes.dex */
public class v<Model> implements n<Model, Model> {

    /* renamed from: a  reason: collision with root package name */
    private static final v<?> f52951a = new v<>();

    /* loaded from: classes.dex */
    public static class a<Model> implements o<Model, Model> {

        /* renamed from: a  reason: collision with root package name */
        private static final a<?> f52952a = new a<>();

        public static <T> a<T> b() {
            return (a<T>) f52952a;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<Model, Model> c(r rVar) {
            return v.c();
        }
    }

    /* loaded from: classes.dex */
    private static class b<Model> implements com.bumptech.glide.load.data.d<Model> {

        /* renamed from: a  reason: collision with root package name */
        private final Model f52953a;

        b(Model model) {
            this.f52953a = model;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Model> a() {
            return (Class<Model>) this.f52953a.getClass();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public DataSource d() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void e(@NonNull Priority priority, @NonNull d.a<? super Model> aVar) {
            aVar.f((Model) this.f52953a);
        }
    }

    public static <T> v<T> c() {
        return (v<T>) f52951a;
    }

    @Override // j0.n
    public n.a<Model> a(@NonNull Model model, int i9, int i10, @NonNull e0.e eVar) {
        return new n.a<>(new u0.d(model), new b(model));
    }

    @Override // j0.n
    public boolean b(@NonNull Model model) {
        return true;
    }
}
