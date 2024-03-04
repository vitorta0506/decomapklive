package com.google.common.base;
/* loaded from: classes2.dex */
public final class c {
    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        int b10;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i9 = 0; i9 < length; i9++) {
            char charAt = charSequence.charAt(i9);
            char charAt2 = charSequence2.charAt(i9);
            if (charAt != charAt2 && ((b10 = b(charAt)) >= 26 || b10 != b(charAt2))) {
                return false;
            }
        }
        return true;
    }

    private static int b(char c10) {
        return (char) ((c10 | ' ') - 97);
    }

    public static boolean c(char c10) {
        return c10 >= 'a' && c10 <= 'z';
    }

    public static boolean d(char c10) {
        return c10 >= 'A' && c10 <= 'Z';
    }

    public static char e(char c10) {
        return d(c10) ? (char) (c10 ^ ' ') : c10;
    }

    public static String f(String str) {
        int length = str.length();
        int i9 = 0;
        while (i9 < length) {
            if (d(str.charAt(i9))) {
                char[] charArray = str.toCharArray();
                while (i9 < length) {
                    char c10 = charArray[i9];
                    if (d(c10)) {
                        charArray[i9] = (char) (c10 ^ ' ');
                    }
                    i9++;
                }
                return String.valueOf(charArray);
            }
            i9++;
        }
        return str;
    }

    public static char g(char c10) {
        return c(c10) ? (char) (c10 ^ ' ') : c10;
    }

    public static String h(String str) {
        int length = str.length();
        int i9 = 0;
        while (i9 < length) {
            if (c(str.charAt(i9))) {
                char[] charArray = str.toCharArray();
                while (i9 < length) {
                    char c10 = charArray[i9];
                    if (c(c10)) {
                        charArray[i9] = (char) (c10 ^ ' ');
                    }
                    i9++;
                }
                return String.valueOf(charArray);
            }
            i9++;
        }
        return str;
    }
}
