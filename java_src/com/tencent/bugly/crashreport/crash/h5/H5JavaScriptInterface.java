package com.tencent.bugly.crashreport.crash.h5;

import android.webkit.JavascriptInterface;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareInternalUtility;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.inner.InnerApi;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class H5JavaScriptInterface {

    /* renamed from: a  reason: collision with root package name */
    private static HashSet<Integer> f30392a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private String f30393b = null;

    /* renamed from: c  reason: collision with root package name */
    private Thread f30394c = null;

    /* renamed from: d  reason: collision with root package name */
    private String f30395d = null;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f30396e = null;

    private H5JavaScriptInterface() {
    }

    private static a a(String str) {
        String string;
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                a aVar = new a();
                String string2 = jSONObject.getString("projectRoot");
                aVar.f30397a = string2;
                if (string2 == null) {
                    return null;
                }
                String string3 = jSONObject.getString("context");
                aVar.f30398b = string3;
                if (string3 == null) {
                    return null;
                }
                String string4 = jSONObject.getString("url");
                aVar.f30399c = string4;
                if (string4 == null) {
                    return null;
                }
                String string5 = jSONObject.getString("userAgent");
                aVar.f30400d = string5;
                if (string5 == null) {
                    return null;
                }
                String string6 = jSONObject.getString("language");
                aVar.f30401e = string6;
                if (string6 == null) {
                    return null;
                }
                String string7 = jSONObject.getString("name");
                aVar.f30402f = string7;
                if (string7 == null || string7.equals("null") || (string = jSONObject.getString("stacktrace")) == null) {
                    return null;
                }
                int indexOf = string.indexOf(IOUtils.LINE_SEPARATOR_UNIX);
                if (indexOf < 0) {
                    x.d("H5 crash stack's format is wrong!", new Object[0]);
                    return null;
                }
                aVar.f30404h = string.substring(indexOf + 1);
                String substring = string.substring(0, indexOf);
                aVar.f30403g = substring;
                int indexOf2 = substring.indexOf(CertificateUtil.DELIMITER);
                if (indexOf2 > 0) {
                    aVar.f30403g = aVar.f30403g.substring(indexOf2 + 1);
                }
                aVar.f30405i = jSONObject.getString(ShareInternalUtility.STAGING_PARAM);
                if (aVar.f30402f == null) {
                    return null;
                }
                long j10 = jSONObject.getLong("lineNumber");
                aVar.f30406j = j10;
                if (j10 < 0) {
                    return null;
                }
                long j11 = jSONObject.getLong("columnNumber");
                aVar.f30407k = j11;
                if (j11 < 0) {
                    return null;
                }
                x.a("H5 crash information is following: ", new Object[0]);
                x.a("[projectRoot]: " + aVar.f30397a, new Object[0]);
                x.a("[context]: " + aVar.f30398b, new Object[0]);
                x.a("[url]: " + aVar.f30399c, new Object[0]);
                x.a("[userAgent]: " + aVar.f30400d, new Object[0]);
                x.a("[language]: " + aVar.f30401e, new Object[0]);
                x.a("[name]: " + aVar.f30402f, new Object[0]);
                x.a("[message]: " + aVar.f30403g, new Object[0]);
                x.a("[stacktrace]: \n" + aVar.f30404h, new Object[0]);
                x.a("[file]: " + aVar.f30405i, new Object[0]);
                x.a("[lineNumber]: " + aVar.f30406j, new Object[0]);
                x.a("[columnNumber]: " + aVar.f30407k, new Object[0]);
                return aVar;
            } catch (Throwable th2) {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
            }
        }
        return null;
    }

    public static H5JavaScriptInterface getInstance(CrashReport.WebViewInterface webViewInterface) {
        String str = null;
        if (webViewInterface == null || f30392a.contains(Integer.valueOf(webViewInterface.hashCode()))) {
            return null;
        }
        H5JavaScriptInterface h5JavaScriptInterface = new H5JavaScriptInterface();
        f30392a.add(Integer.valueOf(webViewInterface.hashCode()));
        Thread currentThread = Thread.currentThread();
        h5JavaScriptInterface.f30394c = currentThread;
        if (currentThread != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            for (int i9 = 2; i9 < currentThread.getStackTrace().length; i9++) {
                StackTraceElement stackTraceElement = currentThread.getStackTrace()[i9];
                if (!stackTraceElement.toString().contains("crashreport")) {
                    sb2.append(stackTraceElement.toString());
                    sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
            }
            str = sb2.toString();
        }
        h5JavaScriptInterface.f30395d = str;
        HashMap hashMap = new HashMap();
        StringBuilder sb3 = new StringBuilder();
        sb3.append((Object) webViewInterface.getContentDescription());
        hashMap.put("[WebView] ContentDescription", sb3.toString());
        h5JavaScriptInterface.f30396e = hashMap;
        return h5JavaScriptInterface;
    }

    @JavascriptInterface
    public void printLog(String str) {
        x.d("Log from js: %s", str);
    }

    @JavascriptInterface
    public void reportJSException(String str) {
        if (str == null) {
            x.d("Payload from JS is null.", new Object[0]);
            return;
        }
        String a10 = z.a(str.getBytes());
        String str2 = this.f30393b;
        if (str2 != null && str2.equals(a10)) {
            x.d("Same payload from js. Please check whether you've injected bugly.js more than one times.", new Object[0]);
            return;
        }
        this.f30393b = a10;
        x.d("Handling JS exception ...", new Object[0]);
        a a11 = a(str);
        if (a11 == null) {
            x.d("Failed to parse payload.", new Object[0]);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String str3 = a11.f30397a;
        if (str3 != null) {
            linkedHashMap2.put("[JS] projectRoot", str3);
        }
        String str4 = a11.f30398b;
        if (str4 != null) {
            linkedHashMap2.put("[JS] context", str4);
        }
        String str5 = a11.f30399c;
        if (str5 != null) {
            linkedHashMap2.put("[JS] url", str5);
        }
        String str6 = a11.f30400d;
        if (str6 != null) {
            linkedHashMap2.put("[JS] userAgent", str6);
        }
        String str7 = a11.f30405i;
        if (str7 != null) {
            linkedHashMap2.put("[JS] file", str7);
        }
        long j10 = a11.f30406j;
        if (j10 != 0) {
            linkedHashMap2.put("[JS] lineNumber", Long.toString(j10));
        }
        linkedHashMap.putAll(linkedHashMap2);
        linkedHashMap.putAll(this.f30396e);
        linkedHashMap.put("Java Stack", this.f30395d);
        InnerApi.postH5CrashAsync(this.f30394c, a11.f30402f, a11.f30403g, a11.f30404h, linkedHashMap);
    }
}
