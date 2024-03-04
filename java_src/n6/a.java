package n6;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.internal.security.CertificateUtil;
import com.google.firebase.d;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.tencent.xmagic.license.RSAUtils;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f55351c = {ProxyConfig.MATCH_ALL_SCHEMES, "FCM", "GCM", ""};
    @GuardedBy("iidPrefs")

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f55352a;

    /* renamed from: b  reason: collision with root package name */
    private final String f55353b;

    public a(@NonNull d dVar) {
        this.f55352a = dVar.k().getSharedPreferences("com.google.android.gms.appid", 0);
        this.f55353b = b(dVar);
    }

    private String a(@NonNull String str, @NonNull String str2) {
        return "|T|" + str + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + str2;
    }

    private static String b(d dVar) {
        String d10 = dVar.o().d();
        if (d10 != null) {
            return d10;
        }
        String c10 = dVar.o().c();
        if (c10.startsWith("1:") || c10.startsWith("2:")) {
            String[] split = c10.split(CertificateUtil.DELIMITER);
            if (split.length != 4) {
                return null;
            }
            String str = split[1];
            if (str.isEmpty()) {
                return null;
            }
            return str;
        }
        return c10;
    }

    @Nullable
    private static String c(@NonNull PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    private String d(String str) {
        try {
            return new JSONObject(str).getString(JThirdPlatFormInterface.KEY_TOKEN);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    private PublicKey e(String str) {
        try {
            return KeyFactory.getInstance(RSAUtils.RSA).generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e10) {
            Log.w("ContentValues", "Invalid key stored " + e10);
            return null;
        }
    }

    @Nullable
    private String g() {
        String string;
        synchronized (this.f55352a) {
            string = this.f55352a.getString("|S|id", null);
        }
        return string;
    }

    @Nullable
    private String h() {
        synchronized (this.f55352a) {
            String string = this.f55352a.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey e10 = e(string);
            if (e10 == null) {
                return null;
            }
            return c(e10);
        }
    }

    @Nullable
    public String f() {
        synchronized (this.f55352a) {
            String g10 = g();
            if (g10 != null) {
                return g10;
            }
            return h();
        }
    }

    @Nullable
    public String i() {
        synchronized (this.f55352a) {
            for (String str : f55351c) {
                String string = this.f55352a.getString(a(this.f55353b, str), null);
                if (string != null && !string.isEmpty()) {
                    if (string.startsWith("{")) {
                        string = d(string);
                    }
                    return string;
                }
            }
            return null;
        }
    }
}
