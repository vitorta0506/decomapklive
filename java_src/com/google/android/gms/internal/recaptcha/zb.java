package com.google.android.gms.internal.recaptcha;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2.dex */
final class zb extends yb {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReferenceFieldUpdater<bc<?>, Set<Throwable>> f9231a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicIntegerFieldUpdater<bc<?>> f9232b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zb(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        super(null);
        this.f9231a = atomicReferenceFieldUpdater;
        this.f9232b = atomicIntegerFieldUpdater;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.yb
    public final int a(bc<?> bcVar) {
        return this.f9232b.decrementAndGet(bcVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.yb
    public final void b(bc<?> bcVar, Set<Throwable> set, Set<Throwable> set2) {
        androidx.concurrent.futures.a.a(this.f9231a, bcVar, null, set2);
    }
}
