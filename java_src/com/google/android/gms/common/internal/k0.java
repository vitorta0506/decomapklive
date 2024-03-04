package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.o;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
final class k0 implements f.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.common.api.f f7745a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ t4.h f7746b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ o.a f7747c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ m0 f7748d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(com.google.android.gms.common.api.f fVar, t4.h hVar, o.a aVar, m0 m0Var) {
        this.f7745a = fVar;
        this.f7746b = hVar;
        this.f7747c = aVar;
        this.f7748d = m0Var;
    }

    @Override // com.google.android.gms.common.api.f.a
    public final void a(Status status) {
        if (status.R()) {
            this.f7746b.c(this.f7747c.a(this.f7745a.b(0L, TimeUnit.MILLISECONDS)));
            return;
        }
        this.f7746b.b(b.a(status));
    }
}
