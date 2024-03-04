package com.vk.api.sdk.chain;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.VKApiManager;
import com.vk.api.sdk.VKApiResponseValidator;
import com.vk.api.sdk.e;
import com.vk.api.sdk.exceptions.VKApiCodes;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.okhttp.OkHttpExecutor;
import com.vk.api.sdk.okhttp.OkHttpMethodCall;
import com.vk.api.sdk.utils.ApiExtKt;
import java.util.Locale;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B?\u0012\u0006\u00101\u001a\u000200\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001f\u001a\u00020\r\u0012\u0006\u0010%\u001a\u00020\r\u0012\u000e\u0010(\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010'¢\u0006\u0004\b2\u00103J\u0019\u0010\u0005\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u0004\u0018\u00018\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ1\u0010\u0013\u001a\u0004\u0018\u00018\u00002\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0016\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001b\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\"\u0010\u001f\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0017\u0010%\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b%\u0010 \u001a\u0004\b&\u0010\"R\u001f\u0010(\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010'8\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u001c\u0010.\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/¨\u00064"}, d2 = {"Lcom/vk/api/sdk/chain/MethodChainCall;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/chain/ChainCall;", "Lcom/vk/api/sdk/chain/ChainArgs;", "args", NotificationCompat.CATEGORY_CALL, "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;", "mc", "runRequest", "(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;)Ljava/lang/Object;", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;", "methodResponse", "", "methodName", "", "extended", "", "ignoredExecuteErrors", "parseResult", "(Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;Ljava/lang/String;Z[I)Ljava/lang/Object;", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "okHttpExecutor", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "getOkHttpExecutor", "()Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;", "callBuilder", "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;", "getCallBuilder", "()Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;", "defaultDeviceId", "Ljava/lang/String;", "getDefaultDeviceId", "()Ljava/lang/String;", "setDefaultDeviceId", "(Ljava/lang/String;)V", "defaultLang", "getDefaultLang", "Lcom/vk/api/sdk/e;", "parser", "Lcom/vk/api/sdk/e;", "getParser", "()Lcom/vk/api/sdk/e;", "Lkotlin/Lazy;", "Lcom/vk/api/sdk/VKApiResponseValidator;", "responseValidator", "Lkotlin/Lazy;", "Lcom/vk/api/sdk/VKApiManager;", "manager", "<init>", "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/okhttp/OkHttpExecutor;Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;Ljava/lang/String;Ljava/lang/String;Lcom/vk/api/sdk/e;)V", "core_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes4.dex */
public class MethodChainCall<T> extends ChainCall<T> {
    @NotNull
    private final OkHttpMethodCall.Builder callBuilder;
    @NotNull
    private String defaultDeviceId;
    @NotNull
    private final String defaultLang;
    @NotNull
    private final OkHttpExecutor okHttpExecutor;
    @Nullable
    private final e<T> parser;
    @Nullable
    private final Lazy<VKApiResponseValidator> responseValidator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MethodChainCall(@NotNull VKApiManager manager, @NotNull OkHttpExecutor okHttpExecutor, @NotNull OkHttpMethodCall.Builder callBuilder, @NotNull String defaultDeviceId, @NotNull String defaultLang, @Nullable e<T> eVar) {
        super(manager);
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(okHttpExecutor, "okHttpExecutor");
        Intrinsics.checkNotNullParameter(callBuilder, "callBuilder");
        Intrinsics.checkNotNullParameter(defaultDeviceId, "defaultDeviceId");
        Intrinsics.checkNotNullParameter(defaultLang, "defaultLang");
        this.okHttpExecutor = okHttpExecutor;
        this.callBuilder = callBuilder;
        this.defaultDeviceId = defaultDeviceId;
        this.defaultLang = defaultLang;
        this.parser = eVar;
        this.responseValidator = manager.getConfig().getResponseValidator();
    }

    @Override // com.vk.api.sdk.chain.ChainCall
    @Nullable
    public T call(@NotNull ChainArgs args) throws Exception {
        boolean isBlank;
        boolean isBlank2;
        Intrinsics.checkNotNullParameter(args, "args");
        if (args.hasCaptcha()) {
            this.callBuilder.args(VKApiCodes.EXTRA_CAPTCHA_SID, args.getCaptchaSid()).args(VKApiCodes.EXTRA_CAPTCHA_KEY, args.getCaptchaKey());
        }
        if (args.getUserConfirmed()) {
            this.callBuilder.args(VKApiCodes.EXTRA_CONFIRM, "1");
        }
        String args2 = this.callBuilder.args("device_id");
        if (args2 == null) {
            args2 = "";
        }
        isBlank = StringsKt__StringsJVMKt.isBlank(args2);
        if (isBlank) {
            args2 = this.defaultDeviceId;
        }
        OkHttpMethodCall.Builder builder = this.callBuilder;
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        Objects.requireNonNull(args2, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = args2.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        builder.args("device_id", lowerCase);
        String args3 = this.callBuilder.args(VKApiCodes.PARAM_LANG);
        String str = args3 != null ? args3 : "";
        isBlank2 = StringsKt__StringsJVMKt.isBlank(str);
        if (isBlank2) {
            str = this.defaultLang;
        }
        OkHttpMethodCall.Builder builder2 = this.callBuilder;
        Locale locale2 = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale2, "getDefault()");
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase2 = str.toLowerCase(locale2);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
        builder2.args(VKApiCodes.PARAM_LANG, lowerCase2);
        return runRequest(this.callBuilder.build());
    }

    @NotNull
    public final OkHttpMethodCall.Builder getCallBuilder() {
        return this.callBuilder;
    }

    @NotNull
    public final String getDefaultDeviceId() {
        return this.defaultDeviceId;
    }

    @NotNull
    public final String getDefaultLang() {
        return this.defaultLang;
    }

    @NotNull
    public final OkHttpExecutor getOkHttpExecutor() {
        return this.okHttpExecutor;
    }

    @Nullable
    public final e<T> getParser() {
        return this.parser;
    }

    @Nullable
    public final T parseResult(@NotNull OkHttpExecutor.MethodResponse methodResponse, @NotNull String methodName, boolean z10, @Nullable int[] iArr) {
        VKApiResponseValidator value;
        Intrinsics.checkNotNullParameter(methodResponse, "methodResponse");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        String response = methodResponse.getResponse();
        if (response != null) {
            if (!ApiExtKt.hasSimpleError(response)) {
                if (!ApiExtKt.hasExecuteError(response, iArr)) {
                    try {
                        Lazy<VKApiResponseValidator> lazy = this.responseValidator;
                        if (lazy != null && (value = lazy.getValue()) != null) {
                            value.validateResponse(methodName, z10, response, methodResponse.getHeaders());
                        }
                    } catch (Throwable unused) {
                    }
                    e<T> eVar = this.parser;
                    if (eVar == null) {
                        return null;
                    }
                    return eVar.parse(response);
                }
                throw ApiExtKt.toExecuteError(response, methodName, iArr);
            }
            throw ApiExtKt.toSimpleError(response, methodName, methodResponse.getExecutorRequestAccessToken());
        }
        throw new VKApiException("Response returned null instead of valid string response");
    }

    @Nullable
    public T runRequest(@NotNull OkHttpMethodCall mc2) {
        Intrinsics.checkNotNullParameter(mc2, "mc");
        return parseResult(this.okHttpExecutor.execute(mc2), mc2.getMethod(), mc2.isExtended(), null);
    }

    public final void setDefaultDeviceId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.defaultDeviceId = str;
    }
}
