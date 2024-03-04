package com.google.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class b<T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    private EnumC0099b f12335a = EnumC0099b.NOT_READY;

    /* renamed from: b  reason: collision with root package name */
    private T f12336b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12337a;

        static {
            int[] iArr = new int[EnumC0099b.values().length];
            f12337a = iArr;
            try {
                iArr[EnumC0099b.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12337a[EnumC0099b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.common.base.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public enum EnumC0099b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    private boolean c() {
        this.f12335a = EnumC0099b.FAILED;
        this.f12336b = a();
        if (this.f12335a != EnumC0099b.DONE) {
            this.f12335a = EnumC0099b.READY;
            return true;
        }
        return false;
    }

    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final T b() {
        this.f12335a = EnumC0099b.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        o.z(this.f12335a != EnumC0099b.FAILED);
        int i9 = a.f12337a[this.f12335a.ordinal()];
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
            this.f12335a = EnumC0099b.NOT_READY;
            T t10 = (T) k.a(this.f12336b);
            this.f12336b = null;
            return t10;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
