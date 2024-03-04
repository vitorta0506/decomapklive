package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    private int f8043a = 0;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f f8044b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(f fVar) {
        this.f8044b = fVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8043a < this.f8044b.z();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        if (this.f8043a < this.f8044b.z()) {
            f fVar = this.f8044b;
            int i9 = this.f8043a;
            this.f8043a = i9 + 1;
            return fVar.B(i9);
        }
        int i10 = this.f8043a;
        throw new NoSuchElementException("Out of bounds index: " + i10);
    }
}
