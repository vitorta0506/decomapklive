package com.vk.api.sdk.internal;

import android.os.Bundle;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.api.sdk.exceptions.VKApiCodes;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.exceptions.VKApiIllegalResponseException;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\fJ\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0002J&\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007J&\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00182\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007¨\u0006\u0019"}, d2 = {"Lcom/vk/api/sdk/internal/VKErrorUtils;", "", "()V", "executeErrorsSet", "", "", "jsonString", "", "hasExecuteError", "", "response", "ignoreErrors", "", "hasSimpleError", "parseExecuteError", "Lcom/vk/api/sdk/exceptions/VKApiException;", PushConstants.MZ_PUSH_MESSAGE_METHOD, "ignoredErrors", "errorsJson", "Lorg/json/JSONArray;", "parseSimpleError", "errorStr", "accessToken", "errorJson", "Lorg/json/JSONObject;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKErrorUtils {
    @NotNull
    public static final VKErrorUtils INSTANCE = new VKErrorUtils();

    private VKErrorUtils() {
    }

    private final Set<Integer> executeErrorsSet(String str) {
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = new JSONObject(str).getJSONArray(VKApiCodes.PARAM_EXECUTE_ERRORS);
        int length = jSONArray.length();
        if (length > 0) {
            int i9 = 0;
            while (true) {
                int i10 = i9 + 1;
                hashSet.add(Integer.valueOf(jSONArray.getJSONObject(i9).getInt("error_code")));
                if (i10 >= length) {
                    break;
                }
                i9 = i10;
            }
        }
        return hashSet;
    }

    public static /* synthetic */ VKApiException parseSimpleError$default(VKErrorUtils vKErrorUtils, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        if ((i9 & 4) != 0) {
            str3 = null;
        }
        return vKErrorUtils.parseSimpleError(str, str2, str3);
    }

    public final boolean hasExecuteError(@NotNull String response, @Nullable int[] iArr) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (JsonUtils.INSTANCE.containsElement(response, VKApiCodes.PARAM_EXECUTE_ERRORS)) {
            if (iArr == null) {
                return true;
            }
            Set<Integer> executeErrorsSet = executeErrorsSet(response);
            for (int i9 : iArr) {
                executeErrorsSet.remove(Integer.valueOf(i9));
            }
            if (!executeErrorsSet.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasSimpleError(@NotNull String response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return JsonUtils.INSTANCE.containsElement(response, "error");
    }

    @NotNull
    public final VKApiException parseExecuteError(@NotNull String response, @NotNull String method, @Nullable int[] iArr) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(method, "method");
        JSONArray jSONArray = new JSONObject(response).getJSONArray(VKApiCodes.PARAM_EXECUTE_ERRORS);
        Intrinsics.checkNotNullExpressionValue(jSONArray, "JSONObject(response).get…des.PARAM_EXECUTE_ERRORS)");
        return parseExecuteError(jSONArray, method, iArr);
    }

    @NotNull
    public final VKApiException parseSimpleError(@NotNull String errorStr, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(errorStr, "errorStr");
        JSONObject optJSONObject = new JSONObject(errorStr).optJSONObject("error");
        if (optJSONObject == null) {
            optJSONObject = new JSONObject(errorStr);
        }
        return parseSimpleError(optJSONObject, str, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
        if (r5 == false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.vk.api.sdk.exceptions.VKApiException parseExecuteError(org.json.JSONArray r14, java.lang.String r15, int[] r16) {
        /*
            r13 = this;
            r0 = r16
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: org.json.JSONException -> L7f
            r6.<init>()     // Catch: org.json.JSONException -> L7f
            r1 = 0
            int r2 = r14.length()     // Catch: org.json.JSONException -> L7f
            if (r2 <= 0) goto L6b
        Le:
            int r3 = r1 + 1
            r4 = r14
            org.json.JSONObject r8 = r14.getJSONObject(r1)     // Catch: org.json.JSONException -> L7f
            java.lang.String r1 = "errorsJson.getJSONObject(i)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r1)     // Catch: org.json.JSONException -> L7f
            r9 = 0
            r10 = 0
            r11 = 6
            r12 = 0
            r7 = r13
            com.vk.api.sdk.exceptions.VKApiException r1 = parseSimpleError$default(r7, r8, r9, r10, r11, r12)     // Catch: org.json.JSONException -> L7f
            boolean r5 = r1 instanceof com.vk.api.sdk.exceptions.VKApiExecutionException     // Catch: org.json.JSONException -> L7f
            if (r5 != 0) goto L28
            return r1
        L28:
            r5 = r1
            com.vk.api.sdk.exceptions.VKApiExecutionException r5 = (com.vk.api.sdk.exceptions.VKApiExecutionException) r5     // Catch: org.json.JSONException -> L7f
            int r5 = r5.getCode()     // Catch: org.json.JSONException -> L7f
            r7 = 1
            if (r5 == r7) goto L6a
            r7 = 14
            if (r5 == r7) goto L6a
            r7 = 17
            if (r5 == r7) goto L6a
            r7 = 4
            if (r5 == r7) goto L6a
            r7 = 5
            if (r5 == r7) goto L6a
            r7 = 6
            if (r5 == r7) goto L6a
            r7 = 9
            if (r5 == r7) goto L6a
            r7 = 10
            if (r5 == r7) goto L6a
            r7 = 24
            if (r5 == r7) goto L6a
            r7 = 25
            if (r5 == r7) goto L6a
            if (r0 == 0) goto L62
            r5 = r1
            com.vk.api.sdk.exceptions.VKApiExecutionException r5 = (com.vk.api.sdk.exceptions.VKApiExecutionException) r5     // Catch: org.json.JSONException -> L7f
            int r5 = r5.getCode()     // Catch: org.json.JSONException -> L7f
            boolean r5 = kotlin.collections.ArraysKt.contains(r0, r5)     // Catch: org.json.JSONException -> L7f
            if (r5 != 0) goto L65
        L62:
            r6.add(r1)     // Catch: org.json.JSONException -> L7f
        L65:
            if (r3 < r2) goto L68
            goto L6b
        L68:
            r1 = r3
            goto Le
        L6a:
            return r1
        L6b:
            com.vk.api.sdk.exceptions.VKApiExecutionException r12 = new com.vk.api.sdk.exceptions.VKApiExecutionException     // Catch: org.json.JSONException -> L7f
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 0
            java.lang.String r4 = ""
            r5 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 448(0x1c0, float:6.28E-43)
            r11 = 0
            r0 = r12
            r2 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: org.json.JSONException -> L7f
            return r12
        L7f:
            r0 = move-exception
            com.vk.api.sdk.exceptions.VKApiIllegalResponseException r1 = new com.vk.api.sdk.exceptions.VKApiIllegalResponseException
            r1.<init>(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.internal.VKErrorUtils.parseExecuteError(org.json.JSONArray, java.lang.String, int[]):com.vk.api.sdk.exceptions.VKApiException");
    }

    public static /* synthetic */ VKApiException parseSimpleError$default(VKErrorUtils vKErrorUtils, JSONObject jSONObject, String str, String str2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            str2 = null;
        }
        return vKErrorUtils.parseSimpleError(jSONObject, str, str2);
    }

    @NotNull
    public final VKApiException parseSimpleError(@NotNull JSONObject errorJson, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(errorJson, "errorJson");
        try {
            int optInt = errorJson.optInt("error_code");
            Bundle bundle = null;
            if (optInt == 5) {
                JSONObject optJSONObject = errorJson.optJSONObject(VKApiCodes.PARAM_BAN_INFO);
                if (optJSONObject != null) {
                    bundle = new Bundle();
                    bundle.putString(VKApiCodes.EXTRA_USER_BAN_INFO, optJSONObject.toString());
                }
            } else if (optInt == 14) {
                bundle = new Bundle();
                bundle.putString(VKApiCodes.EXTRA_CAPTCHA_SID, errorJson.getString(VKApiCodes.EXTRA_CAPTCHA_SID));
                bundle.putString(VKApiCodes.EXTRA_CAPTCHA_IMG, errorJson.getString(VKApiCodes.EXTRA_CAPTCHA_IMG));
            } else if (optInt == 17) {
                bundle = new Bundle();
                bundle.putString(VKApiCodes.EXTRA_VALIDATION_URL, errorJson.getString("redirect_uri"));
            } else if (optInt == 24) {
                bundle = new Bundle();
                bundle.putString("confirmation_text", errorJson.getString("confirmation_text"));
            } else if (optInt == 3609) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(VKApiCodes.EXTRA_EXTENSION_HASH, errorJson.optString(VKApiCodes.EXTRA_EXTENSION_HASH, null));
                bundle = bundle2;
            }
            if (str2 != null) {
                if (bundle == null) {
                    bundle = new Bundle(1);
                }
                bundle.putString("access_token", str2);
            }
            return VKApiExecutionException.Companion.parse(errorJson, str, bundle);
        } catch (Exception e10) {
            String jSONObject = errorJson.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject, "errorJson.toString()");
            return new VKApiIllegalResponseException(jSONObject, e10);
        }
    }
}
