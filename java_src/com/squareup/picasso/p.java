package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import com.squareup.okhttp.Cache;
import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.picasso.Downloader;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class p implements Downloader {

    /* renamed from: a  reason: collision with root package name */
    private final OkHttpClient f29983a;

    public p(Context context) {
        this(c0.f(context));
    }

    private static OkHttpClient b() {
        OkHttpClient okHttpClient = new OkHttpClient();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        okHttpClient.setConnectTimeout(15000L, timeUnit);
        okHttpClient.setReadTimeout(20000L, timeUnit);
        okHttpClient.setWriteTimeout(20000L, timeUnit);
        return okHttpClient;
    }

    @Override // com.squareup.picasso.Downloader
    public Downloader.a a(Uri uri, int i9) throws IOException {
        CacheControl cacheControl;
        if (i9 == 0) {
            cacheControl = null;
        } else if (NetworkPolicy.isOfflineOnly(i9)) {
            cacheControl = CacheControl.FORCE_CACHE;
        } else {
            CacheControl.Builder builder = new CacheControl.Builder();
            if (!NetworkPolicy.shouldReadFromDiskCache(i9)) {
                builder.noCache();
            }
            if (!NetworkPolicy.shouldWriteToDiskCache(i9)) {
                builder.noStore();
            }
            cacheControl = builder.build();
        }
        Request.Builder url = new Request.Builder().url(uri.toString());
        if (cacheControl != null) {
            url.cacheControl(cacheControl);
        }
        Response execute = this.f29983a.newCall(url.build()).execute();
        int code = execute.code();
        if (code < 300) {
            boolean z10 = execute.cacheResponse() != null;
            ResponseBody body = execute.body();
            return new Downloader.a(body.byteStream(), z10, body.contentLength());
        }
        execute.body().close();
        throw new Downloader.ResponseException(code + " " + execute.message(), i9, code);
    }

    public p(File file) {
        this(file, c0.a(file));
    }

    public p(File file, long j10) {
        this(b());
        try {
            this.f29983a.setCache(new Cache(file, j10));
        } catch (IOException unused) {
        }
    }

    public p(OkHttpClient okHttpClient) {
        this.f29983a = okHttpClient;
    }
}
