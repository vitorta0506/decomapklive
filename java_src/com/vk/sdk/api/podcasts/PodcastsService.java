package com.vk.sdk.api.podcasts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.JsonElement;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.podcasts.PodcastsService;
import com.vk.sdk.api.podcasts.dto.PodcastsSearchPodcastResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J1\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vk/sdk/api/podcasts/PodcastsService;", "", "()V", "podcastsSearchPodcast", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/podcasts/dto/PodcastsSearchPodcastResponse;", "searchString", "", TypedValues.CycleType.S_WAVE_OFFSET, "", AnimatedPasterJsonConfig.CONFIG_COUNT, "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PodcastsService {
    public static /* synthetic */ VKRequest podcastsSearchPodcast$default(PodcastsService podcastsService, String str, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        return podcastsService.podcastsSearchPodcast(str, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: podcastsSearchPodcast$lambda-0  reason: not valid java name */
    public static final PodcastsSearchPodcastResponse m1266podcastsSearchPodcast$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PodcastsSearchPodcastResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PodcastsSearchPodcastResponse.class);
    }

    @NotNull
    public final VKRequest<PodcastsSearchPodcastResponse> podcastsSearchPodcast(@NotNull String searchString, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(searchString, "searchString");
        NewApiRequest newApiRequest = new NewApiRequest("podcasts.searchPodcast", new ApiResponseParser() { // from class: lf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PodcastsSearchPodcastResponse m1266podcastsSearchPodcast$lambda0;
                m1266podcastsSearchPodcast$lambda0 = PodcastsService.m1266podcastsSearchPodcast$lambda0(jsonElement);
                return m1266podcastsSearchPodcast$lambda0;
            }
        });
        newApiRequest.addParam("search_string", searchString);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 1, 1000);
        }
        return newApiRequest;
    }
}
