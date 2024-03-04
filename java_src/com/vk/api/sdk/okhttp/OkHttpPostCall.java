package com.vk.api.sdk.okhttp;

import androidx.core.app.NotificationCompat;
import com.vk.api.sdk.VKHttpPostCall;
import com.vk.api.sdk.internal.HttpMultipartEntry;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0018B\u000f\b\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpPostCall;", "", "b", "Lcom/vk/api/sdk/okhttp/OkHttpPostCall$Builder;", "(Lcom/vk/api/sdk/okhttp/OkHttpPostCall$Builder;)V", NotificationCompat.CATEGORY_CALL, "Lcom/vk/api/sdk/VKHttpPostCall;", "(Lcom/vk/api/sdk/VKHttpPostCall;)V", "isMultipart", "", "()Z", "parts", "", "", "Lcom/vk/api/sdk/internal/HttpMultipartEntry;", "getParts", "()Ljava/util/Map;", "timeoutMs", "", "getTimeoutMs", "()J", "url", "getUrl", "()Ljava/lang/String;", "Builder", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class OkHttpPostCall {
    private final boolean isMultipart;
    @NotNull
    private final Map<String, HttpMultipartEntry> parts;
    private final long timeoutMs;
    @NotNull
    private final String url;

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0004J\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0019J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u000eJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\bR\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R6\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00072\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpPostCall$Builder;", "", "()V", "<set-?>", "", "isMultipart", "()Z", "", "", "Lcom/vk/api/sdk/internal/HttpMultipartEntry;", "parts", "getParts", "()Ljava/util/Map;", "timeoutMs", "", "getTimeoutMs", "()J", "setTimeoutMs", "(J)V", "url", "getUrl", "()Ljava/lang/String;", "build", "Lcom/vk/api/sdk/okhttp/OkHttpPostCall;", "multipart", "", "timeout", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static class Builder {
        private long timeoutMs;
        @NotNull
        private String url = "";
        private boolean isMultipart = true;
        @NotNull
        private Map<String, HttpMultipartEntry> parts = new HashMap();

        @NotNull
        public OkHttpPostCall build() {
            return new OkHttpPostCall(this);
        }

        @NotNull
        public final Map<String, HttpMultipartEntry> getParts() {
            return this.parts;
        }

        public final long getTimeoutMs() {
            return this.timeoutMs;
        }

        @NotNull
        public final String getUrl() {
            return this.url;
        }

        public final boolean isMultipart() {
            return this.isMultipart;
        }

        @NotNull
        public final Builder multipart(boolean z10) {
            this.isMultipart = z10;
            return this;
        }

        @NotNull
        public final Builder parts(@NotNull Map<String, ? extends HttpMultipartEntry> parts) {
            Intrinsics.checkNotNullParameter(parts, "parts");
            getParts().clear();
            getParts().putAll(parts);
            return this;
        }

        public final void setTimeoutMs(long j10) {
            this.timeoutMs = j10;
        }

        @NotNull
        public final Builder timeout(long j10) {
            setTimeoutMs(j10);
            return this;
        }

        @NotNull
        public final Builder url(@NotNull String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
            return this;
        }
    }

    protected OkHttpPostCall(@NotNull Builder b10) {
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
                this.timeoutMs = b10.getTimeoutMs();
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

    public final long getTimeoutMs() {
        return this.timeoutMs;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public final boolean isMultipart() {
        return this.isMultipart;
    }

    public OkHttpPostCall(@NotNull VKHttpPostCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.url = call.getUrl();
        this.isMultipart = call.isMultipart();
        this.parts = call.getParts();
        this.timeoutMs = call.getTimeoutMs();
    }
}
