package com.vk.sdk.api.prettyCards;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.prettyCards.dto.PrettyCardsCreateResponse;
import com.vk.sdk.api.prettyCards.dto.PrettyCardsDeleteResponse;
import com.vk.sdk.api.prettyCards.dto.PrettyCardsEditResponse;
import com.vk.sdk.api.prettyCards.dto.PrettyCardsGetResponse;
import com.vk.sdk.api.prettyCards.dto.PrettyCardsPrettyCardOrError;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JP\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\tJ\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007Jd\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\tJ1\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0018J(\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00070\u001aJ\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/prettyCards/PrettyCardsService;", "", "()V", "prettyCardsCreate", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/prettyCards/dto/PrettyCardsCreateResponse;", "ownerId", "", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "", "title", "link", InAppPurchaseMetaData.KEY_PRICE, "priceOld", "button", "prettyCardsDelete", "Lcom/vk/sdk/api/prettyCards/dto/PrettyCardsDeleteResponse;", "cardId", "prettyCardsEdit", "Lcom/vk/sdk/api/prettyCards/dto/PrettyCardsEditResponse;", "prettyCardsGet", "Lcom/vk/sdk/api/prettyCards/dto/PrettyCardsGetResponse;", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "(ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "prettyCardsGetById", "", "Lcom/vk/sdk/api/prettyCards/dto/PrettyCardsPrettyCardOrError;", "cardIds", "prettyCardsGetUploadURL", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PrettyCardsService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: prettyCardsCreate$lambda-0  reason: not valid java name */
    public static final PrettyCardsCreateResponse m1276prettyCardsCreate$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PrettyCardsCreateResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PrettyCardsCreateResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: prettyCardsDelete$lambda-5  reason: not valid java name */
    public static final PrettyCardsDeleteResponse m1277prettyCardsDelete$lambda5(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PrettyCardsDeleteResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PrettyCardsDeleteResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: prettyCardsEdit$lambda-7  reason: not valid java name */
    public static final PrettyCardsEditResponse m1278prettyCardsEdit$lambda7(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PrettyCardsEditResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PrettyCardsEditResponse.class);
    }

    public static /* synthetic */ VKRequest prettyCardsGet$default(PrettyCardsService prettyCardsService, int i9, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        return prettyCardsService.prettyCardsGet(i9, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: prettyCardsGet$lambda-15  reason: not valid java name */
    public static final PrettyCardsGetResponse m1279prettyCardsGet$lambda15(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PrettyCardsGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PrettyCardsGetResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: prettyCardsGetById$lambda-19  reason: not valid java name */
    public static final List m1280prettyCardsGetById$lambda19(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PrettyCardsPrettyCardOrError>>() { // from class: com.vk.sdk.api.prettyCards.PrettyCardsService$prettyCardsGetById$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: prettyCardsGetUploadURL$lambda-21  reason: not valid java name */
    public static final String m1281prettyCardsGetUploadURL$lambda21(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) String.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson(it, String::class.java)");
        return (String) fromJson;
    }

    @NotNull
    public final VKRequest<PrettyCardsCreateResponse> prettyCardsCreate(int i9, @NotNull String photo, @NotNull String title, @NotNull String link, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(link, "link");
        NewApiRequest newApiRequest = new NewApiRequest("prettyCards.create", new ApiResponseParser() { // from class: com.vk.sdk.api.prettyCards.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PrettyCardsCreateResponse m1276prettyCardsCreate$lambda0;
                m1276prettyCardsCreate$lambda0 = PrettyCardsService.m1276prettyCardsCreate$lambda0(jsonElement);
                return m1276prettyCardsCreate$lambda0;
            }
        });
        newApiRequest.addParam("owner_id", i9);
        newApiRequest.addParam(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, photo);
        newApiRequest.addParam("title", title);
        NewApiRequest.addParam$default(newApiRequest, "link", link, 0, 2000, 4, (Object) null);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, InAppPurchaseMetaData.KEY_PRICE, str, 0, 20, 4, (Object) null);
        }
        if (str2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "price_old", str2, 0, 20, 4, (Object) null);
        }
        if (str3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "button", str3, 0, 255, 4, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PrettyCardsDeleteResponse> prettyCardsDelete(int i9, int i10) {
        NewApiRequest newApiRequest = new NewApiRequest("prettyCards.delete", new ApiResponseParser() { // from class: com.vk.sdk.api.prettyCards.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PrettyCardsDeleteResponse m1277prettyCardsDelete$lambda5;
                m1277prettyCardsDelete$lambda5 = PrettyCardsService.m1277prettyCardsDelete$lambda5(jsonElement);
                return m1277prettyCardsDelete$lambda5;
            }
        });
        newApiRequest.addParam("owner_id", i9);
        newApiRequest.addParam("card_id", i10);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PrettyCardsEditResponse> prettyCardsEdit(int i9, int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        NewApiRequest newApiRequest = new NewApiRequest("prettyCards.edit", new ApiResponseParser() { // from class: com.vk.sdk.api.prettyCards.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PrettyCardsEditResponse m1278prettyCardsEdit$lambda7;
                m1278prettyCardsEdit$lambda7 = PrettyCardsService.m1278prettyCardsEdit$lambda7(jsonElement);
                return m1278prettyCardsEdit$lambda7;
            }
        });
        newApiRequest.addParam("owner_id", i9);
        newApiRequest.addParam("card_id", i10);
        if (str != null) {
            newApiRequest.addParam(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, str);
        }
        if (str2 != null) {
            newApiRequest.addParam("title", str2);
        }
        if (str3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "link", str3, 0, 2000, 4, (Object) null);
        }
        if (str4 != null) {
            NewApiRequest.addParam$default(newApiRequest, InAppPurchaseMetaData.KEY_PRICE, str4, 0, 20, 4, (Object) null);
        }
        if (str5 != null) {
            NewApiRequest.addParam$default(newApiRequest, "price_old", str5, 0, 20, 4, (Object) null);
        }
        if (str6 != null) {
            NewApiRequest.addParam$default(newApiRequest, "button", str6, 0, 255, 4, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PrettyCardsGetResponse> prettyCardsGet(int i9, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("prettyCards.get", new ApiResponseParser() { // from class: com.vk.sdk.api.prettyCards.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PrettyCardsGetResponse m1279prettyCardsGet$lambda15;
                m1279prettyCardsGet$lambda15 = PrettyCardsService.m1279prettyCardsGet$lambda15(jsonElement);
                return m1279prettyCardsGet$lambda15;
            }
        });
        newApiRequest.addParam("owner_id", i9);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PrettyCardsPrettyCardOrError>> prettyCardsGetById(int i9, @NotNull List<Integer> cardIds) {
        Intrinsics.checkNotNullParameter(cardIds, "cardIds");
        NewApiRequest newApiRequest = new NewApiRequest("prettyCards.getById", new ApiResponseParser() { // from class: com.vk.sdk.api.prettyCards.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1280prettyCardsGetById$lambda19;
                m1280prettyCardsGetById$lambda19 = PrettyCardsService.m1280prettyCardsGetById$lambda19(jsonElement);
                return m1280prettyCardsGetById$lambda19;
            }
        });
        newApiRequest.addParam("owner_id", i9);
        newApiRequest.addParam("card_ids", cardIds);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<String> prettyCardsGetUploadURL() {
        return new NewApiRequest("prettyCards.getUploadURL", new ApiResponseParser() { // from class: com.vk.sdk.api.prettyCards.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                String m1281prettyCardsGetUploadURL$lambda21;
                m1281prettyCardsGetUploadURL$lambda21 = PrettyCardsService.m1281prettyCardsGetUploadURL$lambda21(jsonElement);
                return m1281prettyCardsGetUploadURL$lambda21;
            }
        });
    }
}
