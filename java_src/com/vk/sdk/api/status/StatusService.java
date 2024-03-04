package com.vk.sdk.api.status;

import com.facebook.AccessToken;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.JsonElement;
import com.guochao.faceshow.utils.Contants;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.status.StatusService;
import com.vk.sdk.api.status.dto.StatusStatus;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007J$\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¨\u0006\r"}, d2 = {"Lcom/vk/sdk/api/status/StatusService;", "", "()V", "statusGet", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/status/dto/StatusStatus;", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "groupId", "statusSet", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", ViewHierarchyConstants.TEXT_KEY, "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StatusService {
    public static /* synthetic */ VKRequest statusGet$default(StatusService statusService, UserId userId, UserId userId2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            userId2 = null;
        }
        return statusService.statusGet(userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: statusGet$lambda-0  reason: not valid java name */
    public static final StatusStatus m1296statusGet$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StatusStatus) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StatusStatus.class);
    }

    public static /* synthetic */ VKRequest statusSet$default(StatusService statusService, String str, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            userId = null;
        }
        return statusService.statusSet(str, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: statusSet$lambda-4  reason: not valid java name */
    public static final BaseOkResponse m1297statusSet$lambda4(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<StatusStatus> statusGet(@Nullable UserId userId, @Nullable UserId userId2) {
        NewApiRequest newApiRequest = new NewApiRequest("status.get", new ApiResponseParser() { // from class: nf.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StatusStatus m1296statusGet$lambda0;
                m1296statusGet$lambda0 = StatusService.m1296statusGet$lambda0(jsonElement);
                return m1296statusGet$lambda0;
            }
        });
        if (userId != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, userId);
        }
        if (userId2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId2, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> statusSet(@Nullable String str, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("status.set", new ApiResponseParser() { // from class: nf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1297statusSet$lambda4;
                m1297statusSet$lambda4 = StatusService.m1297statusSet$lambda4(jsonElement);
                return m1297statusSet$lambda4;
            }
        });
        if (str != null) {
            newApiRequest.addParam(ViewHierarchyConstants.TEXT_KEY, str);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }
}
