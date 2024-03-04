package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class d9 extends zzkj<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final transient Object[] f8601a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f8602b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f8603c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d9(Object[] objArr, int i9, int i10) {
        this.f8601a = objArr;
        this.f8602b = i9;
        this.f8603c = i10;
    }

    @Override // java.util.List
    public final Object get(int i9) {
        z7.a(i9, this.f8603c, "index");
        return this.f8601a[i9 + i9 + this.f8602b];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8603c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final boolean zzf() {
        return true;
    }
}
