package com.google.android.gms.internal.recaptcha;

import java.io.Serializable;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2.dex */
public abstract class zzkl<K, V> implements Map<K, V>, Serializable {
    private transient zzkn<Map.Entry<K, V>> zza;
    private transient zzkn<K> zzb;
    private transient zzke<V> zzc;

    public static <K, V> zzkl<K, V> zzc() {
        return (zzkl<K, V>) e9.f8638d;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@NullableDecl Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v10) {
        V v11 = get(obj);
        return v11 != null ? v11 : v10;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return g9.a(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzkn<K> zzknVar = this.zzb;
        if (zzknVar == null) {
            zzkn<K> zze = zze();
            this.zzb = zze;
            return zze;
        }
        return zzknVar;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        if (size >= 0) {
            StringBuilder sb2 = new StringBuilder((int) Math.min(size * 8, 1073741824L));
            sb2.append('{');
            boolean z10 = true;
            for (Map.Entry<K, V> entry : entrySet()) {
                if (!z10) {
                    sb2.append(", ");
                }
                sb2.append(entry.getKey());
                sb2.append('=');
                sb2.append(entry.getValue());
                z10 = false;
            }
            sb2.append('}');
            return sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder(44);
        sb3.append("size cannot be negative but was: ");
        sb3.append(size);
        throw new IllegalArgumentException(sb3.toString());
    }

    abstract zzke<V> zza();

    @Override // java.util.Map
    /* renamed from: zzb */
    public final zzke<V> values() {
        zzke<V> zzkeVar = this.zzc;
        if (zzkeVar == null) {
            zzke<V> zza = zza();
            this.zzc = zza;
            return zza;
        }
        return zzkeVar;
    }

    abstract zzkn<Map.Entry<K, V>> zzd();

    abstract zzkn<K> zze();

    @Override // java.util.Map
    /* renamed from: zzf */
    public final zzkn<Map.Entry<K, V>> entrySet() {
        zzkn<Map.Entry<K, V>> zzknVar = this.zza;
        if (zzknVar == null) {
            zzkn<Map.Entry<K, V>> zzd = zzd();
            this.zza = zzd;
            return zzd;
        }
        return zzknVar;
    }
}
