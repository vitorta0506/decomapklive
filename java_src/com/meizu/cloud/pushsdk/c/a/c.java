package com.meizu.cloud.pushsdk.c.a;

import com.meizu.cloud.pushsdk.c.c.k;
/* loaded from: classes4.dex */
public class c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f28348a;

    /* renamed from: b  reason: collision with root package name */
    private final com.meizu.cloud.pushsdk.c.b.a f28349b;

    /* renamed from: c  reason: collision with root package name */
    private k f28350c;

    public c(com.meizu.cloud.pushsdk.c.b.a aVar) {
        this.f28348a = null;
        this.f28349b = aVar;
    }

    public c(T t10) {
        this.f28348a = t10;
        this.f28349b = null;
    }

    public static <T> c<T> a(com.meizu.cloud.pushsdk.c.b.a aVar) {
        return new c<>(aVar);
    }

    public static <T> c<T> a(T t10) {
        return new c<>(t10);
    }

    public T a() {
        return this.f28348a;
    }

    public void a(k kVar) {
        this.f28350c = kVar;
    }

    public boolean b() {
        return this.f28349b == null;
    }

    public com.meizu.cloud.pushsdk.c.b.a c() {
        return this.f28349b;
    }
}
