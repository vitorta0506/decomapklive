package com.google.android.gms.internal.recaptcha;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s8<E> extends zzkj<E> {

    /* renamed from: a  reason: collision with root package name */
    private final transient zzkj<E> f9039a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s8(zzkj<E> zzkjVar) {
        this.f9039a = zzkjVar;
    }

    private final int c(int i9) {
        return (this.f9039a.size() - 1) - i9;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkj, com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f9039a.contains(obj);
    }

    @Override // java.util.List
    public final E get(int i9) {
        z7.a(i9, this.f9039a.size(), "index");
        return this.f9039a.get(c(i9));
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkj, java.util.List
    public final int indexOf(Object obj) {
        int lastIndexOf = this.f9039a.lastIndexOf(obj);
        if (lastIndexOf >= 0) {
            return c(lastIndexOf);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkj, java.util.List
    public final int lastIndexOf(Object obj) {
        int indexOf = this.f9039a.indexOf(obj);
        if (indexOf >= 0) {
            return c(indexOf);
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f9039a.size();
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkj, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i9, int i10) {
        return subList(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final boolean zzf() {
        return this.f9039a.zzf();
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkj
    public final zzkj<E> zzh() {
        return this.f9039a;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkj
    public final zzkj<E> zzi(int i9, int i10) {
        z7.h(i9, i10, this.f9039a.size());
        zzkj<E> zzkjVar = this.f9039a;
        return zzkjVar.subList(zzkjVar.size() - i10, this.f9039a.size() - i9).zzh();
    }
}
