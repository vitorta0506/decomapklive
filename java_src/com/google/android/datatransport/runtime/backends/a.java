package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.BackendResponse;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a extends BackendResponse {

    /* renamed from: a  reason: collision with root package name */
    private final BackendResponse.Status f5340a;

    /* renamed from: b  reason: collision with root package name */
    private final long f5341b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(BackendResponse.Status status, long j10) {
        Objects.requireNonNull(status, "Null status");
        this.f5340a = status;
        this.f5341b = j10;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public long b() {
        return this.f5341b;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public BackendResponse.Status c() {
        return this.f5340a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BackendResponse) {
            BackendResponse backendResponse = (BackendResponse) obj;
            return this.f5340a.equals(backendResponse.c()) && this.f5341b == backendResponse.b();
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f5341b;
        return ((this.f5340a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f5340a + ", nextRequestWaitMillis=" + this.f5341b + "}";
    }
}
