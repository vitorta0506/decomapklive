package com.google.android.gms.internal.recaptcha;

import org.light.utils.IOUtils;
/* loaded from: classes2.dex */
final class gi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(zzpy zzpyVar) {
        StringBuilder sb2 = new StringBuilder(zzpyVar.zzd());
        for (int i9 = 0; i9 < zzpyVar.zzd(); i9++) {
            byte zza = zzpyVar.zza(i9);
            if (zza == 34) {
                sb2.append("\\\"");
            } else if (zza == 39) {
                sb2.append("\\'");
            } else if (zza != 92) {
                switch (zza) {
                    case 7:
                        sb2.append("\\a");
                        continue;
                    case 8:
                        sb2.append("\\b");
                        continue;
                    case 9:
                        sb2.append("\\t");
                        continue;
                    case 10:
                        sb2.append("\\n");
                        continue;
                    case 11:
                        sb2.append("\\v");
                        continue;
                    case 12:
                        sb2.append("\\f");
                        continue;
                    case 13:
                        sb2.append("\\r");
                        continue;
                    default:
                        if (zza >= 32 && zza <= 126) {
                            sb2.append((char) zza);
                            continue;
                        } else {
                            sb2.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb2.append((char) (((zza >>> 6) & 3) + 48));
                            sb2.append((char) (((zza >>> 3) & 7) + 48));
                            sb2.append((char) ((zza & 7) + 48));
                            break;
                        }
                        break;
                }
            } else {
                sb2.append("\\\\");
            }
        }
        return sb2.toString();
    }
}
