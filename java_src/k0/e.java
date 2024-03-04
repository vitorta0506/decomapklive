package k0;

import androidx.annotation.NonNull;
import j0.g;
import j0.n;
import j0.o;
import j0.r;
import java.io.InputStream;
import java.net.URL;
/* loaded from: classes.dex */
public class e implements n<URL, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final n<g, InputStream> f53341a;

    /* loaded from: classes.dex */
    public static class a implements o<URL, InputStream> {
        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<URL, InputStream> c(r rVar) {
            return new e(rVar.d(g.class, InputStream.class));
        }
    }

    public e(n<g, InputStream> nVar) {
        this.f53341a = nVar;
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<InputStream> a(@NonNull URL url, int i9, int i10, @NonNull e0.e eVar) {
        return this.f53341a.a(new g(url), i9, i10, eVar);
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull URL url) {
        return true;
    }
}
