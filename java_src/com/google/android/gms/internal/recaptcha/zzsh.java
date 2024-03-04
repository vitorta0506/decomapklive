package com.google.android.gms.internal.recaptcha;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzsh<K, V> extends LinkedHashMap<K, V> {
    private static final zzsh zza;
    private boolean zzb;

    static {
        zzsh zzshVar = new zzsh();
        zza = zzshVar;
        zzshVar.zzb = false;
    }

    private zzsh() {
        this.zzb = true;
    }

    public static <K, V> zzsh<K, V> zza() {
        return zza;
    }

    private static int zzf(Object obj) {
        if (obj instanceof byte[]) {
            return mg.b((byte[]) obj);
        }
        if (!(obj instanceof fg)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    private final void zzg() {
        if (!this.zzb) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzg();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        boolean equals;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this == map) {
                return true;
            }
            if (size() != map.size()) {
                return false;
            }
            for (Map.Entry<K, V> entry : entrySet()) {
                if (!map.containsKey(entry.getKey())) {
                    return false;
                }
                V value = entry.getValue();
                Object obj2 = map.get(entry.getKey());
                if ((value instanceof byte[]) && (obj2 instanceof byte[])) {
                    equals = Arrays.equals((byte[]) value, (byte[]) obj2);
                    continue;
                } else {
                    equals = value.equals(obj2);
                    continue;
                }
                if (!equals) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i9 = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i9 += zzf(entry.getValue()) ^ zzf(entry.getKey());
        }
        return i9;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k10, V v10) {
        zzg();
        mg.e(k10);
        mg.e(v10);
        return (V) super.put(k10, v10);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzg();
        for (K k10 : map.keySet()) {
            mg.e(k10);
            mg.e(map.get(k10));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzg();
        return (V) super.remove(obj);
    }

    public final zzsh<K, V> zzb() {
        return isEmpty() ? new zzsh<>() : new zzsh<>(this);
    }

    public final void zzc() {
        this.zzb = false;
    }

    public final void zzd(zzsh<K, V> zzshVar) {
        zzg();
        if (zzshVar.isEmpty()) {
            return;
        }
        putAll(zzshVar);
    }

    public final boolean zze() {
        return this.zzb;
    }

    private zzsh(Map<K, V> map) {
        super(map);
        this.zzb = true;
    }
}
