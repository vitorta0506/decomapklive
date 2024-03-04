package com.google.android.gms.common;

import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
final class v extends w {

    /* renamed from: f  reason: collision with root package name */
    private final Callable f7845f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ v(Callable callable, u3.c cVar) {
        super();
        this.f7845f = callable;
    }

    @Override // com.google.android.gms.common.w
    final String a() {
        try {
            return (String) this.f7845f.call();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
