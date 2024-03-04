package com.tencent.xmagic.license;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes4.dex */
public class LicenceCheck {
    public static final String AES_DECODE_ALGORITHM = "AES/CBC/PKCS5Padding";
    public static final int ERROR_ASSET_FILE_NOT_EXIST = -6;
    public static final int ERROR_DECODE_CHECK = -3;
    public static final int ERROR_ENDDATE = -11;
    public static final int ERROR_FEATURE_ERROR = -5;
    public static final int ERROR_FILE_CONTENT_EMPTY = -8;
    public static final int ERROR_FILE_NOT_EXIST = -7;
    public static final int ERROR_JSON_FORMAT = -1;
    public static final int ERROR_OK = 0;
    public static final int ERROR_PACKAGE = -4;
    public static final int ERROR_SIGNATURE_CHECK = -2;
    public static final int ERROR_WRITE_LICENCE_FAILED = -9;
    public static final int ERROR_WRITE_PITU_LICENCE_FAILED = -10;
    private static final String KEY_APPID = "appId";
    private static final String KEY_ENCRYPTED_LICENSE = "encryptedLicense";
    private static final String KEY_SIGNATURE = "signature";
    private static final String LICENCE_DIR = "xmagic/licence";
    public static final String SIGNATURE_ALGORITHM = "SHA256WithRSA";
    private static final String TAG = "LicenceCheck";
    private static LicenceCheck sInstance;
    private String mBase64Licence;
    private Context mContext;
    private LicenceCheckListener mListener;
    private String XMAGIC_FILE = "YTXMagicSDK.licence";
    private String PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq4teqkW/TUruU89ElNVd\nKrpSL+HCITruyb6BS9mW6M4mqmxDhazDmQgMKNfsA0d2kxFucCsXTyesFNajaisk\nrAzVJpNGO75bQFap4jYzJYskIuas6fgIS7zSmGXgRcp6i0ZBH3pkVCXcgfLfsVCO\n+sN01jFhFgOC0LY2f1pJ+3jqktAlMIxy8Q9t7XwwL5/n8/Sledp7TwuRdnl2OPl3\nycCTRkXtOIoRNB9vgd9XooTKiEdCXC7W9ryvtwCiAB82vEfHWXXgzhsPC13URuFy\n1JqbWJtTCCcfsCVxuBplhVJAQ7JsF5SMntdJDkp7rJLhprgsaim2CRjcVseNmw97\nbwIDAQAB";
    private TXSignContext mXMagicCtx = new TXSignContext("XMagicSDK.licence");

