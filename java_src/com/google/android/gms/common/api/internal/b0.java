package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes2.dex */
final class b0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f7512a;

    /* renamed from: b  reason: collision with root package name */
    private final ConnectionResult f7513b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(ConnectionResult connectionResult, int i9) {
        com.google.android.gms.common.internal.p.j(connectionResult);
        this.f7513b = connectionResult;
        this.f7512a = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        return this.f7512a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ConnectionResult b() {
        return this.f7513b;
    }
}
