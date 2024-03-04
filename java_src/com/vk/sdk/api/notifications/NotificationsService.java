package com.vk.sdk.api.notifications;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.notifications.dto.NotificationsGetFilters;
import com.vk.sdk.api.notifications.dto.NotificationsGetResponse;
import com.vk.sdk.api.notifications.dto.NotificationsSendMessageItem;
import com.vk.sdk.api.notifications.dto.NotificationsSendMessageSendingMode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JS\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000fJ\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u0004J]\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u000b0\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0015\u001a\u00020\t2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/notifications/NotificationsService;", "", "()V", "notificationsGet", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/notifications/dto/NotificationsGetResponse;", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "startFrom", "", ShareConstants.WEB_DIALOG_PARAM_FILTERS, "", "Lcom/vk/sdk/api/notifications/dto/NotificationsGetFilters;", "startTime", "endTime", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "notificationsMarkAsViewed", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "notificationsSendMessage", "Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageItem;", "userIds", "message", "fragment", "groupId", "Lcom/vk/dto/common/id/UserId;", "randomId", "sendingMode", "Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageSendingMode;", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Lcom/vk/sdk/api/notifications/dto/NotificationsSendMessageSendingMode;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NotificationsService {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest notificationsGet$default(NotificationsService notificationsService, Integer num, String str, List list, Integer num2, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            num3 = null;
        }
        return notificationsService.notificationsGet(num, str, list, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notificationsGet$lambda-0  reason: not valid java name */
    public static final NotificationsGetResponse m1196notificationsGet$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NotificationsGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NotificationsGetResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notificationsMarkAsViewed$lambda-8  reason: not valid java name */
    public static final BaseBoolInt m1197notificationsMarkAsViewed$lambda8(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson… BaseBoolInt::class.java)");
        return (BaseBoolInt) fromJson;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notificationsSendMessage$lambda-9  reason: not valid java name */
    public static final List m1198notificationsSendMessage$lambda9(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends NotificationsSendMessageItem>>() { // from class: com.vk.sdk.api.notifications.NotificationsService$notificationsSendMessage$1$typeToken$1
        }.getType());
    }

    @NotNull
    public final VKRequest<NotificationsGetResponse> notificationsGet(@Nullable Integer num, @Nullable String str, @Nullable List<? extends NotificationsGetFilters> list, @Nullable Integer num2, @Nullable Integer num3) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("notifications.get", new ApiResponseParser() { // from class: com.vk.sdk.api.notifications.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NotificationsGetResponse m1196notificationsGet$lambda0;
                m1196notificationsGet$lambda0 = NotificationsService.m1196notificationsGet$lambda0(jsonElement);
                return m1196notificationsGet$lambda0;
            }
        });
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 1, 100);
        }
        if (str != null) {
            newApiRequest.addParam("start_from", str);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (NotificationsGetFilters notificationsGetFilters : list) {
                arrayList.add(notificationsGetFilters.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(ShareConstants.WEB_DIALOG_PARAM_FILTERS, (Iterable<?>) arrayList);
        }
        if (num2 != null) {
            newApiRequest.addParam("start_time", num2.intValue());
        }
        if (num3 != null) {
            newApiRequest.addParam("end_time", num3.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> notificationsMarkAsViewed() {
        return new NewApiRequest("notifications.markAsViewed", new ApiResponseParser() { // from class: com.vk.sdk.api.notifications.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1197notificationsMarkAsViewed$lambda8;
                m1197notificationsMarkAsViewed$lambda8 = NotificationsService.m1197notificationsMarkAsViewed$lambda8(jsonElement);
                return m1197notificationsMarkAsViewed$lambda8;
            }
        });
    }

    @NotNull
    public final VKRequest<List<NotificationsSendMessageItem>> notificationsSendMessage(@NotNull List<Integer> userIds, @NotNull String message, @Nullable String str, @Nullable UserId userId, @Nullable Integer num, @Nullable NotificationsSendMessageSendingMode notificationsSendMessageSendingMode) {
        Intrinsics.checkNotNullParameter(userIds, "userIds");
        Intrinsics.checkNotNullParameter(message, "message");
        NewApiRequest newApiRequest = new NewApiRequest("notifications.sendMessage", new ApiResponseParser() { // from class: com.vk.sdk.api.notifications.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1198notificationsSendMessage$lambda9;
                m1198notificationsSendMessage$lambda9 = NotificationsService.m1198notificationsSendMessage$lambda9(jsonElement);
                return m1198notificationsSendMessage$lambda9;
            }
        });
        newApiRequest.addParam("user_ids", userIds);
        NewApiRequest.addParam$default(newApiRequest, "message", message, 0, 254, 4, (Object) null);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "fragment", str, 0, 2047, 4, (Object) null);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            newApiRequest.addParam("random_id", num.intValue());
        }
        if (notificationsSendMessageSendingMode != null) {
            newApiRequest.addParam("sending_mode", notificationsSendMessageSendingMode.getValue());
        }
        return newApiRequest;
    }
}
