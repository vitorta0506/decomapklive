package com.google.common.base;
/* loaded from: classes2.dex */
public abstract class f<A, B> implements h<A, B> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f12360a;

    /* JADX INFO: Access modifiers changed from: protected */
    public f() {
        this(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private B d(A a10) {
        return (B) c(k.a(a10));
    }

    public final B a(A a10) {
        return b(a10);
    }

    @Override // com.google.common.base.h, java.util.function.Function
    @Deprecated
    public final B apply(A a10) {
        return a(a10);
    }

    B b(A a10) {
        if (this.f12360a) {
            if (a10 == null) {
                return null;
            }
            return (B) o.s(c(a10));
        }
        return d(a10);
    }

    protected abstract B c(A a10);

    f(boolean z10) {
        this.f12360a = z10;
    }
}
