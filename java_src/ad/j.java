package ad;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes4.dex */
final class j {
    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static <T> T a(@Nullable T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(CharSequence charSequence, CharSequence charSequence2) {
        int length;
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || (length = charSequence.length()) != charSequence2.length()) {
            return false;
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return charSequence.equals(charSequence2);
        }
        for (int i9 = 0; i9 < length; i9++) {
            if (charSequence.charAt(i9) != charSequence2.charAt(i9)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(Throwable th2) {
        if (th2 == null) {
            return "";
        }
        for (Throwable th3 = th2; th3 != null; th3 = th3.getCause()) {
            if (th3 instanceof UnknownHostException) {
                return "";
            }
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th2.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static String e(Object obj) {
        if (obj == null) {
            return "null";
        }
        if (!obj.getClass().isArray()) {
            return obj.toString();
        }
        if (obj instanceof boolean[]) {
            return Arrays.toString((boolean[]) obj);
        }
        if (obj instanceof byte[]) {
            return Arrays.toString((byte[]) obj);
        }
        if (obj instanceof char[]) {
            return Arrays.toString((char[]) obj);
        }
        if (obj instanceof short[]) {
            return Arrays.toString((short[]) obj);
        }
        if (obj instanceof int[]) {
            return Arrays.toString((int[]) obj);
        }
        if (obj instanceof long[]) {
            return Arrays.toString((long[]) obj);
        }
        if (obj instanceof float[]) {
            return Arrays.toString((float[]) obj);
        }
        if (obj instanceof double[]) {
            return Arrays.toString((double[]) obj);
        }
        return obj instanceof Object[] ? Arrays.deepToString((Object[]) obj) : "Couldn't find a correct type for the object";
    }
}
