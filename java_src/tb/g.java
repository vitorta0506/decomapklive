package tb;

import android.text.TextUtils;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.SecretKey;
/* loaded from: classes4.dex */
public class g implements i {

    /* renamed from: a  reason: collision with root package name */
    private final f f58111a;

    /* renamed from: b  reason: collision with root package name */
    private SecretKey f58112b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar) {
        this.f58111a = fVar;
        b();
    }

    private SecretKey b() {
        try {
            String a10 = this.f58111a.a("/code/code1", null);
            String a11 = this.f58111a.a("/code/code2", null);
            String a12 = this.f58111a.a("/code/code3", null);
            String a13 = this.f58111a.a("/code/code4", null);
            if (a10 != null && a11 != null && a12 != null && a13 != null) {
                this.f58112b = k.a(a.b(a10), a.b(a11), a.b(a12), a.b(a13), 10000);
            }
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException unused) {
            Log.e("ExclamationMark", "Exception when reading the 'K&I' for 'Config'.");
            this.f58112b = null;
        }
        return this.f58112b;
    }

    public static boolean c(String str) {
        return !TextUtils.isEmpty(str) && Pattern.matches("^\\[!([A-Fa-f0-9]*)]", str);
    }

    static String d(String str) {
        try {
            Matcher matcher = Pattern.compile("^\\[!([A-Fa-f0-9]*)]").matcher(str);
            return matcher.find() ? matcher.group(1) : "";
        } catch (IllegalStateException | IndexOutOfBoundsException unused) {
            Log.e("ExclamationMark", "getRawString exception");
            return "";
        }
    }

    @Override // tb.i
    public String a(String str, String str2) {
        String str3;
        if (this.f58112b == null) {
            str3 = "mKey is null, return default value";
        } else if (!c(str)) {
            return str2;
        } else {
            try {
                return new String(k.b(this.f58112b, a.b(d(str))), "UTF-8");
            } catch (UnsupportedEncodingException | IllegalArgumentException | GeneralSecurityException unused) {
                str3 = "UnsupportedEncodingException||GeneralSecurityException||IllegalArgumentException";
            }
        }
        Log.e("ExclamationMark", str3);
        return str2;
    }
}
