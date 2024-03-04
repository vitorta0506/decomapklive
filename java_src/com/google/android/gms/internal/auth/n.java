package com.google.android.gms.internal.auth;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
final class n extends p {

    /* renamed from: a  reason: collision with root package name */
    private int f7898a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f7899b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzee f7900c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(zzee zzeeVar) {
        this.f7900c = zzeeVar;
        this.f7899b = zzeeVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7898a < this.f7899b;
    }

    @Override // com.google.android.gms.internal.auth.r
    public final byte zza() {
        int i9 = this.f7898a;
        if (i9 < this.f7899b) {
            this.f7898a = i9 + 1;
            return this.f7900c.zzb(i9);
        }
        throw new NoSuchElementException();
    }
}
