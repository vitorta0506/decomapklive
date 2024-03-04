package com.vk.sdk.api.donut;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.GraphRequest;
import com.google.gson.JsonElement;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseUserGroupFields;
import com.vk.sdk.api.donut.DonutService;
import com.vk.sdk.api.donut.dto.DonutDonatorSubscriptionInfo;
import com.vk.sdk.api.donut.dto.DonutGetSubscriptionsResponse;
import com.vk.sdk.api.groups.dto.GroupsGetMembersFieldsResponse;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JC\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f¢\u0006\u0002\u0010\u000eJ\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00042\u0006\u0010\u0006\u001a\u00020\u0007J;\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00042\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\f2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0014J\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u00042\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/donut/DonutService;", "", "()V", "donutGetFriends", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFieldsResponse;", "ownerId", "Lcom/vk/dto/common/id/UserId;", TypedValues.CycleType.S_WAVE_OFFSET, "", AnimatedPasterJsonConfig.CONFIG_COUNT, GraphRequest.FIELDS_PARAM, "", "", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "donutGetSubscription", "Lcom/vk/sdk/api/donut/dto/DonutDonatorSubscriptionInfo;", "donutGetSubscriptions", "Lcom/vk/sdk/api/donut/dto/DonutGetSubscriptionsResponse;", "Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;", "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "donutIsDon", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DonutService {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest donutGetFriends$default(DonutService donutService, UserId userId, Integer num, Integer num2, List list, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        return donutService.donutGetFriends(userId, num, num2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: donutGetFriends$lambda-0  reason: not valid java name */
    public static final GroupsGetMembersFieldsResponse m971donutGetFriends$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (GroupsGetMembersFieldsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) GroupsGetMembersFieldsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: donutGetSubscription$lambda-5  reason: not valid java name */
    public static final DonutDonatorSubscriptionInfo m972donutGetSubscription$lambda5(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DonutDonatorSubscriptionInfo) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DonutDonatorSubscriptionInfo.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest donutGetSubscriptions$default(DonutService donutService, List list, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        return donutService.donutGetSubscriptions(list, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: donutGetSubscriptions$lambda-7  reason: not valid java name */
    public static final DonutGetSubscriptionsResponse m973donutGetSubscriptions$lambda7(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DonutGetSubscriptionsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DonutGetSubscriptionsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: donutIsDon$lambda-13  reason: not valid java name */
    public static final BaseBoolInt m974donutIsDon$lambda13(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    @NotNull
    public final VKRequest<GroupsGetMembersFieldsResponse> donutGetFriends(@NotNull UserId ownerId, @Nullable Integer num, @Nullable Integer num2, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("donut.getFriends", new ApiResponseParser() { // from class: cf.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                GroupsGetMembersFieldsResponse m971donutGetFriends$lambda0;
                m971donutGetFriends$lambda0 = DonutService.m971donutGetFriends$lambda0(jsonElement);
                return m971donutGetFriends$lambda0;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        if (list != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DonutDonatorSubscriptionInfo> donutGetSubscription(@NotNull UserId ownerId) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("donut.getSubscription", new ApiResponseParser() { // from class: cf.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DonutDonatorSubscriptionInfo m972donutGetSubscription$lambda5;
                m972donutGetSubscription$lambda5 = DonutService.m972donutGetSubscription$lambda5(jsonElement);
                return m972donutGetSubscription$lambda5;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DonutGetSubscriptionsResponse> donutGetSubscriptions(@Nullable List<? extends BaseUserGroupFields> list, @Nullable Integer num, @Nullable Integer num2) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("donut.getSubscriptions", new ApiResponseParser() { // from class: cf.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DonutGetSubscriptionsResponse m973donutGetSubscriptions$lambda7;
                m973donutGetSubscriptions$lambda7 = DonutService.m973donutGetSubscriptions$lambda7(jsonElement);
                return m973donutGetSubscriptions$lambda7;
            }
        });
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (BaseUserGroupFields baseUserGroupFields : list) {
                arrayList2.add(baseUserGroupFields.getValue());
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> donutIsDon(@NotNull UserId ownerId) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("donut.isDon", new ApiResponseParser() { // from class: cf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m974donutIsDon$lambda13;
                m974donutIsDon$lambda13 = DonutService.m974donutIsDon$lambda13(jsonElement);
                return m974donutIsDon$lambda13;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        return newApiRequest;
    }
}
