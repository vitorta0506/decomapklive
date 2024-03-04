package cn.jiguang.common.app.helper;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import com.facebook.internal.security.CertificateUtil;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.UByte;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f2537a = "JAppHelper";

    /* renamed from: b  reason: collision with root package name */
    private static List<Object> f2538b = new ArrayList();

    public static Object a(Context context, boolean z10, Object obj) {
        cn.jiguang.al.a.a(f2537a, "not allowed to get applist");
        return -3;
    }

    public static String a(Context context, String str, String str2) {
        Signature[] signatureArr;
        SigningInfo signingInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (Build.VERSION.SDK_INT > 28) {
                PackageInfo packageInfo = packageManager.getPackageInfo(str, 134217728);
                signatureArr = (packageInfo == null || (signingInfo = packageInfo.signingInfo) == null) ? null : signingInfo.hasMultipleSigners() ? packageInfo.signingInfo.getApkContentsSigners() : packageInfo.signingInfo.getSigningCertificateHistory();
            } else {
                signatureArr = packageManager.getPackageInfo(str, 64).signatures;
            }
            if (signatureArr != null && signatureArr.length != 0) {
                byte[] digest = MessageDigest.getInstance(str2).digest(signatureArr[0].toByteArray());
                StringBuilder sb2 = new StringBuilder();
                for (int i9 = 0; i9 < digest.length; i9++) {
                    String upperCase = Integer.toHexString(digest[i9] & UByte.MAX_VALUE).toUpperCase(Locale.US);
                    if (upperCase.length() == 1) {
                        sb2.append("0");
                    }
                    sb2.append(upperCase);
                    if (i9 < digest.length - 1) {
                        sb2.append(CertificateUtil.DELIMITER);
                    }
                }
                return sb2.toString();
            }
            return "";
        } catch (Throwable th2) {
            String str3 = f2537a;
            cn.jiguang.al.a.d(str3, "getSign fail, error is " + th2.getMessage());
            return "";
        }
    }

    public static ArrayList<JSONArray> a(JSONArray jSONArray) {
        String str;
        StringBuilder sb2;
        String message;
        if (jSONArray != null && jSONArray.length() != 0) {
            try {
                JSONArray jSONArray2 = new JSONArray();
                ArrayList<JSONArray> arrayList = new ArrayList<>();
                int i9 = 0;
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                    if (optJSONObject != null && optJSONObject.length() != 0) {
                        int length = optJSONObject.toString().getBytes("UTF-8").length;
                        i9 += length;
                        if (i9 > 102400) {
                            if (jSONArray2.length() > 0) {
                                arrayList.add(jSONArray2);
                            }
                            jSONArray2 = new JSONArray();
                            jSONArray2.put(optJSONObject);
                            i9 = length;
                        } else {
                            jSONArray2.put(optJSONObject);
                        }
                    }
                }
                if (jSONArray2.length() > 0) {
                    arrayList.add(jSONArray2);
                }
                return arrayList;
            } catch (UnsupportedEncodingException e10) {
                str = f2537a;
                sb2 = new StringBuilder();
                sb2.append("partition exception:");
                message = e10.getMessage();
                sb2.append(message);
                cn.jiguang.al.a.d(str, sb2.toString());
                return null;
            } catch (Throwable th2) {
                str = f2537a;
                sb2 = new StringBuilder();
                sb2.append("partition throwable:");
                message = th2.getMessage();
                sb2.append(message);
                cn.jiguang.al.a.d(str, sb2.toString());
                return null;
            }
        }
        return null;
    }
}
