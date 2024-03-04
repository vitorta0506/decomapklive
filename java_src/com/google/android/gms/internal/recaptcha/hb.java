package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2.dex */
final class hb extends db {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReferenceFieldUpdater<ob, Thread> f8735a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReferenceFieldUpdater<ob, ob> f8736b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReferenceFieldUpdater<cb, ob> f8737c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReferenceFieldUpdater<cb, gb> f8738d;

    /* renamed from: e  reason: collision with root package name */
    final AtomicReferenceFieldUpdater<cb, Object> f8739e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hb(AtomicReferenceFieldUpdater<ob, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<ob, ob> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<cb, ob> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<cb, gb> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<cb, Object> atomicReferenceFieldUpdater5) {
        super(null);
        this.f8735a = atomicReferenceFieldUpdater;
        this.f8736b = atomicReferenceFieldUpdater2;
        this.f8737c = atomicReferenceFieldUpdater3;
        this.f8738d = atomicReferenceFieldUpdater4;
        this.f8739e = atomicReferenceFieldUpdater5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final void a(ob obVar, ob obVar2) {
        this.f8736b.lazySet(obVar, obVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final void b(ob obVar, Thread thread) {
        this.f8735a.lazySet(obVar, thread);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final boolean c(cb<?> cbVar, gb gbVar, gb gbVar2) {
        return androidx.concurrent.futures.a.a(this.f8738d, cbVar, gbVar, gbVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final boolean d(cb<?> cbVar, Object obj, Object obj2) {
        return androidx.concurrent.futures.a.a(this.f8739e, cbVar, obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final boolean e(cb<?> cbVar, ob obVar, ob obVar2) {
        return androidx.concurrent.futures.a.a(this.f8737c, cbVar, obVar, obVar2);
    }
}
