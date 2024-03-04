package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import android.net.http.HttpResponseCache;
import com.squareup.picasso.Downloader;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes4.dex */
public class b0 implements Downloader {

    /* renamed from: b  reason: collision with root package name */
    static volatile Object f29901b;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f29902c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal<StringBuilder> f29903d = new a();

    /* renamed from: a  reason: collision with root package name */
    private final Context f29904a;

    /* loaded from: classes4.dex */
    static class a extends ThreadLocal<StringBuilder> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public StringBuilder initialValue() {
            return new StringBuilder();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class b {
        static Object a(Context context) throws IOException {
            File f10 = c0.f(context);
            HttpResponseCache installed = HttpResponseCache.getInstalled();
            return installed == null ? HttpResponseCache.install(f10, c0.a(f10)) : installed;
        }
    }

    public b0(Context context) {
        this.f29904a = context.getApplicationContext();
    }

    private static void b(Context context) {
        if (f29901b == null) {
            try {
                synchronized (f29902c) {
                    if (f29901b == null) {
                        f29901b = b.a(context);
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.squareup.picasso.Downloader
    public Downloader.a a(Uri uri, int i9) throws IOException {
        String sb2;
        b(this.f29904a);
        HttpURLConnection c10 = c(uri);
        c10.setUseCaches(true);
        if (i9 != 0) {
            if (NetworkPolicy.isOfflineOnly(i9)) {
                sb2 = "only-if-cached,max-age=2147483647";
            } else {
                StringBuilder sb3 = f29903d.get();
                sb3.setLength(0);
                if (!NetworkPolicy.shouldReadFromDiskCache(i9)) {
                    sb3.append("no-cache");
                }
                if (!NetworkPolicy.shouldWriteToDiskCache(i9)) {
                    if (sb3.length() > 0) {
                        sb3.append(',');
                    }
                    sb3.append("no-store");
                }
                sb2 = sb3.toString();
            }
            c10.setRequestProperty("Cache-Control", sb2);
        }
        int responseCode = c10.getResponseCode();
        if (responseCode < 300) {
            return new Downloader.a(c10.getInputStream(), c0.w(c10.getHeaderField("X-Android-Response-Source")), c10.getHeaderFieldInt("Content-Length", -1));
        }
        c10.disconnect();
        throw new Downloader.ResponseException(responseCode + " " + c10.getResponseMessage(), i9, responseCode);
    }

    protected HttpURLConnection c(Uri uri) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(20000);
        return httpURLConnection;
    }
}
