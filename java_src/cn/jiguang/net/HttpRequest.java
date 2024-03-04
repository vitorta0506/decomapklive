package cn.jiguang.net;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
/* loaded from: classes.dex */
public class HttpRequest {

    /* renamed from: a  reason: collision with root package name */
    private String f2657a;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, String> f2660d;

    /* renamed from: f  reason: collision with root package name */
    private Object f2662f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2663g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2664h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f2665i;

    /* renamed from: m  reason: collision with root package name */
    private SSLTrustManager f2669m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f2670n;

    /* renamed from: o  reason: collision with root package name */
    private HostnameVerifier f2671o;

    /* renamed from: j  reason: collision with root package name */
    private boolean f2666j = true;

    /* renamed from: k  reason: collision with root package name */
    private boolean f2667k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f2668l = false;

    /* renamed from: b  reason: collision with root package name */
    private int f2658b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f2659c = -1;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f2661e = new HashMap();

    public HttpRequest(String str) {
        this.f2657a = str;
    }

    public HttpRequest(String str, Map<String, String> map) {
        this.f2657a = str;
        this.f2660d = map;
    }

    public Object getBody() {
        return this.f2662f;
    }

    public int getConnectTimeout() {
        return this.f2658b;
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.f2671o;
    }

    public byte[] getParas() {
        Object obj = this.f2662f;
        if (obj != null) {
            if (obj instanceof String) {
                if (!TextUtils.isEmpty((CharSequence) obj)) {
                    return ((String) this.f2662f).getBytes();
                }
            } else if (obj instanceof byte[]) {
                return (byte[]) obj;
            }
        }
        String joinParasWithEncodedValue = HttpUtils.joinParasWithEncodedValue(this.f2660d);
        if (TextUtils.isEmpty(joinParasWithEncodedValue)) {
            return null;
        }
        return joinParasWithEncodedValue.getBytes();
    }

    public Map<String, String> getParasMap() {
        return this.f2660d;
    }

    public int getReadTimeout() {
        return this.f2659c;
    }

    public Map<String, String> getRequestProperties() {
        return this.f2661e;
    }

    public String getRequestProperty(String str) {
        return this.f2661e.get(str);
    }

    public SSLTrustManager getSslTrustManager() {
        return this.f2669m;
    }

    public String getUrl() {
        return this.f2657a;
    }

    public boolean isDoInPut() {
        return this.f2664h;
    }

    public boolean isDoOutPut() {
        return this.f2663g;
    }

    public boolean isHaveRspData() {
        return this.f2666j;
    }

    public boolean isNeedErrorInput() {
        return this.f2668l;
    }

    public boolean isNeedRetryIfHttpsFailed() {
        return this.f2670n;
    }

    public boolean isRspDatazip() {
        return this.f2667k;
    }

    public boolean isUseCaches() {
        return this.f2665i;
    }

    public void setBody(Object obj) {
        this.f2662f = obj;
    }

    public void setConnectTimeout(int i9) {
        if (i9 < 0) {
            throw new IllegalArgumentException("timeout can not be negative");
        }
        this.f2658b = i9;
    }

    public void setDoInPut(boolean z10) {
        this.f2664h = z10;
    }

    public void setDoOutPut(boolean z10) {
        this.f2663g = z10;
    }

    public void setHaveRspData(boolean z10) {
        this.f2666j = z10;
    }

    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f2671o = hostnameVerifier;
    }

    public void setNeedErrorInput(boolean z10) {
        this.f2668l = z10;
    }

    public void setNeedRetryIfHttpsFailed(boolean z10) {
        this.f2670n = z10;
    }

    public void setParasMap(Map<String, String> map) {
        this.f2660d = map;
    }

    public void setReadTimeout(int i9) {
        if (i9 < 0) {
            throw new IllegalArgumentException("timeout can not be negative");
        }
        this.f2659c = i9;
    }

    public void setRequestProperties(Map<String, String> map) {
        this.f2661e = map;
    }

    public void setRequestProperty(String str, String str2) {
        this.f2661e.put(str, str2);
    }

    public void setRspDatazip(boolean z10) {
        this.f2667k = z10;
    }

    public void setSslTrustManager(SSLTrustManager sSLTrustManager) {
        this.f2669m = sSLTrustManager;
    }

    public void setUrl(String str) {
        this.f2657a = str;
    }

    public void setUseCaches(boolean z10) {
        this.f2665i = z10;
    }

    public void setUserAgent(String str) {
        this.f2661e.put("User-Agent", str);
    }
}
