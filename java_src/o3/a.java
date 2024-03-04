package o3;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.n;
/* loaded from: classes2.dex */
public final class a {
    @NonNull
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<c> f55491a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<C0583a> f55492b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<GoogleSignInOptions> f55493c;
    @NonNull
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public static final r3.a f55494d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public static final p3.a f55495e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public static final s3.a f55496f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public static final a.g f55497g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public static final a.g f55498h;

    /* renamed from: i  reason: collision with root package name */
    private static final a.AbstractC0083a f55499i;

    /* renamed from: j  reason: collision with root package name */
    private static final a.AbstractC0083a f55500j;

    @Deprecated
    /* renamed from: o3.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0583a implements a.d {
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        public static final C0583a f55501d = new C0583a(new C0584a());

        /* renamed from: a  reason: collision with root package name */
        private final String f55502a = null;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f55503b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f55504c;

        @Deprecated
        /* renamed from: o3.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0584a {
            @NonNull

            /* renamed from: a  reason: collision with root package name */
            protected Boolean f55505a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            protected String f55506b;

            public C0584a() {
                this.f55505a = Boolean.FALSE;
            }

            @NonNull
            public final C0584a a(@NonNull String str) {
                this.f55506b = str;
                return this;
            }

            public C0584a(@NonNull C0583a c0583a) {
                this.f55505a = Boolean.FALSE;
                C0583a.b(c0583a);
                this.f55505a = Boolean.valueOf(c0583a.f55503b);
                this.f55506b = c0583a.f55504c;
            }
        }

        public C0583a(@NonNull C0584a c0584a) {
            this.f55503b = c0584a.f55505a.booleanValue();
            this.f55504c = c0584a.f55506b;
        }

        static /* bridge */ /* synthetic */ String b(C0583a c0583a) {
            String str = c0583a.f55502a;
            return null;
        }

        @NonNull
        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", null);
            bundle.putBoolean("force_save_dialog", this.f55503b);
            bundle.putString("log_session_id", this.f55504c);
            return bundle;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof C0583a) {
                C0583a c0583a = (C0583a) obj;
                String str = c0583a.f55502a;
                return n.b(null, null) && this.f55503b == c0583a.f55503b && n.b(this.f55504c, c0583a.f55504c);
            }
            return false;
        }

        public int hashCode() {
            return n.c(null, Boolean.valueOf(this.f55503b), this.f55504c);
        }
    }

    static {
        a.g gVar = new a.g();
        f55497g = gVar;
        a.g gVar2 = new a.g();
        f55498h = gVar2;
        d dVar = new d();
        f55499i = dVar;
        e eVar = new e();
        f55500j = eVar;
        f55491a = b.f55507a;
        f55492b = new com.google.android.gms.common.api.a<>("Auth.CREDENTIALS_API", dVar, gVar);
        f55493c = new com.google.android.gms.common.api.a<>("Auth.GOOGLE_SIGN_IN_API", eVar, gVar2);
        f55494d = b.f55508b;
        f55495e = new j4.e();
        f55496f = new t3.e();
    }
}
