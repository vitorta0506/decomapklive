package com.google.common.collect;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public abstract class c<T> extends e9<T> {

    /* renamed from: a  reason: collision with root package name */
    private b f12939a = b.NOT_READY;

    /* renamed from: b  reason: collision with root package name */
    private T f12940b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12941a;

        static {
            int[] iArr = new int[b.values().length];
            f12941a = iArr;
            try {
                iArr[b.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12941a[b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    private boolean c() {
        this.f12939a = b.FAILED;
        this.f12940b = a();
        if (this.f12939a != b.DONE) {
            this.f12939a = b.READY;
            return true;
        }
        return false;
    }

    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final T b() {
        this.f12939a = b.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        com.google.common.base.o.z(this.f12939a != b.FAILED);
        int i9 = a.f12941a[this.f12939a.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                return c();
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f12939a = b.NOT_READY;
            T t10 = (T) w6.a(this.f12940b);
            this.f12940b = null;
            return t10;
        }
        throw new NoSuchElementException();
    }
}
