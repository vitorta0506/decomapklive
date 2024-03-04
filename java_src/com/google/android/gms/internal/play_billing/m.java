package com.google.android.gms.internal.play_billing;
/* loaded from: classes2.dex */
final class m<E> extends l<E> {

    /* renamed from: c  reason: collision with root package name */
    private final zzp<E> f8473c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(zzp<E> zzpVar, int i9) {
        super(zzpVar.size(), i9);
        this.f8473c = zzpVar;
    }

    @Override // com.google.android.gms.internal.play_billing.l
    protected final E a(int i9) {
        return this.f8473c.get(i9);
    }
}
