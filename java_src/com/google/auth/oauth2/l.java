package com.google.auth.oauth2;

import com.google.api.client.http.HttpResponseException;
import java.io.IOException;
/* loaded from: classes2.dex */
class l extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f11672a;

    /* renamed from: b  reason: collision with root package name */
    private final int f11673b;

    l(boolean z10, int i9, String str, Throwable th2) {
        super(str, th2);
        this.f11672a = z10;
        this.f11673b = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l a(HttpResponseException httpResponseException) {
        return b(httpResponseException, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l b(HttpResponseException httpResponseException, String str) {
        boolean contains = n.f11682i.contains(Integer.valueOf(httpResponseException.getStatusCode()));
        int attemptCount = httpResponseException.getAttemptCount() - 1;
        if (str == null) {
            return new l(contains, attemptCount, httpResponseException);
        }
        return new l(contains, attemptCount, str, httpResponseException);
    }

    l(boolean z10, int i9, Throwable th2) {
        super(th2);
        this.f11672a = z10;
        this.f11673b = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l() {
        this.f11672a = false;
        this.f11673b = 0;
    }
}
