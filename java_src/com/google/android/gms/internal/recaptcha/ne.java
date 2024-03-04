package com.google.android.gms.internal.recaptcha;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
final class ne extends qe {

    /* renamed from: a  reason: collision with root package name */
    private int f8926a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f8927b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzpy f8928c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ne(zzpy zzpyVar) {
        this.f8928c = zzpyVar;
        this.f8927b = zzpyVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8926a < this.f8927b;
    }

    @Override // com.google.android.gms.internal.recaptcha.se
    public final byte zza() {
        int i9 = this.f8926a;
        if (i9 < this.f8927b) {
            this.f8926a = i9 + 1;
            return this.f8928c.zzb(i9);
        }
        throw new NoSuchElementException();
    }
}
