package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2.dex */
final class c9<K> extends zzkn<K> {

    /* renamed from: a  reason: collision with root package name */
    private final transient zzkl<K, ?> f8557a;

    /* renamed from: b  reason: collision with root package name */
    private final transient zzkj<K> f8558b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c9(zzkl<K, ?> zzklVar, zzkj<K> zzkjVar) {
        this.f8557a = zzklVar;
        this.f8558b = zzkjVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@NullableDecl Object obj) {
        return this.f8557a.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn, com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return this.f8558b.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8557a.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final int zza(Object[] objArr, int i9) {
        return this.f8558b.zza(objArr, 0);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn, com.google.android.gms.internal.recaptcha.zzke
    public final zzkj<K> zzd() {
        return this.f8558b;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzkn, com.google.android.gms.internal.recaptcha.zzke
    public final j9<K> zze() {
        return this.f8558b.listIterator(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final boolean zzf() {
        throw null;
    }
}
