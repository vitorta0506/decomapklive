package com.snapchat.kit.sdk;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.snapchat.kit.sdk.core.models.AuthToken;
import com.snapchat.kit.sdk.core.security.SecureSharedPreferences;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private volatile AuthToken f29478a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final SecureSharedPreferences f29479b;

    /* renamed from: c  reason: collision with root package name */
    private final be.d f29480c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@Nullable SecureSharedPreferences secureSharedPreferences, be.d dVar) {
        this.f29479b = secureSharedPreferences;
        this.f29480c = dVar;
        this.f29478a = (AuthToken) dVar.get("auth_token", AuthToken.class);
        if (this.f29478a != null || secureSharedPreferences == null) {
            return;
        }
        this.f29478a = (AuthToken) secureSharedPreferences.get("auth_token", AuthToken.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a(@NonNull AuthToken authToken) {
        if (this.f29478a == null || this.f29478a.getLastUpdated() <= authToken.getLastUpdated()) {
            this.f29478a = authToken;
            this.f29480c.put("auth_token", this.f29478a);
            SecureSharedPreferences secureSharedPreferences = this.f29479b;
            if (secureSharedPreferences != null) {
                secureSharedPreferences.clearEntry("auth_token");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean b() {
        boolean z10;
        if (this.f29478a != null) {
            z10 = this.f29478a.isComplete() ? false : true;
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean c() {
        if (this.f29478a == null) {
            return false;
        }
        if (this.f29478a.isExpired()) {
            return true;
        }
        return this.f29478a.willBeExpiredAfter(300000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final synchronized String d() {
        if (this.f29478a == null) {
            return null;
        }
        return this.f29478a.getAccessToken();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final synchronized String e() {
        if (this.f29478a == null) {
            return null;
        }
        return this.f29478a.getRefreshToken();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f() {
        return !TextUtils.isEmpty(e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void g() {
        this.f29478a = null;
        SecureSharedPreferences secureSharedPreferences = this.f29479b;
        if (secureSharedPreferences != null) {
            secureSharedPreferences.clearEntry("auth_token");
        }
        this.f29480c.clearEntry("auth_token");
    }
}
