package com.google.android.gms.internal.recaptcha;

import java.util.HashMap;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class n4 {

    /* renamed from: a  reason: collision with root package name */
    private Executor f8908a;

    /* renamed from: b  reason: collision with root package name */
    private p2 f8909b;

    /* renamed from: d  reason: collision with root package name */
    private final t5 f8911d = t5.f9059a;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, p5> f8910c = new HashMap<>();

    public final m4 a() {
        return new m4(this.f8908a, this.f8909b, this.f8911d, this.f8910c, null, null);
    }

    public final n4 b(p5 p5Var) {
        z7.g(!this.f8910c.containsKey("singleproc"), "There is already a factory registered for the ID %s", "singleproc");
        this.f8910c.put("singleproc", p5Var);
        return this;
    }

    public final n4 c(Executor executor) {
        this.f8908a = executor;
        return this;
    }

    public final n4 d(p2 p2Var) {
        this.f8909b = p2Var;
        return this;
    }
}
