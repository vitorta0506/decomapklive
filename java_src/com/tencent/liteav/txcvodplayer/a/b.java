package com.tencent.liteav.txcvodplayer.a;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.LiteavLog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import kotlinx.coroutines.DebugKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: d  reason: collision with root package name */
    private static volatile b f31486d;

    /* renamed from: a  reason: collision with root package name */
    private Context f31487a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, List<C0322b>> f31488b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Long> f31489c = new HashMap();

    private b(Context context) {
        this.f31487a = context.getApplicationContext();
        a();
    }

    public static b a(Context context) {
        if (f31486d == null) {
            synchronized (b.class) {
                if (f31486d == null) {
                    f31486d = new b(context);
                }
            }
        }
        return f31486d;
    }

    private long d(String str) {
        if (str != null && !str.isEmpty()) {
            synchronized (this) {
                if (this.f31489c.containsKey(str)) {
                    return this.f31489c.get(str).longValue();
                }
                List<C0322b> list = this.f31488b.get(str);
                if (list != null) {
                    for (C0322b c0322b : list) {
                        if ("40305".equals(c0322b.f31496e) && str.equalsIgnoreCase(c0322b.f31495d)) {
                            return ((a) c0322b).f31494c;
                        }
                    }
                }
                return 0L;
            }
        }
        return (System.currentTimeMillis() / 1000) + 3600;
    }

    private static List<C0322b> e(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i9);
                if (optJSONObject != null) {
                    optJSONObject.optString("appid", "");
                    if (optJSONObject.optString("eventid", "").equalsIgnoreCase("40305")) {
                        String optString = optJSONObject.optString("40305", "");
                        if (!optString.isEmpty()) {
                            arrayList.add(new a(optString));
                        }
                    }
                }
            }
        } catch (JSONException e10) {
            LiteavLog.e("TXCVodPlayReportControl", "controlDataListParseFormString :" + e10.toString());
        }
        return arrayList;
    }

    public final boolean b(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        synchronized (this) {
            List<C0322b> list = this.f31488b.get(str);
            if (list != null) {
                for (C0322b c0322b : list) {
                    if (c0322b != null && "40305".equals(c0322b.f31496e) && str.equalsIgnoreCase(c0322b.f31495d)) {
                        a aVar = (a) c0322b;
                        if (aVar.f31494c > System.currentTimeMillis() / 1000) {
                            return aVar.f31493b;
                        }
                    }
                }
            }
            return false;
        }
    }

    public final void c(final String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        synchronized (this) {
            if (d(str) < System.currentTimeMillis() / 1000) {
                LiteavLog.i("TXCVodPlayReportControl", "RequestReportControl");
                a(str, (System.currentTimeMillis() / 1000) + 3600);
                new Thread(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.a.b.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a(b.this, str);
                        b.a(b.this);
                    }
                }, "report_control").start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.txcvodplayer.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0322b {

        /* renamed from: d  reason: collision with root package name */
        protected String f31495d;

        /* renamed from: e  reason: collision with root package name */
        protected String f31496e;

        public C0322b(String str, String str2) {
            this.f31495d = str;
            this.f31496e = str2;
        }

        public C0322b() {
            this.f31495d = "";
            this.f31496e = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends C0322b {

        /* renamed from: a  reason: collision with root package name */
        int f31492a;

        /* renamed from: b  reason: collision with root package name */
        boolean f31493b;

        /* renamed from: c  reason: collision with root package name */
        long f31494c;

        public a(int i9, boolean z10, long j10, String str) {
            super(str, "40305");
            this.f31492a = i9;
            this.f31493b = z10;
            this.f31494c = j10;
        }

        private JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("SengmentDuration", this.f31492a);
                jSONObject.put("ReportSwitch", this.f31493b);
                jSONObject.put("ExpireTime", this.f31494c);
                jSONObject.put("appid", this.f31495d);
                jSONObject.put("eventid", this.f31496e);
            } catch (JSONException e10) {
                LiteavLog.e("TXCVodPlayReportControl", "toJsonObject jsonexception: " + e10.toString());
            }
            return jSONObject;
        }

        public final String toString() {
            return a().toString();
        }

        public a(String str) {
            this.f31492a = 60;
            this.f31493b = false;
            this.f31494c = 0L;
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.f31492a = jSONObject.optInt("SengmentDuration", 60);
                this.f31493b = jSONObject.optBoolean("ReportSwitch", false);
                this.f31494c = jSONObject.optLong("ExpireTime", (System.currentTimeMillis() / 1000) + 3600);
                this.f31495d = jSONObject.optString("appid", "");
                this.f31496e = jSONObject.optString("eventid", "");
            } catch (JSONException e10) {
                LiteavLog.i("TXCVodPlayReportControl", "parseFromString: " + e10.toString());
                this.f31492a = 60;
                this.f31493b = false;
                this.f31494c = 0L;
                this.f31495d = "";
                this.f31496e = "40305";
            }
        }
    }

    public final int a(String str) {
        if (str == null || str.isEmpty()) {
            return 60;
        }
        synchronized (this) {
            List<C0322b> list = this.f31488b.get(str);
            if (list != null) {
                for (C0322b c0322b : list) {
                    if (c0322b != null && "40305".equals(c0322b.f31496e) && str.equalsIgnoreCase(c0322b.f31495d)) {
                        a aVar = (a) c0322b;
                        if (aVar.f31494c > System.currentTimeMillis() / 1000) {
                            return aVar.f31492a;
                        }
                    }
                }
            }
            return 60;
        }
    }

    private void a(String str, long j10) {
        synchronized (this) {
            this.f31489c.put(str, Long.valueOf(j10));
            LiteavLog.i("TXCVodPlayReportControl", "SetReportExpireTime in mem appid= " + str + " , time=" + j10);
        }
    }

    private void a() {
        SharedPreferences sharedPreferences = this.f31487a.getSharedPreferences("vod_report_config", 0);
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString("value", "");
            if (string.isEmpty()) {
                return;
            }
            try {
                synchronized (this) {
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                        List<C0322b> e10 = e(jSONArray.optString(i9));
                        if (e10.size() > 0) {
                            this.f31488b.put(e10.get(0).f31495d, e10);
                        }
                    }
                }
            } catch (JSONException e11) {
                LiteavLog.e("TXCVodPlayReportControl", e11.toString());
            }
        }
    }

    private void a(JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("controlInfos");
        int optInt = jSONObject.optInt("appId");
        if (optInt == 0) {
            LiteavLog.i("TXCVodPlayReportControl", "response appid is zero!");
        } else if (optJSONArray != null && optJSONArray.length() != 0) {
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i9);
                if (optJSONObject != null && "40305".equals(optJSONObject.optString("eventId"))) {
                    long optLong = optJSONObject.optLong("expireTime", 0L);
                    if (optLong > System.currentTimeMillis() / 1000) {
                        String optString = optJSONObject.optString("switch");
                        int optInt2 = optJSONObject.optInt("frequency", 60);
                        arrayList.add(new a(optInt2 < 60 ? 60 : optInt2, DebugKt.DEBUG_PROPERTY_VALUE_ON.equalsIgnoreCase(optString), optLong, String.valueOf(optInt)));
                    }
                }
            }
            synchronized (this) {
                if (arrayList.size() != 0) {
                    this.f31488b.put(String.valueOf(optInt), arrayList);
                    this.f31489c.remove(Integer.valueOf(optInt));
                }
            }
        }
    }

    private static String a(List<C0322b> list) {
        if (list == null) {
            return "";
        }
        JSONArray jSONArray = new JSONArray();
        int i9 = 0;
        for (C0322b c0322b : list) {
            JSONObject jSONObject = new JSONObject();
            if ("40305".equals(c0322b.f31496e)) {
                a aVar = (a) c0322b;
                try {
                    jSONObject.put("appid", aVar.f31495d);
                    jSONObject.put("eventid", aVar.f31496e);
                    jSONObject.put("40305", aVar.toString());
                } catch (JSONException e10) {
                    LiteavLog.e("TXCVodPlayReportControl", "controlDataListToString jsonObject.put：" + e10.toString());
                }
            }
            int i10 = i9 + 1;
            try {
                jSONArray.put(i9, jSONObject);
            } catch (JSONException e11) {
                LiteavLog.e("TXCVodPlayReportControl", "jsonArray.put： " + e11.toString());
            }
            i9 = i10;
        }
        return jSONArray.toString();
    }

    static /* synthetic */ void a(b bVar, String str) {
        URL url;
        HttpsURLConnection httpsURLConnection;
        BufferedReader bufferedReader = null;
        try {
            String str2 = "https://vodreport.qcloud.com/describeControlInfos/v1/" + str + "?sdkVersion=" + CommonUtil.getSDKVersionStr();
            LiteavLog.i("TXCVodPlayReportControl", "makeUrl: ".concat(String.valueOf(str2)));
            url = new URL(str2);
        } catch (MalformedURLException e10) {
            LiteavLog.i("TXCVodPlayReportControl", "URL :" + e10.toString());
            url = null;
        }
        if (url == null) {
            return;
        }
        try {
            httpsURLConnection = (HttpsURLConnection) url.openConnection();
        } catch (IOException e11) {
            LiteavLog.i("TXCVodPlayReportControl", "openConnection :" + e11.toString());
            httpsURLConnection = null;
        }
        if (httpsURLConnection == null) {
            return;
        }
        try {
            try {
                httpsURLConnection.setConnectTimeout(8000);
                httpsURLConnection.setReadTimeout(8000);
                httpsURLConnection.setRequestProperty("Accept-Encoding", "identity");
                httpsURLConnection.setInstanceFollowRedirects(true);
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                LiteavLog.i("TXCVodPlayReportControl", "request report control response code : ".concat(String.valueOf(responseCode)));
                if (200 == responseCode) {
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
                        String sb3 = sb2.toString();
                        if (sb3 != null && !sb3.isEmpty()) {
                            try {
                                JSONObject jSONObject = new JSONObject(sb3);
                                int i9 = jSONObject.getInt("code");
                                LiteavLog.i("TXCVodPlayReportControl", "code = " + i9 + " ,message = " + jSONObject.optString("message") + " , requestID= " + jSONObject.optString("requestId"));
                                if (i9 == 0 && jSONObject.getInt("version") == 1) {
                                    bVar.a(jSONObject);
                                }
                            } catch (JSONException e12) {
                                LiteavLog.e("TXCVodPlayReportControl", "parseJson err: " + e12.toString());
                            }
                        } else {
                            LiteavLog.i("TXCVodPlayReportControl", "response msg is empty");
                        }
                        bufferedReader = bufferedReader2;
                    } catch (IOException e13) {
                        e = e13;
                        bufferedReader = bufferedReader2;
                        LiteavLog.i("TXCVodPlayReportControl", "connect or read: " + e.toString());
                        httpsURLConnection.disconnect();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        httpsURLConnection.disconnect();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
                httpsURLConnection.disconnect();
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused3) {
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e14) {
            e = e14;
        }
    }

    static /* synthetic */ void a(b bVar) {
        SharedPreferences.Editor edit;
        synchronized (bVar) {
            int i9 = 0;
            SharedPreferences sharedPreferences = bVar.f31487a.getSharedPreferences("vod_report_config", 0);
            if (sharedPreferences != null && (edit = sharedPreferences.edit()) != null && bVar.f31488b.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (Map.Entry<String, List<C0322b>> entry : bVar.f31488b.entrySet()) {
                    int i10 = i9 + 1;
                    try {
                        jSONArray.put(i9, a(entry.getValue()));
                    } catch (JSONException e10) {
                        LiteavLog.e("TXCVodPlayReportControl", e10.toString());
                    }
                    i9 = i10;
                }
                edit.putString("value", jSONArray.toString());
                edit.apply();
            }
        }
    }
}
