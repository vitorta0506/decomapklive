package com.google.firebase.installations.remote;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.remote.TokenResult;
/* loaded from: classes2.dex */
final class b extends TokenResult {

    /* renamed from: a  reason: collision with root package name */
    private final String f13942a;

    /* renamed from: b  reason: collision with root package name */
    private final long f13943b;

    /* renamed from: c  reason: collision with root package name */
    private final TokenResult.ResponseCode f13944c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.installations.remote.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0138b extends TokenResult.a {

        /* renamed from: a  reason: collision with root package name */
        private String f13945a;

        /* renamed from: b  reason: collision with root package name */
        private Long f13946b;

        /* renamed from: c  reason: collision with root package name */
        private TokenResult.ResponseCode f13947c;

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult a() {
            String str = "";
            if (this.f13946b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new b(this.f13945a, this.f13946b.longValue(), this.f13947c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult.a b(TokenResult.ResponseCode responseCode) {
            this.f13947c = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult.a c(String str) {
            this.f13945a = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult.a d(long j10) {
            this.f13946b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    @Nullable
    public TokenResult.ResponseCode b() {
        return this.f13944c;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    @Nullable
    public String c() {
        return this.f13942a;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    @NonNull
    public long d() {
        return this.f13943b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TokenResult) {
            TokenResult tokenResult = (TokenResult) obj;
            String str = this.f13942a;
            if (str != null ? str.equals(tokenResult.c()) : tokenResult.c() == null) {
                if (this.f13943b == tokenResult.d()) {
                    TokenResult.ResponseCode responseCode = this.f13944c;
                    if (responseCode == null) {
                        if (tokenResult.b() == null) {
                            return true;
                        }
                    } else if (responseCode.equals(tokenResult.b())) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f13942a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j10 = this.f13943b;
        int i9 = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        TokenResult.ResponseCode responseCode = this.f13944c;
        return i9 ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    public String toString() {
        return "TokenResult{token=" + this.f13942a + ", tokenExpirationTimestamp=" + this.f13943b + ", responseCode=" + this.f13944c + "}";
    }

    private b(@Nullable String str, long j10, @Nullable TokenResult.ResponseCode responseCode) {
        this.f13942a = str;
        this.f13943b = j10;
        this.f13944c = responseCode;
    }
}
