package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b8 extends e8 {

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ c8 f8518h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b8(c8 c8Var, f8 f8Var, CharSequence charSequence) {
        super(f8Var, charSequence);
        this.f8518h = c8Var;
    }

    @Override // com.google.android.gms.internal.recaptcha.e8
    final int c(int i9) {
        return i9 + 1;
    }

    @Override // com.google.android.gms.internal.recaptcha.e8
    final int d(int i9) {
        n7 n7Var = this.f8518h.f8556a;
        CharSequence charSequence = this.f8633c;
        int length = charSequence.length();
        z7.b(i9, length, "index");
        while (i9 < length) {
            if (n7Var.a(charSequence.charAt(i9))) {
                return i9;
            }
            i9++;
        }
        return -1;
    }
}
