package com.tencent.imsdk.common;

import android.text.TextUtils;
import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class HttpClient {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    public static final int HTTP_ACTION_REQUEST = 0;
    public static final int HTTP_ACTION_RESPONSE = 1;
    private static final long KEEP_ALIVE = 5;
    private static final int MAX_POOL_SIZE;
    private static final int PROXY_TYPE_HTTP = 1;
    private static final int PROXY_TYPE_SOCKS5 = 2;
    private static final String TAG = "HttpClient";
    private static boolean mNeedRollbackHttps2Http;
    private static String mRollbackHttps2Http;
    private static final Executor mThreadPoolExecutor;

    /* loaded from: classes4.dex */
    static class BasicAuthenticator extends Authenticator {
        private String password;
        private String userName;

        public BasicAuthenticator(String str, String str2) {
            this.userName = str;
            this.password = str2;
        }

        @Override // java.net.Authenticator
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(this.userName, this.password.toCharArray());
        }
    }

    /* loaded from: classes4.dex */
    public interface HttpRequestListener {
        void onCompleted(int i9, Map<String, String> map, byte[] bArr);

        void onProgress(int i9, int i10, int i11);
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = availableProcessors;
        int i9 = availableProcessors + 1;
        CORE_POOL_SIZE = i9;
        int i10 = (availableProcessors * 2) + 1;
        MAX_POOL_SIZE = i10;
        mRollbackHttps2Http = "";
        mNeedRollbackHttps2Http = false;
        mThreadPoolExecutor = new ThreadPoolExecutor(i9, i10, 5L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    }

    private static void httpRequest(final String str, final String str2, final Boolean bool, final Map<String, String> map, final byte[] bArr, final String str3, final String str4, final HttpRequestListener httpRequestListener, final int i9, final String str5, final int i10, final String str6, final String str7, final int i11, final int i12, final String str8) {
        mThreadPoolExecutor.execute(new Runnable() { // from class: com.tencent.imsdk.common.HttpClient.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:120:0x021a  */
            /* JADX WARN: Removed duplicated region for block: B:128:0x022c  */
            /* JADX WARN: Removed duplicated region for block: B:164:0x0291  */
            /* JADX WARN: Removed duplicated region for block: B:167:0x0298  */
            /* JADX WARN: Removed duplicated region for block: B:181:0x02ca  */
            /* JADX WARN: Removed duplicated region for block: B:184:0x02d1  */
            /* JADX WARN: Removed duplicated region for block: B:194:0x02e3  */
            /* JADX WARN: Removed duplicated region for block: B:197:0x02ea  */
            /* JADX WARN: Removed duplicated region for block: B:199:0x0287 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:204:0x02c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:206:0x021d A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:210:0x02d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:222:0x017b A[EDGE_INSN: B:222:0x017b->B:77:0x017b ?: BREAK  , SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:232:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:72:0x015c A[Catch: all -> 0x024d, Exception -> 0x0250, UnknownHostException -> 0x0253, TryCatch #17 {UnknownHostException -> 0x0253, Exception -> 0x0250, all -> 0x024d, blocks: (B:18:0x0064, B:20:0x006c, B:22:0x0074, B:39:0x00d5, B:41:0x00ef, B:42:0x00f7, B:44:0x00fd, B:45:0x0113, B:47:0x011b, B:49:0x011f, B:50:0x012a, B:52:0x012e, B:56:0x0134, B:58:0x0138, B:67:0x0149, B:70:0x0157, B:72:0x015c, B:74:0x016b, B:75:0x0175, B:77:0x017b, B:78:0x017f, B:80:0x018b, B:73:0x0164, B:81:0x018f, B:32:0x00ad, B:34:0x00b5, B:36:0x00bd), top: B:214:0x003b }] */
            /* JADX WARN: Removed duplicated region for block: B:73:0x0164 A[Catch: all -> 0x024d, Exception -> 0x0250, UnknownHostException -> 0x0253, TryCatch #17 {UnknownHostException -> 0x0253, Exception -> 0x0250, all -> 0x024d, blocks: (B:18:0x0064, B:20:0x006c, B:22:0x0074, B:39:0x00d5, B:41:0x00ef, B:42:0x00f7, B:44:0x00fd, B:45:0x0113, B:47:0x011b, B:49:0x011f, B:50:0x012a, B:52:0x012e, B:56:0x0134, B:58:0x0138, B:67:0x0149, B:70:0x0157, B:72:0x015c, B:74:0x016b, B:75:0x0175, B:77:0x017b, B:78:0x017f, B:80:0x018b, B:73:0x0164, B:81:0x018f, B:32:0x00ad, B:34:0x00b5, B:36:0x00bd), top: B:214:0x003b }] */
            /* JADX WARN: Removed duplicated region for block: B:78:0x017f A[Catch: all -> 0x024d, Exception -> 0x0250, UnknownHostException -> 0x0253, TryCatch #17 {UnknownHostException -> 0x0253, Exception -> 0x0250, all -> 0x024d, blocks: (B:18:0x0064, B:20:0x006c, B:22:0x0074, B:39:0x00d5, B:41:0x00ef, B:42:0x00f7, B:44:0x00fd, B:45:0x0113, B:47:0x011b, B:49:0x011f, B:50:0x012a, B:52:0x012e, B:56:0x0134, B:58:0x0138, B:67:0x0149, B:70:0x0157, B:72:0x015c, B:74:0x016b, B:75:0x0175, B:77:0x017b, B:78:0x017f, B:80:0x018b, B:73:0x0164, B:81:0x018f, B:32:0x00ad, B:34:0x00b5, B:36:0x00bd), top: B:214:0x003b }] */
            /* JADX WARN: Removed duplicated region for block: B:84:0x019d A[Catch: all -> 0x023c, Exception -> 0x0242, UnknownHostException -> 0x0247, TRY_LEAVE, TryCatch #12 {UnknownHostException -> 0x0247, Exception -> 0x0242, all -> 0x023c, blocks: (B:82:0x0193, B:84:0x019d), top: B:218:0x0193 }] */
            /* JADX WARN: Removed duplicated region for block: B:88:0x01b3  */
            /* JADX WARN: Removed duplicated region for block: B:91:0x01ba  */
            /* JADX WARN: Removed duplicated region for block: B:99:0x01ca A[Catch: all -> 0x0231, Exception -> 0x0234, UnknownHostException -> 0x0239, TRY_LEAVE, TryCatch #16 {UnknownHostException -> 0x0239, Exception -> 0x0234, all -> 0x0231, blocks: (B:87:0x01a5, B:89:0x01b4, B:92:0x01bb, B:94:0x01bf, B:99:0x01ca), top: B:216:0x01a5 }] */
            /* JADX WARN: Type inference failed for: r0v19 */
            /* JADX WARN: Type inference failed for: r0v20, types: [byte[]] */
            /* JADX WARN: Type inference failed for: r0v34 */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r1v10, types: [java.net.HttpURLConnection] */
            /* JADX WARN: Type inference failed for: r1v11, types: [com.tencent.imsdk.common.HttpClient$HttpRequestListener] */
            /* JADX WARN: Type inference failed for: r1v12, types: [java.net.HttpURLConnection] */
            /* JADX WARN: Type inference failed for: r1v14 */
            /* JADX WARN: Type inference failed for: r1v16, types: [com.tencent.imsdk.common.HttpClient$HttpRequestListener] */
            /* JADX WARN: Type inference failed for: r1v17 */
            /* JADX WARN: Type inference failed for: r1v18 */
            /* JADX WARN: Type inference failed for: r1v19 */
            /* JADX WARN: Type inference failed for: r1v2 */
            /* JADX WARN: Type inference failed for: r1v24, types: [java.net.HttpURLConnection] */
            /* JADX WARN: Type inference failed for: r1v25, types: [com.tencent.imsdk.common.HttpClient$HttpRequestListener] */
            /* JADX WARN: Type inference failed for: r1v30 */
            /* JADX WARN: Type inference failed for: r1v31 */
            /* JADX WARN: Type inference failed for: r1v32 */
            /* JADX WARN: Type inference failed for: r1v33 */
            /* JADX WARN: Type inference failed for: r1v34 */
            /* JADX WARN: Type inference failed for: r1v35 */
            /* JADX WARN: Type inference failed for: r1v36 */
            /* JADX WARN: Type inference failed for: r1v37 */
            /* JADX WARN: Type inference failed for: r1v38 */
            /* JADX WARN: Type inference failed for: r1v39 */
            /* JADX WARN: Type inference failed for: r1v42 */
            /* JADX WARN: Type inference failed for: r1v43 */
            /* JADX WARN: Type inference failed for: r1v44 */
            /* JADX WARN: Type inference failed for: r1v45 */
            /* JADX WARN: Type inference failed for: r1v46 */
            /* JADX WARN: Type inference failed for: r1v47 */
            /* JADX WARN: Type inference failed for: r1v48 */
            /* JADX WARN: Type inference failed for: r1v5 */
            /* JADX WARN: Type inference failed for: r1v53 */
            /* JADX WARN: Type inference failed for: r1v6 */
            /* JADX WARN: Type inference failed for: r3v6, types: [java.io.IOException] */
            /* JADX WARN: Type inference failed for: r4v15 */
            /* JADX WARN: Type inference failed for: r5v0 */
            /* JADX WARN: Type inference failed for: r5v10 */
            /* JADX WARN: Type inference failed for: r5v11, types: [byte[]] */
            /* JADX WARN: Type inference failed for: r5v13 */
            /* JADX WARN: Type inference failed for: r5v31 */
            /* JADX WARN: Type inference failed for: r5v34 */
            /* JADX WARN: Type inference failed for: r5v36 */
            /* JADX WARN: Type inference failed for: r5v38 */
            /* JADX WARN: Type inference failed for: r5v4 */
            /* JADX WARN: Type inference failed for: r5v42 */
            /* JADX WARN: Type inference failed for: r5v44 */
            /* JADX WARN: Type inference failed for: r5v55 */
            /* JADX WARN: Type inference failed for: r5v56 */
            /* JADX WARN: Type inference failed for: r5v57 */
            /* JADX WARN: Type inference failed for: r5v58 */
            /* JADX WARN: Type inference failed for: r5v59 */
            /* JADX WARN: Type inference failed for: r5v60 */
            /* JADX WARN: Type inference failed for: r5v8, types: [byte[]] */
            /* JADX WARN: Type inference failed for: r5v9 */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 750
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.imsdk.common.HttpClient.AnonymousClass1.run():void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeProgressCallback(int i9, int i10, int i11, long j10);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeResponseCallback(int i9, String[] strArr, String[] strArr2, byte[] bArr, long j10);

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean needRollbackHttps2Http(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            String str2 = "";
            if (SystemUtil.isBrandOppo()) {
                str2 = "oppo";
            } else if (SystemUtil.isBrandVivo()) {
                str2 = "vivo";
            } else if (SystemUtil.isBrandHuawei()) {
                str2 = "huawei";
            } else if (SystemUtil.isBrandXiaoMi()) {
                str2 = "xiaomi";
            } else if (SystemUtil.isBrandMeizu()) {
                str2 = "meizu";
            }
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i9);
                String string = jSONObject.getString("brand");
                int i10 = jSONObject.getInt("below_version");
                if (str2.equals(string)) {
                    return SystemUtil.getSDKVersion() <= i10;
                }
            }
            return false;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private static void httpRequest(String str, String str2, boolean z10, String[] strArr, String[] strArr2, byte[] bArr, String str3, String str4, final long j10, final long j11, int i9, String str5, int i10, String str6, String str7, int i11, int i12, String str8) {
        HashMap hashMap;
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length) {
            hashMap = null;
        } else {
            hashMap = new HashMap();
            for (int i13 = 0; i13 < strArr.length; i13++) {
                hashMap.put(strArr[i13], strArr2[i13]);
            }
        }
        httpRequest(str, str2, Boolean.valueOf(z10), hashMap, bArr, str3, str4, new HttpRequestListener() { // from class: com.tencent.imsdk.common.HttpClient.2
            @Override // com.tencent.imsdk.common.HttpClient.HttpRequestListener
            public void onCompleted(int i14, Map<String, String> map, byte[] bArr2) {
                String[] strArr3;
                String[] strArr4;
                if (j11 != 0) {
                    if (map != null) {
                        String[] strArr5 = new String[map.size()];
                        String[] strArr6 = new String[map.size()];
                        int i15 = 0;
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            strArr5[i15] = entry.getKey();
                            strArr6[i15] = entry.getValue();
                            i15++;
                        }
                        strArr3 = strArr5;
                        strArr4 = strArr6;
                    } else {
                        strArr3 = null;
                        strArr4 = null;
                    }
                    HttpClient.nativeResponseCallback(i14, strArr3, strArr4, bArr2, j11);
                }
            }

            @Override // com.tencent.imsdk.common.HttpClient.HttpRequestListener
            public void onProgress(int i14, int i15, int i16) {
                long j12 = j10;
                if (j12 != 0) {
                    HttpClient.nativeProgressCallback(i14, i15, i16, j12);
                }
            }
        }, i9, str5, i10, str6, str7, i11, i12, str8);
    }
}
