package t0;

import com.bumptech.glide.load.DataSource;
import t0.f;
/* loaded from: classes.dex */
public class e<R> implements f<R> {

    /* renamed from: a  reason: collision with root package name */
    static final e<?> f58005a = new e<>();

    /* renamed from: b  reason: collision with root package name */
    private static final g<?> f58006b = new a();

    /* loaded from: classes.dex */
    public static class a<R> implements g<R> {
        @Override // t0.g
        public f<R> a(DataSource dataSource, boolean z10) {
            return e.f58005a;
        }
    }

    public static <R> f<R> b() {
        return f58005a;
    }

    public static <R> g<R> c() {
        return (g<R>) f58006b;
    }

    @Override // t0.f
    public boolean a(Object obj, f.a aVar) {
        return false;
    }
}
