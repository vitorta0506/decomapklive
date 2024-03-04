package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;
/* loaded from: classes2.dex */
final class b0 extends d0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f7676a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Activity f7677b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f7678c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(Intent intent, Activity activity, int i9) {
        this.f7676a = intent;
        this.f7677b = activity;
        this.f7678c = i9;
    }

    @Override // com.google.android.gms.common.internal.d0
    public final void a() {
        Intent intent = this.f7676a;
        if (intent != null) {
            this.f7677b.startActivityForResult(intent, this.f7678c);
        }
    }
}
