package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.List;
/* loaded from: classes2.dex */
final class o extends h {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ IBinder f10590b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ r f10591c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(r rVar, IBinder iBinder) {
        this.f10591c = rVar;
        this.f10590b = iBinder;
    }

    @Override // com.google.android.play.core.internal.h
    public final void b() {
        n nVar;
        List<Runnable> list;
        List list2;
        s sVar = this.f10591c.f10594a;
        nVar = sVar.f10606i;
        sVar.f10611n = (IInterface) nVar.a(this.f10590b);
        s.o(this.f10591c.f10594a);
        this.f10591c.f10594a.f10604g = false;
        list = this.f10591c.f10594a.f10601d;
        for (Runnable runnable : list) {
            runnable.run();
        }
        list2 = this.f10591c.f10594a.f10601d;
        list2.clear();
    }
}
