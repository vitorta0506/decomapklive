package tb;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes4.dex */
class l implements f {

    /* renamed from: a  reason: collision with root package name */
    private final Context f58115a;

    /* renamed from: b  reason: collision with root package name */
    private final String f58116b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Context context, String str) {
        this.f58115a = context;
        this.f58116b = str;
    }

    private static String a(String str) {
        try {
            return "agc_" + a.c(b(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return "";
        }
    }

    private static byte[] b(byte[] bArr) throws NoSuchAlgorithmException {
        return MessageDigest.getInstance("SHA-256").digest(bArr);
    }

    @Override // tb.f
    public String a(String str, String str2) {
        int identifier;
        String a10 = a(str);
        if (TextUtils.isEmpty(a10) || (identifier = this.f58115a.getResources().getIdentifier(a10, TypedValues.Custom.S_STRING, this.f58116b)) == 0) {
            return str2;
        }
        try {
            return this.f58115a.getResources().getString(identifier);
        } catch (Resources.NotFoundException unused) {
            return str2;
        }
    }
}
