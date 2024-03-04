package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4.dex */
public interface Downloader {

    /* loaded from: classes4.dex */
    public static class ResponseException extends IOException {
        final boolean localCacheOnly;
        final int responseCode;

        public ResponseException(String str, int i9, int i10) {
            super(str);
            this.localCacheOnly = NetworkPolicy.isOfflineOnly(i9);
            this.responseCode = i10;
        }
    }

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final InputStream f29850a;

        /* renamed from: b  reason: collision with root package name */
        final Bitmap f29851b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f29852c;

        /* renamed from: d  reason: collision with root package name */
        final long f29853d;

        public a(InputStream inputStream, boolean z10, long j10) {
            if (inputStream != null) {
                this.f29850a = inputStream;
                this.f29851b = null;
                this.f29852c = z10;
                this.f29853d = j10;
                return;
            }
            throw new IllegalArgumentException("Stream may not be null.");
        }

        @Deprecated
        public Bitmap a() {
            return this.f29851b;
        }

        public long b() {
            return this.f29853d;
        }

        public InputStream c() {
            return this.f29850a;
        }
    }

    a a(Uri uri, int i9) throws IOException;
}
