package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public final class q1 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8992a;

    /* renamed from: b  reason: collision with root package name */
    private final j1 f8993b;

    /* renamed from: c  reason: collision with root package name */
    private final ExecutorService f8994c;

    /* renamed from: d  reason: collision with root package name */
    private final a0<fk> f8995d;

    public q1(Context context, j1 j1Var) {
        this.f8992a = context;
        this.f8993b = j1Var;
        ExecutorService executorService = n1.f8899b;
        this.f8994c = executorService;
        this.f8995d = new a0<>(n1.b(), executorService, fk.u());
    }
}
