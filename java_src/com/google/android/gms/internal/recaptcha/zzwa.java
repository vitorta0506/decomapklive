package com.google.android.gms.internal.recaptcha;

import kotlin.text.Typography;
/* loaded from: classes2.dex */
public enum zzwa implements fg {
    ARM7(2),
    X86(4),
    ARM64(5),
    X86_64(6);
    
    private static final gg<zzwa> zze = new gg<zzwa>() { // from class: com.google.android.gms.internal.recaptcha.kk
    };
    private final int zzg;

    zzwa(int i9) {
        this.zzg = i9;
    }

    public static hg zzb() {
        return lk.f8846a;
    }

    public static zzwa zzc(int i9) {
        if (i9 != 2) {
            if (i9 != 4) {
                if (i9 != 5) {
                    if (i9 != 6) {
                        return null;
                    }
                    return X86_64;
                }
                return ARM64;
            }
            return X86;
        }
        return ARM7;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzwa.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + Typography.greater;
    }

    @Override // com.google.android.gms.internal.recaptcha.fg
    public final int zza() {
        return this.zzg;
    }
}
