package com.vk.sdk.api.streaming;

import com.google.gson.JsonElement;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.streaming.StreamingService;
import com.vk.sdk.api.streaming.dto.StreamingGetServerUrlResponse;
import com.vk.sdk.api.streaming.dto.StreamingGetStatsInterval;
import com.vk.sdk.api.streaming.dto.StreamingGetStatsType;
import com.vk.sdk.api.streaming.dto.StreamingSetSettingsMonthlyTier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004JA\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0012\u001a\u00020\u0013J\u0018\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/streaming/StreamingService;", "", "()V", "streamingGetServerUrl", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/streaming/dto/StreamingGetServerUrlResponse;", "streamingGetSettings", "", "streamingGetStats", "type", "Lcom/vk/sdk/api/streaming/dto/StreamingGetStatsType;", "interval", "Lcom/vk/sdk/api/streaming/dto/StreamingGetStatsInterval;", "startTime", "", "endTime", "(Lcom/vk/sdk/api/streaming/dto/StreamingGetStatsType;Lcom/vk/sdk/api/streaming/dto/StreamingGetStatsInterval;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "streamingGetStem", "word", "", "streamingSetSettings", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "monthlyTier", "Lcom/vk/sdk/api/streaming/dto/StreamingSetSettingsMonthlyTier;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StreamingService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: streamingGetServerUrl$lambda-0  reason: not valid java name */
    public static final StreamingGetServerUrlResponse m1324streamingGetServerUrl$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StreamingGetServerUrlResponse.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson…rUrlResponse::class.java)");
        return (StreamingGetServerUrlResponse) fromJson;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: streamingGetSettings$lambda-1  reason: not valid java name */
    public static final Unit m1325streamingGetSettings$lambda1(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public static /* synthetic */ VKRequest streamingGetStats$default(StreamingService streamingService, StreamingGetStatsType streamingGetStatsType, StreamingGetStatsInterval streamingGetStatsInterval, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            streamingGetStatsType = null;
        }
        if ((i9 & 2) != 0) {
            streamingGetStatsInterval = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        return streamingService.streamingGetStats(streamingGetStatsType, streamingGetStatsInterval, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: streamingGetStats$lambda-2  reason: not valid java name */
    public static final Unit m1326streamingGetStats$lambda2(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: streamingGetStem$lambda-8  reason: not valid java name */
    public static final Unit m1327streamingGetStem$lambda8(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public static /* synthetic */ VKRequest streamingSetSettings$default(StreamingService streamingService, StreamingSetSettingsMonthlyTier streamingSetSettingsMonthlyTier, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            streamingSetSettingsMonthlyTier = null;
        }
        return streamingService.streamingSetSettings(streamingSetSettingsMonthlyTier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: streamingSetSettings$lambda-10  reason: not valid java name */
    public static final BaseOkResponse m1328streamingSetSettings$lambda10(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<StreamingGetServerUrlResponse> streamingGetServerUrl() {
        return new NewApiRequest("streaming.getServerUrl", new ApiResponseParser() { // from class: pf.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StreamingGetServerUrlResponse m1324streamingGetServerUrl$lambda0;
                m1324streamingGetServerUrl$lambda0 = StreamingService.m1324streamingGetServerUrl$lambda0(jsonElement);
                return m1324streamingGetServerUrl$lambda0;
            }
        });
    }

    @NotNull
    public final VKRequest<Unit> streamingGetSettings() {
        return new NewApiRequest("streaming.getSettings", new ApiResponseParser() { // from class: pf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m1325streamingGetSettings$lambda1;
                m1325streamingGetSettings$lambda1 = StreamingService.m1325streamingGetSettings$lambda1(jsonElement);
                return m1325streamingGetSettings$lambda1;
            }
        });
    }

    @NotNull
    public final VKRequest<Unit> streamingGetStats(@Nullable StreamingGetStatsType streamingGetStatsType, @Nullable StreamingGetStatsInterval streamingGetStatsInterval, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("streaming.getStats", new ApiResponseParser() { // from class: pf.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m1326streamingGetStats$lambda2;
                m1326streamingGetStats$lambda2 = StreamingService.m1326streamingGetStats$lambda2(jsonElement);
                return m1326streamingGetStats$lambda2;
            }
        });
        if (streamingGetStatsType != null) {
            newApiRequest.addParam("type", streamingGetStatsType.getValue());
        }
        if (streamingGetStatsInterval != null) {
            newApiRequest.addParam("interval", streamingGetStatsInterval.getValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_time", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "end_time", num2.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Unit> streamingGetStem(@NotNull String word) {
        Intrinsics.checkNotNullParameter(word, "word");
        NewApiRequest newApiRequest = new NewApiRequest("streaming.getStem", new ApiResponseParser() { // from class: pf.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Unit m1327streamingGetStem$lambda8;
                m1327streamingGetStem$lambda8 = StreamingService.m1327streamingGetStem$lambda8(jsonElement);
                return m1327streamingGetStem$lambda8;
            }
        });
        newApiRequest.addParam("word", word);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> streamingSetSettings(@Nullable StreamingSetSettingsMonthlyTier streamingSetSettingsMonthlyTier) {
        NewApiRequest newApiRequest = new NewApiRequest("streaming.setSettings", new ApiResponseParser() { // from class: pf.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1328streamingSetSettings$lambda10;
                m1328streamingSetSettings$lambda10 = StreamingService.m1328streamingSetSettings$lambda10(jsonElement);
                return m1328streamingSetSettings$lambda10;
            }
        });
        if (streamingSetSettingsMonthlyTier != null) {
            newApiRequest.addParam("monthly_tier", streamingSetSettingsMonthlyTier.getValue());
        }
        return newApiRequest;
    }
}
