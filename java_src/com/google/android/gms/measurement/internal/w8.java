package com.google.android.gms.measurement.internal;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class w8 implements l3 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9945a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d9 f9946b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w8(d9 d9Var, String str) {
        this.f9946b = d9Var;
        this.f9945a = str;
    }

    @Override // com.google.android.gms.measurement.internal.l3
    public final void a(String str, int i9, Throwable th2, byte[] bArr, Map map) {
        this.f9946b.p(i9, th2, bArr, this.f9945a);
    }
}
