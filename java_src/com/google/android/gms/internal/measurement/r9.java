package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class r9 implements x9 {

    /* renamed from: a  reason: collision with root package name */
    private final x9[] f8289a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r9(x9... x9VarArr) {
        this.f8289a = x9VarArr;
    }

    @Override // com.google.android.gms.internal.measurement.x9
    public final w9 a(Class cls) {
        x9[] x9VarArr = this.f8289a;
        for (int i9 = 0; i9 < 2; i9++) {
            x9 x9Var = x9VarArr[i9];
            if (x9Var.b(cls)) {
                return x9Var.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.measurement.x9
    public final boolean b(Class cls) {
        x9[] x9VarArr = this.f8289a;
        for (int i9 = 0; i9 < 2; i9++) {
            if (x9VarArr[i9].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
