package tb;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.SecretKey;
/* loaded from: classes4.dex */
class h implements i {

    /* renamed from: a  reason: collision with root package name */
    private SecretKey f58113a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, String str2, String str3, String str4) throws InvalidKeySpecException, NoSuchAlgorithmException, IllegalArgumentException {
        if (str == null || str2 == null || str3 == null || str4 == null) {
            return;
        }
        this.f58113a = k.a(a.b(str), a.b(str2), a.b(str3), a.b(str4), 5000);
    }

    @Override // tb.i
    public String a(String str, String str2) {
        SecretKey secretKey = this.f58113a;
        if (secretKey == null) {
            return str;
        }
        try {
            return new String(k.b(secretKey, a.b(str)), "UTF-8");
        } catch (UnsupportedEncodingException | IllegalArgumentException | GeneralSecurityException unused) {
            return str2;
        }
    }
}
