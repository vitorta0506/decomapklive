package com.vk.sdk.api.gifts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.google.gson.JsonElement;
import com.guochao.faceshow.utils.Contants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.gifts.GiftsService;
import com.vk.sdk.api.gifts.dto.GiftsGetResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J5\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vk/sdk/api/gifts/GiftsService;", "", "()V", "giftsGet", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/gifts/dto/GiftsGetResponse;", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", AnimatedPasterJsonConfig.CONFIG_COUNT, "", TypedValues.CycleType.S_WAVE_OFFSET, "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GiftsService {
    public static /* synthetic */ VKRequest giftsGet$default(GiftsService giftsService, UserId userId, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        return giftsService.giftsGet(userId, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: giftsGet$lambda-0  reason: not valid java name */
    public static final GiftsGetResponse m1020giftsGet$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GiftsGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GiftsGetResponse.class);
    }

    @NotNull
    public final VKRequest<GiftsGetResponse> giftsGet(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("gifts.get", new ApiResponseParser() { // from class: gf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GiftsGetResponse m1020giftsGet$lambda0;
                m1020giftsGet$lambda0 = GiftsService.m1020giftsGet$lambda0(jsonElement);
                return m1020giftsGet$lambda0;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }
}
