package g3;

import com.facebook.internal.security.CertificateUtil;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f39946a = Pattern.compile("^NOTE([ \t].*)?$");

    public static boolean a(b0 b0Var) {
        String p10 = b0Var.p();
        return p10 != null && p10.startsWith("WEBVTT");
    }

    public static float b(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long c(String str) throws NumberFormatException {
        String[] H0 = l0.H0(str, "\\.");
        long j10 = 0;
        for (String str2 : l0.G0(H0[0], CertificateUtil.DELIMITER)) {
            j10 = (j10 * 60) + Long.parseLong(str2);
        }
        long j11 = j10 * 1000;
        if (H0.length == 2) {
            j11 += Long.parseLong(H0[1]);
        }
        return j11 * 1000;
    }

    public static void d(b0 b0Var) throws ParserException {
        int e10 = b0Var.e();
        if (a(b0Var)) {
            return;
        }
        b0Var.P(e10);
        throw ParserException.createForMalformedContainer("Expected WEBVTT. Got " + b0Var.p(), null);
    }
}
