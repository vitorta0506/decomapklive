package com.vk.api.sdk;

import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\r\b\u0016\u0018\u0000 &2\u00020\u0001:\u0002%&B\u000f\b\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010!\u001a\u00020\u00062\b\u0010\"\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010#\u001a\u00020\u001aH\u0016J\b\u0010$\u001a\u00020\u000bH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\bR\u0011\u0010\u0013\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\bR\u0011\u0010\u0014\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016R\u0011\u0010\u0019\u001a\u00020\u001a¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\bR\u0011\u0010\u001f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0016¨\u0006'"}, d2 = {"Lcom/vk/api/sdk/VKMethodCall;", "", "b", "Lcom/vk/api/sdk/VKMethodCall$Builder;", "(Lcom/vk/api/sdk/VKMethodCall$Builder;)V", "allowNoAuth", "", "getAllowNoAuth", "()Z", "args", "", "", "getArgs", "()Ljava/util/Map;", "ignoreExecuteErrors", "", "getIgnoreExecuteErrors", "()[I", "isAnonymous", "isAwaitNetwork", PushConstants.MZ_PUSH_MESSAGE_METHOD, "getMethod", "()Ljava/lang/String;", "requestUrl", "getRequestUrl", "retryCount", "", "getRetryCount", "()I", "skipValidation", "getSkipValidation", "version", "getVersion", "equals", "other", "hashCode", "toString", "Builder", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class VKMethodCall {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_RETRY_COUNT = 4;
    private final boolean allowNoAuth;
    @NotNull
    private final Map<String, String> args;
    @Nullable
    private final int[] ignoreExecuteErrors;
    private final boolean isAnonymous;
    private final boolean isAwaitNetwork;
    @NotNull
    private final String method;
    @Nullable
    private final String requestUrl;
    private final int retryCount;
    private final boolean skipValidation;
    @NotNull
    private final String version;

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\u0001H\u0016J\u0018\u0010\n\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\"H\u0016J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0004H\u0016J\b\u0010$\u001a\u00020%H\u0016J\u0012\u0010\u000e\u001a\u00020\u00002\b\u0010&\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\tH\u0016J\u0010\u0010\u0019\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u0018H\u0016J\u0010\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u0004H\u0016J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0004H\u0016J\u0012\u0010+\u001a\u00020\u00002\b\u0010+\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\tH\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R6\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\"\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0003\u001a\u0004\u0018\u00010\r@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0007R\u001e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0007R\u001e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u0016\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u001e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u0018@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0007R\u001e\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015¨\u0006,"}, d2 = {"Lcom/vk/api/sdk/VKMethodCall$Builder;", "", "()V", "<set-?>", "", "allowNoAuth", "getAllowNoAuth", "()Z", "", "", "args", "getArgs", "()Ljava/util/Map;", "", "ignoreExecuteErrors", "getIgnoreExecuteErrors", "()[I", "isAnonymous", "isAwaitNetwork", PushConstants.MZ_PUSH_MESSAGE_METHOD, "getMethod", "()Ljava/lang/String;", "requestUrl", "getRequestUrl", "", "retryCount", "getRetryCount", "()I", "skipValidation", "getSkipValidation", "version", "getVersion", "key", "value", "", "awaitNetwork", "build", "Lcom/vk/api/sdk/VKMethodCall;", "ignoredErrors", AnimatedPasterJsonConfig.CONFIG_COUNT, "setAnonymous", "allow", "skip", "url", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static class Builder {
        private boolean allowNoAuth;
        @Nullable
        private int[] ignoreExecuteErrors;
        private boolean isAnonymous;
        private boolean isAwaitNetwork;
        @Nullable
        private String requestUrl;
        private boolean skipValidation;
        @NotNull
        private String method = "";
        @NotNull
        private String version = "";
        @NotNull
        private Map<String, String> args = new LinkedHashMap();
        private int retryCount = 4;

        @NotNull
        public Builder allowNoAuth(boolean z10) {
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
        public Builder awaitNetwork(boolean z10) {
            this.isAwaitNetwork = z10;
            return this;
        }

        @NotNull
        public VKMethodCall build() {
            return new VKMethodCall(this);
        }

        public final boolean getAllowNoAuth() {
            return this.allowNoAuth;
        }

        @NotNull
        public final Map<String, String> getArgs() {
            return this.args;
        }

        @Nullable
        public final int[] getIgnoreExecuteErrors() {
            return this.ignoreExecuteErrors;
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

        public final boolean getSkipValidation() {
            return this.skipValidation;
        }

        @NotNull
        public final String getVersion() {
            return this.version;
        }

        @NotNull
        public Builder ignoreExecuteErrors(@Nullable int[] iArr) {
            this.ignoreExecuteErrors = iArr;
            return this;
        }

        public final boolean isAnonymous() {
            return this.isAnonymous;
        }

        public final boolean isAwaitNetwork() {
            return this.isAwaitNetwork;
        }

        @NotNull
        public Builder method(@NotNull String method) {
            Intrinsics.checkNotNullParameter(method, "method");
            this.method = method;
            return this;
        }

        @NotNull
        public Builder retryCount(int i9) {
            this.retryCount = i9;
            return this;
        }

        @NotNull
        public Builder setAnonymous(boolean z10) {
            this.isAnonymous = z10;
            return this;
        }

        @NotNull
        public Builder skipValidation(boolean z10) {
            this.skipValidation = z10;
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

        @NotNull
        public Builder args(@NotNull String key, boolean z10) {
            Intrinsics.checkNotNullParameter(key, "key");
            getArgs().put(key, z10 ? "1" : "0");
            return this;
        }

        @NotNull
        public Builder args(@NotNull String key, @NotNull Object value) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            getArgs().put(key, value.toString());
            return this;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/VKMethodCall$Companion;", "", "()V", "DEFAULT_RETRY_COUNT", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    protected VKMethodCall(@NotNull Builder b10) {
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
                this.retryCount = b10.getRetryCount();
                this.skipValidation = b10.getSkipValidation();
                this.isAwaitNetwork = b10.isAwaitNetwork();
                this.ignoreExecuteErrors = b10.getIgnoreExecuteErrors();
                this.allowNoAuth = b10.getAllowNoAuth();
                this.isAnonymous = b10.isAnonymous();
                return;
            }
            throw new IllegalArgumentException("version is null or empty");
        }
        throw new IllegalArgumentException("method is null or empty");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.areEqual(getClass(), obj == null ? null : obj.getClass())) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type com.vk.api.sdk.VKMethodCall");
            VKMethodCall vKMethodCall = (VKMethodCall) obj;
            return Intrinsics.areEqual(this.method, vKMethodCall.method) && Intrinsics.areEqual(this.args, vKMethodCall.args);
        }
        return false;
    }

    public final boolean getAllowNoAuth() {
        return this.allowNoAuth;
    }

    @NotNull
    public final Map<String, String> getArgs() {
        return this.args;
    }

    @Nullable
    public final int[] getIgnoreExecuteErrors() {
        return this.ignoreExecuteErrors;
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

    public final boolean getSkipValidation() {
        return this.skipValidation;
    }

    @NotNull
    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        return (this.method.hashCode() * 31) + this.args.hashCode();
    }

    public final boolean isAnonymous() {
        return this.isAnonymous;
    }

    public final boolean isAwaitNetwork() {
        return this.isAwaitNetwork;
    }

    @NotNull
    public String toString() {
        return "VKMethodCall(method='" + this.method + "', args=" + this.args + ')';
    }
}
