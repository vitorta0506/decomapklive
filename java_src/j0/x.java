package j0;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.webkit.ProxyConfig;
import j0.n;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class x<Data> implements n<Uri, Data> {

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f52959b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", ProxyConfig.MATCH_HTTPS)));

    /* renamed from: a  reason: collision with root package name */
    private final n<g, Data> f52960a;

    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {
        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<Uri, InputStream> c(r rVar) {
            return new x(rVar.d(g.class, InputStream.class));
        }
    }

    public x(n<g, Data> nVar) {
        this.f52960a = nVar;
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<Data> a(@NonNull Uri uri, int i9, int i10, @NonNull e0.e eVar) {
        return this.f52960a.a(new g(uri.toString()), i9, i10, eVar);
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull Uri uri) {
        return f52959b.contains(uri.getScheme());
    }
}
