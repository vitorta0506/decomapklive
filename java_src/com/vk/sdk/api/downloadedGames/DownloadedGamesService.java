package com.vk.sdk.api.downloadedGames;

import com.facebook.AccessToken;
import com.google.gson.JsonElement;
import com.guochao.faceshow.utils.Contants;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.downloadedGames.DownloadedGamesService;
import com.vk.sdk.api.downloadedGames.dto.DownloadedGamesPaidStatusResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/downloadedGames/DownloadedGamesService;", "", "()V", "downloadedGamesGetPaidStatus", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/downloadedGames/dto/DownloadedGamesPaidStatusResponse;", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DownloadedGamesService {
    public static /* synthetic */ VKRequest downloadedGamesGetPaidStatus$default(DownloadedGamesService downloadedGamesService, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        return downloadedGamesService.downloadedGamesGetPaidStatus(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: downloadedGamesGetPaidStatus$lambda-0  reason: not valid java name */
    public static final DownloadedGamesPaidStatusResponse m975downloadedGamesGetPaidStatus$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DownloadedGamesPaidStatusResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DownloadedGamesPaidStatusResponse.class);
    }

    @NotNull
    public final VKRequest<DownloadedGamesPaidStatusResponse> downloadedGamesGetPaidStatus(@Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("downloadedGames.getPaidStatus", new ApiResponseParser() { // from class: df.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DownloadedGamesPaidStatusResponse m975downloadedGamesGetPaidStatus$lambda0;
                m975downloadedGamesGetPaidStatus$lambda0 = DownloadedGamesService.m975downloadedGamesGetPaidStatus$lambda0(jsonElement);
                return m975downloadedGamesGetPaidStatus$lambda0;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }
}
