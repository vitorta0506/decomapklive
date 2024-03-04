package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ha {

    /* renamed from: c  reason: collision with root package name */
    private static final ha f8117c = new ha();

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentMap f8119b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final la f8118a = new s9();

    private ha() {
    }

    public static ha a() {
        return f8117c;
    }

    public final ka b(Class cls) {
        e9.f(cls, "messageType");
        ka kaVar = (ka) this.f8119b.get(cls);
        if (kaVar == null) {
            kaVar = this.f8118a.a(cls);
            e9.f(cls, "messageType");
            e9.f(kaVar, "schema");
            ka kaVar2 = (ka) this.f8119b.putIfAbsent(cls, kaVar);
            if (kaVar2 != null) {
                return kaVar2;
            }
        }
        return kaVar;
    }
}
