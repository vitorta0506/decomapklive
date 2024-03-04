package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d8 implements Iterable<String> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ CharSequence f8599a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f8 f8600b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d8(f8 f8Var, CharSequence charSequence) {
        this.f8600b = f8Var;
        this.f8599a = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return f8.e(this.f8600b, this.f8599a);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        q7.b(sb2, iterator(), ", ");
        sb2.append(']');
        return sb2.toString();
    }
}
