package k0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.data.j;
import j0.g;
import j0.m;
import j0.n;
import j0.o;
import j0.r;
import java.io.InputStream;
/* loaded from: classes.dex */
public class a implements n<g, InputStream> {

    /* renamed from: b  reason: collision with root package name */
    public static final e0.d<Integer> f53317b = e0.d.f("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final m<g, g> f53318a;

    /* renamed from: k0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0546a implements o<g, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final m<g, g> f53319a = new m<>(500);

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<g, InputStream> c(r rVar) {
            return new a(this.f53319a);
        }
    }

    public a(@Nullable m<g, g> mVar) {
        this.f53318a = mVar;
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<InputStream> a(@NonNull g gVar, int i9, int i10, @NonNull e0.e eVar) {
        m<g, g> mVar = this.f53318a;
        if (mVar != null) {
            g a10 = mVar.a(gVar, 0, 0);
            if (a10 == null) {
                this.f53318a.b(gVar, 0, 0, gVar);
            } else {
                gVar = a10;
            }
        }
        return new n.a<>(gVar, new j(gVar, ((Integer) eVar.a(f53317b)).intValue()));
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull g gVar) {
        return true;
    }
}
