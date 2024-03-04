package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import com.facebook.share.internal.ShareConstants;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\bH\u0007J\u0014\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0012\u0010\u0013\u001a\u00020\u00142\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/facebook/internal/ImageResponseCache;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "imageCache", "Lcom/facebook/internal/FileLruCache;", "clearCache", "", "getCache", "getCachedImageStream", "Ljava/io/InputStream;", ShareConstants.MEDIA_URI, "Landroid/net/Uri;", "interceptAndCacheImageStream", "connection", "Ljava/net/HttpURLConnection;", "isCDNURL", "", "BufferedHttpInputStream", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ImageResponseCache {
    @NotNull
    public static final ImageResponseCache INSTANCE = new ImageResponseCache();
    @NotNull
    private static final String TAG;
    private static FileLruCache imageCache;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;", "Ljava/io/BufferedInputStream;", "stream", "Ljava/io/InputStream;", "connection", "Ljava/net/HttpURLConnection;", "(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V", "getConnection", "()Ljava/net/HttpURLConnection;", "setConnection", "(Ljava/net/HttpURLConnection;)V", "close", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    private static final class BufferedHttpInputStream extends BufferedInputStream {
        @NotNull
        private HttpURLConnection connection;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BufferedHttpInputStream(@Nullable InputStream inputStream, @NotNull HttpURLConnection connection) {
            super(inputStream, 8192);
            Intrinsics.checkNotNullParameter(connection, "connection");
            this.connection = connection;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            Utility utility = Utility.INSTANCE;
            Utility.disconnectQuietly(this.connection);
        }

        @NotNull
        public final HttpURLConnection getConnection() {
            return this.connection;
        }

        public final void setConnection(@NotNull HttpURLConnection httpURLConnection) {
            Intrinsics.checkNotNullParameter(httpURLConnection, "<set-?>");
            this.connection = httpURLConnection;
        }
    }

    static {
        String simpleName = ImageResponseCache.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "ImageResponseCache::class.java.simpleName");
        TAG = simpleName;
    }

    private ImageResponseCache() {
    }

    @JvmStatic
    public static final void clearCache() {
        try {
            getCache().clearCache();
        } catch (IOException e10) {
            Logger.Companion.log(LoggingBehavior.CACHE, 5, TAG, Intrinsics.stringPlus("clearCache failed ", e10.getMessage()));
        }
    }

    @JvmStatic
    @NotNull
    public static final synchronized FileLruCache getCache() throws IOException {
        FileLruCache fileLruCache;
        synchronized (ImageResponseCache.class) {
            if (imageCache == null) {
                imageCache = new FileLruCache(TAG, new FileLruCache.Limits());
            }
            fileLruCache = imageCache;
            if (fileLruCache == null) {
                Intrinsics.throwUninitializedPropertyAccessException("imageCache");
                throw null;
            }
        }
        return fileLruCache;
    }

    @JvmStatic
    @Nullable
    public static final InputStream getCachedImageStream(@Nullable Uri uri) {
        if (uri == null || !INSTANCE.isCDNURL(uri)) {
            return null;
        }
        try {
            FileLruCache cache = getCache();
            String uri2 = uri.toString();
            Intrinsics.checkNotNullExpressionValue(uri2, "uri.toString()");
            return FileLruCache.get$default(cache, uri2, null, 2, null);
        } catch (IOException e10) {
            Logger.Companion.log(LoggingBehavior.CACHE, 5, TAG, e10.toString());
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final InputStream interceptAndCacheImageStream(@NotNull HttpURLConnection connection) throws IOException {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (connection.getResponseCode() == 200) {
            Uri parse = Uri.parse(connection.getURL().toString());
            InputStream inputStream = connection.getInputStream();
            try {
                if (INSTANCE.isCDNURL(parse)) {
                    FileLruCache cache = getCache();
                    String uri = parse.toString();
                    Intrinsics.checkNotNullExpressionValue(uri, "uri.toString()");
                    return cache.interceptAndPut(uri, new BufferedHttpInputStream(inputStream, connection));
                }
                return inputStream;
            } catch (IOException unused) {
                return inputStream;
            }
        }
        return null;
    }

    private final boolean isCDNURL(Uri uri) {
        String host;
        boolean endsWith$default;
        boolean startsWith$default;
        boolean endsWith$default2;
        if (uri != null && (host = uri.getHost()) != null) {
            if (!Intrinsics.areEqual(host, "fbcdn.net")) {
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(host, ".fbcdn.net", false, 2, null);
                if (!endsWith$default) {
                    startsWith$default = StringsKt__StringsJVMKt.startsWith$default(host, "fbcdn", false, 2, null);
                    if (startsWith$default) {
                        endsWith$default2 = StringsKt__StringsJVMKt.endsWith$default(host, ".akamaihd.net", false, 2, null);
                        if (endsWith$default2) {
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    @NotNull
    public final String getTAG() {
        return TAG;
    }
}
