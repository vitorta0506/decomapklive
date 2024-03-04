package com.vk.api.sdk.okhttp;

import androidx.core.app.NotificationCompat;
import com.facebook.internal.ServerProtocol;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.VKMethodCall;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001:\u0001!B\u000f\b\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010 \u001a\u00020\u0006R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0013¨\u0006\""}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;", "", "b", "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;", "(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;)V", "allowNoAuth", "", "getAllowNoAuth", "()Z", "args", "", "", "getArgs", "()Ljava/util/Map;", "customTag", "getCustomTag", "()Ljava/lang/Object;", PushConstants.MZ_PUSH_MESSAGE_METHOD, "getMethod", "()Ljava/lang/String;", "requestUrl", "getRequestUrl", "retryCount", "", "getRetryCount", "()I", "tag", "Lcom/vk/api/sdk/okhttp/RequestTag;", "getTag", "()Lcom/vk/api/sdk/okhttp/RequestTag;", "version", "getVersion", "isExtended", "Builder", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class OkHttpMethodCall {
    private final boolean allowNoAuth;
    @NotNull
    private final Map<String, String> args;
    @Nullable
    private final Object customTag;
    @NotNull
    private final String method;
    @Nullable
    private final String requestUrl;
    private final int retryCount;
    @Nullable
    private final RequestTag tag;
    @NotNull
    private final String version;

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0004J\u0010\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010 \u001a\u00020\tJ\u0018\u0010\n\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\"H\u0016J\b\u0010#\u001a\u00020$H\u0016J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001J\u0010\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'H\u0016J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0015J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010)\u001a\u0004\u0018\u00010\u0019J\u0012\u0010*\u001a\u00020\u00002\b\u0010*\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\tH\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R6\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\"\u0010\r\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\"\u0010\u0013\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0015@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\"\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u0003\u001a\u0004\u0018\u00010\u0019@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001e\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0012¨\u0006+"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;", "", "()V", "<set-?>", "", "allowNoAuth", "getAllowNoAuth", "()Z", "", "", "args", "getArgs", "()Ljava/util/Map;", "customTag", "getCustomTag", "()Ljava/lang/Object;", PushConstants.MZ_PUSH_MESSAGE_METHOD, "getMethod", "()Ljava/lang/String;", "requestUrl", "getRequestUrl", "", "retryCount", "getRetryCount", "()I", "Lcom/vk/api/sdk/okhttp/RequestTag;", "tag", "getTag", "()Lcom/vk/api/sdk/okhttp/RequestTag;", "version", "getVersion", "allow", "key", "value", "", "build", "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;", "from", NotificationCompat.CATEGORY_CALL, "Lcom/vk/api/sdk/VKMethodCall;", AnimatedPasterJsonConfig.CONFIG_COUNT, "requestTag", "url", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static class Builder {
        private boolean allowNoAuth;
        @Nullable
        private Object customTag;
        @Nullable
        private String requestUrl;
        @Nullable
        private RequestTag tag;
        @NotNull
        private String method = "";
        @NotNull
        private String version = "";
        @NotNull
        private Map<String, String> args = new HashMap();
        private int retryCount = 4;

        @NotNull
        public final Builder allowNoAuth(boolean z10) {
            this.allowNoAuth = z10;
            return this;
        }

        @NotNull
        public Builder args(@NotNull Map<String, String> args) {
            Intrinsics.checkNotNullParameter(args, "args");
            getArgs().putAll(args);
            return this;
        }

        @NotNull
        public OkHttpMethodCall build() {
            return new OkHttpMethodCall(this);
        }

        @NotNull
        public final Builder customTag(@Nullable Object obj) {
            this.customTag = obj;
            return this;
        }

        @NotNull
        public Builder from(@NotNull VKMethodCall call) {
            Intrinsics.checkNotNullParameter(call, "call");
            method(call.getMethod());
            version(call.getVersion());
            args(call.getArgs());
            allowNoAuth(call.getAllowNoAuth());
            retryCount(call.getRetryCount());
            url(call.getRequestUrl());
            return this;
        }

        public final boolean getAllowNoAuth() {
            return this.allowNoAuth;
        }

        @NotNull
        public final Map<String, String> getArgs() {
            return this.args;
        }

        @Nullable
        public final Object getCustomTag() {
            return this.customTag;
        }

        @NotNull
        public final String getMethod() {
            return this.method;
        }

        @Nullable
        public final String getRequestUrl() {
            return this.requestUrl;
        }

        public final int getRetryCount() {
            return this.retryCount;
        }

        @Nullable
        public final RequestTag getTag() {
            return this.tag;
        }

        @NotNull
        public final String getVersion() {
            return this.version;
        }

        @NotNull
        public Builder method(@NotNull String method) {
            Intrinsics.checkNotNullParameter(method, "method");
            this.method = method;
            return this;
        }

        @NotNull
        public final Builder retryCount(int i9) {
            this.retryCount = i9;
            return this;
        }

        @NotNull
        public final Builder tag(@Nullable RequestTag requestTag) {
            this.tag = requestTag;
            return this;
        }

        @NotNull
        public Builder url(@Nullable String str) {
            this.requestUrl = str;
            return this;
        }

        @NotNull
        public Builder version(@NotNull String version) {
            Intrinsics.checkNotNullParameter(version, "version");
            this.version = version;
            return this;
        }

        @NotNull
        public Builder args(@NotNull String key, @NotNull String value) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            getArgs().put(key, value);
            return this;
        }

        @Nullable
        public final String args(@NotNull String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return this.args.get(key);
        }
    }

    protected OkHttpMethodCall(@NotNull Builder b10) {
        boolean isBlank;
        boolean isBlank2;
        Intrinsics.checkNotNullParameter(b10, "b");
        isBlank = StringsKt__StringsJVMKt.isBlank(b10.getMethod());
        if (!isBlank) {
            isBlank2 = StringsKt__StringsJVMKt.isBlank(b10.getVersion());
            if (!isBlank2) {
                this.requestUrl = b10.getRequestUrl();
                this.method = b10.getMethod();
                this.version = b10.getVersion();
                this.args = b10.getArgs();
                this.tag = b10.getTag();
                this.customTag = b10.getCustomTag();
                this.allowNoAuth = b10.getAllowNoAuth();
                this.retryCount = b10.getRetryCount();
                return;
            }
            throw new IllegalArgumentException("version is null or empty");
        }
        throw new IllegalArgumentException("method is null or empty");
    }

    public final boolean getAllowNoAuth() {
        return this.allowNoAuth;
    }

    @NotNull
    public final Map<String, String> getArgs() {
        return this.args;
    }

    @Nullable
    public final Object getCustomTag() {
        return this.customTag;
    }

    @NotNull
    public final String getMethod() {
        return this.method;
    }

    @Nullable
    public final String getRequestUrl() {
        return this.requestUrl;
    }

    public final int getRetryCount() {
        return this.retryCount;
    }

    @Nullable
    public final RequestTag getTag() {
        return this.tag;
    }

    @NotNull
    public final String getVersion() {
        return this.version;
    }

    public final boolean isExtended() {
        return Intrinsics.areEqual(this.args.get("extended"), ServerProtocol.DIALOG_RETURN_SCOPES_TRUE) || Intrinsics.areEqual(this.args.get("extended"), "1");
    }
}
