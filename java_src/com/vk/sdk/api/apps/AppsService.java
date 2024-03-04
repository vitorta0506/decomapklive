package com.vk.sdk.api.apps;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.JsonElement;
import com.guochao.faceshow.utils.Contants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.apps.AppsService;
import com.vk.sdk.api.apps.dto.AppsCatalogList;
import com.vk.sdk.api.apps.dto.AppsGetCatalogFilter;
import com.vk.sdk.api.apps.dto.AppsGetCatalogSort;
import com.vk.sdk.api.apps.dto.AppsGetFriendsListExtendedResponse;
import com.vk.sdk.api.apps.dto.AppsGetFriendsListExtendedType;
import com.vk.sdk.api.apps.dto.AppsGetFriendsListResponse;
import com.vk.sdk.api.apps.dto.AppsGetFriendsListType;
import com.vk.sdk.api.apps.dto.AppsGetLeaderboardExtendedResponse;
import com.vk.sdk.api.apps.dto.AppsGetLeaderboardExtendedType;
import com.vk.sdk.api.apps.dto.AppsGetLeaderboardResponse;
import com.vk.sdk.api.apps.dto.AppsGetLeaderboardType;
import com.vk.sdk.api.apps.dto.AppsGetMiniAppPoliciesResponse;
import com.vk.sdk.api.apps.dto.AppsGetNameCase;
import com.vk.sdk.api.apps.dto.AppsGetPlatform;
import com.vk.sdk.api.apps.dto.AppsGetResponse;
import com.vk.sdk.api.apps.dto.AppsGetScopesResponse;
import com.vk.sdk.api.apps.dto.AppsGetScopesType;
import com.vk.sdk.api.apps.dto.AppsSendRequestType;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.users.dto.UsersFields;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004Je\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\u0002\u0010\u0015J\u008b\u0001\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u00042\u0006\u0010\u0018\u001a\u00020\t2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f¢\u0006\u0002\u0010 JG\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000b¢\u0006\u0002\u0010%JG\u0010&\u001a\b\u0012\u0004\u0012\u00020'0\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010(2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000b¢\u0006\u0002\u0010)J%\u0010*\u001a\b\u0012\u0004\u0012\u00020+0\u00042\u0006\u0010#\u001a\u00020,2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010.J%\u0010/\u001a\b\u0012\u0004\u0012\u0002000\u00042\u0006\u0010#\u001a\u0002012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u00102J\u0014\u00103\u001a\b\u0012\u0004\u0012\u0002040\u00042\u0006\u0010\b\u001a\u00020\tJ\u0018\u00105\u001a\b\u0012\u0004\u0012\u0002060\u00042\n\b\u0002\u0010#\u001a\u0004\u0018\u000107J\u0014\u00108\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u00109\u001a\u00020:J \u0010;\u001a\b\u0012\u0004\u0012\u00020<0\u00042\u0006\u0010=\u001a\u00020\t2\n\b\u0002\u00109\u001a\u0004\u0018\u00010:J \u0010>\u001a\b\u0012\u0004\u0012\u00020<0\u00042\u0006\u0010=\u001a\u00020\t2\n\b\u0002\u00109\u001a\u0004\u0018\u00010:JU\u0010?\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u00109\u001a\u00020:2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010A2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010E¨\u0006F"}, d2 = {"Lcom/vk/sdk/api/apps/AppsService;", "", "()V", "appsDeleteAppRequests", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "appsGet", "Lcom/vk/sdk/api/apps/dto/AppsGetResponse;", "appId", "", "appIds", "", "", "platform", "Lcom/vk/sdk/api/apps/dto/AppsGetPlatform;", "returnFriends", "", GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/users/dto/UsersFields;", "nameCase", "Lcom/vk/sdk/api/apps/dto/AppsGetNameCase;", "(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/apps/dto/AppsGetPlatform;Ljava/lang/Boolean;Ljava/util/List;Lcom/vk/sdk/api/apps/dto/AppsGetNameCase;)Lcom/vk/api/sdk/requests/VKRequest;", "appsGetCatalog", "Lcom/vk/sdk/api/apps/dto/AppsCatalogList;", AnimatedPasterJsonConfig.CONFIG_COUNT, "sort", "Lcom/vk/sdk/api/apps/dto/AppsGetCatalogSort;", TypedValues.CycleType.S_WAVE_OFFSET, "q", "genreId", "filter", "Lcom/vk/sdk/api/apps/dto/AppsGetCatalogFilter;", "(ILcom/vk/sdk/api/apps/dto/AppsGetCatalogSort;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/apps/dto/AppsGetCatalogFilter;)Lcom/vk/api/sdk/requests/VKRequest;", "appsGetFriendsList", "Lcom/vk/sdk/api/apps/dto/AppsGetFriendsListResponse;", "type", "Lcom/vk/sdk/api/apps/dto/AppsGetFriendsListType;", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/apps/dto/AppsGetFriendsListType;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "appsGetFriendsListExtended", "Lcom/vk/sdk/api/apps/dto/AppsGetFriendsListExtendedResponse;", "Lcom/vk/sdk/api/apps/dto/AppsGetFriendsListExtendedType;", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/apps/dto/AppsGetFriendsListExtendedType;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "appsGetLeaderboard", "Lcom/vk/sdk/api/apps/dto/AppsGetLeaderboardResponse;", "Lcom/vk/sdk/api/apps/dto/AppsGetLeaderboardType;", "global", "(Lcom/vk/sdk/api/apps/dto/AppsGetLeaderboardType;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "appsGetLeaderboardExtended", "Lcom/vk/sdk/api/apps/dto/AppsGetLeaderboardExtendedResponse;", "Lcom/vk/sdk/api/apps/dto/AppsGetLeaderboardExtendedType;", "(Lcom/vk/sdk/api/apps/dto/AppsGetLeaderboardExtendedType;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "appsGetMiniAppPolicies", "Lcom/vk/sdk/api/apps/dto/AppsGetMiniAppPoliciesResponse;", "appsGetScopes", "Lcom/vk/sdk/api/apps/dto/AppsGetScopesResponse;", "Lcom/vk/sdk/api/apps/dto/AppsGetScopesType;", "appsGetScore", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "appsPromoHasActiveGift", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "promoId", "appsPromoUseGift", "appsSendRequest", ViewHierarchyConstants.TEXT_KEY, "Lcom/vk/sdk/api/apps/dto/AppsSendRequestType;", "name", "key", "separate", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/apps/dto/AppsSendRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppsService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsDeleteAppRequests$lambda-0  reason: not valid java name */
    public static final BaseOkResponse m919appsDeleteAppRequests$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson…seOkResponse::class.java)");
        return (BaseOkResponse) fromJson;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest appsGet$default(AppsService appsService, Integer num, List list, AppsGetPlatform appsGetPlatform, Boolean bool, List list2, AppsGetNameCase appsGetNameCase, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            list = null;
        }
        if ((i9 & 4) != 0) {
            appsGetPlatform = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        if ((i9 & 16) != 0) {
            list2 = null;
        }
        if ((i9 & 32) != 0) {
            appsGetNameCase = null;
        }
        return appsService.appsGet(num, list, appsGetPlatform, bool, list2, appsGetNameCase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsGet$lambda-1  reason: not valid java name */
    public static final AppsGetResponse m920appsGet$lambda1(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppsGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppsGetResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsGetCatalog$lambda-10  reason: not valid java name */
    public static final AppsCatalogList m921appsGetCatalog$lambda10(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppsCatalogList) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppsCatalogList.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest appsGetFriendsList$default(AppsService appsService, Integer num, Integer num2, AppsGetFriendsListType appsGetFriendsListType, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            appsGetFriendsListType = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        return appsService.appsGetFriendsList(num, num2, appsGetFriendsListType, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsGetFriendsList$lambda-22  reason: not valid java name */
    public static final AppsGetFriendsListResponse m922appsGetFriendsList$lambda22(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppsGetFriendsListResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppsGetFriendsListResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest appsGetFriendsListExtended$default(AppsService appsService, Integer num, Integer num2, AppsGetFriendsListExtendedType appsGetFriendsListExtendedType, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            appsGetFriendsListExtendedType = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        return appsService.appsGetFriendsListExtended(num, num2, appsGetFriendsListExtendedType, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsGetFriendsListExtended$lambda-29  reason: not valid java name */
    public static final AppsGetFriendsListExtendedResponse m923appsGetFriendsListExtended$lambda29(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppsGetFriendsListExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppsGetFriendsListExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest appsGetLeaderboard$default(AppsService appsService, AppsGetLeaderboardType appsGetLeaderboardType, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bool = null;
        }
        return appsService.appsGetLeaderboard(appsGetLeaderboardType, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsGetLeaderboard$lambda-36  reason: not valid java name */
    public static final AppsGetLeaderboardResponse m924appsGetLeaderboard$lambda36(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppsGetLeaderboardResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppsGetLeaderboardResponse.class);
    }

    public static /* synthetic */ VKRequest appsGetLeaderboardExtended$default(AppsService appsService, AppsGetLeaderboardExtendedType appsGetLeaderboardExtendedType, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bool = null;
        }
        return appsService.appsGetLeaderboardExtended(appsGetLeaderboardExtendedType, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsGetLeaderboardExtended$lambda-39  reason: not valid java name */
    public static final AppsGetLeaderboardExtendedResponse m925appsGetLeaderboardExtended$lambda39(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppsGetLeaderboardExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppsGetLeaderboardExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsGetMiniAppPolicies$lambda-42  reason: not valid java name */
    public static final AppsGetMiniAppPoliciesResponse m926appsGetMiniAppPolicies$lambda42(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppsGetMiniAppPoliciesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppsGetMiniAppPoliciesResponse.class);
    }

    public static /* synthetic */ VKRequest appsGetScopes$default(AppsService appsService, AppsGetScopesType appsGetScopesType, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            appsGetScopesType = null;
        }
        return appsService.appsGetScopes(appsGetScopesType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsGetScopes$lambda-44  reason: not valid java name */
    public static final AppsGetScopesResponse m927appsGetScopes$lambda44(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppsGetScopesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppsGetScopesResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsGetScore$lambda-47  reason: not valid java name */
    public static final Integer m928appsGetScore$lambda47(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    public static /* synthetic */ VKRequest appsPromoHasActiveGift$default(AppsService appsService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return appsService.appsPromoHasActiveGift(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsPromoHasActiveGift$lambda-49  reason: not valid java name */
    public static final BaseBoolInt m929appsPromoHasActiveGift$lambda49(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    public static /* synthetic */ VKRequest appsPromoUseGift$default(AppsService appsService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return appsService.appsPromoUseGift(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsPromoUseGift$lambda-52  reason: not valid java name */
    public static final BaseBoolInt m930appsPromoUseGift$lambda52(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appsSendRequest$lambda-55  reason: not valid java name */
    public static final Integer m931appsSendRequest$lambda55(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    @NotNull
    public final VKRequest<BaseOkResponse> appsDeleteAppRequests() {
        return new NewApiRequest("apps.deleteAppRequests", new ApiResponseParser() { // from class: ze.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m919appsDeleteAppRequests$lambda0;
                m919appsDeleteAppRequests$lambda0 = AppsService.m919appsDeleteAppRequests$lambda0(jsonElement);
                return m919appsDeleteAppRequests$lambda0;
            }
        });
    }

    @NotNull
    public final VKRequest<AppsGetResponse> appsGet(@Nullable Integer num, @Nullable List<String> list, @Nullable AppsGetPlatform appsGetPlatform, @Nullable Boolean bool, @Nullable List<? extends UsersFields> list2, @Nullable AppsGetNameCase appsGetNameCase) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("apps.get", new ApiResponseParser() { // from class: ze.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppsGetResponse m920appsGet$lambda1;
                m920appsGet$lambda1 = AppsService.m920appsGet$lambda1(jsonElement);
                return m920appsGet$lambda1;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "app_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (list != null) {
            newApiRequest.addParam("app_ids", list);
        }
        if (appsGetPlatform != null) {
            newApiRequest.addParam("platform", appsGetPlatform.getValue());
        }
        if (bool != null) {
            newApiRequest.addParam("return_friends", bool.booleanValue());
        }
        if (list2 == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list2) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (appsGetNameCase != null) {
            newApiRequest.addParam("name_case", appsGetNameCase.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppsCatalogList> appsGetCatalog(int i9, @Nullable AppsGetCatalogSort appsGetCatalogSort, @Nullable Integer num, @Nullable String str, @Nullable Boolean bool, @Nullable List<? extends UsersFields> list, @Nullable String str2, @Nullable String str3, @Nullable Integer num2, @Nullable AppsGetCatalogFilter appsGetCatalogFilter) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("apps.getCatalog", new ApiResponseParser() { // from class: ze.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppsCatalogList m921appsGetCatalog$lambda10;
                m921appsGetCatalog$lambda10 = AppsService.m921appsGetCatalog$lambda10(jsonElement);
                return m921appsGetCatalog$lambda10;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, i9, 0, 0, 8, (Object) null);
        if (appsGetCatalogSort != null) {
            newApiRequest.addParam("sort", appsGetCatalogSort.getValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("platform", str);
        }
        if (bool != null) {
            newApiRequest.addParam("return_friends", bool.booleanValue());
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (str2 != null) {
            newApiRequest.addParam("name_case", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("q", str3);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "genre_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (appsGetCatalogFilter != null) {
            newApiRequest.addParam("filter", appsGetCatalogFilter.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppsGetFriendsListResponse> appsGetFriendsList(@Nullable Integer num, @Nullable Integer num2, @Nullable AppsGetFriendsListType appsGetFriendsListType, @Nullable List<? extends UsersFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("apps.getFriendsList", new ApiResponseParser() { // from class: ze.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppsGetFriendsListResponse m922appsGetFriendsList$lambda22;
                m922appsGetFriendsList$lambda22 = AppsService.m922appsGetFriendsList$lambda22(jsonElement);
                return m922appsGetFriendsList$lambda22;
            }
        });
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 5000);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (appsGetFriendsListType != null) {
            newApiRequest.addParam("type", appsGetFriendsListType.getValue());
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppsGetFriendsListExtendedResponse> appsGetFriendsListExtended(@Nullable Integer num, @Nullable Integer num2, @Nullable AppsGetFriendsListExtendedType appsGetFriendsListExtendedType, @Nullable List<? extends UsersFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("apps.getFriendsList", new ApiResponseParser() { // from class: ze.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppsGetFriendsListExtendedResponse m923appsGetFriendsListExtended$lambda29;
                m923appsGetFriendsListExtended$lambda29 = AppsService.m923appsGetFriendsListExtended$lambda29(jsonElement);
                return m923appsGetFriendsListExtended$lambda29;
            }
        });
        newApiRequest.addParam("extended", true);
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 5000);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (appsGetFriendsListExtendedType != null) {
            newApiRequest.addParam("type", appsGetFriendsListExtendedType.getValue());
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppsGetLeaderboardResponse> appsGetLeaderboard(@NotNull AppsGetLeaderboardType type, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(type, "type");
        NewApiRequest newApiRequest = new NewApiRequest("apps.getLeaderboard", new ApiResponseParser() { // from class: ze.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppsGetLeaderboardResponse m924appsGetLeaderboard$lambda36;
                m924appsGetLeaderboard$lambda36 = AppsService.m924appsGetLeaderboard$lambda36(jsonElement);
                return m924appsGetLeaderboard$lambda36;
            }
        });
        newApiRequest.addParam("type", type.getValue());
        if (bool != null) {
            newApiRequest.addParam("global", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppsGetLeaderboardExtendedResponse> appsGetLeaderboardExtended(@NotNull AppsGetLeaderboardExtendedType type, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(type, "type");
        NewApiRequest newApiRequest = new NewApiRequest("apps.getLeaderboard", new ApiResponseParser() { // from class: ze.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppsGetLeaderboardExtendedResponse m925appsGetLeaderboardExtended$lambda39;
                m925appsGetLeaderboardExtended$lambda39 = AppsService.m925appsGetLeaderboardExtended$lambda39(jsonElement);
                return m925appsGetLeaderboardExtended$lambda39;
            }
        });
        newApiRequest.addParam("type", type.getValue());
        if (bool != null) {
            newApiRequest.addParam("global", bool.booleanValue());
        }
        newApiRequest.addParam("extended", true);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppsGetMiniAppPoliciesResponse> appsGetMiniAppPolicies(int i9) {
        NewApiRequest newApiRequest = new NewApiRequest("apps.getMiniAppPolicies", new ApiResponseParser() { // from class: ze.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppsGetMiniAppPoliciesResponse m926appsGetMiniAppPolicies$lambda42;
                m926appsGetMiniAppPolicies$lambda42 = AppsService.m926appsGetMiniAppPolicies$lambda42(jsonElement);
                return m926appsGetMiniAppPolicies$lambda42;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "app_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppsGetScopesResponse> appsGetScopes(@Nullable AppsGetScopesType appsGetScopesType) {
        NewApiRequest newApiRequest = new NewApiRequest("apps.getScopes", new ApiResponseParser() { // from class: ze.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppsGetScopesResponse m927appsGetScopes$lambda44;
                m927appsGetScopes$lambda44 = AppsService.m927appsGetScopes$lambda44(jsonElement);
                return m927appsGetScopes$lambda44;
            }
        });
        if (appsGetScopesType != null) {
            newApiRequest.addParam("type", appsGetScopesType.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> appsGetScore(@NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("apps.getScore", new ApiResponseParser() { // from class: ze.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m928appsGetScore$lambda47;
                m928appsGetScore$lambda47 = AppsService.m928appsGetScore$lambda47(jsonElement);
                return m928appsGetScore$lambda47;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> appsPromoHasActiveGift(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("apps.promoHasActiveGift", new ApiResponseParser() { // from class: ze.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m929appsPromoHasActiveGift$lambda49;
                m929appsPromoHasActiveGift$lambda49 = AppsService.m929appsPromoHasActiveGift$lambda49(jsonElement);
                return m929appsPromoHasActiveGift$lambda49;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "promo_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> appsPromoUseGift(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("apps.promoUseGift", new ApiResponseParser() { // from class: ze.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m930appsPromoUseGift$lambda52;
                m930appsPromoUseGift$lambda52 = AppsService.m930appsPromoUseGift$lambda52(jsonElement);
                return m930appsPromoUseGift$lambda52;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "promo_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> appsSendRequest(@NotNull UserId userId, @Nullable String str, @Nullable AppsSendRequestType appsSendRequestType, @Nullable String str2, @Nullable String str3, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("apps.sendRequest", new ApiResponseParser() { // from class: ze.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m931appsSendRequest$lambda55;
                m931appsSendRequest$lambda55 = AppsService.m931appsSendRequest$lambda55(jsonElement);
                return m931appsSendRequest$lambda55;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam(ViewHierarchyConstants.TEXT_KEY, str);
        }
        if (appsSendRequestType != null) {
            newApiRequest.addParam("type", appsSendRequestType.getValue());
        }
        if (str2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "name", str2, 0, 128, 4, (Object) null);
        }
        if (str3 != null) {
            newApiRequest.addParam("key", str3);
        }
        if (bool != null) {
            newApiRequest.addParam("separate", bool.booleanValue());
        }
        return newApiRequest;
    }
}
