package com.google.common.base;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public final class v {
    public static String a(String str) {
        return n.a(str);
    }

    public static boolean b(String str) {
        return n.d(str);
    }

    public static String c(String str, Object... objArr) {
        int indexOf;
        String valueOf = String.valueOf(str);
        int i9 = 0;
        if (objArr == null) {
            objArr = new Object[]{"(Object[])null"};
        } else {
            for (int i10 = 0; i10 < objArr.length; i10++) {
                objArr[i10] = d(objArr[i10]);
            }
        }
        StringBuilder sb2 = new StringBuilder(valueOf.length() + (objArr.length * 16));
        int i11 = 0;
        while (i9 < objArr.length && (indexOf = valueOf.indexOf("%s", i11)) != -1) {
            sb2.append((CharSequence) valueOf, i11, indexOf);
            sb2.append(objArr[i9]);
            i11 = indexOf + 2;
            i9++;
        }
        sb2.append((CharSequence) valueOf, i11, valueOf.length());
        if (i9 < objArr.length) {
            sb2.append(" [");
            sb2.append(objArr[i9]);
            for (int i12 = i9 + 1; i12 < objArr.length; i12++) {
                sb2.append(", ");
                sb2.append(objArr[i12]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }

    private static String d(Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return obj.toString();
        } catch (Exception e10) {
            String name = obj.getClass().getName();
            String hexString = Integer.toHexString(System.identityHashCode(obj));
            StringBuilder sb2 = new StringBuilder(name.length() + 1 + String.valueOf(hexString).length());
            sb2.append(name);
            sb2.append('@');
            sb2.append(hexString);
            String sb3 = sb2.toString();
            Logger logger = Logger.getLogger("com.google.common.base.Strings");
            Level level = Level.WARNING;
            String valueOf = String.valueOf(sb3);
            logger.log(level, valueOf.length() != 0 ? "Exception during lenientFormat for ".concat(valueOf) : new String("Exception during lenientFormat for "), (Throwable) e10);
            String name2 = e10.getClass().getName();
            StringBuilder sb4 = new StringBuilder(String.valueOf(sb3).length() + 9 + name2.length());
            sb4.append("<");
            sb4.append(sb3);
            sb4.append(" threw ");
            sb4.append(name2);
            sb4.append(">");
            return sb4.toString();
        }
    }

    public static String e(String str, int i9, char c10) {
        o.s(str);
        if (str.length() >= i9) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(i9);
        sb2.append(str);
        for (int length = str.length(); length < i9; length++) {
            sb2.append(c10);
        }
        return sb2.toString();
    }
}
