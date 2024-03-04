package com.google.android.gms.internal.recaptcha;

import kotlin.text.Typography;
/* loaded from: classes2.dex */
public enum zzvw implements fg {
    NO_ERROR(0),
    UNKNOWN(1),
    CHALLENGE_EXPIRED(2),
    INVALID_REQUEST_TOKEN(3),
    INVALID_PIN(4),
    PIN_MISMATCH(5),
    ATTEMPTS_EXHAUSTED(6),
    ABORTED(10),
    UNRECOGNIZED(-1);
    
    private static final gg<zzvw> zzj = new gg<zzvw>() { // from class: com.google.android.gms.internal.recaptcha.ik
    };
    private final int zzl;

    zzvw(int i9) {
        this.zzl = i9;
    }

    public static zzvw zzb(int i9) {
        if (i9 != 10) {
            switch (i9) {
                case 0:
                    return NO_ERROR;
                case 1:
                    return UNKNOWN;
                case 2:
                    return CHALLENGE_EXPIRED;
                case 3:
                    return INVALID_REQUEST_TOKEN;
                case 4:
                    return INVALID_PIN;
                case 5:
                    return PIN_MISMATCH;
                case 6:
                    return ATTEMPTS_EXHAUSTED;
                default:
                    return null;
            }
        }
        return ABORTED;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("<");
        sb2.append(zzvw.class.getName());
        sb2.append('@');
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb2.append(" number=");
            sb2.append(zza());
        }
        sb2.append(" name=");
        sb2.append(name());
        sb2.append(Typography.greater);
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.recaptcha.fg
    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.zzl;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
