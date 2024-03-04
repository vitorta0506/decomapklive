package com.tencent.liteav.base.util;

import java.lang.ref.WeakReference;
/* loaded from: classes4.dex */
public final class a<T> {

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0317a<T> f30996b;

    /* renamed from: a  reason: collision with root package name */
    private final ThreadLocal<T> f30995a = new ThreadLocal<>();

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<T> f30997c = new WeakReference<>(null);

    /* renamed from: com.tencent.liteav.base.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0317a<T> {
        T a();
    }

    public a(InterfaceC0317a<T> interfaceC0317a) {
        this.f30996b = interfaceC0317a;
    }

    private T b() {
        T t10 = this.f30997c.get();
        if (t10 == null) {
            synchronized (this) {
                t10 = this.f30997c.get();
                if (t10 == null) {
                    t10 = this.f30996b.a();
                    this.f30997c = new WeakReference<>(t10);
                }
            }
        }
        return t10;
    }

    public final T a() {
        T t10 = this.f30995a.get();
        if (t10 == null) {
            T b10 = b();
            this.f30995a.set(b10);
            return b10;
        }
        return t10;
    }
}
