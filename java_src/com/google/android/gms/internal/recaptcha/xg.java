package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class xg implements eh {

    /* renamed from: a  reason: collision with root package name */
    private final eh[] f9184a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xg(eh... ehVarArr) {
        this.f9184a = ehVarArr;
    }

    @Override // com.google.android.gms.internal.recaptcha.eh
    public final dh a(Class<?> cls) {
        eh[] ehVarArr = this.f9184a;
        for (int i9 = 0; i9 < 2; i9++) {
            eh ehVar = ehVarArr[i9];
            if (ehVar.b(cls)) {
                return ehVar.a(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.recaptcha.eh
    public final boolean b(Class<?> cls) {
        eh[] ehVarArr = this.f9184a;
        for (int i9 = 0; i9 < 2; i9++) {
            if (ehVarArr[i9].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
