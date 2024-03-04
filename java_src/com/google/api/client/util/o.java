package com.google.api.client.util;
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.common.base.i f11166a;

    private o(com.google.common.base.i iVar) {
        this.f11166a = iVar;
    }

    public static o b(char c10) {
        return new o(com.google.common.base.i.g(c10));
    }

    public final String a(Iterable<?> iterable) {
        return this.f11166a.d(iterable);
    }
}
