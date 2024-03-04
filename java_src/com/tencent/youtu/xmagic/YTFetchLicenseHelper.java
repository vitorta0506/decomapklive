package com.tencent.youtu.xmagic;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import com.facebook.internal.ServerProtocol;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class YTFetchLicenseHelper {
    private static String TAG = "YTCommon_FetchLicense";

    /* renamed from: com.tencent.youtu.xmagic.YTFetchLicenseHelper$1FetchThreadRunnable  reason: invalid class name */
    /* loaded from: classes4.dex */
    class C1FetchThreadRunnable implements Runnable {
        FetchLicenseResult result;
        final /* synthetic */ String val$appid;
        final /* synthetic */ String val$device_id;
        final /* synthetic */ String val$device_info_encrypted;
        final /* synthetic */ String val$package_name;
        final /* synthetic */ String val$platform;
        final /* synthetic */ String val$secret_key;
        final /* synthetic */ String val$url_str;

        C1FetchThreadRunnable(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
            this.val$appid = str;
            this.val$secret_key = str2;
            this.val$platform = str3;
            this.val$device_id = str4;
            this.val$device_info_encrypted = str5;
            this.val$package_name = str6;
            this.val$url_str = str7;
            this.result = new FetchLicenseResult();
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpsURLConnection httpsURLConnection;
            BufferedReader bufferedReader = null;
            try {
                try {
                    long currentTimeMillis = System.currentTimeMillis() / 1000;
                    Mac mac = Mac.getInstance("HmacSHA256");
                    mac.init(new SecretKeySpec(this.val$secret_key.getBytes(), "HmacSHA256"));
                    String encodeToString = Base64.encodeToString(mac.doFinal((this.val$appid + "-" + currentTimeMillis).getBytes()), 2);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("app_id", this.val$appid);
                    jSONObject.put("auth_string", encodeToString);
                    jSONObject.put("machine_type", this.val$platform);
                    jSONObject.put("machine_id", this.val$device_id);
                    jSONObject.put("machine_info", this.val$device_info_encrypted);
                    jSONObject.put(PushConstants.PACKAGE_NAME, this.val$package_name);
                    jSONObject.put("time_stamp", currentTimeMillis);
                    String jSONObject2 = jSONObject.toString();
                    httpsURLConnection = (HttpsURLConnection) new URL(this.val$url_str).openConnection();
                    try {
                        httpsURLConnection.setRequestMethod("POST");
                        httpsURLConnection.setDoInput(true);
                        httpsURLConnection.setDoOutput(true);
                        httpsURLConnection.setUseCaches(false);
                        httpsURLConnection.setInstanceFollowRedirects(false);
                        httpsURLConnection.setRequestProperty("Content-type", "application/json");
                        httpsURLConnection.setConnectTimeout(5000);
                        httpsURLConnection.setReadTimeout(5000);
                        httpsURLConnection.connect();
                        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                        dataOutputStream.write(jSONObject2.getBytes());
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        this.result.http_status = httpsURLConnection.getResponseCode();
                        if (this.result.http_status == 200) {
                            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
                            try {
                                StringBuilder sb2 = new StringBuilder();
                                while (true) {
                                    String readLine = bufferedReader2.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    sb2.append(readLine);
                                }
                                JSONObject jSONObject3 = new JSONObject(sb2.toString());
                                if (jSONObject3.has("error_code")) {
                                    this.result.error_code = jSONObject3.optInt("error_code");
                                    this.result.error_msg = jSONObject3.optString("error_msg");
                                    FetchLicenseResult fetchLicenseResult = this.result;
                                    if (fetchLicenseResult.error_code == 0) {
                                        fetchLicenseResult.license = jSONObject3.optString("license");
                                        this.result.bind_type = jSONObject3.optString("bind_type");
                                        this.result.auth_type = jSONObject3.optString(ServerProtocol.DIALOG_PARAM_AUTH_TYPE);
                                    }
                                }
                                bufferedReader = bufferedReader2;
                            } catch (MalformedURLException e10) {
                                e = e10;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (ProtocolException e12) {
                                e = e12;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e13) {
                                        e13.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (SocketTimeoutException e14) {
                                e = e14;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e15) {
                                        e15.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (IOException e16) {
                                e = e16;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e17) {
                                        e17.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (InvalidKeyException e18) {
                                e = e18;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e19) {
                                        e19.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (NoSuchAlgorithmException e20) {
                                e = e20;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e21) {
                                        e21.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (JSONException e22) {
                                e = e22;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e23) {
                                        e23.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection == null) {
                                    return;
                                }
                                httpsURLConnection.disconnect();
                            } catch (Throwable th2) {
                                th = th2;
                                bufferedReader = bufferedReader2;
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e24) {
                                        e24.printStackTrace();
                                    }
                                }
                                if (httpsURLConnection != null) {
                                    httpsURLConnection.disconnect();
                                }
                                throw th;
                            }
                        } else {
                            Log.e(YTFetchLicenseHelper.TAG, "connection status: " + this.result.http_status);
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e25) {
                                e25.printStackTrace();
                            }
                        }
                    } catch (MalformedURLException e26) {
                        e = e26;
                    } catch (ProtocolException e27) {
                        e = e27;
                    } catch (SocketTimeoutException e28) {
                        e = e28;
                    } catch (IOException e29) {
                        e = e29;
                    } catch (InvalidKeyException e30) {
                        e = e30;
                    } catch (NoSuchAlgorithmException e31) {
                        e = e31;
                    } catch (JSONException e32) {
                        e = e32;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (MalformedURLException e33) {
                e = e33;
                httpsURLConnection = null;
            } catch (ProtocolException e34) {
                e = e34;
                httpsURLConnection = null;
            } catch (SocketTimeoutException e35) {
                e = e35;
                httpsURLConnection = null;
            } catch (IOException e36) {
                e = e36;
                httpsURLConnection = null;
            } catch (InvalidKeyException e37) {
                e = e37;
                httpsURLConnection = null;
            } catch (NoSuchAlgorithmException e38) {
                e = e38;
                httpsURLConnection = null;
            } catch (JSONException e39) {
                e = e39;
                httpsURLConnection = null;
            } catch (Throwable th4) {
                th = th4;
                httpsURLConnection = null;
            }
            httpsURLConnection.disconnect();
        }
    }

    /* loaded from: classes4.dex */
    public class FetchLicenseResult {
        public int error_code = 1002;
        public int http_status = -1;
        public String error_msg = "";
        public String license = "";
        public String bind_type = "";
        public String auth_type = "";

        public FetchLicenseResult() {
        }
    }

    public FetchLicenseResult fetchLicenseOnline(Context context, String str, String str2, String str3, YTDeviceInfo yTDeviceInfo) {
        C1FetchThreadRunnable c1FetchThreadRunnable = new C1FetchThreadRunnable(str2, str3, yTDeviceInfo == null ? "ANDROID" : yTDeviceInfo.platform, yTDeviceInfo == null ? "" : yTDeviceInfo.device_id, yTDeviceInfo != null ? yTDeviceInfo.device_info_encrypted : "", context.getPackageName(), str);
        Thread thread = new Thread(c1FetchThreadRunnable);
        try {
            thread.start();
            thread.join();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
        return c1FetchThreadRunnable.result;
    }
}
