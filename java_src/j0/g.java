package j0;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;
/* loaded from: classes.dex */
public class g implements e0.b {

    /* renamed from: b  reason: collision with root package name */
    private final h f52890b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final URL f52891c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f52892d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f52893e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private URL f52894f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private volatile byte[] f52895g;

    /* renamed from: h  reason: collision with root package name */
    private int f52896h;

    public g(URL url) {
        this(url, h.f52898b);
    }

    private byte[] b() {
        if (this.f52895g == null) {
            this.f52895g = a().getBytes(e0.b.f38307a);
        }
        return this.f52895g;
    }

    private String d() {
        if (TextUtils.isEmpty(this.f52893e)) {
            String str = this.f52892d;
            if (TextUtils.isEmpty(str)) {
                str = ((URL) v0.j.d(this.f52891c)).toString();
            }
            this.f52893e = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f52893e;
    }

    private URL e() throws MalformedURLException {
        if (this.f52894f == null) {
            this.f52894f = new URL(d());
        }
        return this.f52894f;
    }

    public String a() {
        String str = this.f52892d;
        return str != null ? str : ((URL) v0.j.d(this.f52891c)).toString();
    }

    public Map<String, String> c() {
        return this.f52890b.getHeaders();
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            return a().equals(gVar.a()) && this.f52890b.equals(gVar.f52890b);
        }
        return false;
    }

    public String f() {
        return d();
    }

    public URL g() throws MalformedURLException {
        return e();
    }

    @Override // e0.b
    public int hashCode() {
        if (this.f52896h == 0) {
            int hashCode = a().hashCode();
            this.f52896h = hashCode;
            this.f52896h = (hashCode * 31) + this.f52890b.hashCode();
        }
        return this.f52896h;
    }

    public String toString() {
        return a();
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(b());
    }

    public g(String str) {
        this(str, h.f52898b);
    }

    public g(URL url, h hVar) {
        this.f52891c = (URL) v0.j.d(url);
        this.f52892d = null;
        this.f52890b = (h) v0.j.d(hVar);
    }

    public g(String str, h hVar) {
        this.f52891c = null;
        this.f52892d = v0.j.b(str);
        this.f52890b = (h) v0.j.d(hVar);
    }
}
