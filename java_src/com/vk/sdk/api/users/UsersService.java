package com.vk.sdk.api.users;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.UserDataStore;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.users.dto.UsersFields;
import com.vk.sdk.api.users.dto.UsersGetFollowersFieldsResponse;
import com.vk.sdk.api.users.dto.UsersGetFollowersNameCase;
import com.vk.sdk.api.users.dto.UsersGetNameCase;
import com.vk.sdk.api.users.dto.UsersGetSubscriptionsExtendedResponse;
import com.vk.sdk.api.users.dto.UsersGetSubscriptionsResponse;
import com.vk.sdk.api.users.dto.UsersReportType;
import com.vk.sdk.api.users.dto.UsersSearchResponse;
import com.vk.sdk.api.users.dto.UsersSearchSex;
import com.vk.sdk.api.users.dto.UsersSearchSort;
import com.vk.sdk.api.users.dto.UsersSearchStatus;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JB\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fJS\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010\u0014JG\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005¢\u0006\u0002\u0010\u0017JG\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005¢\u0006\u0002\u0010\u0017J(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00042\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u009d\u0003\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u00042\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00052\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.2\n\b\u0002\u0010/\u001a\u0004\u0018\u0001002\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u00106\u001a\u0004\u0018\u0001072\n\b\u0002\u00108\u001a\u0004\u0018\u0001072\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010B\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u0005¢\u0006\u0002\u0010C¨\u0006D"}, d2 = {"Lcom/vk/sdk/api/users/UsersService;", "", "()V", "usersGet", "Lcom/vk/api/sdk/requests/VKRequest;", "", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "userIds", "Lcom/vk/dto/common/id/UserId;", GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/users/dto/UsersFields;", "nameCase", "Lcom/vk/sdk/api/users/dto/UsersGetNameCase;", "usersGetFollowers", "Lcom/vk/sdk/api/users/dto/UsersGetFollowersFieldsResponse;", Contants.USER_ID, TypedValues.CycleType.S_WAVE_OFFSET, "", AnimatedPasterJsonConfig.CONFIG_COUNT, "Lcom/vk/sdk/api/users/dto/UsersGetFollowersNameCase;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/users/dto/UsersGetFollowersNameCase;)Lcom/vk/api/sdk/requests/VKRequest;", "usersGetSubscriptions", "Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "usersGetSubscriptionsExtended", "Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsExtendedResponse;", "usersReport", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "type", "Lcom/vk/sdk/api/users/dto/UsersReportType;", "comment", "", "usersSearch", "Lcom/vk/sdk/api/users/dto/UsersSearchResponse;", "q", "sort", "Lcom/vk/sdk/api/users/dto/UsersSearchSort;", "city", UserDataStore.COUNTRY, "hometown", "universityCountry", "university", "universityYear", "universityFaculty", "universityChair", "sex", "Lcom/vk/sdk/api/users/dto/UsersSearchSex;", "status", "Lcom/vk/sdk/api/users/dto/UsersSearchStatus;", "ageFrom", "ageTo", "birthDay", "birthMonth", "birthYear", "online", "", "hasPhoto", "schoolCountry", "schoolCity", "schoolClass", "school", "schoolYear", "religion", "company", "position", "groupId", "fromList", "(Ljava/lang/String;Lcom/vk/sdk/api/users/dto/UsersSearchSort;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersSearchSex;Lcom/vk/sdk/api/users/dto/UsersSearchStatus;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersService {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest usersGet$default(UsersService usersService, List list, List list2, UsersGetNameCase usersGetNameCase, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            list2 = null;
        }
        if ((i9 & 4) != 0) {
            usersGetNameCase = null;
        }
        return usersService.usersGet(list, list2, usersGetNameCase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: usersGet$lambda-0  reason: not valid java name */
    public static final List m1329usersGet$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends UsersUserFull>>() { // from class: com.vk.sdk.api.users.UsersService$usersGet$1$typeToken$1
        }.getType());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest usersGetFollowers$default(UsersService usersService, UserId userId, Integer num, Integer num2, List list, UsersGetFollowersNameCase usersGetFollowersNameCase, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        if ((i9 & 16) != 0) {
            usersGetFollowersNameCase = null;
        }
        return usersService.usersGetFollowers(userId, num, num2, list, usersGetFollowersNameCase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: usersGetFollowers$lambda-6  reason: not valid java name */
    public static final UsersGetFollowersFieldsResponse m1330usersGetFollowers$lambda6(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (UsersGetFollowersFieldsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) UsersGetFollowersFieldsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest usersGetSubscriptions$default(UsersService usersService, UserId userId, Integer num, Integer num2, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        return usersService.usersGetSubscriptions(userId, num, num2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: usersGetSubscriptions$lambda-14  reason: not valid java name */
    public static final UsersGetSubscriptionsResponse m1331usersGetSubscriptions$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (UsersGetSubscriptionsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) UsersGetSubscriptionsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest usersGetSubscriptionsExtended$default(UsersService usersService, UserId userId, Integer num, Integer num2, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        return usersService.usersGetSubscriptionsExtended(userId, num, num2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: usersGetSubscriptionsExtended$lambda-21  reason: not valid java name */
    public static final UsersGetSubscriptionsExtendedResponse m1332usersGetSubscriptionsExtended$lambda21(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (UsersGetSubscriptionsExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) UsersGetSubscriptionsExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest usersReport$default(UsersService usersService, UserId userId, UsersReportType usersReportType, String str, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            str = null;
        }
        return usersService.usersReport(userId, usersReportType, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: usersReport$lambda-28  reason: not valid java name */
    public static final BaseOkResponse m1333usersReport$lambda28(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: usersSearch$lambda-31  reason: not valid java name */
    public static final UsersSearchResponse m1334usersSearch$lambda31(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (UsersSearchResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) UsersSearchResponse.class);
    }

    @NotNull
    public final VKRequest<List<UsersUserFull>> usersGet(@Nullable List<UserId> list, @Nullable List<? extends UsersFields> list2, @Nullable UsersGetNameCase usersGetNameCase) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("users.get", new ApiResponseParser() { // from class: com.vk.sdk.api.users.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1329usersGet$lambda0;
                m1329usersGet$lambda0 = UsersService.m1329usersGet$lambda0(jsonElement);
                return m1329usersGet$lambda0;
            }
        });
        if (list != null) {
            NewApiRequest.addParam$default(newApiRequest, "user_ids", list, 0L, 0L, 12, (Object) null);
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
        if (usersGetNameCase != null) {
            newApiRequest.addParam("name_case", usersGetNameCase.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<UsersGetFollowersFieldsResponse> usersGetFollowers(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends UsersFields> list, @Nullable UsersGetFollowersNameCase usersGetFollowersNameCase) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("users.getFollowers", new ApiResponseParser() { // from class: com.vk.sdk.api.users.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                UsersGetFollowersFieldsResponse m1330usersGetFollowers$lambda6;
                m1330usersGetFollowers$lambda6 = UsersService.m1330usersGetFollowers$lambda6(jsonElement);
                return m1330usersGetFollowers$lambda6;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
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
        if (usersGetFollowersNameCase != null) {
            newApiRequest.addParam("name_case", usersGetFollowersNameCase.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<UsersGetSubscriptionsResponse> usersGetSubscriptions(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends UsersFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("users.getSubscriptions", new ApiResponseParser() { // from class: com.vk.sdk.api.users.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                UsersGetSubscriptionsResponse m1331usersGetSubscriptions$lambda14;
                m1331usersGetSubscriptions$lambda14 = UsersService.m1331usersGetSubscriptions$lambda14(jsonElement);
                return m1331usersGetSubscriptions$lambda14;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
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
    public final VKRequest<UsersGetSubscriptionsExtendedResponse> usersGetSubscriptionsExtended(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends UsersFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("users.getSubscriptions", new ApiResponseParser() { // from class: com.vk.sdk.api.users.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                UsersGetSubscriptionsExtendedResponse m1332usersGetSubscriptionsExtended$lambda21;
                m1332usersGetSubscriptionsExtended$lambda21 = UsersService.m1332usersGetSubscriptionsExtended$lambda21(jsonElement);
                return m1332usersGetSubscriptionsExtended$lambda21;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        newApiRequest.addParam("extended", true);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
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
    public final VKRequest<BaseOkResponse> usersReport(@NotNull UserId userId, @NotNull UsersReportType type, @Nullable String str) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(type, "type");
        NewApiRequest newApiRequest = new NewApiRequest("users.report", new ApiResponseParser() { // from class: com.vk.sdk.api.users.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1333usersReport$lambda28;
                m1333usersReport$lambda28 = UsersService.m1333usersReport$lambda28(jsonElement);
                return m1333usersReport$lambda28;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        newApiRequest.addParam("type", type.getValue());
        if (str != null) {
            newApiRequest.addParam("comment", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<UsersSearchResponse> usersSearch(@Nullable String str, @Nullable UsersSearchSort usersSearchSort, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends UsersFields> list, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str2, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable UsersSearchSex usersSearchSex, @Nullable UsersSearchStatus usersSearchStatus, @Nullable Integer num10, @Nullable Integer num11, @Nullable Integer num12, @Nullable Integer num13, @Nullable Integer num14, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Integer num15, @Nullable Integer num16, @Nullable Integer num17, @Nullable Integer num18, @Nullable Integer num19, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable UserId userId, @Nullable List<String> list2) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("users.search", new ApiResponseParser() { // from class: com.vk.sdk.api.users.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                UsersSearchResponse m1334usersSearch$lambda31;
                m1334usersSearch$lambda31 = UsersService.m1334usersSearch$lambda31(jsonElement);
                return m1334usersSearch$lambda31;
            }
        });
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (usersSearchSort != null) {
            newApiRequest.addParam("sort", usersSearchSort.getValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
            Unit unit = Unit.INSTANCE;
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
            Unit unit2 = Unit.INSTANCE;
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
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "city", num3.intValue(), 0, 0, 8, (Object) null);
            Unit unit3 = Unit.INSTANCE;
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, UserDataStore.COUNTRY, num4.intValue(), 0, 0, 8, (Object) null);
            Unit unit4 = Unit.INSTANCE;
        }
        if (str2 != null) {
            newApiRequest.addParam("hometown", str2);
        }
        if (num5 != null) {
            NewApiRequest.addParam$default(newApiRequest, "university_country", num5.intValue(), 0, 0, 8, (Object) null);
            Unit unit5 = Unit.INSTANCE;
        }
        if (num6 != null) {
            NewApiRequest.addParam$default(newApiRequest, "university", num6.intValue(), 0, 0, 8, (Object) null);
            Unit unit6 = Unit.INSTANCE;
        }
        if (num7 != null) {
            NewApiRequest.addParam$default(newApiRequest, "university_year", num7.intValue(), 0, 0, 8, (Object) null);
            Unit unit7 = Unit.INSTANCE;
        }
        if (num8 != null) {
            NewApiRequest.addParam$default(newApiRequest, "university_faculty", num8.intValue(), 0, 0, 8, (Object) null);
            Unit unit8 = Unit.INSTANCE;
        }
        if (num9 != null) {
            NewApiRequest.addParam$default(newApiRequest, "university_chair", num9.intValue(), 0, 0, 8, (Object) null);
            Unit unit9 = Unit.INSTANCE;
        }
        if (usersSearchSex != null) {
            newApiRequest.addParam("sex", usersSearchSex.getValue());
        }
        if (usersSearchStatus != null) {
            newApiRequest.addParam("status", usersSearchStatus.getValue());
        }
        if (num10 != null) {
            NewApiRequest.addParam$default(newApiRequest, "age_from", num10.intValue(), 0, 0, 8, (Object) null);
            Unit unit10 = Unit.INSTANCE;
        }
        if (num11 != null) {
            NewApiRequest.addParam$default(newApiRequest, "age_to", num11.intValue(), 0, 0, 8, (Object) null);
            Unit unit11 = Unit.INSTANCE;
        }
        if (num12 != null) {
            NewApiRequest.addParam$default(newApiRequest, "birth_day", num12.intValue(), 0, 0, 8, (Object) null);
            Unit unit12 = Unit.INSTANCE;
        }
        if (num13 != null) {
            NewApiRequest.addParam$default(newApiRequest, "birth_month", num13.intValue(), 0, 0, 8, (Object) null);
            Unit unit13 = Unit.INSTANCE;
        }
        if (num14 != null) {
            newApiRequest.addParam("birth_year", num14.intValue(), 1900, PushConstants.BROADCAST_MESSAGE_ARRIVE);
            Unit unit14 = Unit.INSTANCE;
        }
        if (bool != null) {
            newApiRequest.addParam("online", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("has_photo", bool2.booleanValue());
        }
        if (num15 != null) {
            NewApiRequest.addParam$default(newApiRequest, "school_country", num15.intValue(), 0, 0, 8, (Object) null);
            Unit unit15 = Unit.INSTANCE;
        }
        if (num16 != null) {
            NewApiRequest.addParam$default(newApiRequest, "school_city", num16.intValue(), 0, 0, 8, (Object) null);
            Unit unit16 = Unit.INSTANCE;
        }
        if (num17 != null) {
            NewApiRequest.addParam$default(newApiRequest, "school_class", num17.intValue(), 0, 0, 8, (Object) null);
            Unit unit17 = Unit.INSTANCE;
        }
        if (num18 != null) {
            NewApiRequest.addParam$default(newApiRequest, "school", num18.intValue(), 0, 0, 8, (Object) null);
            Unit unit18 = Unit.INSTANCE;
        }
        if (num19 != null) {
            NewApiRequest.addParam$default(newApiRequest, "school_year", num19.intValue(), 0, 0, 8, (Object) null);
            Unit unit19 = Unit.INSTANCE;
        }
        if (str3 != null) {
            newApiRequest.addParam("religion", str3);
        }
        if (str4 != null) {
            newApiRequest.addParam("company", str4);
        }
        if (str5 != null) {
            newApiRequest.addParam("position", str5);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
            Unit unit20 = Unit.INSTANCE;
        }
        if (list2 != null) {
            newApiRequest.addParam("from_list", list2);
            Unit unit21 = Unit.INSTANCE;
        }
        Unit unit22 = Unit.INSTANCE;
        return newApiRequest;
    }
}
