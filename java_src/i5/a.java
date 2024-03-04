package i5;

import com.google.api.client.util.a0;
import com.google.api.client.util.e;
import com.google.api.client.util.e0;
import com.google.api.client.util.p;
import com.google.api.client.util.z;
import g5.c;
import i5.b;
import io.jsonwebtoken.JwsHeader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
/* loaded from: classes2.dex */
public class a extends i5.b {

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f40958c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f40959d;

    /* renamed from: i5.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0452a extends b.a {
        @p(JwsHeader.ALGORITHM)

        /* renamed from: e  reason: collision with root package name */
        private String f40960e;
        @p(JwsHeader.KEY_ID)

        /* renamed from: f  reason: collision with root package name */
        private String f40961f;

        public final String getAlgorithm() {
            return this.f40960e;
        }

        @Override // i5.b.a
        /* renamed from: m */
        public C0452a j() {
            return (C0452a) super.f();
        }

        @Override // i5.b.a
        /* renamed from: n */
        public C0452a k(String str, Object obj) {
            return (C0452a) super.g(str, obj);
        }

        public C0452a o(String str) {
            this.f40960e = str;
            return this;
        }

        public C0452a p(String str) {
            this.f40961f = str;
            return this;
        }

        public C0452a q(String str) {
            super.l(str);
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final c f40962a;

        /* renamed from: b  reason: collision with root package name */
        private Class<? extends C0452a> f40963b = C0452a.class;

        /* renamed from: c  reason: collision with root package name */
        private Class<? extends b.C0453b> f40964c = b.C0453b.class;

        public b(c cVar) {
            this.f40962a = (c) z.d(cVar);
        }

        public a a(String str) throws IOException {
            int indexOf = str.indexOf(46);
            z.a(indexOf != -1);
            byte[] a10 = e.a(str.substring(0, indexOf));
            int i9 = indexOf + 1;
            int indexOf2 = str.indexOf(46, i9);
            z.a(indexOf2 != -1);
            int i10 = indexOf2 + 1;
            z.a(str.indexOf(46, i10) == -1);
            byte[] a11 = e.a(str.substring(i9, indexOf2));
            byte[] a12 = e.a(str.substring(i10));
            byte[] a13 = e0.a(str.substring(0, indexOf2));
            C0452a c0452a = (C0452a) this.f40962a.f(new ByteArrayInputStream(a10), this.f40963b);
            z.a(c0452a.getAlgorithm() != null);
            return new a(c0452a, (b.C0453b) this.f40962a.f(new ByteArrayInputStream(a11), this.f40964c), a12, a13);
        }
    }

    public a(C0452a c0452a, b.C0453b c0453b, byte[] bArr, byte[] bArr2) {
        super(c0452a, c0453b);
        this.f40958c = (byte[]) z.d(bArr);
        this.f40959d = (byte[]) z.d(bArr2);
    }

    public static a d(c cVar, String str) throws IOException {
        return e(cVar).a(str);
    }

    public static b e(c cVar) {
        return new b(cVar);
    }

    public static String f(PrivateKey privateKey, c cVar, C0452a c0452a, b.C0453b c0453b) throws GeneralSecurityException, IOException {
        String str = e.b(cVar.g(c0452a)) + "." + e.b(cVar.g(c0453b));
        byte[] d10 = a0.d(a0.c(), privateKey, e0.a(str));
        return str + "." + e.b(d10);
    }

    public C0452a c() {
        return (C0452a) super.a();
    }
}
