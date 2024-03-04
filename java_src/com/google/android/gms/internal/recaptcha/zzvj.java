package com.google.android.gms.internal.recaptcha;

import kotlin.text.Typography;
/* loaded from: classes2.dex */
public enum zzvj implements fg {
    MOBILE_SIGNALS_UNKNOWN(0),
    BATTERY_LEVEL(1),
    FOREGROUND_VOLUME_PERCENTAGE(2),
    AVAILABLE_RAM_PERCENTAGE(3),
    APP_VERSION(4),
    APP_PERMISSIONS(5),
    SCREEN_BRIGHTNESS(6),
    ACTIVITY_NAME(7),
    UNRECOGNIZED(-1);
    
    private static final gg<zzvj> zzj = new gg<zzvj>() { // from class: com.google.android.gms.internal.recaptcha.ak
    };
    private final int zzl;

    zzvj(int i9) {
        this.zzl = i9;
    }

    public static zzvj zzb(int i9) {
        switch (i9) {
            case 0:
                return MOBILE_SIGNALS_UNKNOWN;
            case 1:
                return BATTERY_LEVEL;
            case 2:
                return FOREGROUND_VOLUME_PERCENTAGE;
            case 3:
                return AVAILABLE_RAM_PERCENTAGE;
            case 4:
                return APP_VERSION;
            case 5:
                return APP_PERMISSIONS;
            case 6:
                return SCREEN_BRIGHTNESS;
            case 7:
                return ACTIVITY_NAME;
            default:
                return null;
        }
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("<");
        sb2.append(zzvj.class.getName());
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
