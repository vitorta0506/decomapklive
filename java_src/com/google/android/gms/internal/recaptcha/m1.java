package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public final class m1 {

    /* renamed from: a  reason: collision with root package name */
    private final j1 f8849a;

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f8850b;

    /* renamed from: c  reason: collision with root package name */
    private final a0<dk> f8851c;

    public m1(j1 j1Var) {
        this.f8849a = j1Var;
        ExecutorService executorService = n1.f8899b;
        this.f8850b = executorService;
        this.f8851c = new a0<>(n1.a(), executorService, dk.u());
    }
}
