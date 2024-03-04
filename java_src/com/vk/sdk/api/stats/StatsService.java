package com.vk.sdk.api.stats;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.stats.dto.StatsGetInterval;
import com.vk.sdk.api.stats.dto.StatsPeriod;
import com.vk.sdk.api.stats.dto.StatsWallpostStat;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0083\u0001\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00052\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013J(\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00050\u00042\u0006\u0010\u0016\u001a\u00020\u00112\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\n0\u0005J\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\u0006\u0010\u001a\u001a\u00020\u0011¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/stats/StatsService;", "", "()V", "statsGet", "Lcom/vk/api/sdk/requests/VKRequest;", "", "Lcom/vk/sdk/api/stats/dto/StatsPeriod;", "groupId", "Lcom/vk/dto/common/id/UserId;", "appId", "", "timestampFrom", "timestampTo", "interval", "Lcom/vk/sdk/api/stats/dto/StatsGetInterval;", "intervalsCount", ShareConstants.WEB_DIALOG_PARAM_FILTERS, "", "statsGroups", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/stats/dto/StatsGetInterval;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "statsGetPostReach", "Lcom/vk/sdk/api/stats/dto/StatsWallpostStat;", "ownerId", "postIds", "statsTrackVisitor", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "id", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StatsService {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest statsGet$default(StatsService statsService, UserId userId, Integer num, Integer num2, Integer num3, StatsGetInterval statsGetInterval, Integer num4, List list, List list2, int i9, Object obj) {
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
            num3 = null;
        }
        if ((i9 & 16) != 0) {
            statsGetInterval = null;
        }
        if ((i9 & 32) != 0) {
            num4 = null;
        }
        if ((i9 & 64) != 0) {
            list = null;
        }
        if ((i9 & 128) != 0) {
            list2 = null;
        }
        return statsService.statsGet(userId, num, num2, num3, statsGetInterval, num4, list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: statsGet$lambda-0  reason: not valid java name */
    public static final List m1293statsGet$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends StatsPeriod>>() { // from class: com.vk.sdk.api.stats.StatsService$statsGet$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: statsGetPostReach$lambda-10  reason: not valid java name */
    public static final List m1294statsGetPostReach$lambda10(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends StatsWallpostStat>>() { // from class: com.vk.sdk.api.stats.StatsService$statsGetPostReach$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: statsTrackVisitor$lambda-12  reason: not valid java name */
    public static final BaseOkResponse m1295statsTrackVisitor$lambda12(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<List<StatsPeriod>> statsGet(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable StatsGetInterval statsGetInterval, @Nullable Integer num4, @Nullable List<String> list, @Nullable List<String> list2) {
        NewApiRequest newApiRequest = new NewApiRequest("stats.get", new ApiResponseParser() { // from class: com.vk.sdk.api.stats.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1293statsGet$lambda0;
                m1293statsGet$lambda0 = StatsService.m1293statsGet$lambda0(jsonElement);
                return m1293statsGet$lambda0;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "app_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "timestamp_from", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "timestamp_to", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (statsGetInterval != null) {
            newApiRequest.addParam("interval", statsGetInterval.getValue());
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, "intervals_count", num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (list != null) {
            newApiRequest.addParam(ShareConstants.WEB_DIALOG_PARAM_FILTERS, list);
        }
        if (list2 != null) {
            newApiRequest.addParam("stats_groups", list2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<StatsWallpostStat>> statsGetPostReach(@NotNull String ownerId, @NotNull List<Integer> postIds) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(postIds, "postIds");
        NewApiRequest newApiRequest = new NewApiRequest("stats.getPostReach", new ApiResponseParser() { // from class: com.vk.sdk.api.stats.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1294statsGetPostReach$lambda10;
                m1294statsGetPostReach$lambda10 = StatsService.m1294statsGetPostReach$lambda10(jsonElement);
                return m1294statsGetPostReach$lambda10;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        newApiRequest.addParam("post_ids", postIds);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> statsTrackVisitor(@NotNull String id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        NewApiRequest newApiRequest = new NewApiRequest("stats.trackVisitor", new ApiResponseParser() { // from class: com.vk.sdk.api.stats.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1295statsTrackVisitor$lambda12;
                m1295statsTrackVisitor$lambda12 = StatsService.m1295statsTrackVisitor$lambda12(jsonElement);
                return m1295statsTrackVisitor$lambda12;
            }
        });
        newApiRequest.addParam("id", id2);
        return newApiRequest;
    }
}
