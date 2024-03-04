package com.google.android.gms.common.internal;

import android.content.Intent;
/* loaded from: classes2.dex */
final class c0 extends d0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f7680a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ v3.e f7681b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(Intent intent, v3.e eVar, int i9) {
        this.f7680a = intent;
        this.f7681b = eVar;
    }

    @Override // com.google.android.gms.common.internal.d0
    public final void a() {
        Intent intent = this.f7680a;
        if (intent != null) {
            this.f7681b.startActivityForResult(intent, 2);
        }
    }
}
