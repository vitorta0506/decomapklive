package com.tencent.xmagic.telicense;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.tencent.xmagic.auth.Auth;
import com.tencent.xmagic.auth.Json;
import com.tencent.xmagic.license.FileUtil;
import com.tencent.xmagic.license.RSAUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class TELicenseCheck {
    static final String AES_DECODE_ALGORITHM = "AES/CBC/PKCS5Padding";
    static final String ASSET_VCUBE_FILE = "v_cube.license";
    static final String DOWNLOAD_VCUBE_FILE = "vcube.license";
    public static final int ERROR_AUTH_ERROR = -13;
    public static final int ERROR_DECODE_CHECK = -8;
    public static final int ERROR_DOWNLOAD_AND_ASSET_BOTH_FAILED = -12;
    public static final int ERROR_DOWNLOAD_ERROR = -3;
    public static final int ERROR_FILE_CONTENT_EMPTY = -5;
    public static final int ERROR_INVALID_INPUT = -1;
    public static final int ERROR_JSON_ERROR_VCUBE = -6;
    public static final int ERROR_JSON_FORMAT_TE = -9;
    public static final int ERROR_LOCAL_TE_LICENSE_EMPTY = -4;
    public static final int ERROR_OK = 0;
    public static final int ERROR_SIGNATURE_CHECK = -7;
    public static final int ERROR_TE_LICENSE_CONTENT_EMPTY = -10;
    public static final int ERROR_WRITE_TE_LICENSE_FAILED = -11;
    static final String KEY_APPID = "appId";
    static final String KEY_ENCRYPTED_LICENSE = "encryptedLicense";
    static final String KEY_SIGNATURE = "signature";
    private static final String LICENSE_DIR = "tencent_effect_license" + File.separator + "download_license";
    static final String PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq4teqkW/TUruU89ElNVd\nKrpSL+HCITruyb6BS9mW6M4mqmxDhazDmQgMKNfsA0d2kxFucCsXTyesFNajaisk\nrAzVJpNGO75bQFap4jYzJYskIuas6fgIS7zSmGXgRcp6i0ZBH3pkVCXcgfLfsVCO\n+sN01jFhFgOC0LY2f1pJ+3jqktAlMIxy8Q9t7XwwL5/n8/Sledp7TwuRdnl2OPl3\nycCTRkXtOIoRNB9vgd9XooTKiEdCXC7W9ryvtwCiAB82vEfHWXXgzhsPC13URuFy\n1JqbWJtTCCcfsCVxuBplhVJAQ7JsF5SMntdJDkp7rJLhprgsaim2CRjcVseNmw97\nbwIDAQAB";
    static final String SIGNATURE_ALGORITHM = "SHA256WithRSA";
    private static final String TAG = "TELicenseCheck";
    static final String TENCENT_EFFECT_LICENSE_FILE = "tencent_effect.license";
    private final Object lockForTELicense;
    private Context mContext;
    private boolean mInProgress;
    private Object mLockForProgress;

    /* loaded from: classes4.dex */
    private static class Holder {
        private static TELicenseCheck instance = new TELicenseCheck();

        private Holder() {
        }
    }

    /* loaded from: classes4.dex */
    public interface TELicenseCheckListener {
        void onLicenseCheckFinish(int i9, String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class TXSignContext {
        String folder;
        String key;
        String localName;
        String tmpName;
        String url;

        private TXSignContext(String str) {
            this.localName = str;
            this.tmpName = str + ".tmp";
            this.folder = "";
            this.key = "";
            this.url = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String decodeLicense(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            Log.e(TAG, "decodeLicense, mKey is empty!!!");
            return "";
        }
        byte[] bytes = str.getBytes();
        SecretKeySpec secretKeySpec = new SecretKeySpec(bytes, "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(nativeIvParameterSpec(bytes));
        byte[] decode = Base64.decode(str2, 0);
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            String str3 = new String(cipher.doFinal(decode), "UTF-8");
            Log.i(TAG, "decodeLicense : " + str3);
            return str3;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void downloadLicense(final TXSignContext tXSignContext, final TELicenseCheckListener tELicenseCheckListener) {
        new TEHttpFileUtil(tXSignContext.url, tXSignContext.folder, tXSignContext.tmpName, new TEHttpFileListener() { // from class: com.tencent.xmagic.telicense.TELicenseCheck.2
            private void readDownloadedLicenseAndNotify(TELicenseCheckListener tELicenseCheckListener2) {
                if (tELicenseCheckListener2 == null) {
                    return;
                }
                String readLocalTELicenseBase64 = TELicenseCheck.this.readLocalTELicenseBase64();
                if (TextUtils.isEmpty(readLocalTELicenseBase64)) {
                    readLocalTELicenseBase64 = AssetLicenseUtil.parseAssetLicense(TELicenseCheck.this.mContext, tXSignContext.key);
                }
                if (!TextUtils.isEmpty(readLocalTELicenseBase64)) {
                    TELicenseCheck.this.onLicenseLoaded(readLocalTELicenseBase64, tELicenseCheckListener2);
                } else {
                    TELicenseCheck.this.notifyLicenseLoadError(-4, tELicenseCheckListener2);
                }
            }

            @Override // com.tencent.xmagic.telicense.TEHttpFileListener
            public void onDownloadFailed(String str) {
                Log.d(TELicenseCheck.TAG, "onDownloadFailed: msg=" + str + "，准备读取本地asset");
                if (tELicenseCheckListener != null) {
                    String parseAssetLicense = AssetLicenseUtil.parseAssetLicense(TELicenseCheck.this.mContext, tXSignContext.key);
                    if (TextUtils.isEmpty(parseAssetLicense)) {
                        TELicenseCheck.this.notifyLicenseLoadError(-12, tELicenseCheckListener);
                    } else {
                        TELicenseCheck.this.onLicenseLoaded(parseAssetLicense, tELicenseCheckListener);
                    }
                }
                TELicenseCheck.this.notifyProgressEnd();
            }

            @Override // com.tencent.xmagic.telicense.TEHttpFileListener
            public void onDownloadSuccess(File file, String str) {
                Log.i(TELicenseCheck.TAG, "downloadLicense, onDownloadSuccess,lastModified=" + str);
                TELicenseCheck.this.saveLastModified(TELicenseCheck.DOWNLOAD_VCUBE_FILE, str);
                TELicenseCheck tELicenseCheck = TELicenseCheck.this;
                TXSignContext tXSignContext2 = tXSignContext;
                if (tELicenseCheck.verifyNewLicense(tXSignContext2.key, tELicenseCheck.readDownloadTempFile(tXSignContext2)) == 0) {
                    TELicenseCheck.this.saveTempLocal(tXSignContext);
                    readDownloadedLicenseAndNotify(tELicenseCheckListener);
                } else if (tELicenseCheckListener != null) {
                    String parseAssetLicense = AssetLicenseUtil.parseAssetLicense(TELicenseCheck.this.mContext, tXSignContext.key);
                    if (TextUtils.isEmpty(parseAssetLicense)) {
                        TELicenseCheck.this.notifyLicenseLoadError(-12, tELicenseCheckListener);
                    } else {
                        TELicenseCheck.this.onLicenseLoaded(parseAssetLicense, tELicenseCheckListener);
                    }
                }
                TELicenseCheck.this.notifyProgressEnd();
            }

            @Override // com.tencent.xmagic.telicense.TEHttpFileListener
            public void onNotModified() {
                Log.d(TELicenseCheck.TAG, "onNotModified，read local cache");
                readDownloadedLicenseAndNotify(tELicenseCheckListener);
                TELicenseCheck.this.notifyProgressEnd();
            }
        }, readLastModified(DOWNLOAD_VCUBE_FILE)).run();
    }

    private String getErrorMsg(int i9) {
        switch (i9) {
            case ERROR_AUTH_ERROR /* -13 */:
                return "Authentication failed, please check whether so file is in the package, or the so path has been set correctly";
            case ERROR_DOWNLOAD_AND_ASSET_BOTH_FAILED /* -12 */:
                return "The download failed, and the parsing of the local asset also failed";
            case -11:
                return "Failed to write TE authorization information to local file";
            case -10:
                return "The TE authorization information parsed from the network is empty";
            case -9:
                return "Json error found in TELicense field";
            case -8:
                return "Decryption failed";
            case -7:
                return "Verify signature failed";
            case -6:
                return "Json error found in vcube.license file";
            case -5:
                return "Read TEMP License file content is empty";
            case -4:
                return "The TE authorization information read from the local is empty";
            case -3:
                return "Download failed, please check the network settings";
            case -2:
            default:
                return "Other errors";
            case -1:
                return "Invalid input parameter";
            case 0:
                return "Success";
        }
    }

    public static TELicenseCheck getInstance() {
        return Holder.instance;
    }

    private String getLicenseDir() {
        File filesDir = this.mContext.getFilesDir();
        File file = new File(filesDir + File.separator + LICENSE_DIR);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PublicKey getPublicKey(String str) throws Exception {
        return KeyFactory.getInstance(RSAUtils.RSA).generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
    }

    static byte[] nativeIvParameterSpec(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        if (bArr.length >= 16) {
            System.arraycopy(bArr, 0, bArr2, 0, 16);
        }
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyLicenseLoadError(int i9, TELicenseCheckListener tELicenseCheckListener) {
        if (tELicenseCheckListener == null) {
            return;
        }
        String errorMsg = getErrorMsg(i9);
        Log.d(TAG, "notifyLicenseLoadError: errorCode = " + i9 + ",msg=" + errorMsg);
        tELicenseCheckListener.onLicenseCheckFinish(i9, errorMsg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyProgressEnd() {
        synchronized (this.mLockForProgress) {
            Log.d(TAG, "setLicense: notifyProgressEnd,currentThead=" + Thread.currentThread());
            this.mInProgress = false;
            this.mLockForProgress.notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLicenseLoaded(String str, TELicenseCheckListener tELicenseCheckListener) {
        if (tELicenseCheckListener == null) {
            return;
        }
        Log.d(TAG, "onLicenseLoaded: licenseInfo=" + str);
        try {
            Auth.AuthResult authByBase64 = Auth.authByBase64(this.mContext, str, "");
            Log.d(TAG, "onLicenseLoaded,auth result json =" + Json.toJsonStr(authByBase64));
            if (authByBase64.isSucceed) {
                tELicenseCheckListener.onLicenseCheckFinish(0, getErrorMsg(0));
            } else {
                Auth.AuthResultFail authResultFail = authByBase64.authResultFail;
                tELicenseCheckListener.onLicenseCheckFinish(authResultFail.code, authResultFail.msg);
            }
        } catch (UnsatisfiedLinkError e10) {
            Log.e(TAG, "onLicenseLoaded: auth error = " + e10.toString());
            notifyLicenseLoadError(-13, tELicenseCheckListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String readDownloadTempFile(TXSignContext tXSignContext) {
        return FileUtil.readFile(new File(tXSignContext.folder + File.separator + tXSignContext.tmpName).getAbsolutePath());
    }

    private String readLastModified(String str) {
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("TELicenseCheck.lastModified", 0);
        return sharedPreferences.getString(str + ".lastModified", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    public String readLocalTELicenseBase64() {
        FileInputStream fileInputStream;
        synchronized (this.lockForTELicense) {
            File file = new File(getLicenseDir() + File.separator + TENCENT_EFFECT_LICENSE_FILE);
            ?? exists = file.exists();
            FileInputStream fileInputStream2 = null;
            try {
                if (exists == 0) {
                    Log.e(TAG, "getLicensePathBase64: licFile is not exists");
                    return null;
                }
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        byte[] bArr = new byte[(int) file.length()];
                        fileInputStream.read(bArr);
                        fileInputStream.close();
                        String encodeToString = Base64.encodeToString(bArr, 0);
                        try {
                            fileInputStream.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        return encodeToString;
                    } catch (Exception e11) {
                        e = e11;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Exception e13) {
                    e = e13;
                    fileInputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream2 = exists;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveLastModified(String str, String str2) {
        SharedPreferences.Editor edit = this.mContext.getSharedPreferences("TELicenseCheck.lastModified", 0).edit();
        edit.putString(str + ".lastModified", str2);
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveTempLocal(TXSignContext tXSignContext) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getLicenseDir());
        String str = File.separator;
        sb2.append(str);
        sb2.append(tXSignContext.localName);
        File file = new File(sb2.toString());
        if (file.exists()) {
            boolean delete = file.delete();
            Log.i(TAG, "delete dst file:" + delete);
        }
        File file2 = new File(tXSignContext.folder + str + tXSignContext.tmpName);
        if (file2.exists()) {
            boolean renameTo = file2.renameTo(file);
            Log.i(TAG, "rename file:" + renameTo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLicense(String str, String str2, TELicenseCheckListener tELicenseCheckListener) {
        synchronized (this.mLockForProgress) {
            while (this.mInProgress) {
                try {
                    this.mLockForProgress.wait();
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
            this.mInProgress = true;
        }
        Log.d(TAG, "setLicense: currentThead=" + Thread.currentThread());
        String readLocalTELicenseBase64 = readLocalTELicenseBase64();
        if (TextUtils.isEmpty(readLocalTELicenseBase64)) {
            saveLastModified(DOWNLOAD_VCUBE_FILE, "");
        } else if (tELicenseCheckListener != null) {
            try {
                Auth.AuthResult authByBase64 = Auth.authByBase64(this.mContext, readLocalTELicenseBase64, "");
                Log.d(TAG, "setLicense: cache auth result json =" + Json.toJsonStr(authByBase64));
                if (authByBase64.isSucceed) {
                    tELicenseCheckListener.onLicenseCheckFinish(0, getErrorMsg(0));
                    tELicenseCheckListener = null;
                }
            } catch (UnsatisfiedLinkError e11) {
                Log.e(TAG, "setLicense: cache auth error = " + e11.toString());
            }
        }
        TXSignContext tXSignContext = new TXSignContext(DOWNLOAD_VCUBE_FILE);
        tXSignContext.key = str2;
        tXSignContext.url = str;
        tXSignContext.folder = getLicenseDir();
        downloadLicense(tXSignContext, tELicenseCheckListener);
    }

    private int verifyLicense(String str, String str2, String str3) {
        try {
            if (verifySig(Base64.decode(str2, 0), Base64.decode(str3, 0), getPublicKey(PUBLIC_KEY))) {
                String decodeLicense = decodeLicense(str, str2);
                if (TextUtils.isEmpty(decodeLicense)) {
                    Log.e(TAG, "verifyLicense, decodeValue is empty!");
                    return -8;
                }
                try {
                    JSONObject jSONObject = new JSONObject(decodeLicense);
                    Log.i(TAG, "verifyLicense, object " + jSONObject.toString());
                    String optString = jSONObject.optString("TELicense", null);
                    if (TextUtils.isEmpty(optString)) {
                        optString = jSONObject.optString("pituLicense", null);
                    }
                    if (TextUtils.isEmpty(optString)) {
                        return -10;
                    }
                    return !writeLocalTELicenseBase64(optString) ? -11 : 0;
                } catch (JSONException e10) {
                    e10.printStackTrace();
                    Log.e(TAG, "verifyLicense, json format error ! exception = " + e10);
                    return -9;
                }
            }
            return -7;
        } catch (Exception e11) {
            e11.printStackTrace();
            Log.e(TAG, "verifyLicense, exception is : " + e11);
            return -7;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int verifyNewLicense(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return -5;
        }
        try {
            JSONObject jSONObject = new JSONObject(str2);
            int optInt = jSONObject.optInt(KEY_APPID);
            String string = jSONObject.getString(KEY_ENCRYPTED_LICENSE);
            String string2 = jSONObject.getString("signature");
            Log.i(TAG, "appid:" + optInt);
            Log.i(TAG, "encryptedLicense:" + string);
            Log.i(TAG, "signature:" + string2);
            return verifyLicense(str, string, string2);
        } catch (JSONException e10) {
            e10.printStackTrace();
            return -6;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean verifySig(byte[] bArr, byte[] bArr2, PublicKey publicKey) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        Signature signature = Signature.getInstance("SHA256WithRSA");
        signature.initVerify(publicKey);
        signature.update(bArr);
        return signature.verify(bArr2);
    }

    private boolean writeLocalTELicenseBase64(String str) {
        synchronized (this.lockForTELicense) {
            try {
                try {
                    byte[] decode = Base64.decode(str, 0);
                    FileUtil.writeFile(new File(getLicenseDir() + File.separator + TENCENT_EFFECT_LICENSE_FILE).getAbsolutePath(), decode);
                } catch (Exception e10) {
                    Log.e(TAG, "decode pitu license error:" + e10);
                    return false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return true;
    }

    public void setTELicense(Context context, final String str, final String str2, final TELicenseCheckListener tELicenseCheckListener) {
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && str.toLowerCase().startsWith("http")) {
            this.mContext = context.getApplicationContext();
            new Thread(new Runnable() { // from class: com.tencent.xmagic.telicense.TELicenseCheck.1
                @Override // java.lang.Runnable
                public void run() {
                    TELicenseCheck.this.setLicense(str, str2, tELicenseCheckListener);
                }
            }).start();
            return;
        }
        notifyLicenseLoadError(-1, tELicenseCheckListener);
    }

    private TELicenseCheck() {
        this.mInProgress = false;
        this.mLockForProgress = new Object();
        this.lockForTELicense = new Object();
    }
}
