package com.vk.sdk.api.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonElement;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.utils.UtilsService;
import com.vk.sdk.api.utils.dto.UtilsDomainResolved;
import com.vk.sdk.api.utils.dto.UtilsGetLastShortenedLinksResponse;
import com.vk.sdk.api.utils.dto.UtilsGetLinkStatsExtendedInterval;
import com.vk.sdk.api.utils.dto.UtilsGetLinkStatsExtendedSource;
import com.vk.sdk.api.utils.dto.UtilsGetLinkStatsInterval;
import com.vk.sdk.api.utils.dto.UtilsGetLinkStatsSource;
import com.vk.sdk.api.utils.dto.UtilsLinkChecked;
import com.vk.sdk.api.utils.dto.UtilsLinkStats;
import com.vk.sdk.api.utils.dto.UtilsLinkStatsExtended;
import com.vk.sdk.api.utils.dto.UtilsShortLink;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\n\u001a\u00020\u0007J)\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u0010JI\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00042\u0006\u0010\n\u001a\u00020\u00072\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u0019JI\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00042\u0006\u0010\n\u001a\u00020\u00072\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u001eJ\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0004J%\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#¢\u0006\u0002\u0010$J\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\u00042\u0006\u0010'\u001a\u00020\u0007¨\u0006("}, d2 = {"Lcom/vk/sdk/api/utils/UtilsService;", "", "()V", "utilsCheckLink", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/utils/dto/UtilsLinkChecked;", "url", "", "utilsDeleteFromLastShortened", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "key", "utilsGetLastShortenedLinks", "Lcom/vk/sdk/api/utils/dto/UtilsGetLastShortenedLinksResponse;", AnimatedPasterJsonConfig.CONFIG_COUNT, "", TypedValues.CycleType.S_WAVE_OFFSET, "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "utilsGetLinkStats", "Lcom/vk/sdk/api/utils/dto/UtilsLinkStats;", ShareConstants.FEED_SOURCE_PARAM, "Lcom/vk/sdk/api/utils/dto/UtilsGetLinkStatsSource;", "accessKey", "interval", "Lcom/vk/sdk/api/utils/dto/UtilsGetLinkStatsInterval;", "intervalsCount", "(Ljava/lang/String;Lcom/vk/sdk/api/utils/dto/UtilsGetLinkStatsSource;Ljava/lang/String;Lcom/vk/sdk/api/utils/dto/UtilsGetLinkStatsInterval;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "utilsGetLinkStatsExtended", "Lcom/vk/sdk/api/utils/dto/UtilsLinkStatsExtended;", "Lcom/vk/sdk/api/utils/dto/UtilsGetLinkStatsExtendedSource;", "Lcom/vk/sdk/api/utils/dto/UtilsGetLinkStatsExtendedInterval;", "(Ljava/lang/String;Lcom/vk/sdk/api/utils/dto/UtilsGetLinkStatsExtendedSource;Ljava/lang/String;Lcom/vk/sdk/api/utils/dto/UtilsGetLinkStatsExtendedInterval;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "utilsGetServerTime", "utilsGetShortLink", "Lcom/vk/sdk/api/utils/dto/UtilsShortLink;", PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE, "", "(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "utilsResolveScreenName", "Lcom/vk/sdk/api/utils/dto/UtilsDomainResolved;", "screenName", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UtilsService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: utilsCheckLink$lambda-0  reason: not valid java name */
    public static final UtilsLinkChecked m1335utilsCheckLink$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (UtilsLinkChecked) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) UtilsLinkChecked.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: utilsDeleteFromLastShortened$lambda-2  reason: not valid java name */
    public static final BaseOkResponse m1336utilsDeleteFromLastShortened$lambda2(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest utilsGetLastShortenedLinks$default(UtilsService utilsService, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        return utilsService.utilsGetLastShortenedLinks(num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: utilsGetLastShortenedLinks$lambda-4  reason: not valid java name */
    public static final UtilsGetLastShortenedLinksResponse m1337utilsGetLastShortenedLinks$lambda4(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (UtilsGetLastShortenedLinksResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) UtilsGetLastShortenedLinksResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: utilsGetLinkStats$lambda-8  reason: not valid java name */
    public static final UtilsLinkStats m1338utilsGetLinkStats$lambda8(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (UtilsLinkStats) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) UtilsLinkStats.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: utilsGetLinkStatsExtended$lambda-14  reason: not valid java name */
    public static final UtilsLinkStatsExtended m1339utilsGetLinkStatsExtended$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (UtilsLinkStatsExtended) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) UtilsLinkStatsExtended.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: utilsGetServerTime$lambda-20  reason: not valid java name */
    public static final int m1340utilsGetServerTime$lambda20(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson(it, Int::class.java)");
        return ((Number) fromJson).intValue();
    }

    public static /* synthetic */ VKRequest utilsGetShortLink$default(UtilsService utilsService, String str, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bool = null;
        }
        return utilsService.utilsGetShortLink(str, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: utilsGetShortLink$lambda-21  reason: not valid java name */
    public static final UtilsShortLink m1341utilsGetShortLink$lambda21(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (UtilsShortLink) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) UtilsShortLink.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: utilsResolveScreenName$lambda-24  reason: not valid java name */
    public static final UtilsDomainResolved m1342utilsResolveScreenName$lambda24(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (UtilsDomainResolved) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) UtilsDomainResolved.class);
    }

    @NotNull
    public final VKRequest<UtilsLinkChecked> utilsCheckLink(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        NewApiRequest newApiRequest = new NewApiRequest("utils.checkLink", new ApiResponseParser() { // from class: qf.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                UtilsLinkChecked m1335utilsCheckLink$lambda0;
                m1335utilsCheckLink$lambda0 = UtilsService.m1335utilsCheckLink$lambda0(jsonElement);
                return m1335utilsCheckLink$lambda0;
            }
        });
        newApiRequest.addParam("url", url);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> utilsDeleteFromLastShortened(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        NewApiRequest newApiRequest = new NewApiRequest("utils.deleteFromLastShortened", new ApiResponseParser() { // from class: qf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1336utilsDeleteFromLastShortened$lambda2;
                m1336utilsDeleteFromLastShortened$lambda2 = UtilsService.m1336utilsDeleteFromLastShortened$lambda2(jsonElement);
                return m1336utilsDeleteFromLastShortened$lambda2;
            }
        });
        newApiRequest.addParam("key", key);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<UtilsGetLastShortenedLinksResponse> utilsGetLastShortenedLinks(@Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("utils.getLastShortenedLinks", new ApiResponseParser() { // from class: qf.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                UtilsGetLastShortenedLinksResponse m1337utilsGetLastShortenedLinks$lambda4;
                m1337utilsGetLastShortenedLinks$lambda4 = UtilsService.m1337utilsGetLastShortenedLinks$lambda4(jsonElement);
                return m1337utilsGetLastShortenedLinks$lambda4;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<UtilsLinkStats> utilsGetLinkStats(@NotNull String key, @Nullable UtilsGetLinkStatsSource utilsGetLinkStatsSource, @Nullable String str, @Nullable UtilsGetLinkStatsInterval utilsGetLinkStatsInterval, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(key, "key");
        NewApiRequest newApiRequest = new NewApiRequest("utils.getLinkStats", new ApiResponseParser() { // from class: qf.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                UtilsLinkStats m1338utilsGetLinkStats$lambda8;
                m1338utilsGetLinkStats$lambda8 = UtilsService.m1338utilsGetLinkStats$lambda8(jsonElement);
                return m1338utilsGetLinkStats$lambda8;
            }
        });
        newApiRequest.addParam("key", key);
        if (utilsGetLinkStatsSource != null) {
            newApiRequest.addParam(ShareConstants.FEED_SOURCE_PARAM, utilsGetLinkStatsSource.getValue());
        }
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        if (utilsGetLinkStatsInterval != null) {
            newApiRequest.addParam("interval", utilsGetLinkStatsInterval.getValue());
        }
        if (num != null) {
            newApiRequest.addParam("intervals_count", num.intValue(), 0, 100);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<UtilsLinkStatsExtended> utilsGetLinkStatsExtended(@NotNull String key, @Nullable UtilsGetLinkStatsExtendedSource utilsGetLinkStatsExtendedSource, @Nullable String str, @Nullable UtilsGetLinkStatsExtendedInterval utilsGetLinkStatsExtendedInterval, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(key, "key");
        NewApiRequest newApiRequest = new NewApiRequest("utils.getLinkStats", new ApiResponseParser() { // from class: qf.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                UtilsLinkStatsExtended m1339utilsGetLinkStatsExtended$lambda14;
                m1339utilsGetLinkStatsExtended$lambda14 = UtilsService.m1339utilsGetLinkStatsExtended$lambda14(jsonElement);
                return m1339utilsGetLinkStatsExtended$lambda14;
            }
        });
        newApiRequest.addParam("key", key);
        if (utilsGetLinkStatsExtendedSource != null) {
            newApiRequest.addParam(ShareConstants.FEED_SOURCE_PARAM, utilsGetLinkStatsExtendedSource.getValue());
        }
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        if (utilsGetLinkStatsExtendedInterval != null) {
            newApiRequest.addParam("interval", utilsGetLinkStatsExtendedInterval.getValue());
        }
        if (num != null) {
            newApiRequest.addParam("intervals_count", num.intValue(), 0, 100);
        }
        newApiRequest.addParam("extended", true);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> utilsGetServerTime() {
        return new NewApiRequest("utils.getServerTime", new ApiResponseParser() { // from class: qf.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                int m1340utilsGetServerTime$lambda20;
                m1340utilsGetServerTime$lambda20 = UtilsService.m1340utilsGetServerTime$lambda20(jsonElement);
                return Integer.valueOf(m1340utilsGetServerTime$lambda20);
            }
        });
    }

    @NotNull
    public final VKRequest<UtilsShortLink> utilsGetShortLink(@NotNull String url, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(url, "url");
        NewApiRequest newApiRequest = new NewApiRequest("utils.getShortLink", new ApiResponseParser() { // from class: qf.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                UtilsShortLink m1341utilsGetShortLink$lambda21;
                m1341utilsGetShortLink$lambda21 = UtilsService.m1341utilsGetShortLink$lambda21(jsonElement);
                return m1341utilsGetShortLink$lambda21;
            }
        });
        newApiRequest.addParam("url", url);
        if (bool != null) {
            newApiRequest.addParam(PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE, bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<UtilsDomainResolved> utilsResolveScreenName(@NotNull String screenName) {
        Intrinsics.checkNotNullParameter(screenName, "screenName");
        NewApiRequest newApiRequest = new NewApiRequest("utils.resolveScreenName", new ApiResponseParser() { // from class: qf.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                UtilsDomainResolved m1342utilsResolveScreenName$lambda24;
                m1342utilsResolveScreenName$lambda24 = UtilsService.m1342utilsResolveScreenName$lambda24(jsonElement);
                return m1342utilsResolveScreenName$lambda24;
            }
        });
        newApiRequest.addParam("screen_name", screenName);
        return newApiRequest;
    }
}
