package com.google.firebase.installations.local;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.b;
import java.util.Objects;
/* loaded from: classes2.dex */
final class a extends com.google.firebase.installations.local.b {

    /* renamed from: b  reason: collision with root package name */
    private final String f13917b;

    /* renamed from: c  reason: collision with root package name */
    private final PersistedInstallation.RegistrationStatus f13918c;

    /* renamed from: d  reason: collision with root package name */
    private final String f13919d;

    /* renamed from: e  reason: collision with root package name */
    private final String f13920e;

    /* renamed from: f  reason: collision with root package name */
    private final long f13921f;

    /* renamed from: g  reason: collision with root package name */
    private final long f13922g;

    /* renamed from: h  reason: collision with root package name */
    private final String f13923h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b extends b.a {

        /* renamed from: a  reason: collision with root package name */
        private String f13924a;

        /* renamed from: b  reason: collision with root package name */
        private PersistedInstallation.RegistrationStatus f13925b;

        /* renamed from: c  reason: collision with root package name */
        private String f13926c;

        /* renamed from: d  reason: collision with root package name */
        private String f13927d;

        /* renamed from: e  reason: collision with root package name */
        private Long f13928e;

        /* renamed from: f  reason: collision with root package name */
        private Long f13929f;

        /* renamed from: g  reason: collision with root package name */
        private String f13930g;

        @Override // com.google.firebase.installations.local.b.a
        public com.google.firebase.installations.local.b a() {
            String str = "";
            if (this.f13925b == null) {
                str = " registrationStatus";
            }
            if (this.f13928e == null) {
                str = str + " expiresInSecs";
            }
            if (this.f13929f == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new a(this.f13924a, this.f13925b, this.f13926c, this.f13927d, this.f13928e.longValue(), this.f13929f.longValue(), this.f13930g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a b(@Nullable String str) {
            this.f13926c = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a c(long j10) {
            this.f13928e = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a d(String str) {
            this.f13924a = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a e(@Nullable String str) {
            this.f13930g = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a f(@Nullable String str) {
            this.f13927d = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a g(PersistedInstallation.RegistrationStatus registrationStatus) {
            Objects.requireNonNull(registrationStatus, "Null registrationStatus");
            this.f13925b = registrationStatus;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a h(long j10) {
            this.f13929f = Long.valueOf(j10);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(com.google.firebase.installations.local.b bVar) {
            this.f13924a = bVar.d();
            this.f13925b = bVar.g();
            this.f13926c = bVar.b();
            this.f13927d = bVar.f();
            this.f13928e = Long.valueOf(bVar.c());
            this.f13929f = Long.valueOf(bVar.h());
            this.f13930g = bVar.e();
        }
    }

    @Override // com.google.firebase.installations.local.b
    @Nullable
    public String b() {
        return this.f13919d;
    }

    @Override // com.google.firebase.installations.local.b
    public long c() {
        return this.f13921f;
    }

    @Override // com.google.firebase.installations.local.b
    @Nullable
    public String d() {
        return this.f13917b;
    }

    @Override // com.google.firebase.installations.local.b
    @Nullable
    public String e() {
        return this.f13923h;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof com.google.firebase.installations.local.b) {
            com.google.firebase.installations.local.b bVar = (com.google.firebase.installations.local.b) obj;
            String str3 = this.f13917b;
            if (str3 != null ? str3.equals(bVar.d()) : bVar.d() == null) {
                if (this.f13918c.equals(bVar.g()) && ((str = this.f13919d) != null ? str.equals(bVar.b()) : bVar.b() == null) && ((str2 = this.f13920e) != null ? str2.equals(bVar.f()) : bVar.f() == null) && this.f13921f == bVar.c() && this.f13922g == bVar.h()) {
                    String str4 = this.f13923h;
                    if (str4 == null) {
                        if (bVar.e() == null) {
                            return true;
                        }
                    } else if (str4.equals(bVar.e())) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.google.firebase.installations.local.b
    @Nullable
    public String f() {
        return this.f13920e;
    }

    @Override // com.google.firebase.installations.local.b
    @NonNull
    public PersistedInstallation.RegistrationStatus g() {
        return this.f13918c;
    }

    @Override // com.google.firebase.installations.local.b
    public long h() {
        return this.f13922g;
    }

    public int hashCode() {
        String str = this.f13917b;
        int hashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.f13918c.hashCode()) * 1000003;
        String str2 = this.f13919d;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f13920e;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        long j10 = this.f13921f;
        long j11 = this.f13922g;
        int i9 = (((((hashCode2 ^ hashCode3) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        String str4 = this.f13923h;
        return i9 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override // com.google.firebase.installations.local.b
    public b.a n() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f13917b + ", registrationStatus=" + this.f13918c + ", authToken=" + this.f13919d + ", refreshToken=" + this.f13920e + ", expiresInSecs=" + this.f13921f + ", tokenCreationEpochInSecs=" + this.f13922g + ", fisError=" + this.f13923h + "}";
    }

    private a(@Nullable String str, PersistedInstallation.RegistrationStatus registrationStatus, @Nullable String str2, @Nullable String str3, long j10, long j11, @Nullable String str4) {
        this.f13917b = str;
        this.f13918c = registrationStatus;
        this.f13919d = str2;
        this.f13920e = str3;
        this.f13921f = j10;
        this.f13922g = j11;
        this.f13923h = str4;
    }
}
