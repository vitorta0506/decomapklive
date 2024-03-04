package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
final class p7 extends r7 {

    /* renamed from: a  reason: collision with root package name */
    private int f8256a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f8257b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzjd f8258c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p7(zzjd zzjdVar) {
        this.f8258c = zzjdVar;
        this.f8257b = zzjdVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8256a < this.f8257b;
    }

    @Override // com.google.android.gms.internal.measurement.t7
    public final byte zza() {
        int i9 = this.f8256a;
        if (i9 < this.f8257b) {
            this.f8256a = i9 + 1;
            return this.f8258c.zzb(i9);
        }
        throw new NoSuchElementException();
    }
}
