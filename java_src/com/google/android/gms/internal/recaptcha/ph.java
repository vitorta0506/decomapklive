package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ph {

    /* renamed from: c  reason: collision with root package name */
    private static final ph f8985c = new ph();

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentMap<Class<?>, uh<?>> f8987b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final vh f8986a = new yg();

    private ph() {
    }

    public static ph a() {
        return f8985c;
    }

    public final <T> uh<T> b(Class<T> cls) {
        mg.f(cls, "messageType");
        uh<T> uhVar = (uh<T>) this.f8987b.get(cls);
        if (uhVar == null) {
            uhVar = this.f8986a.a(cls);
            mg.f(cls, "messageType");
            mg.f(uhVar, "schema");
            uh putIfAbsent = this.f8987b.putIfAbsent(cls, uhVar);
            if (putIfAbsent != null) {
                return putIfAbsent;
            }
        }
        return uhVar;
    }
}
