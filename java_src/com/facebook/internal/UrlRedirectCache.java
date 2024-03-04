package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import com.facebook.share.internal.ShareConstants;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0007J\b\u0010\r\u001a\u00020\tH\u0007J\b\u0010\u000e\u001a\u00020\u0007H\u0007J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/facebook/internal/UrlRedirectCache;", "", "()V", "redirectContentTag", "", "tag", "urlRedirectFileLruCache", "Lcom/facebook/internal/FileLruCache;", "cacheUriRedirect", "", "fromUri", "Landroid/net/Uri;", "toUri", "clearCache", "getCache", "getRedirectedUri", ShareConstants.MEDIA_URI, "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class UrlRedirectCache {
    @NotNull
    public static final UrlRedirectCache INSTANCE = new UrlRedirectCache();
    @NotNull
    private static final String redirectContentTag;
    @NotNull
    private static final String tag;
    @Nullable
    private static FileLruCache urlRedirectFileLruCache;

    static {
        String simpleName = Reflection.getOrCreateKotlinClass(UrlRedirectCache.class).getSimpleName();
        if (simpleName == null) {
            simpleName = "UrlRedirectCache";
        }
        tag = simpleName;
        redirectContentTag = Intrinsics.stringPlus(simpleName, "_Redirect");
    }

    private UrlRedirectCache() {
    }

    @JvmStatic
    public static final void cacheUriRedirect(@Nullable Uri uri, @Nullable Uri uri2) {
        if (uri == null || uri2 == null) {
            return;
        }
        OutputStream outputStream = null;
        try {
            try {
                FileLruCache cache = getCache();
                String uri3 = uri.toString();
                Intrinsics.checkNotNullExpressionValue(uri3, "fromUri.toString()");
                outputStream = cache.openPutStream(uri3, redirectContentTag);
                String uri4 = uri2.toString();
                Intrinsics.checkNotNullExpressionValue(uri4, "toUri.toString()");
                byte[] bytes = uri4.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
                outputStream.write(bytes);
            } catch (IOException e10) {
                Logger.Companion.log(LoggingBehavior.CACHE, 4, tag, Intrinsics.stringPlus("IOException when accessing cache: ", e10.getMessage()));
            }
        } finally {
            Utility utility = Utility.INSTANCE;
            Utility.closeQuietly(outputStream);
        }
    }

    @JvmStatic
    public static final void clearCache() {
        try {
            getCache().clearCache();
        } catch (IOException e10) {
            Logger.Companion.log(LoggingBehavior.CACHE, 5, tag, Intrinsics.stringPlus("clearCache failed ", e10.getMessage()));
        }
    }

    @JvmStatic
    @NotNull
    public static final synchronized FileLruCache getCache() throws IOException {
        FileLruCache fileLruCache;
        synchronized (UrlRedirectCache.class) {
            fileLruCache = urlRedirectFileLruCache;
            if (fileLruCache == null) {
                fileLruCache = new FileLruCache(tag, new FileLruCache.Limits());
            }
            urlRedirectFileLruCache = fileLruCache;
        }
        return fileLruCache;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r3, r11) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
        r5 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
        com.facebook.internal.Logger.Companion.log(com.facebook.LoggingBehavior.CACHE, 6, com.facebook.internal.UrlRedirectCache.tag, "A loop detected in UrlRedirectCache");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0069, code lost:
        com.facebook.internal.Utility.closeQuietly(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
        return null;
     */
    @kotlin.jvm.JvmStatic
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.net.Uri getRedirectedUri(@org.jetbrains.annotations.Nullable android.net.Uri r11) {
        /*
            r0 = 0
            if (r11 != 0) goto L4
            return r0
        L4:
            java.lang.String r11 = r11.toString()
            java.lang.String r1 = "uri.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r1)
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            r1.add(r11)
            com.facebook.internal.FileLruCache r2 = getCache()     // Catch: java.lang.Throwable -> L95 java.io.IOException -> L97
            java.lang.String r3 = com.facebook.internal.UrlRedirectCache.redirectContentTag     // Catch: java.lang.Throwable -> L95 java.io.IOException -> L97
            java.io.InputStream r3 = r2.get(r11, r3)     // Catch: java.lang.Throwable -> L95 java.io.IOException -> L97
            r4 = 0
            r5 = r0
            r6 = 0
        L22:
            if (r3 == 0) goto L83
            r6 = 1
            java.io.InputStreamReader r7 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L81 java.lang.Throwable -> Laf
            r7.<init>(r3)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> Laf
            r3 = 128(0x80, float:1.8E-43)
            char[] r5 = new char[r3]     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            r8.<init>()     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            int r9 = r7.read(r5, r4, r3)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
        L37:
            if (r9 <= 0) goto L41
            r8.append(r5, r4, r9)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            int r9 = r7.read(r5, r4, r3)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            goto L37
        L41:
            com.facebook.internal.Utility r3 = com.facebook.internal.Utility.INSTANCE     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            com.facebook.internal.Utility.closeQuietly(r7)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r3 = r8.toString()     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r5 = "urlBuilder.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r5)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            boolean r5 = r1.contains(r3)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            if (r5 == 0) goto L6d
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r11)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            if (r1 == 0) goto L5d
            r5 = r7
            goto L83
        L5d:
            com.facebook.internal.Logger$Companion r11 = com.facebook.internal.Logger.Companion     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            com.facebook.LoggingBehavior r1 = com.facebook.LoggingBehavior.CACHE     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            r2 = 6
            java.lang.String r3 = com.facebook.internal.UrlRedirectCache.tag     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r4 = "A loop detected in UrlRedirectCache"
            r11.log(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            com.facebook.internal.Utility.closeQuietly(r7)
            return r0
        L6d:
            r1.add(r3)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r11 = com.facebook.internal.UrlRedirectCache.redirectContentTag     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.io.InputStream r11 = r2.get(r3, r11)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            r5 = r7
            r10 = r3
            r3 = r11
            r11 = r10
            goto L22
        L7b:
            r11 = move-exception
            r0 = r7
            goto Lb1
        L7e:
            r11 = move-exception
            r5 = r7
            goto L99
        L81:
            r11 = move-exception
            goto L99
        L83:
            if (r6 == 0) goto L8f
            android.net.Uri r11 = android.net.Uri.parse(r11)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> Laf
            com.facebook.internal.Utility r0 = com.facebook.internal.Utility.INSTANCE
            com.facebook.internal.Utility.closeQuietly(r5)
            return r11
        L8f:
            com.facebook.internal.Utility r11 = com.facebook.internal.Utility.INSTANCE
            com.facebook.internal.Utility.closeQuietly(r5)
            goto Lae
        L95:
            r11 = move-exception
            goto Lb1
        L97:
            r11 = move-exception
            r5 = r0
        L99:
            com.facebook.internal.Logger$Companion r1 = com.facebook.internal.Logger.Companion     // Catch: java.lang.Throwable -> Laf
            com.facebook.LoggingBehavior r2 = com.facebook.LoggingBehavior.CACHE     // Catch: java.lang.Throwable -> Laf
            r3 = 4
            java.lang.String r4 = com.facebook.internal.UrlRedirectCache.tag     // Catch: java.lang.Throwable -> Laf
            java.lang.String r6 = "IOException when accessing cache: "
            java.lang.String r11 = r11.getMessage()     // Catch: java.lang.Throwable -> Laf
            java.lang.String r11 = kotlin.jvm.internal.Intrinsics.stringPlus(r6, r11)     // Catch: java.lang.Throwable -> Laf
            r1.log(r2, r3, r4, r11)     // Catch: java.lang.Throwable -> Laf
            goto L8f
        Lae:
            return r0
        Laf:
            r11 = move-exception
            r0 = r5
        Lb1:
            com.facebook.internal.Utility r1 = com.facebook.internal.Utility.INSTANCE
            com.facebook.internal.Utility.closeQuietly(r0)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.UrlRedirectCache.getRedirectedUri(android.net.Uri):android.net.Uri");
    }
}
