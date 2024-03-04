package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.d;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
/* loaded from: classes.dex */
public class j implements d<InputStream> {
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    static final b f4234g = new a();

    /* renamed from: a  reason: collision with root package name */
    private final j0.g f4235a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4236b;

    /* renamed from: c  reason: collision with root package name */
    private final b f4237c;

    /* renamed from: d  reason: collision with root package name */
    private HttpURLConnection f4238d;

    /* renamed from: e  reason: collision with root package name */
    private InputStream f4239e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f4240f;

    /* loaded from: classes.dex */
    private static class a implements b {
        a() {
        }

        @Override // com.bumptech.glide.load.data.j.b
        public HttpURLConnection a(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b {
        HttpURLConnection a(URL url) throws IOException;
    }

    public j(j0.g gVar, int i9) {
        this(gVar, i9, f4234g);
    }

    private HttpURLConnection c(URL url, Map<String, String> map) throws HttpException {
        try {
            HttpURLConnection a10 = this.f4237c.a(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                a10.addRequestProperty(entry.getKey(), entry.getValue());
            }
            a10.setConnectTimeout(this.f4236b);
            a10.setReadTimeout(this.f4236b);
            a10.setUseCaches(false);
            a10.setDoInput(true);
            a10.setInstanceFollowRedirects(false);
            return a10;
        } catch (IOException e10) {
            throw new HttpException("URL.openConnection threw", 0, e10);
        }
    }

    private static int f(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e10) {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Failed to get a response code", e10);
                return -1;
            }
            return -1;
        }
    }

    private InputStream g(HttpURLConnection httpURLConnection) throws HttpException {
        try {
            if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                this.f4239e = v0.b.b(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
            } else {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
                }
                this.f4239e = httpURLConnection.getInputStream();
            }
            return this.f4239e;
        } catch (IOException e10) {
            throw new HttpException("Failed to obtain InputStream", f(httpURLConnection), e10);
        }
    }

    private static boolean h(int i9) {
        return i9 / 100 == 2;
    }

    private static boolean i(int i9) {
        return i9 / 100 == 3;
    }

    private InputStream j(URL url, int i9, URL url2, Map<String, String> map) throws HttpException {
        if (i9 < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new HttpException("In re-direct loop", -1);
                    }
                } catch (URISyntaxException unused) {
                }
            }
            HttpURLConnection c10 = c(url, map);
            this.f4238d = c10;
            try {
                c10.connect();
                this.f4239e = this.f4238d.getInputStream();
                if (this.f4240f) {
                    return null;
                }
                int f10 = f(this.f4238d);
                if (h(f10)) {
                    return g(this.f4238d);
                }
                if (!i(f10)) {
                    if (f10 == -1) {
                        throw new HttpException(f10);
                    }
                    try {
                        throw new HttpException(this.f4238d.getResponseMessage(), f10);
                    } catch (IOException e10) {
                        throw new HttpException("Failed to get a response message", f10, e10);
                    }
                }
                String headerField = this.f4238d.getHeaderField("Location");
                if (!TextUtils.isEmpty(headerField)) {
                    try {
                        URL url3 = new URL(url, headerField);
                        b();
                        return j(url3, i9 + 1, url, map);
                    } catch (MalformedURLException e11) {
                        throw new HttpException("Bad redirect url: " + headerField, f10, e11);
                    }
                }
                throw new HttpException("Received empty or null redirect url", f10);
            } catch (IOException e12) {
                throw new HttpException("Failed to connect or obtain data", f(this.f4238d), e12);
            }
        }
        throw new HttpException("Too many (> 5) redirects!", -1);
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        InputStream inputStream = this.f4239e;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f4238d;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f4238d = null;
    }

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
        this.f4240f = true;
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public DataSource d() {
        return DataSource.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.d
    public void e(@NonNull Priority priority, @NonNull d.a<? super InputStream> aVar) {
        StringBuilder sb2;
        long b10 = v0.f.b();
        try {
            try {
                aVar.f(j(this.f4235a.g(), 0, null, this.f4235a.c()));
            } catch (IOException e10) {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    Log.d("HttpUrlFetcher", "Failed to load data for url", e10);
                }
                aVar.c(e10);
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                }
                sb2 = new StringBuilder();
            }
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb2 = new StringBuilder();
                sb2.append("Finished http url fetcher fetch in ");
                sb2.append(v0.f.a(b10));
                Log.v("HttpUrlFetcher", sb2.toString());
            }
        } catch (Throwable th2) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + v0.f.a(b10));
            }
            throw th2;
        }
    }

    @VisibleForTesting
    j(j0.g gVar, int i9, b bVar) {
        this.f4235a = gVar;
        this.f4236b = i9;
        this.f4237c = bVar;
    }
}
