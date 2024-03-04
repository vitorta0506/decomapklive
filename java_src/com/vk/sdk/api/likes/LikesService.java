package com.vk.sdk.api.likes;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.google.gson.JsonElement;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.utils.Contants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.likes.LikesService;
import com.vk.sdk.api.likes.dto.LikesAddResponse;
import com.vk.sdk.api.likes.dto.LikesDeleteResponse;
import com.vk.sdk.api.likes.dto.LikesGetListExtendedFilter;
import com.vk.sdk.api.likes.dto.LikesGetListExtendedFriendsOnly;
import com.vk.sdk.api.likes.dto.LikesGetListExtendedResponse;
import com.vk.sdk.api.likes.dto.LikesGetListFilter;
import com.vk.sdk.api.likes.dto.LikesGetListFriendsOnly;
import com.vk.sdk.api.likes.dto.LikesGetListResponse;
import com.vk.sdk.api.likes.dto.LikesIsLikedResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J4\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007J4\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007Jy\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\u0002\u0010\u001aJy\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\u0002\u0010\u001fJ4\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/likes/LikesService;", "", "()V", "likesAdd", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/likes/dto/LikesAddResponse;", "type", "", "itemId", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "accessKey", "likesDelete", "Lcom/vk/sdk/api/likes/dto/LikesDeleteResponse;", "likesGetList", "Lcom/vk/sdk/api/likes/dto/LikesGetListResponse;", "pageUrl", "filter", "Lcom/vk/sdk/api/likes/dto/LikesGetListFilter;", "friendsOnly", "Lcom/vk/sdk/api/likes/dto/LikesGetListFriendsOnly;", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "skipOwn", "", "(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/likes/dto/LikesGetListFilter;Lcom/vk/sdk/api/likes/dto/LikesGetListFriendsOnly;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "likesGetListExtended", "Lcom/vk/sdk/api/likes/dto/LikesGetListExtendedResponse;", "Lcom/vk/sdk/api/likes/dto/LikesGetListExtendedFilter;", "Lcom/vk/sdk/api/likes/dto/LikesGetListExtendedFriendsOnly;", "(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/likes/dto/LikesGetListExtendedFilter;Lcom/vk/sdk/api/likes/dto/LikesGetListExtendedFriendsOnly;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "likesIsLiked", "Lcom/vk/sdk/api/likes/dto/LikesIsLikedResponse;", Contants.USER_ID, "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class LikesService {
    public static /* synthetic */ VKRequest likesAdd$default(LikesService likesService, String str, int i9, UserId userId, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            userId = null;
        }
        if ((i10 & 8) != 0) {
            str2 = null;
        }
        return likesService.likesAdd(str, i9, userId, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: likesAdd$lambda-0  reason: not valid java name */
    public static final LikesAddResponse m1083likesAdd$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (LikesAddResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) LikesAddResponse.class);
    }

    public static /* synthetic */ VKRequest likesDelete$default(LikesService likesService, String str, int i9, UserId userId, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            userId = null;
        }
        if ((i10 & 8) != 0) {
            str2 = null;
        }
        return likesService.likesDelete(str, i9, userId, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: likesDelete$lambda-4  reason: not valid java name */
    public static final LikesDeleteResponse m1084likesDelete$lambda4(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (LikesDeleteResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) LikesDeleteResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: likesGetList$lambda-8  reason: not valid java name */
    public static final LikesGetListResponse m1085likesGetList$lambda8(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (LikesGetListResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) LikesGetListResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: likesGetListExtended$lambda-18  reason: not valid java name */
    public static final LikesGetListExtendedResponse m1086likesGetListExtended$lambda18(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (LikesGetListExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) LikesGetListExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest likesIsLiked$default(LikesService likesService, String str, int i9, UserId userId, UserId userId2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            userId = null;
        }
        if ((i10 & 8) != 0) {
            userId2 = null;
        }
        return likesService.likesIsLiked(str, i9, userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: likesIsLiked$lambda-28  reason: not valid java name */
    public static final LikesIsLikedResponse m1087likesIsLiked$lambda28(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (LikesIsLikedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) LikesIsLikedResponse.class);
    }

    @NotNull
    public final VKRequest<LikesAddResponse> likesAdd(@NotNull String type, int i9, @Nullable UserId userId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        NewApiRequest newApiRequest = new NewApiRequest("likes.add", new ApiResponseParser() { // from class: hf.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                LikesAddResponse m1083likesAdd$lambda0;
                m1083likesAdd$lambda0 = LikesService.m1083likesAdd$lambda0(jsonElement);
                return m1083likesAdd$lambda0;
            }
        });
        newApiRequest.addParam("type", type);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<LikesDeleteResponse> likesDelete(@NotNull String type, int i9, @Nullable UserId userId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        NewApiRequest newApiRequest = new NewApiRequest("likes.delete", new ApiResponseParser() { // from class: hf.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                LikesDeleteResponse m1084likesDelete$lambda4;
                m1084likesDelete$lambda4 = LikesService.m1084likesDelete$lambda4(jsonElement);
                return m1084likesDelete$lambda4;
            }
        });
        newApiRequest.addParam("type", type);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<LikesGetListResponse> likesGetList(@NotNull String type, @Nullable UserId userId, @Nullable Integer num, @Nullable String str, @Nullable LikesGetListFilter likesGetListFilter, @Nullable LikesGetListFriendsOnly likesGetListFriendsOnly, @Nullable Integer num2, @Nullable Integer num3, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(type, "type");
        NewApiRequest newApiRequest = new NewApiRequest("likes.getList", new ApiResponseParser() { // from class: hf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                LikesGetListResponse m1085likesGetList$lambda8;
                m1085likesGetList$lambda8 = LikesService.m1085likesGetList$lambda8(jsonElement);
                return m1085likesGetList$lambda8;
            }
        });
        newApiRequest.addParam("type", type);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            newApiRequest.addParam(EventTrackingUtils.ITEM_ID, num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("page_url", str);
        }
        if (likesGetListFilter != null) {
            newApiRequest.addParam("filter", likesGetListFilter.getValue());
        }
        if (likesGetListFriendsOnly != null) {
            newApiRequest.addParam("friends_only", likesGetListFriendsOnly.getValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 1000);
        }
        if (bool != null) {
            newApiRequest.addParam("skip_own", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<LikesGetListExtendedResponse> likesGetListExtended(@NotNull String type, @Nullable UserId userId, @Nullable Integer num, @Nullable String str, @Nullable LikesGetListExtendedFilter likesGetListExtendedFilter, @Nullable LikesGetListExtendedFriendsOnly likesGetListExtendedFriendsOnly, @Nullable Integer num2, @Nullable Integer num3, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(type, "type");
        NewApiRequest newApiRequest = new NewApiRequest("likes.getList", new ApiResponseParser() { // from class: hf.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                LikesGetListExtendedResponse m1086likesGetListExtended$lambda18;
                m1086likesGetListExtended$lambda18 = LikesService.m1086likesGetListExtended$lambda18(jsonElement);
                return m1086likesGetListExtended$lambda18;
            }
        });
        newApiRequest.addParam("type", type);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            newApiRequest.addParam(EventTrackingUtils.ITEM_ID, num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("page_url", str);
        }
        if (likesGetListExtendedFilter != null) {
            newApiRequest.addParam("filter", likesGetListExtendedFilter.getValue());
        }
        if (likesGetListExtendedFriendsOnly != null) {
            newApiRequest.addParam("friends_only", likesGetListExtendedFriendsOnly.getValue());
        }
        newApiRequest.addParam("extended", true);
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 1000);
        }
        if (bool != null) {
            newApiRequest.addParam("skip_own", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<LikesIsLikedResponse> likesIsLiked(@NotNull String type, int i9, @Nullable UserId userId, @Nullable UserId userId2) {
        Intrinsics.checkNotNullParameter(type, "type");
        NewApiRequest newApiRequest = new NewApiRequest("likes.isLiked", new ApiResponseParser() { // from class: hf.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                LikesIsLikedResponse m1087likesIsLiked$lambda28;
                m1087likesIsLiked$lambda28 = LikesService.m1087likesIsLiked$lambda28(jsonElement);
                return m1087likesIsLiked$lambda28;
            }
        });
        newApiRequest.addParam("type", type);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (userId2 != null) {
            newApiRequest.addParam("owner_id", userId2);
        }
        return newApiRequest;
    }
}
