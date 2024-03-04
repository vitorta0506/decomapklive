package com.google.android.gms.internal.common;
/* loaded from: classes2.dex */
final class e extends s {

    /* renamed from: c  reason: collision with root package name */
    private final zzag f7920c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(zzag zzagVar, int i9) {
        super(zzagVar.size(), i9);
        this.f7920c = zzagVar;
    }

    @Override // com.google.android.gms.internal.common.s
    protected final Object a(int i9) {
        return this.f7920c.get(i9);
    }
}
