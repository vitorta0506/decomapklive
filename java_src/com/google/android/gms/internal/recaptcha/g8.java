package com.google.android.gms.internal.recaptcha;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public final class g8 {
    public static String a(String str) {
        return y7.a(str);
    }

    public static String b(String str, Object... objArr) {
        int length;
        int length2;
        int indexOf;
        String sb2;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            length = objArr.length;
            if (i10 >= length) {
                break;
            }
            Object obj = objArr[i10];
            if (obj == null) {
                sb2 = "null";
            } else {
                try {
                    sb2 = obj.toString();
                } catch (Exception e10) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb3 = new StringBuilder(name.length() + 1 + String.valueOf(hexString).length());
                    sb3.append(name);
                    sb3.append('@');
                    sb3.append(hexString);
                    String sb4 = sb3.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    String valueOf = String.valueOf(sb4);
                    logger.logp(level, "com.google.common.base.Strings", "lenientToString", valueOf.length() != 0 ? "Exception during lenientFormat for ".concat(valueOf) : new String("Exception during lenientFormat for "), (Throwable) e10);
                    String name2 = e10.getClass().getName();
                    StringBuilder sb5 = new StringBuilder(String.valueOf(sb4).length() + 9 + name2.length());
                    sb5.append("<");
                    sb5.append(sb4);
                    sb5.append(" threw ");
                    sb5.append(name2);
                    sb5.append(">");
                    sb2 = sb5.toString();
                }
            }
            objArr[i10] = sb2;
            i10++;
        }
        StringBuilder sb6 = new StringBuilder(str.length() + (length * 16));
        int i11 = 0;
        while (true) {
            length2 = objArr.length;
            if (i9 >= length2 || (indexOf = str.indexOf("%s", i11)) == -1) {
                break;
            }
            sb6.append((CharSequence) str, i11, indexOf);
            sb6.append(objArr[i9]);
            i11 = indexOf + 2;
            i9++;
        }
        sb6.append((CharSequence) str, i11, str.length());
        if (i9 < length2) {
            sb6.append(" [");
            sb6.append(objArr[i9]);
            for (int i12 = i9 + 1; i12 < objArr.length; i12++) {
                sb6.append(", ");
                sb6.append(objArr[i12]);
            }
            sb6.append(']');
        }
        return sb6.toString();
    }

    public static String c(String str) {
        return y7.b(str);
    }
}
