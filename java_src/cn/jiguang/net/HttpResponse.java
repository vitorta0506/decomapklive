package cn.jiguang.net;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class HttpResponse {

    /* renamed from: a  reason: collision with root package name */
    private String f2672a;

    /* renamed from: b  reason: collision with root package name */
    private String f2673b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Object> f2674c;

    /* renamed from: d  reason: collision with root package name */
    private int f2675d;

    /* renamed from: e  reason: collision with root package name */
    private long f2676e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f2677f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2678g;

    /* renamed from: h  reason: collision with root package name */
    private int f2679h;

    public HttpResponse() {
        this.f2679h = -1;
        this.f2674c = new HashMap();
    }

    public HttpResponse(String str) {
        this.f2679h = -1;
        this.f2672a = str;
        this.f2675d = 0;
        this.f2677f = false;
        this.f2678g = false;
        this.f2674c = new HashMap();
    }

    private int a() {
        int indexOf;
        try {
            String str = (String) this.f2674c.get("cache-control");
            if (TextUtils.isEmpty(str) || (indexOf = str.indexOf("max-age=")) == -1) {
                return -1;
            }
            int indexOf2 = str.indexOf(",", indexOf);
            int i9 = indexOf + 8;
            return Integer.parseInt(indexOf2 != -1 ? str.substring(i9, indexOf2) : str.substring(i9));
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    private long b() {
        int a10 = a();
        if (a10 != -1) {
            return System.currentTimeMillis() + (a10 * 1000);
        }
        if (TextUtils.isEmpty(getExpiresHeader())) {
            return -1L;
        }
        return HttpUtils.parseGmtTime(getExpiresHeader());
    }

    public long getExpiredTime() {
        if (this.f2678g) {
            return this.f2676e;
        }
        this.f2678g = true;
        long b10 = b();
        this.f2676e = b10;
        return b10;
    }

    public String getExpiresHeader() {
        try {
            Map<String, Object> map = this.f2674c;
            if (map == null) {
                return null;
            }
            return (String) map.get("expires");
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String getResponseBody() {
        return this.f2673b;
    }

    public int getResponseCode() {
        return this.f2679h;
    }

    public int getType() {
        return this.f2675d;
    }

    public String getUrl() {
        return this.f2672a;
    }

    public boolean isExpired() {
        return System.currentTimeMillis() > this.f2676e;
    }

    public boolean isInCache() {
        return this.f2677f;
    }

    public void setExpiredTime(long j10) {
        this.f2678g = true;
        this.f2676e = j10;
    }

    public HttpResponse setInCache(boolean z10) {
        this.f2677f = z10;
        return this;
    }

    public void setResponseBody(String str) {
        this.f2673b = str;
    }

    public void setResponseCode(int i9) {
        this.f2679h = i9;
    }

    public void setResponseHeader(String str, String str2) {
        Map<String, Object> map = this.f2674c;
        if (map != null) {
            map.put(str, str2);
        }
    }

    public void setResponseHeaders(Map<String, Object> map) {
        this.f2674c = map;
    }

    public void setType(int i9) {
        if (i9 < 0) {
            throw new IllegalArgumentException("The type of HttpResponse cannot be smaller than 0.");
        }
        this.f2675d = i9;
    }

    public void setUrl(String str) {
        this.f2672a = str;
    }

    public String toString() {
        return "HttpResponse{responseBody='" + this.f2673b + "', responseCode=" + this.f2679h + '}';
    }
}
