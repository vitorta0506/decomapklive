package com.vk.sdk.api.execute;

import com.google.gson.JsonElement;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.execute.ExecuteService;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u0006"}, d2 = {"Lcom/vk/sdk/api/execute/ExecuteService;", "", "()V", "execute", "Lcom/vk/api/sdk/requests/VKRequest;", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ExecuteService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: execute$lambda-0  reason: not valid java name */
    public static final Unit m976execute$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    @NotNull
    public final VKRequest<Unit> execute() {
        return new NewApiRequest("execute", new ApiResponseParser() { // from class: ef.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m976execute$lambda0;
                m976execute$lambda0 = ExecuteService.m976execute$lambda0(jsonElement);
                return m976execute$lambda0;
            }
        });
    }
}
