package com.tencent.liteav.base.util;

import com.tencent.liteav.base.util.j;
/* loaded from: classes4.dex */
final /* synthetic */ class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j.a f31022a;

    private o(j.a aVar) {
        this.f31022a = aVar;
    }

    public static Runnable a(j.a aVar) {
        return new o(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j.a aVar = this.f31022a;
        j.this.f31008a.execute(aVar.f31011a);
    }
}
