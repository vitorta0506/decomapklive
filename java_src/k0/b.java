package k0;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import j0.n;
import j0.o;
import j0.r;
import java.io.InputStream;
/* loaded from: classes.dex */
public class b implements n<Uri, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f53320a;

    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f53321a;

        public a(Context context) {
            this.f53321a = context;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<Uri, InputStream> c(r rVar) {
            return new b(this.f53321a);
        }
    }

    public b(Context context) {
        this.f53320a = context.getApplicationContext();
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<InputStream> a(@NonNull Uri uri, int i9, int i10, @NonNull e0.e eVar) {
        if (f0.b.d(i9, i10)) {
            return new n.a<>(new u0.d(uri), f0.c.f(this.f53320a, uri));
        }
        return null;
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull Uri uri) {
        return f0.b.a(uri);
    }
}
