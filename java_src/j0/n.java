package j0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public interface n<Model, Data> {

    /* loaded from: classes.dex */
    public static class a<Data> {

        /* renamed from: a  reason: collision with root package name */
        public final e0.b f52918a;

        /* renamed from: b  reason: collision with root package name */
        public final List<e0.b> f52919b;

        /* renamed from: c  reason: collision with root package name */
        public final com.bumptech.glide.load.data.d<Data> f52920c;

        public a(@NonNull e0.b bVar, @NonNull com.bumptech.glide.load.data.d<Data> dVar) {
            this(bVar, Collections.emptyList(), dVar);
        }

        public a(@NonNull e0.b bVar, @NonNull List<e0.b> list, @NonNull com.bumptech.glide.load.data.d<Data> dVar) {
            this.f52918a = (e0.b) v0.j.d(bVar);
            this.f52919b = (List) v0.j.d(list);
            this.f52920c = (com.bumptech.glide.load.data.d) v0.j.d(dVar);
        }
    }

    @Nullable
    a<Data> a(@NonNull Model model, int i9, int i10, @NonNull e0.e eVar);

    boolean b(@NonNull Model model);
}
