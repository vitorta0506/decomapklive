package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r8<E> extends j8<E> {

    /* renamed from: c  reason: collision with root package name */
    private final zzkj<E> f9019c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r8(zzkj<E> zzkjVar, int i9) {
        super(zzkjVar.size(), i9);
        this.f9019c = zzkjVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.j8
    protected final E a(int i9) {
        return this.f9019c.get(i9);
    }
}
