package com.google.android.gms.internal.recaptcha;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
/* loaded from: classes2.dex */
public final class y6 {

    /* renamed from: a  reason: collision with root package name */
    static final Map<Long, u6> f9200a;

    static {
        Math.abs(new Random().nextInt());
        f9200a = new HashMap();
    }

    public static <I, O> p7<I, O> a(p7<I, O> p7Var) {
        return new w6(d7.b(), p7Var);
    }

    public static <V> cc<V> b(cc<V> ccVar) {
        Objects.requireNonNull(ccVar);
        return new v6(d7.b(), ccVar);
    }

    public static <I, O> dc<I, O> c(dc<I, O> dcVar) {
        return new x6(d7.b(), dcVar);
    }
}
