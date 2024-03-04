package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ g f14068a = new g();

    private /* synthetic */ g() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
