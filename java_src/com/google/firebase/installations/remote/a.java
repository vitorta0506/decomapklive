package com.google.firebase.installations.remote;

import androidx.annotation.Nullable;
import com.google.firebase.installations.remote.InstallationResponse;
/* loaded from: classes2.dex */
final class a extends InstallationResponse {

    /* renamed from: a  reason: collision with root package name */
    private final String f13932a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13933b;

    /* renamed from: c  reason: collision with root package name */
    private final String f13934c;

    /* renamed from: d  reason: collision with root package name */
    private final TokenResult f13935d;

    /* renamed from: e  reason: collision with root package name */
    private final InstallationResponse.ResponseCode f13936e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b extends InstallationResponse.a {

        /* renamed from: a  reason: collision with root package name */
        private String f13937a;

        /* renamed from: b  reason: collision with root package name */
        private String f13938b;

        /* renamed from: c  reason: collision with root package name */
        private String f13939c;

        /* renamed from: d  reason: collision with root package name */
        private TokenResult f13940d;

        /* renamed from: e  reason: collision with root package name */
        private InstallationResponse.ResponseCode f13941e;

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse a() {
            return new a(this.f13937a, this.f13938b, this.f13939c, this.f13940d, this.f13941e);
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a b(TokenResult tokenResult) {
            this.f13940d = tokenResult;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a c(String str) {
            this.f13938b = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a d(String str) {
            this.f13939c = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a e(InstallationResponse.ResponseCode responseCode) {
            this.f13941e = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a f(String str) {
            this.f13937a = str;
            return this;
        }
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public TokenResult b() {
        return this.f13935d;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String c() {
        return this.f13933b;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String d() {
        return this.f13934c;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public InstallationResponse.ResponseCode e() {
        return this.f13936e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InstallationResponse) {
            InstallationResponse installationResponse = (InstallationResponse) obj;
            String str = this.f13932a;
            if (str != null ? str.equals(installationResponse.f()) : installationResponse.f() == null) {
                String str2 = this.f13933b;
                if (str2 != null ? str2.equals(installationResponse.c()) : installationResponse.c() == null) {
                    String str3 = this.f13934c;
                    if (str3 != null ? str3.equals(installationResponse.d()) : installationResponse.d() == null) {
                        TokenResult tokenResult = this.f13935d;
                        if (tokenResult != null ? tokenResult.equals(installationResponse.b()) : installationResponse.b() == null) {
                            InstallationResponse.ResponseCode responseCode = this.f13936e;
                            if (responseCode == null) {
                                if (installationResponse.e() == null) {
                                    return true;
                                }
                            } else if (responseCode.equals(installationResponse.e())) {
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String f() {
        return this.f13932a;
    }

    public int hashCode() {
        String str = this.f13932a;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f13933b;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f13934c;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        TokenResult tokenResult = this.f13935d;
        int hashCode4 = (hashCode3 ^ (tokenResult == null ? 0 : tokenResult.hashCode())) * 1000003;
        InstallationResponse.ResponseCode responseCode = this.f13936e;
        return hashCode4 ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f13932a + ", fid=" + this.f13933b + ", refreshToken=" + this.f13934c + ", authToken=" + this.f13935d + ", responseCode=" + this.f13936e + "}";
    }

    private a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable TokenResult tokenResult, @Nullable InstallationResponse.ResponseCode responseCode) {
        this.f13932a = str;
        this.f13933b = str2;
        this.f13934c = str3;
        this.f13935d = tokenResult;
        this.f13936e = responseCode;
    }
}
