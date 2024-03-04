package com.vk.api.sdk;

import android.net.Uri;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.internal.HttpMultipartEntry;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001:\u0001\u001aB\u000f\b\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0007R\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/vk/api/sdk/VKHttpPostCall;", "", "b", "Lcom/vk/api/sdk/VKHttpPostCall$Builder;", "(Lcom/vk/api/sdk/VKHttpPostCall$Builder;)V", "isAwaitNetwork", "", "()Z", "isMultipart", "parts", "", "", "Lcom/vk/api/sdk/internal/HttpMultipartEntry;", "getParts", "()Ljava/util/Map;", "retryCount", "", "getRetryCount", "()I", "timeoutMs", "", "getTimeoutMs", "()J", "url", "getUrl", "()Ljava/lang/String;", "Builder", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class VKHttpPostCall {
    private final boolean isAwaitNetwork;
    private final boolean isMultipart;
    @NotNull
    private final Map<String, HttpMultipartEntry> parts;
    private final int retryCount;
    private final long timeoutMs;
    @NotNull
    private final String url;

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J \u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\tH\u0016J\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0016J\u0010\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0004H\u0016J\u001c\u0010\u000b\u001a\u00020\u00002\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0#H\u0016J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u000eH\u0016J\u0010\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\tH\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0006R6\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u000e@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0012@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006&"}, d2 = {"Lcom/vk/api/sdk/VKHttpPostCall$Builder;", "", "()V", "<set-?>", "", "isAwaitNetwork", "()Z", "isMultipart", "", "", "Lcom/vk/api/sdk/internal/HttpMultipartEntry;", "parts", "getParts", "()Ljava/util/Map;", "", "retryCount", "getRetryCount", "()I", "", "timeoutMs", "getTimeoutMs", "()J", "url", "getUrl", "()Ljava/lang/String;", "args", "key", "fileUri", "Landroid/net/Uri;", "fileName", "value", "awaitNetwork", "build", "Lcom/vk/api/sdk/VKHttpPostCall;", "multipart", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "timeout", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static class Builder {
        private boolean isAwaitNetwork;
        private long timeoutMs;
        @NotNull
        private String url = "";
        private boolean isMultipart = true;
        @NotNull
        private Map<String, HttpMultipartEntry> parts = new HashMap();
        private int retryCount = Integer.MAX_VALUE;

        @NotNull
        public Builder args(@NotNull String key, @NotNull String value) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            getParts().put(key, new HttpMultipartEntry.Text(value));
            return this;
        }

        @NotNull
        public Builder awaitNetwork(boolean z10) {
            this.isAwaitNetwork = z10;
            return this;
        }

        @NotNull
        public VKHttpPostCall build() {
            return new VKHttpPostCall(this);
        }

        @NotNull
        public final Map<String, HttpMultipartEntry> getParts() {
            return this.parts;
        }

        public final int getRetryCount() {
            return this.retryCount;
        }

        public final long getTimeoutMs() {
            return this.timeoutMs;
        }

        @NotNull
        public final String getUrl() {
            return this.url;
        }

        public final boolean isAwaitNetwork() {
            return this.isAwaitNetwork;
        }

        public final boolean isMultipart() {
            return this.isMultipart;
        }

        @NotNull
        public Builder multipart(boolean z10) {
            this.isMultipart = z10;
            return this;
        }

        @NotNull
        public Builder parts(@NotNull Map<String, ? extends HttpMultipartEntry> parts) {
            Intrinsics.checkNotNullParameter(parts, "parts");
            getParts().putAll(parts);
            return this;
        }

        @NotNull
        public Builder retryCount(int i9) {
            this.retryCount = i9;
            return this;
        }

        @NotNull
        public Builder timeout(long j10) {
            this.timeoutMs = j10;
            return this;
        }

        @NotNull
        public Builder url(@NotNull String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
            return this;
        }

        @NotNull
        public Builder args(@NotNull String key, @NotNull Uri fileUri) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(fileUri, "fileUri");
            getParts().put(key, new HttpMultipartEntry.File(fileUri));
            return this;
        }

        @NotNull
        public Builder args(@NotNull String key, @NotNull Uri fileUri, @NotNull String fileName) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(fileUri, "fileUri");
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            getParts().put(key, new HttpMultipartEntry.File(fileUri, fileName));
            return this;
        }
    }

    protected VKHttpPostCall(@NotNull Builder b10) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(b10, "b");
        isBlank = StringsKt__StringsJVMKt.isBlank(b10.getUrl());
        if (!isBlank) {
            if (b10.getTimeoutMs() >= 0) {
                if (!b10.isMultipart()) {
                    Map<String, HttpMultipartEntry> parts = b10.getParts();
                    boolean z10 = true;
                    if (!parts.isEmpty()) {
                        for (Map.Entry<String, HttpMultipartEntry> entry : parts.entrySet()) {
                            if (!(entry.getValue() instanceof HttpMultipartEntry.Text)) {
                                break;
                            }
                        }
                    }
                    z10 = false;
                    if (z10) {
                        throw new IllegalStateException("Non multipart calls should consist of text arguments only");
                    }
                }
                this.url = b10.getUrl();
                this.isMultipart = b10.isMultipart();
                this.parts = b10.getParts();
                this.retryCount = b10.getRetryCount();
                this.timeoutMs = b10.getTimeoutMs();
                this.isAwaitNetwork = b10.isAwaitNetwork();
                return;
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("Illegal timeout value: ", Long.valueOf(b10.getTimeoutMs())));
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Illegal url value: ", b10.getUrl()));
    }

    @NotNull
    public final Map<String, HttpMultipartEntry> getParts() {
        return this.parts;
    }

    public final int getRetryCount() {
        return this.retryCount;
    }

    public final long getTimeoutMs() {
        return this.timeoutMs;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public final boolean isAwaitNetwork() {
        return this.isAwaitNetwork;
    }

    public final boolean isMultipart() {
        return this.isMultipart;
    }
}