    /* loaded from: classes4.dex */
    public interface LicenceCheckListener {
        void onLicenceLoaded(int i9, String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class TXSignContext {
        String localName;
        String tmpName;
        String folder = "";
        String key = "";
        String url = "";
        boolean isDownloadStart = false;
        boolean isCheckSuccess = false;
        int licenceVersionType = -99;
        String decodedLicenseInfo = "";

        public TXSignContext(String str) {
            this.localName = str;
            this.tmpName = str + ".tmp";
        }
    }

    private LicenceCheck() {
    }

    private int checkAssetLicence(TXSignContext tXSignContext) {
        if (checkAssetLicenceExist(tXSignContext)) {
            String readAssetFile = FileUtil.readAssetFile(this.mContext, tXSignContext.localName);
            if (TextUtils.isEmpty(readAssetFile)) {
                Log.e(TAG, "checkAssetLicence, licenceAssetStr is empty");
                return -8;
            }
            return checkLicenceInfo(tXSignContext, readAssetFile);
        }
        return -6;
    }

    private boolean checkAssetLicenceExist(TXSignContext tXSignContext) {
        return FileUtil.isAssetFileExists(this.mContext, tXSignContext.localName);
    }

    private boolean checkDateNotExpired(String str, String str2) {
        long timeStrToMillsSecond = timeStrToMillsSecond(str);
        long timeStrToMillsSecond2 = timeStrToMillsSecond(str2);
        long currentTimeMillis = System.currentTimeMillis();
        if (timeStrToMillsSecond < 0 || timeStrToMillsSecond2 < 0) {
            Log.e(TAG, "check date millis < 0! stateDate: " + timeStrToMillsSecond + ", endDate: " + timeStrToMillsSecond2);
            return false;
        } else if (timeStrToMillsSecond2 < currentTimeMillis || timeStrToMillsSecond > currentTimeMillis) {
            Log.e(TAG, "check date expire! currentDate: " + currentTimeMillis + ", startDate: " + timeStrToMillsSecond + ", endDate: " + timeStrToMillsSecond2);
            return false;
        } else {
            return true;
        }
    }

    private int checkLocalLicence(TXSignContext tXSignContext) {
        String str;
        String str2 = getLicenceDir() + File.separator + tXSignContext.localName;
        if (FileUtil.isFileExist(str2)) {
            try {
                str = FileUtil.readFile(str2);
            } catch (Exception e10) {
                Log.e(TAG, "read licence file error: ", e10);
                str = "";
            }
            if (TextUtils.isEmpty(str)) {
                Log.e(TAG, "checkLocalLicence, licenceStr is empty");
                return -8;
            }
            return checkLicenceInfo(tXSignContext, str);
        }
        return -7;
    }

    private String decodeLicence(TXSignContext tXSignContext, String str) {
        if (TextUtils.isEmpty(tXSignContext.key)) {
            Log.e(TAG, "decodeLicence, mKey is empty!!!");
            return "";
        }
        byte[] bytes = tXSignContext.key.getBytes();
        SecretKeySpec secretKeySpec = new SecretKeySpec(bytes, "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(nativeIvParameterSpec(bytes));
        byte[] decode = Base64.decode(str, 0);
        try {
            Cipher cipher = Cipher.getInstance(AES_DECODE_ALGORITHM);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            String str2 = new String(cipher.doFinal(decode), "UTF-8");
            Log.i(TAG, "decodeLicence : " + str2);
            return str2;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static LicenceCheck getInstance() {
        if (sInstance == null) {
            sInstance = new LicenceCheck();
        }
        return sInstance;
    }

    private PublicKey getPublicKey(String str) throws Exception {
        return KeyFactory.getInstance(RSAUtils.RSA).generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
    }

    private int isAvailable(TXSignContext tXSignContext, Context context) {
        if (tXSignContext.isCheckSuccess) {
            return 0;
        }
        if (this.mContext == null) {
            this.mContext = context;
        }
        if (checkAssetLicence(tXSignContext) == 0) {
            tXSignContext.isCheckSuccess = true;
            return 0;
        }
        int checkLocalLicence = checkLocalLicence(tXSignContext);
        if (checkLocalLicence == 0) {
            tXSignContext.isCheckSuccess = true;
            return 0;
        }
        return checkLocalLicence;
    }

    private byte[] nativeIvParameterSpec(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        if (bArr.length >= 16) {
            System.arraycopy(bArr, 0, bArr2, 0, 16);
        }
        return bArr2;
    }

    private void onFail(int i9) {
        Log.e(TAG, "onFail ret " + i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String readDownloadTempLicence(TXSignContext tXSignContext) {
        return FileUtil.readFile(new File(tXSignContext.folder + File.separator + tXSignContext.tmpName).getAbsolutePath());
    }

    private String readLastModified(TXSignContext tXSignContext) {
        Context context = this.mContext;
        if (context == null) {
            return null;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("LicenceCheck.lastModified", 0);
        return sharedPreferences.getString(tXSignContext.localName + ".lastModified", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveLastModified(TXSignContext tXSignContext, String str) {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("LicenceCheck.lastModified", 0).edit();
        edit.putString(tXSignContext.localName + ".lastModified", str);
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveTempLocal(TXSignContext tXSignContext) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getLicenceDir());
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
        tXSignContext.isCheckSuccess = true;
    }

    private void setLicense(TXSignContext tXSignContext, Context context, String str, String str2) {
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
        tXSignContext.key = str2;
        tXSignContext.url = str;
        if (this.mContext != null) {
            tXSignContext.folder = getLicenceDir();
            if (!FileUtil.isFileExist(tXSignContext.folder + File.separator + tXSignContext.localName)) {
                Log.i(TAG, "setLicense, file not exist, to download");
                saveLastModified(tXSignContext, "");
            }
            downloadLicense(tXSignContext);
        }
    }

    private static long timeStrToMillsSecond(String str) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd").parse(str).getTime();
        } catch (Exception e10) {
            Log.e(TAG, "time str to millsecond failed.", e10);
            return -1L;
        }
    }

    private int verifyLicence(TXSignContext tXSignContext, String str, String str2) {
        boolean z10;
        try {
            z10 = verifySig(Base64.decode(str, 0), Base64.decode(str2, 0), getPublicKey(this.PUBLIC_KEY));
        } catch (Exception e10) {
            e10.printStackTrace();
            Log.e(TAG, "verifyLicence, exception is : " + e10);
            z10 = false;
        }
        if (!z10) {
            onFail(-2);
            LicenceCheckListener licenceCheckListener = this.mListener;
            if (licenceCheckListener != null) {
                licenceCheckListener.onLicenceLoaded(-2, "licence check failed!! verify signature failed");
            }
            Log.e(TAG, "verifyLicence, signature not pass!");
            return -2;
        }
        String decodeLicence = decodeLicence(tXSignContext, str);
        if (TextUtils.isEmpty(decodeLicence)) {
            onFail(-3);
            LicenceCheckListener licenceCheckListener2 = this.mListener;
            if (licenceCheckListener2 != null) {
                licenceCheckListener2.onLicenceLoaded(-3, "licence check failed!! decryption failed");
            }
            Log.e(TAG, "verifyLicence, decodeValue is empty!");
            return -3;
        }
        tXSignContext.decodedLicenseInfo = decodeLicence;
        try {
            JSONObject jSONObject = new JSONObject(decodeLicence);
            Log.i(TAG, "verifyLicence, object " + jSONObject.toString());
            String string = jSONObject.getString("TELicense");
            if (!TextUtils.isEmpty(string)) {
                try {
                    byte[] decode = Base64.decode(string, 0);
                    FileUtil.writeFile(new File(getLicenceDir() + File.separator + this.XMAGIC_FILE).getAbsolutePath(), decode);
                } catch (Exception e11) {
                    Log.e(TAG, "decode pitu license error:" + e11);
                }
            }
            this.mBase64Licence = string;
            LicenceCheckListener licenceCheckListener3 = this.mListener;
            if (licenceCheckListener3 != null) {
                licenceCheckListener3.onLicenceLoaded(0, "licence check success!!");
            }
            return 0;
        } catch (JSONException e12) {
            e12.printStackTrace();
            Log.e(TAG, "verifyLicence, json format error ! exception = " + e12);
            onFail(-1);
            LicenceCheckListener licenceCheckListener4 = this.mListener;
            if (licenceCheckListener4 != null) {
                licenceCheckListener4.onLicenceLoaded(-1, "licence check failed!! json error");
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int verifyNewLicence(TXSignContext tXSignContext, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt(KEY_APPID);
            String string = jSONObject.getString(KEY_ENCRYPTED_LICENSE);
            String string2 = jSONObject.getString("signature");
            Log.i(TAG, "appid:" + optInt);
            Log.i(TAG, "encryptedLicense:" + string);
            Log.i(TAG, "signature:" + string2);
            return verifyLicence(tXSignContext, string, string2);
        } catch (JSONException e10) {
            e10.printStackTrace();
            onFail(-1);
            LicenceCheckListener licenceCheckListener = this.mListener;
            if (licenceCheckListener != null) {
                licenceCheckListener.onLicenceLoaded(-1, "licence check failed!! json error");
            }
            return -1;
        }
    }

    public static boolean verifySig(byte[] bArr, byte[] bArr2, PublicKey publicKey) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        Signature signature = Signature.getInstance(SIGNATURE_ALGORITHM);
        signature.initVerify(publicKey);
        signature.update(bArr);
        return signature.verify(bArr2);
    }

    public int checkLicenceInfo(TXSignContext tXSignContext, String str) {
        try {
            new JSONObject(str);
            return verifyNewLicence(tXSignContext, str);
        } catch (JSONException unused) {
            return -1;
        }
    }

    public void downloadLicense(final TXSignContext tXSignContext) {
        if (TextUtils.isEmpty(tXSignContext.url)) {
            Log.e(TAG, "downloadLicense, mUrl is empty, ignore!");
        } else if (tXSignContext.isDownloadStart) {
            Log.i(TAG, "downloadLicense, in downloading, ignore");
        } else {
            HttpFileListener httpFileListener = new HttpFileListener() { // from class: com.tencent.xmagic.license.LicenceCheck.1
                @Override // com.tencent.xmagic.license.HttpFileListener
                public void onProcessEnd() {
                    Log.i(LicenceCheck.TAG, "downloadLicense, onProcessEnd");
                    tXSignContext.isDownloadStart = false;
                }

                @Override // com.tencent.xmagic.license.HttpFileListener
                public void onProgressUpdate(int i9) {
                    Log.i(LicenceCheck.TAG, "downloadLicense, onProgressUpdate");
                }

                @Override // com.tencent.xmagic.license.HttpFileListener
                public void onSaveFailed(File file, Exception exc) {
                    Log.i(LicenceCheck.TAG, "downloadLicense, onSaveFailed");
                }

                @Override // com.tencent.xmagic.license.HttpFileListener
                public void onSaveSuccess(File file, String str) {
                    if (file == null) {
                        Log.i(LicenceCheck.TAG, "downloadLicense, license not modified");
                        return;
                    }
                    LicenceCheck.this.saveLastModified(tXSignContext, str);
                    Log.i(LicenceCheck.TAG, "downloadLicense, onSaveSuccess");
                    String readDownloadTempLicence = LicenceCheck.this.readDownloadTempLicence(tXSignContext);
                    if (TextUtils.isEmpty(readDownloadTempLicence)) {
                        Log.e(LicenceCheck.TAG, "downloadLicense, readDownloadTempLicence is empty!");
                        tXSignContext.isDownloadStart = false;
                    } else if (LicenceCheck.this.verifyNewLicence(tXSignContext, readDownloadTempLicence) == 0) {
                        LicenceCheck.this.saveTempLocal(tXSignContext);
                    }
                }
            };
            if (this.mContext == null) {
                Log.e(TAG, "context is NULL !!! Please set context in method:setLicense(Context context, String url, String key)");
                return;
            }
            tXSignContext.folder = getLicenceDir();
            new Thread(new HttpFileUtil(this.mContext, tXSignContext.url, tXSignContext.folder, tXSignContext.tmpName, httpFileListener, false, readLastModified(tXSignContext))).start();
            tXSignContext.isDownloadStart = true;
        }
    }

    public String getBase64Licence() {
        return this.mBase64Licence;
    }

    public String getLicenceDir() {
        File filesDir = this.mContext.getFilesDir();
        File file = new File(filesDir + File.separator + LICENCE_DIR);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public String getLicensePathBase64() {
        File file = new File(getLicenceDir() + File.separator + this.XMAGIC_FILE);
        if (!file.exists()) {
            Log.e(TAG, "getLicensePathBase64: licFile is not exists");
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[(int) file.length()];
            fileInputStream.read(bArr);
            fileInputStream.close();
            return Base64.encodeToString(bArr, 0);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void setListener(LicenceCheckListener licenceCheckListener) {
        this.mListener = licenceCheckListener;
    }

    public void setXMagicLicense(Context context, String str, String str2) {
        setLicense(this.mXMagicCtx, context, str, str2);
    }
}
