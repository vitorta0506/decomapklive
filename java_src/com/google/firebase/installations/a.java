package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.firebase.installations.f;
import java.util.Objects;
/* loaded from: classes2.dex */
final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final String f13883a;

    /* renamed from: b  reason: collision with root package name */
    private final long f13884b;

    /* renamed from: c  reason: collision with root package name */
    private final long f13885c;

    /* loaded from: classes2.dex */
    static final class b extends f.a {

        /* renamed from: a  reason: collision with root package name */
        private String f13886a;

        /* renamed from: b  reason: collision with root package name */
        private Long f13887b;

        /* renamed from: c  reason: collision with root package name */
        private Long f13888c;

        @Override // com.google.firebase.installations.f.a
        public f a() {
            String str = "";
            if (this.f13886a == null) {
                str = " token";
            }
            if (this.f13887b == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.f13888c == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new a(this.f13886a, this.f13887b.longValue(), this.f13888c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.f.a
        public f.a b(String str) {
            Objects.requireNonNull(str, "Null token");
            this.f13886a = str;
            return this;
        }

        @Override // com.google.firebase.installations.f.a
        public f.a c(long j10) {
            this.f13888c = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.firebase.installations.f.a
        public f.a d(long j10) {
            this.f13887b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // com.google.firebase.installations.f
    @NonNull
    public String b() {
        return this.f13883a;
    }

    @Override // com.google.firebase.installations.f
    @NonNull
    public long c() {
        return this.f13885c;
    }

    @Override // com.google.firebase.installations.f
    @NonNull
    public long d() {
        return this.f13884b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            return this.f13883a.equals(fVar.b()) && this.f13884b == fVar.d() && this.f13885c == fVar.c();
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f13884b;
        long j11 = this.f13885c;
        return ((((this.f13883a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f13883a + ", tokenExpirationTimestamp=" + this.f13884b + ", tokenCreationTimestamp=" + this.f13885c + "}";
    }

    private a(String str, long j10, long j11) {
        this.f13883a = str;
        this.f13884b = j10;
        this.f13885c = j11;
    }
}
