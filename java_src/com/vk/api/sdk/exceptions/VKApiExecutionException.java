package com.vk.api.sdk.exceptions;

import android.os.Bundle;
import com.facebook.internal.NativeProtocol;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b)\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0007\b\u0016\u0018\u0000 H2\u00020\u0001:\u0001HBs\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0003¢\u0006\u0002\u0010\u0011J\u0013\u0010@\u001a\u00020\u00072\b\u0010A\u001a\u0004\u0018\u00010BH\u0096\u0002J\u000e\u0010C\u001a\u00020\u00072\u0006\u0010D\u001a\u00020\u0003J\u0006\u0010E\u001a\u00020\u0007J\b\u0010F\u001a\u00020\u0003H\u0016J\b\u0010G\u001a\u00020\u0005H\u0016R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\u0016\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0014R\u0011\u0010\u0018\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0014R\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b!\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010&\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b&\u0010%R\u0011\u0010'\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b'\u0010%R\u0011\u0010(\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b(\u0010%R\u0011\u0010)\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b)\u0010%R\u0011\u0010*\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b*\u0010%R\u0011\u0010+\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b+\u0010%R\u0011\u0010,\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b,\u0010%R\u0011\u0010-\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b-\u0010%R\u0011\u0010.\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b.\u0010%R\u0011\u0010/\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b/\u0010%R\u0011\u00100\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b0\u0010%R\u0011\u00101\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b1\u0010%R\u0011\u00102\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b2\u0010%R\u0011\u00103\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b3\u0010%R\u0011\u00104\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b4\u0010%R\u001f\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\u001bR\u0013\u00108\u001a\u0004\u0018\u0001098F¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0011\u0010<\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b=\u0010\u0014R\u0011\u0010>\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b?\u0010\u0014¨\u0006I"}, d2 = {"Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "Lcom/vk/api/sdk/exceptions/VKApiException;", "code", "", "apiMethod", "", "hasLocalizedMessage", "", "detailMessage", PushConstants.EXTRA, "Landroid/os/Bundle;", "executeErrors", "", "errorMsg", "requestParams", "", "subcode", "(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;I)V", "accessToken", "getAccessToken", "()Ljava/lang/String;", "getApiMethod", "captchaImg", "getCaptchaImg", "captchaSid", "getCaptchaSid", "getCode", "()I", "getDetailMessage", "getErrorMsg", "getExecuteErrors", "()Ljava/util/List;", "extensionHash", "getExtensionHash", "getExtra", "()Landroid/os/Bundle;", "getHasLocalizedMessage", "()Z", "isAccessError", "isAnonymTokenExpired", "isAnonymTokenInvalid", "isAppUpdateNeeded", "isCaptchaError", "isCompositeError", "isCurrentVersionDeprecated", "isInternalServerError", "isInvalidCredentialsError", "isPasswordConfirmRequired", "isRateLimitReachedError", "isTokenConfirmationRequired", "isTooManyRequestsError", "isUserConfirmRequired", "isValidationRequired", "getRequestParams", "()Ljava/util/Map;", "getSubcode", "userBanInfo", "Lorg/json/JSONObject;", "getUserBanInfo", "()Lorg/json/JSONObject;", "userConfirmText", "getUserConfirmText", "validationUrl", "getValidationUrl", "equals", "other", "", "hasError", "errorCode", "hasExtra", "hashCode", "toString", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class VKApiExecutionException extends VKApiException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final long serialVersionUID = 7524047853274172872L;
    @NotNull
    private final String apiMethod;
    private final int code;
    @NotNull
    private final String detailMessage;
    @Nullable
    private final String errorMsg;
    @Nullable
    private final List<VKApiExecutionException> executeErrors;
    @Nullable
    private final Bundle extra;
    private final boolean hasLocalizedMessage;
    @Nullable
    private final Map<String, String> requestParams;
    private final int subcode;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/vk/api/sdk/exceptions/VKApiExecutionException$Companion;", "", "()V", "serialVersionUID", "", "parse", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "json", "Lorg/json/JSONObject;", "methodName", "", PushConstants.EXTRA, "Landroid/os/Bundle;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ VKApiExecutionException parse$default(Companion companion, JSONObject jSONObject, String str, Bundle bundle, int i9, Object obj) {
            if ((i9 & 2) != 0) {
                str = null;
            }
            if ((i9 & 4) != 0) {
                bundle = null;
            }
            return companion.parse(jSONObject, str, bundle);
        }

        @JvmOverloads
        @NotNull
        public final VKApiExecutionException parse(@NotNull JSONObject json) {
            Intrinsics.checkNotNullParameter(json, "json");
            return parse$default(this, json, null, null, 6, null);
        }

        @JvmOverloads
        @NotNull
        public final VKApiExecutionException parse(@NotNull JSONObject json, @Nullable String str) {
            Intrinsics.checkNotNullParameter(json, "json");
            return parse$default(this, json, str, null, 4, null);
        }

        @JvmOverloads
        @NotNull
        public final VKApiExecutionException parse(@NotNull JSONObject json, @Nullable String str, @Nullable Bundle bundle) {
            JSONArray jSONArray;
            IntRange until;
            int collectionSizeOrDefault;
            int mapCapacity;
            int coerceAtLeast;
            String str2;
            Intrinsics.checkNotNullParameter(json, "json");
            String optString = str == null ? json.optString(PushConstants.MZ_PUSH_MESSAGE_METHOD) : str;
            String str3 = optString == null ? "" : optString;
            int optInt = json.optInt("error_code", 1);
            int optInt2 = json.optInt(NativeProtocol.BRIDGE_ARG_ERROR_SUBCODE, 1);
            String optString2 = json.optString("error_msg");
            String str4 = optString2 == null ? "" : optString2;
            try {
                jSONArray = json.getJSONArray("request_params");
            } catch (JSONException unused) {
                jSONArray = new JSONArray();
            }
            until = RangesKt___RangesKt.until(0, jSONArray.length());
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(until, 10);
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            Iterator<Integer> it = until.iterator();
            while (it.hasNext()) {
                JSONObject jSONObject = jSONArray.getJSONObject(((IntIterator) it).nextInt());
                Pair pair = TuplesKt.to(jSONObject.getString("key"), jSONObject.getString("value"));
                linkedHashMap.put(pair.getFirst(), pair.getSecond());
            }
            if (json.has("error_text")) {
                String optString3 = json.optString("error_text");
                return new VKApiExecutionException(optInt, str3, true, optString3 == null ? "" : optString3, bundle, null, str4, linkedHashMap, optInt2, 32, null);
            }
            String optString4 = json.optString("error_msg");
            if (optString4 == null) {
                String jSONObject2 = json.toString();
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "json.toString()");
                str2 = jSONObject2;
            } else {
                str2 = optString4;
            }
            return new VKApiExecutionException(optInt, str3, false, str2 + " | by [" + str3 + ']', bundle, null, str2, linkedHashMap, optInt2, 32, null);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VKApiExecutionException(int i9, @NotNull String apiMethod, boolean z10, @NotNull String detailMessage) {
        this(i9, apiMethod, z10, detailMessage, null, null, null, null, 0, 496, null);
        Intrinsics.checkNotNullParameter(apiMethod, "apiMethod");
        Intrinsics.checkNotNullParameter(detailMessage, "detailMessage");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VKApiExecutionException(int i9, @NotNull String apiMethod, boolean z10, @NotNull String detailMessage, @Nullable Bundle bundle) {
        this(i9, apiMethod, z10, detailMessage, bundle, null, null, null, 0, 480, null);
        Intrinsics.checkNotNullParameter(apiMethod, "apiMethod");
        Intrinsics.checkNotNullParameter(detailMessage, "detailMessage");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VKApiExecutionException(int i9, @NotNull String apiMethod, boolean z10, @NotNull String detailMessage, @Nullable Bundle bundle, @Nullable List<? extends VKApiExecutionException> list) {
        this(i9, apiMethod, z10, detailMessage, bundle, list, null, null, 0, 448, null);
        Intrinsics.checkNotNullParameter(apiMethod, "apiMethod");
        Intrinsics.checkNotNullParameter(detailMessage, "detailMessage");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VKApiExecutionException(int i9, @NotNull String apiMethod, boolean z10, @NotNull String detailMessage, @Nullable Bundle bundle, @Nullable List<? extends VKApiExecutionException> list, @Nullable String str) {
        this(i9, apiMethod, z10, detailMessage, bundle, list, str, null, 0, 384, null);
        Intrinsics.checkNotNullParameter(apiMethod, "apiMethod");
        Intrinsics.checkNotNullParameter(detailMessage, "detailMessage");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VKApiExecutionException(int i9, @NotNull String apiMethod, boolean z10, @NotNull String detailMessage, @Nullable Bundle bundle, @Nullable List<? extends VKApiExecutionException> list, @Nullable String str, @Nullable Map<String, String> map) {
        this(i9, apiMethod, z10, detailMessage, bundle, list, str, map, 0, 256, null);
        Intrinsics.checkNotNullParameter(apiMethod, "apiMethod");
        Intrinsics.checkNotNullParameter(detailMessage, "detailMessage");
    }

    public /* synthetic */ VKApiExecutionException(int i9, String str, boolean z10, String str2, Bundle bundle, List list, String str3, Map map, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, z10, str2, (i11 & 16) != 0 ? Bundle.EMPTY : bundle, (i11 & 32) != 0 ? null : list, (i11 & 64) != 0 ? null : str3, (i11 & 128) != 0 ? null : map, (i11 & 256) != 0 ? -1 : i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VKApiExecutionException) {
            VKApiExecutionException vKApiExecutionException = (VKApiExecutionException) obj;
            if (this.code == vKApiExecutionException.code) {
                Bundle bundle = this.extra;
                Bundle bundle2 = vKApiExecutionException.extra;
                if (!(bundle == null ? bundle2 != null : !Intrinsics.areEqual(bundle, bundle2))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Nullable
    public final String getAccessToken() {
        Bundle bundle = this.extra;
        if (bundle == null) {
            return null;
        }
        return bundle.getString("access_token", null);
    }

    @NotNull
    public final String getApiMethod() {
        return this.apiMethod;
    }

    @NotNull
    public final String getCaptchaImg() {
        String string;
        Bundle bundle = this.extra;
        return (bundle == null || (string = bundle.getString(VKApiCodes.EXTRA_CAPTCHA_IMG, "")) == null) ? "" : string;
    }

    @NotNull
    public final String getCaptchaSid() {
        String string;
        Bundle bundle = this.extra;
        return (bundle == null || (string = bundle.getString(VKApiCodes.EXTRA_CAPTCHA_SID, "")) == null) ? "" : string;
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final String getDetailMessage() {
        return this.detailMessage;
    }

    @Nullable
    public final String getErrorMsg() {
        return this.errorMsg;
    }

    @Nullable
    public final List<VKApiExecutionException> getExecuteErrors() {
        return this.executeErrors;
    }

    @NotNull
    public final String getExtensionHash() {
        String string;
        Bundle bundle = this.extra;
        return (bundle == null || (string = bundle.getString(VKApiCodes.EXTRA_EXTENSION_HASH, null)) == null) ? "" : string;
    }

    @Nullable
    public final Bundle getExtra() {
        return this.extra;
    }

    public final boolean getHasLocalizedMessage() {
        return this.hasLocalizedMessage;
    }

    @Nullable
    public final Map<String, String> getRequestParams() {
        return this.requestParams;
    }

    public final int getSubcode() {
        return this.subcode;
    }

    @Nullable
    public final JSONObject getUserBanInfo() {
        String string;
        Bundle bundle = this.extra;
        if (bundle == null || (string = bundle.getString(VKApiCodes.EXTRA_USER_BAN_INFO)) == null) {
            return null;
        }
        return new JSONObject(string);
    }

    @NotNull
    public final String getUserConfirmText() {
        String string;
        Bundle bundle = this.extra;
        return (bundle == null || (string = bundle.getString("confirmation_text", "")) == null) ? "" : string;
    }

    @NotNull
    public final String getValidationUrl() {
        String string;
        Bundle bundle = this.extra;
        return (bundle == null || (string = bundle.getString(VKApiCodes.EXTRA_VALIDATION_URL, "")) == null) ? "" : string;
    }

    public final boolean hasError(int i9) {
        boolean z10;
        if (this.code == i9) {
            return true;
        }
        List<VKApiExecutionException> list = this.executeErrors;
        Object obj = null;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((VKApiExecutionException) next).getCode() == i9) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (z10) {
                    obj = next;
                    break;
                }
            }
            obj = (VKApiExecutionException) obj;
        }
        return obj != null;
    }

    public final boolean hasExtra() {
        Bundle bundle = this.extra;
        return (bundle == null || Intrinsics.areEqual(bundle, Bundle.EMPTY)) ? false : true;
    }

    public int hashCode() {
        int i9 = this.code * 31;
        Bundle bundle = this.extra;
        return i9 + (bundle == null ? 0 : bundle.hashCode());
    }

    public final boolean isAccessError() {
        int i9 = this.code;
        return i9 == 15 || i9 == 30 || i9 == 203 || i9 == 200 || i9 == 201;
    }

    public final boolean isAnonymTokenExpired() {
        return this.code == 1114;
    }

    public final boolean isAnonymTokenInvalid() {
        return this.code == 1116;
    }

    public final boolean isAppUpdateNeeded() {
        return this.code == 35;
    }

    public final boolean isCaptchaError() {
        return this.code == 14;
    }

    public final boolean isCompositeError() {
        return this.code == Integer.MIN_VALUE;
    }

    public final boolean isCurrentVersionDeprecated() {
        return this.code == 34;
    }

    public final boolean isInternalServerError() {
        int i9 = this.code;
        return i9 == 1 || i9 == 10 || i9 == 13;
    }

    public final boolean isInvalidCredentialsError() {
        int i9 = this.code;
        return i9 == 4 || i9 == 5 || i9 == 3610;
    }

    public final boolean isPasswordConfirmRequired() {
        return this.code == 3609;
    }

    public final boolean isRateLimitReachedError() {
        return this.code == 29;
    }

    public final boolean isTokenConfirmationRequired() {
        return this.code == 25;
    }

    public final boolean isTooManyRequestsError() {
        return this.code == 6;
    }

    public final boolean isUserConfirmRequired() {
        return this.code == 24;
    }

    public final boolean isValidationRequired() {
        return this.code == 17;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String toString() {
        Bundle bundle;
        Bundle bundle2 = this.extra;
        boolean z10 = false;
        if (bundle2 != null && bundle2.containsKey("access_token")) {
            z10 = true;
        }
        if (z10) {
            bundle = new Bundle(this.extra);
            bundle.putString("access_token", "hidden");
        } else {
            bundle = this.extra;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("VKApiExecutionException{code=");
        sb2.append(this.code);
        sb2.append(", extra=");
        sb2.append(bundle);
        sb2.append(", method=");
        sb2.append(this.apiMethod);
        sb2.append(", executeErrors=");
        List<VKApiExecutionException> list = this.executeErrors;
        sb2.append((Object) (list == null ? null : CollectionsKt___CollectionsKt.joinToString$default(list, null, "[", "]", 0, null, null, 57, null)));
        sb2.append(", super=");
        sb2.append(super.toString());
        sb2.append('}');
        return sb2.toString();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public VKApiExecutionException(int i9, @NotNull String apiMethod, boolean z10, @NotNull String detailMessage, @Nullable Bundle bundle, @Nullable List<? extends VKApiExecutionException> list, @Nullable String str, @Nullable Map<String, String> map, int i10) {
        super(detailMessage);
        Intrinsics.checkNotNullParameter(apiMethod, "apiMethod");
        Intrinsics.checkNotNullParameter(detailMessage, "detailMessage");
        this.code = i9;
        this.apiMethod = apiMethod;
        this.hasLocalizedMessage = z10;
        this.detailMessage = detailMessage;
        this.extra = bundle;
        this.executeErrors = list;
        this.errorMsg = str;
        this.requestParams = map;
        this.subcode = i10;
    }
}
