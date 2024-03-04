package com.tencent.xmagic.telicense;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.tencent.xmagic.license.FileUtil;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
class AssetLicenseUtil {
    private static final String TAG = "AssetLicenseUtil";

    AssetLicenseUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String parseAssetLicense(Context context, String str) {
        String readAssetFile = FileUtil.readAssetFile(context, "v_cube.license");
        if (TextUtils.isEmpty(readAssetFile)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(readAssetFile);
            int optInt = jSONObject.optInt("appId");
            String string = jSONObject.getString("encryptedLicense");
            String string2 = jSONObject.getString("signature");
            Log.i(TAG, "appid:" + optInt);
            Log.i(TAG, "encryptedLicense:" + string);
            Log.i(TAG, "signature:" + string2);
            return verifyLicense(str, string, string2);
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static String verifyLicense(String str, String str2, String str3) {
        try {
            if (TELicenseCheck.verifySig(Base64.decode(str2, 0), Base64.decode(str3, 0), TELicenseCheck.getPublicKey("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq4teqkW/TUruU89ElNVd\nKrpSL+HCITruyb6BS9mW6M4mqmxDhazDmQgMKNfsA0d2kxFucCsXTyesFNajaisk\nrAzVJpNGO75bQFap4jYzJYskIuas6fgIS7zSmGXgRcp6i0ZBH3pkVCXcgfLfsVCO\n+sN01jFhFgOC0LY2f1pJ+3jqktAlMIxy8Q9t7XwwL5/n8/Sledp7TwuRdnl2OPl3\nycCTRkXtOIoRNB9vgd9XooTKiEdCXC7W9ryvtwCiAB82vEfHWXXgzhsPC13URuFy\n1JqbWJtTCCcfsCVxuBplhVJAQ7JsF5SMntdJDkp7rJLhprgsaim2CRjcVseNmw97\nbwIDAQAB"))) {
                String decodeLicense = TELicenseCheck.decodeLicense(str, str2);
                if (TextUtils.isEmpty(decodeLicense)) {
                    Log.e(TAG, "verifyLicense, decodeValue is empty!");
                    return null;
                }
                try {
                    JSONObject jSONObject = new JSONObject(decodeLicense);
                    Log.i(TAG, "verifyLicense, object " + jSONObject.toString());
                    String optString = jSONObject.optString("TELicense", null);
                    return TextUtils.isEmpty(optString) ? jSONObject.optString("pituLicense", null) : optString;
                } catch (JSONException e10) {
                    e10.printStackTrace();
                    Log.e(TAG, "verifyLicense, json format error ! exception = " + e10);
                    return null;
                }
            }
            return null;
        } catch (Exception e11) {
            e11.printStackTrace();
            Log.e(TAG, "verifyLicense, exception is : " + e11);
            return null;
        }
    }
}
