package com.vk.api.sdk.okhttp;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import com.facebook.share.internal.ShareConstants;
import com.vk.api.sdk.exceptions.VKLocalIOException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLConnection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u00020\u000bH\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/vk/api/sdk/okhttp/FileFullRequestBody;", "Lokhttp3/RequestBody;", "context", "Landroid/content/Context;", ShareConstants.MEDIA_URI, "Landroid/net/Uri;", "(Landroid/content/Context;Landroid/net/Uri;)V", "lastPathSegment", "", "scheme", "contentLength", "", "contentType", "Lokhttp3/MediaType;", "writeTo", "", "sink", "Lokio/BufferedSink;", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FileFullRequestBody extends RequestBody {
    private static final int CHUNK = 8192;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Context context;
    @NotNull
    private final String lastPathSegment;
    @NotNull
    private final String scheme;
    @NotNull
    private final Uri uri;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/okhttp/FileFullRequestBody$Companion;", "", "()V", "CHUNK", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
        if (r3 != false) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FileFullRequestBody(@org.jetbrains.annotations.NotNull android.content.Context r3, @org.jetbrains.annotations.NotNull android.net.Uri r4) {
        /*
            r2 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "uri"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            r2.<init>()
            r2.context = r3
            r2.uri = r4
            java.lang.String r3 = r4.getScheme()
            r0 = 0
            r1 = 1
            if (r3 == 0) goto L23
            boolean r3 = kotlin.text.StringsKt.isBlank(r3)
            if (r3 == 0) goto L21
            goto L23
        L21:
            r3 = 0
            goto L24
        L23:
            r3 = 1
        L24:
            if (r3 != 0) goto L54
            java.lang.String r3 = r4.getLastPathSegment()
            if (r3 == 0) goto L32
            boolean r3 = kotlin.text.StringsKt.isBlank(r3)
            if (r3 == 0) goto L33
        L32:
            r0 = 1
        L33:
            if (r0 != 0) goto L54
            java.lang.String r3 = r4.getScheme()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            java.lang.String r0 = "uri.scheme!!"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            r2.scheme = r3
            java.lang.String r3 = r4.getLastPathSegment()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            java.lang.String r4 = "uri.lastPathSegment!!"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            r2.lastPathSegment = r3
            return
        L54:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Illegal fileUri value: '"
            r0.append(r1)
            r0.append(r4)
            r4 = 39
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.okhttp.FileFullRequestBody.<init>(android.content.Context, android.net.Uri):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.content.res.AssetFileDescriptor] */
    /* JADX WARN: Type inference failed for: r0v10 */
    @Override // okhttp3.RequestBody
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long contentLength() throws java.io.IOException {
        /*
            r5 = this;
            r0 = 0
            android.content.Context r1 = r5.context     // Catch: java.lang.Throwable -> L37 java.io.FileNotFoundException -> L3c
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch: java.lang.Throwable -> L37 java.io.FileNotFoundException -> L3c
            android.net.Uri r2 = r5.uri     // Catch: java.lang.Throwable -> L37 java.io.FileNotFoundException -> L3c
            java.lang.String r3 = "r"
            android.content.res.AssetFileDescriptor r1 = r1.openAssetFileDescriptor(r2, r3)     // Catch: java.lang.Throwable -> L37 java.io.FileNotFoundException -> L3c
            if (r1 != 0) goto L12
            goto L1a
        L12:
            long r2 = r1.getLength()     // Catch: java.io.FileNotFoundException -> L35 java.lang.Throwable -> L46
            java.lang.Long r0 = java.lang.Long.valueOf(r2)     // Catch: java.io.FileNotFoundException -> L35 java.lang.Throwable -> L46
        L1a:
            if (r0 == 0) goto L27
            long r2 = r0.longValue()     // Catch: java.io.FileNotFoundException -> L35 java.lang.Throwable -> L46
            if (r1 != 0) goto L23
            goto L26
        L23:
            r1.close()     // Catch: java.lang.Exception -> L26
        L26:
            return r2
        L27:
            java.io.FileNotFoundException r0 = new java.io.FileNotFoundException     // Catch: java.io.FileNotFoundException -> L35 java.lang.Throwable -> L46
            java.lang.String r2 = "Cannot open uri: "
            android.net.Uri r3 = r5.uri     // Catch: java.io.FileNotFoundException -> L35 java.lang.Throwable -> L46
            java.lang.String r2 = kotlin.jvm.internal.Intrinsics.stringPlus(r2, r3)     // Catch: java.io.FileNotFoundException -> L35 java.lang.Throwable -> L46
            r0.<init>(r2)     // Catch: java.io.FileNotFoundException -> L35 java.lang.Throwable -> L46
            throw r0     // Catch: java.io.FileNotFoundException -> L35 java.lang.Throwable -> L46
        L35:
            r0 = move-exception
            goto L40
        L37:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L47
        L3c:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L40:
            com.vk.api.sdk.exceptions.VKLocalIOException r2 = new com.vk.api.sdk.exceptions.VKLocalIOException     // Catch: java.lang.Throwable -> L46
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L46
            throw r2     // Catch: java.lang.Throwable -> L46
        L46:
            r0 = move-exception
        L47:
            if (r1 != 0) goto L4a
            goto L4d
        L4a:
            r1.close()     // Catch: java.lang.Exception -> L4d
        L4d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.okhttp.FileFullRequestBody.contentLength():long");
    }

    @Override // okhttp3.RequestBody
    @Nullable
    public MediaType contentType() {
        String str;
        try {
            str = URLConnection.guessContentTypeFromName(this.lastPathSegment);
        } catch (Exception unused) {
            str = null;
        }
        if (str == null) {
            try {
                Cursor query = this.context.getContentResolver().query(this.uri, new String[]{"mime_type"}, null, null, null);
                if (query != null) {
                    str = query.isNull(0) ? null : query.getString(0);
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(query, null);
                }
            } catch (Throwable unused2) {
            }
        }
        MediaType parse = str != null ? MediaType.Companion.parse(str) : null;
        return parse == null ? MediaType.Companion.get("application/octet-stream") : parse;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(@NotNull BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        OutputStream outputStream = sink.outputStream();
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            try {
                assetFileDescriptor = this.context.getContentResolver().openAssetFileDescriptor(this.uri, "r");
                if (assetFileDescriptor != null) {
                    FileInputStream createInputStream = assetFileDescriptor.createInputStream();
                    Intrinsics.checkNotNullExpressionValue(createInputStream, "fileDescriptor.createInputStream()");
                    byte[] bArr = new byte[8192];
                    while (createInputStream.available() > 0) {
                        try {
                            int read = createInputStream.read(bArr);
                            if (read != -1) {
                                outputStream.write(bArr, 0, read);
                                outputStream.flush();
                            }
                        } catch (IOException e10) {
                            throw new VKLocalIOException(e10);
                        }
                    }
                    try {
                        assetFileDescriptor.close();
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                throw new FileNotFoundException(Intrinsics.stringPlus("Cannot open uri: ", this.uri));
            } catch (IOException e11) {
                throw new VKLocalIOException(e11);
            }
        } catch (Throwable th2) {
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (Exception unused2) {
                }
            }
            throw th2;
        }
    }
}
