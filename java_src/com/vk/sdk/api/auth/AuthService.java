package com.vk.sdk.api.auth;

import com.google.gson.JsonElement;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.auth.AuthService;
import com.vk.sdk.api.auth.dto.AuthRestoreResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/auth/AuthService;", "", "()V", "authRestore", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/auth/dto/AuthRestoreResponse;", "phone", "", "lastName", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AuthService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: authRestore$lambda-0  reason: not valid java name */
    public static final AuthRestoreResponse m932authRestore$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AuthRestoreResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AuthRestoreResponse.class);
    }

    @NotNull
    public final VKRequest<AuthRestoreResponse> authRestore(@NotNull String phone, @NotNull String lastName) {
        Intrinsics.checkNotNullParameter(phone, "phone");
        Intrinsics.checkNotNullParameter(lastName, "lastName");
        NewApiRequest newApiRequest = new NewApiRequest("auth.restore", new ApiResponseParser() { // from class: af.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AuthRestoreResponse m932authRestore$lambda0;
                m932authRestore$lambda0 = AuthService.m932authRestore$lambda0(jsonElement);
                return m932authRestore$lambda0;
            }
        });
        newApiRequest.addParam("phone", phone);
        newApiRequest.addParam("last_name", lastName);
        return newApiRequest;
    }
}
