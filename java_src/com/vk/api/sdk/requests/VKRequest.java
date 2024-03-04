package com.vk.api.sdk.requests;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.internal.NativeProtocol;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.vk.api.sdk.VKApiConfig;
import com.vk.api.sdk.VKApiManager;
import com.vk.api.sdk.VKMethodCall;
import com.vk.api.sdk.e;
import com.vk.api.sdk.exceptions.VKApiCodes;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.internal.ApiCommand;
import com.vk.dto.common.id.UserId;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata(bv = {}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\r\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000 ;*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001;B\u001b\u0012\u0006\u0010%\u001a\u00020\u0004\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b9\u0010:J\u001e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\bJ\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\tJ\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\nJ\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u000bJ'\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\f2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\r¢\u0006\u0004\b\u0007\u0010\u000fJ \u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\f2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u0010J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0011J\u001e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0012J\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00120\u0013J\u0017\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0015\u0010\u0019J\u0017\u0010\u001c\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\u001aH\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u001f\u001a\u00020\bH\u0016J\u0010\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020!H\u0014R\"\u0010%\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u0019\u0010+\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b+\u0010&\u001a\u0004\b,\u0010(R\"\u0010\u001e\u001a\u00020\b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R$\u00103\u001a\u00020\b2\u0006\u00102\u001a\u00020\b8\u0004@BX\u0084\u000e¢\u0006\f\n\u0004\b3\u0010-\u001a\u0004\b3\u0010/R#\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004048\u0006¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108¨\u0006<"}, d2 = {"Lcom/vk/api/sdk/requests/VKRequest;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/e;", "Lcom/vk/api/sdk/internal/ApiCommand;", "", "name", "value", "addParam", "", "", "", "", "", "", "values", "(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;", "", "", "Lcom/vk/dto/common/id/UserId;", "", "response", "parse", "(Ljava/lang/String;)Ljava/lang/Object;", "Lorg/json/JSONObject;", "r", "(Lorg/json/JSONObject;)Ljava/lang/Object;", "Lcom/vk/api/sdk/VKApiManager;", "manager", "onExecute", "(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Object;", "allowNoAuth", "allow", "setAnonymous", "Lcom/vk/api/sdk/VKApiConfig;", "config", "Lcom/vk/api/sdk/VKMethodCall$Builder;", "createBaseCallBuilder", PushConstants.MZ_PUSH_MESSAGE_METHOD, "Ljava/lang/String;", "getMethod", "()Ljava/lang/String;", "setMethod", "(Ljava/lang/String;)V", "requestApiVersion", "getRequestApiVersion", "Z", "getAllowNoAuth", "()Z", "setAllowNoAuth", "(Z)V", "<set-?>", "isAnonymous", "Ljava/util/LinkedHashMap;", NativeProtocol.WEB_DIALOG_PARAMS, "Ljava/util/LinkedHashMap;", "getParams", "()Ljava/util/LinkedHashMap;", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "Companion", "core_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes4.dex */
public class VKRequest<T> extends ApiCommand<T> implements e<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int ERROR_MALFORMED_RESPONSE = -2;
    private volatile boolean allowNoAuth;
    private volatile boolean isAnonymous;
    @NotNull
    private String method;
    @NotNull
    private final LinkedHashMap<String, String> params;
    @Nullable
    private final String requestApiVersion;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/requests/VKRequest$Companion;", "", "()V", "ERROR_MALFORMED_RESPONSE", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public VKRequest(@NotNull String method, @Nullable String str) {
        Intrinsics.checkNotNullParameter(method, "method");
        this.method = method;
        this.requestApiVersion = str;
        this.params = new LinkedHashMap<>();
    }

    @NotNull
    public final VKRequest<T> addParam(@NotNull String name, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (str != null) {
            getParams().put(name, str);
        }
        return this;
    }

    @NotNull
    public VKRequest<T> allowNoAuth() {
        setAllowNoAuth(true);
        return this;
    }

    @NotNull
    protected VKMethodCall.Builder createBaseCallBuilder(@NotNull VKApiConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return new VKMethodCall.Builder();
    }

    protected final boolean getAllowNoAuth() {
        return this.allowNoAuth;
    }

    @NotNull
    public final String getMethod() {
        return this.method;
    }

    @NotNull
    public final LinkedHashMap<String, String> getParams() {
        return this.params;
    }

    @Nullable
    public final String getRequestApiVersion() {
        return this.requestApiVersion;
    }

    protected final boolean isAnonymous() {
        return this.isAnonymous;
    }

    @Override // com.vk.api.sdk.internal.ApiCommand
    protected T onExecute(@NotNull VKApiManager manager) throws InterruptedException, IOException, VKApiException {
        Intrinsics.checkNotNullParameter(manager, "manager");
        VKApiConfig config = manager.getConfig();
        String str = this.requestApiVersion;
        if (str == null) {
            str = config.getVersion();
        }
        this.params.put(VKApiCodes.PARAM_LANG, config.getLang());
        this.params.put("device_id", config.getDeviceId().getValue());
        String value = config.getExternalDeviceId().getValue();
        if (value != null) {
            getParams().put("external_device_id", value);
        }
        this.params.put(NotifyType.VIBRATE, str);
        return (T) manager.execute(createBaseCallBuilder(config).args(this.params).method(this.method).version(str).setAnonymous(this.isAnonymous).allowNoAuth(this.allowNoAuth).build(), this);
    }

    @Override // com.vk.api.sdk.e
    public T parse(@NotNull String response) throws VKApiException {
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            return parse(new JSONObject(response));
        } catch (Throwable th2) {
            String str = this.method;
            throw new VKApiExecutionException(-2, str, true, '[' + this.method + "] " + ((Object) th2.getLocalizedMessage()), null, null, null, null, 0, 496, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T parse(@NotNull JSONObject r10) throws Exception {
        Intrinsics.checkNotNullParameter(r10, "r");
        return r10;
    }

    protected final void setAllowNoAuth(boolean z10) {
        this.allowNoAuth = z10;
    }

    @NotNull
    public VKRequest<T> setAnonymous(boolean z10) {
        this.isAnonymous = z10;
        return this;
    }

    public final void setMethod(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.method = str;
    }

    @NotNull
    public final VKRequest<T> addParam(@NotNull String name, boolean z10) {
        Intrinsics.checkNotNullParameter(name, "name");
        getParams().put(name, z10 ? "1" : "0");
        return this;
    }

    public /* synthetic */ VKRequest(String str, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? null : str2);
    }

    @NotNull
    public final VKRequest<T> addParam(@NotNull String name, int i9) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (i9 != 0) {
            LinkedHashMap<String, String> params = getParams();
            String num = Integer.toString(i9);
            Intrinsics.checkNotNullExpressionValue(num, "toString(value)");
            params.put(name, num);
        }
        return this;
    }

    @NotNull
    public final VKRequest<T> addParam(@NotNull String name, long j10) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (j10 != 0) {
            LinkedHashMap<String, String> params = getParams();
            String l10 = Long.toString(j10);
            Intrinsics.checkNotNullExpressionValue(l10, "toString(value)");
            params.put(name, l10);
        }
        return this;
    }

    @NotNull
    public final VKRequest<T> addParam(@NotNull String name, float f10) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (!(f10 == 0.0f)) {
            LinkedHashMap<String, String> params = getParams();
            String f11 = Float.toString(f10);
            Intrinsics.checkNotNullExpressionValue(f11, "toString(value)");
            params.put(name, f11);
        }
        return this;
    }

    @NotNull
    public final VKRequest<T> addParam(@NotNull CharSequence name, @NotNull Object[] values) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(values, "values");
        String obj = name.toString();
        joinToString$default = ArraysKt___ArraysKt.joinToString$default(values, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
        return addParam(obj, joinToString$default);
    }

    @NotNull
    public final VKRequest<T> addParam(@NotNull CharSequence name, @NotNull Iterable<?> values) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(values, "values");
        String obj = name.toString();
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(values, ",", null, null, 0, null, null, 62, null);
        return addParam(obj, joinToString$default);
    }

    @NotNull
    public final VKRequest<T> addParam(@NotNull CharSequence name, @NotNull int[] values) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(values, "values");
        String obj = name.toString();
        joinToString$default = ArraysKt___ArraysKt.joinToString$default(values, (CharSequence) ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
        return addParam(obj, joinToString$default);
    }

    @NotNull
    public final VKRequest<T> addParam(@NotNull String name, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (userId != null) {
            getParams().put(name, String.valueOf(userId.getValue()));
        }
        return this;
    }

    @NotNull
    public final VKRequest<T> addParam(@NotNull CharSequence name, @NotNull List<UserId> values) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(values, "values");
        String obj = name.toString();
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(values, ",", null, null, 0, null, new Function1<UserId, CharSequence>() { // from class: com.vk.api.sdk.requests.VKRequest$addParam$7
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CharSequence invoke(@NotNull UserId it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return String.valueOf(it.getValue());
            }
        }, 30, null);
        return addParam(obj, joinToString$default);
    }
}
