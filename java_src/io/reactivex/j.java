package io.reactivex;

import io.reactivex.internal.util.NotificationLite;
/* loaded from: classes7.dex */
public final class j<T> {

    /* renamed from: b  reason: collision with root package name */
    static final j<Object> f52763b = new j<>(null);

    /* renamed from: a  reason: collision with root package name */
    final Object f52764a;

    private j(Object obj) {
        this.f52764a = obj;
    }

    public static <T> j<T> a() {
        return (j<T>) f52763b;
    }

    public static <T> j<T> b(Throwable th2) {
        xh.b.e(th2, "error is null");
        return new j<>(NotificationLite.error(th2));
    }

    public static <T> j<T> c(T t10) {
        xh.b.e(t10, "value is null");
        return new j<>(t10);
    }

    public Throwable d() {
        Object obj = this.f52764a;
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    public T e() {
        Object obj = this.f52764a;
        if (obj == null || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) this.f52764a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof j) {
            return xh.b.c(this.f52764a, ((j) obj).f52764a);
        }
        return false;
    }

    public boolean f() {
        return this.f52764a == null;
    }

    public boolean g() {
        return NotificationLite.isError(this.f52764a);
    }

    public boolean h() {
        Object obj = this.f52764a;
        return (obj == null || NotificationLite.isError(obj)) ? false : true;
    }

    public int hashCode() {
        Object obj = this.f52764a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public String toString() {
        Object obj = this.f52764a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (NotificationLite.isError(obj)) {
            return "OnErrorNotification[" + NotificationLite.getError(obj) + "]";
        }
        return "OnNextNotification[" + this.f52764a + "]";
    }
}
