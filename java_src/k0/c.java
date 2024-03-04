package k0;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.resource.bitmap.c0;
import j0.n;
import j0.o;
import j0.r;
import java.io.InputStream;
/* loaded from: classes.dex */
public class c implements n<Uri, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f53322a;

    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f53323a;

        public a(Context context) {
            this.f53323a = context;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<Uri, InputStream> c(r rVar) {
            return new c(this.f53323a);
        }
    }

    public c(Context context) {
        this.f53322a = context.getApplicationContext();
    }

    private boolean e(e0.e eVar) {
        Long l10 = (Long) eVar.a(c0.f4505d);
        return l10 != null && l10.longValue() == -1;
    }

    @Override // j0.n
    @Nullable
    /* renamed from: c */
    public n.a<InputStream> a(@NonNull Uri uri, int i9, int i10, @NonNull e0.e eVar) {
        if (f0.b.d(i9, i10) && e(eVar)) {
            return new n.a<>(new u0.d(uri), f0.c.g(this.f53322a, uri));
        }
        return null;
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull Uri uri) {
        return f0.b.c(uri);
    }
}
