package com.vk.api.sdk.utils;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/utils/VKLoader;", "", "()V", "load", "", "url", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKLoader {
    @NotNull
    public static final VKLoader INSTANCE = new VKLoader();

    private VKLoader() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0033, code lost:
        if (r4 == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004a, code lost:
        if (r4 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
        return r0;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] load(@org.jetbrains.annotations.NotNull java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r0 = "url"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            r0 = 0
            okhttp3.Request$Builder r1 = new okhttp3.Request$Builder     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L49
            r1.<init>()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L49
            okhttp3.Request$Builder r4 = r1.url(r4)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L49
            okhttp3.Request r4 = r4.build()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L49
            com.vk.api.sdk.VKOkHttpProvider$DefaultProvider r1 = new com.vk.api.sdk.VKOkHttpProvider$DefaultProvider     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L49
            r1.<init>()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L49
            okhttp3.OkHttpClient r1 = r1.getClient()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L49
            okhttp3.Call r4 = r1.newCall(r4)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L49
            okhttp3.Response r4 = r4.execute()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L49
            if (r4 != 0) goto L28
            return r0
        L28:
            okhttp3.ResponseBody r4 = r4.body()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L49
            if (r4 != 0) goto L2f
            goto L33
        L2f:
            byte[] r0 = r4.bytes()     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
        L33:
            if (r4 != 0) goto L36
            goto L4c
        L36:
            r4.close()
            goto L4c
        L3a:
            r0 = move-exception
            goto L42
        L3c:
            goto L4a
        L3e:
            r4 = move-exception
            r2 = r0
            r0 = r4
            r4 = r2
        L42:
            if (r4 != 0) goto L45
            goto L48
        L45:
            r4.close()
        L48:
            throw r0
        L49:
            r4 = r0
        L4a:
            if (r4 != 0) goto L36
        L4c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.utils.VKLoader.load(java.lang.String):byte[]");
    }
}
