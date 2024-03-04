package qe;
/* loaded from: classes4.dex */
public final class c {
    public static int a(String str, int i9) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return i9;
        }
    }

    public static int b(String str, int i9, String str2) {
        while (i9 < str.length() && str2.indexOf(str.charAt(i9)) == -1) {
            i9++;
        }
        return i9;
    }

    public static int c(String str, int i9) {
        char charAt;
        while (i9 < str.length() && ((charAt = str.charAt(i9)) == ' ' || charAt == '\t')) {
            i9++;
        }
        return i9;
    }
}
