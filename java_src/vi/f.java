package vi;
/* loaded from: classes7.dex */
public final class f {
    public static boolean a(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        for (int i9 = 0; i9 < charSequence.length(); i9++) {
            if (Character.isWhitespace(charSequence.charAt(i9))) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(CharSequence charSequence) {
        if (charSequence == null) {
            return true;
        }
        for (int i9 = 0; i9 < charSequence.length(); i9++) {
            if (!Character.isWhitespace(charSequence.charAt(i9))) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }
}
