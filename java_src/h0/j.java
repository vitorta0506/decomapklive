package h0;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import v0.k;
import w0.a;
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private final v0.g<e0.b, String> f40268a = new v0.g<>(1000);

    /* renamed from: b  reason: collision with root package name */
    private final Pools.Pool<b> f40269b = w0.a.d(10, new a());

    /* loaded from: classes.dex */
    class a implements a.d<b> {
        a() {
        }

        @Override // w0.a.d
        /* renamed from: b */
        public b a() {
            try {
                return new b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b implements a.f {

        /* renamed from: a  reason: collision with root package name */
        final MessageDigest f40271a;

        /* renamed from: b  reason: collision with root package name */
        private final w0.c f40272b = w0.c.a();

        b(MessageDigest messageDigest) {
            this.f40271a = messageDigest;
        }

        @Override // w0.a.f
        @NonNull
        public w0.c d() {
            return this.f40272b;
        }
    }

    private String a(e0.b bVar) {
        b bVar2 = (b) v0.j.d(this.f40269b.acquire());
        try {
            bVar.updateDiskCacheKey(bVar2.f40271a);
            return k.x(bVar2.f40271a.digest());
        } finally {
            this.f40269b.release(bVar2);
        }
    }

    public String b(e0.b bVar) {
        String g10;
        synchronized (this.f40268a) {
            g10 = this.f40268a.g(bVar);
        }
        if (g10 == null) {
            g10 = a(bVar);
        }
        synchronized (this.f40268a) {
            this.f40268a.k(bVar, g10);
        }
        return g10;
    }
}
