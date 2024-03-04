package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes2.dex */
final class y5 extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ z5 f8439a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y5(z5 z5Var, Handler handler) {
        super(null);
        this.f8439a = z5Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        this.f8439a.f();
    }
}
