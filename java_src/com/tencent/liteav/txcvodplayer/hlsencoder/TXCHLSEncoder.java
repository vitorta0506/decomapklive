package com.tencent.liteav.txcvodplayer.hlsencoder;

import android.text.TextUtils;
import android.util.Base64;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import com.tencent.liteav.base.util.LiteavLog;
import java.nio.charset.Charset;
import java.util.Random;
/* loaded from: classes4.dex */
public class TXCHLSEncoder {

    /* renamed from: a  reason: collision with root package name */
    private static final String f31594a = "com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder";

    /* renamed from: b  reason: collision with root package name */
    private static final Charset f31595b = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f31596c = "0123456789ABCDEF".toCharArray();

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            LiteavLog.w(f31594a, "encryptKey input exception!");
            return null;
        }
        return rsaEncrypt(str);
    }

    private static native byte[] aesDecrypt(String str, byte[] bArr);

    private static native byte[] aesEncrypt(String str, byte[] bArr);

    public static String b(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return new String(aesDecrypt(str, Base64.decode(str2, 2)), f31595b);
        }
        LiteavLog.w(f31594a, "decryptWithSecretKey input exception!");
        return null;
    }

    private static native String md5(int i9, String str, String str2, int i10);

    private static native String rsaEncrypt(String str);

    public static String a() {
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < 32; i9++) {
            char[] cArr = f31596c;
            sb2.append(cArr[new Random().nextInt(cArr.length)]);
        }
        return sb2.toString();
    }

    public static String a(int i9, String str, String str2, int i10) {
        if (TextUtils.isEmpty(str)) {
            str = V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND;
        }
        if (TextUtils.isEmpty(str2)) {
            LiteavLog.w(f31594a, "genSecretKey input exception!");
            return null;
        }
        return md5(i9, str, str2, i10);
    }

    public static String a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return Base64.encodeToString(aesEncrypt(str, str2.getBytes(f31595b)), 2);
        }
        LiteavLog.w(f31594a, "encryptWithSecretKey input exception!");
        return null;
    }
}
