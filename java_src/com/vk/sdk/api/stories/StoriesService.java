package com.vk.sdk.api.stories;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.GraphRequest;
import com.google.gson.JsonElement;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.base.dto.BaseUserGroupFields;
import com.vk.sdk.api.stories.StoriesService;
import com.vk.sdk.api.stories.dto.StoriesGetBannedExtendedResponse;
import com.vk.sdk.api.stories.dto.StoriesGetBannedResponse;
import com.vk.sdk.api.stories.dto.StoriesGetByIdExtendedResponse;
import com.vk.sdk.api.stories.dto.StoriesGetPhotoUploadServerResponse;
import com.vk.sdk.api.stories.dto.StoriesGetV5113Response;
import com.vk.sdk.api.stories.dto.StoriesGetVideoUploadServerResponse;
import com.vk.sdk.api.stories.dto.StoriesGetViewersExtendedV5115Response;
import com.vk.sdk.api.stories.dto.StoriesSaveResponse;
import com.vk.sdk.api.stories.dto.StoriesStoryStats;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J;\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007¢\u0006\u0002\u0010\u000fJ*\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0007J\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00042\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0007J\u001e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u00042\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0007J,\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00072\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0007Jk\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00042\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00072\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010$J:\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u000e2\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0007J\u001c\u0010'\u001a\b\u0012\u0004\u0012\u00020(0\u00042\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fJk\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u00042\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00072\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010$J9\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u00042\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010/J9\u00100\u001a\b\u0012\u0004\u0012\u00020,0\u00042\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010/J \u00101\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\n\u001a\u00020\b2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\bJ\u001c\u00102\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fJ,\u00103\u001a\b\u0012\u0004\u0012\u0002040\u00042\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00072\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007Jw\u00106\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u00108\u001a\u0004\u0018\u00010\f2\n\b\u0002\u00109\u001a\u0004\u0018\u00010:2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010:2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007¢\u0006\u0002\u0010>JI\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010&\u001a\u00020\u000e2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\u001d¢\u0006\u0002\u0010DJ\u001a\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¨\u0006F"}, d2 = {"Lcom/vk/sdk/api/stories/StoriesService;", "", "()V", "storiesBanOwner", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "ownersIds", "", "Lcom/vk/dto/common/id/UserId;", "storiesDelete", "ownerId", "storyId", "", "stories", "", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "storiesGet", "Lcom/vk/sdk/api/stories/dto/StoriesGetV5113Response;", GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;", "storiesGetBanned", "Lcom/vk/sdk/api/stories/dto/StoriesGetBannedResponse;", "storiesGetBannedExtended", "Lcom/vk/sdk/api/stories/dto/StoriesGetBannedExtendedResponse;", "storiesGetById", "Lcom/vk/sdk/api/stories/dto/StoriesGetByIdExtendedResponse;", "storiesGetPhotoUploadServer", "Lcom/vk/sdk/api/stories/dto/StoriesGetPhotoUploadServerResponse;", "addToNews", "", "userIds", "replyToStory", "linkText", "linkUrl", "groupId", "clickableStickers", "(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "storiesGetReplies", "accessKey", "storiesGetStats", "Lcom/vk/sdk/api/stories/dto/StoriesStoryStats;", "storiesGetVideoUploadServer", "Lcom/vk/sdk/api/stories/dto/StoriesGetVideoUploadServerResponse;", "storiesGetViewers", "Lcom/vk/sdk/api/stories/dto/StoriesGetViewersExtendedV5115Response;", AnimatedPasterJsonConfig.CONFIG_COUNT, TypedValues.CycleType.S_WAVE_OFFSET, "(Lcom/vk/dto/common/id/UserId;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "storiesGetViewersExtended", "storiesHideAllReplies", "storiesHideReply", "storiesSave", "Lcom/vk/sdk/api/stories/dto/StoriesSaveResponse;", "uploadResults", "storiesSearch", "q", "placeId", "latitude", "", "longitude", "radius", "mentionedId", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "storiesSendInteraction", "message", "isBroadcast", "isAnonymous", "unseenMarker", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "storiesUnbanOwner", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesBanOwner$lambda-0  reason: not valid java name */
    public static final BaseOkResponse m1306storiesBanOwner$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storiesDelete$default(StoriesService storiesService, UserId userId, Integer num, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        return storiesService.storiesDelete(userId, num, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesDelete$lambda-2  reason: not valid java name */
    public static final BaseOkResponse m1307storiesDelete$lambda2(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storiesGet$default(StoriesService storiesService, UserId userId, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            list = null;
        }
        return storiesService.storiesGet(userId, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesGet$lambda-7  reason: not valid java name */
    public static final StoriesGetV5113Response m1308storiesGet$lambda7(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesGetV5113Response) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesGetV5113Response.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storiesGetBanned$default(StoriesService storiesService, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        return storiesService.storiesGetBanned(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesGetBanned$lambda-12  reason: not valid java name */
    public static final StoriesGetBannedResponse m1309storiesGetBanned$lambda12(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesGetBannedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesGetBannedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storiesGetBannedExtended$default(StoriesService storiesService, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        return storiesService.storiesGetBannedExtended(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesGetBannedExtended$lambda-16  reason: not valid java name */
    public static final StoriesGetBannedExtendedResponse m1310storiesGetBannedExtended$lambda16(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesGetBannedExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesGetBannedExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storiesGetById$default(StoriesService storiesService, List list, List list2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            list2 = null;
        }
        return storiesService.storiesGetById(list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesGetById$lambda-20  reason: not valid java name */
    public static final StoriesGetByIdExtendedResponse m1311storiesGetById$lambda20(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesGetByIdExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesGetByIdExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storiesGetPhotoUploadServer$default(StoriesService storiesService, Boolean bool, List list, String str, String str2, String str3, UserId userId, String str4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            bool = null;
        }
        if ((i9 & 2) != 0) {
            list = null;
        }
        if ((i9 & 4) != 0) {
            str = null;
        }
        if ((i9 & 8) != 0) {
            str2 = null;
        }
        if ((i9 & 16) != 0) {
            str3 = null;
        }
        if ((i9 & 32) != 0) {
            userId = null;
        }
        if ((i9 & 64) != 0) {
            str4 = null;
        }
        return storiesService.storiesGetPhotoUploadServer(bool, list, str, str2, str3, userId, str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesGetPhotoUploadServer$lambda-24  reason: not valid java name */
    public static final StoriesGetPhotoUploadServerResponse m1312storiesGetPhotoUploadServer$lambda24(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesGetPhotoUploadServerResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesGetPhotoUploadServerResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storiesGetReplies$default(StoriesService storiesService, UserId userId, int i9, String str, List list, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str = null;
        }
        if ((i10 & 8) != 0) {
            list = null;
        }
        return storiesService.storiesGetReplies(userId, i9, str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesGetReplies$lambda-33  reason: not valid java name */
    public static final StoriesGetV5113Response m1313storiesGetReplies$lambda33(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesGetV5113Response) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesGetV5113Response.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesGetStats$lambda-38  reason: not valid java name */
    public static final StoriesStoryStats m1314storiesGetStats$lambda38(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesStoryStats) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesStoryStats.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storiesGetVideoUploadServer$default(StoriesService storiesService, Boolean bool, List list, String str, String str2, String str3, UserId userId, String str4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            bool = null;
        }
        if ((i9 & 2) != 0) {
            list = null;
        }
        if ((i9 & 4) != 0) {
            str = null;
        }
        if ((i9 & 8) != 0) {
            str2 = null;
        }
        if ((i9 & 16) != 0) {
            str3 = null;
        }
        if ((i9 & 32) != 0) {
            userId = null;
        }
        if ((i9 & 64) != 0) {
            str4 = null;
        }
        return storiesService.storiesGetVideoUploadServer(bool, list, str, str2, str3, userId, str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesGetVideoUploadServer$lambda-40  reason: not valid java name */
    public static final StoriesGetVideoUploadServerResponse m1315storiesGetVideoUploadServer$lambda40(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesGetVideoUploadServerResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesGetVideoUploadServerResponse.class);
    }

    public static /* synthetic */ VKRequest storiesGetViewers$default(StoriesService storiesService, UserId userId, int i9, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            num2 = null;
        }
        return storiesService.storiesGetViewers(userId, i9, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesGetViewers$lambda-49  reason: not valid java name */
    public static final StoriesGetViewersExtendedV5115Response m1316storiesGetViewers$lambda49(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesGetViewersExtendedV5115Response) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesGetViewersExtendedV5115Response.class);
    }

    public static /* synthetic */ VKRequest storiesGetViewersExtended$default(StoriesService storiesService, UserId userId, int i9, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            num2 = null;
        }
        return storiesService.storiesGetViewersExtended(userId, i9, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesGetViewersExtended$lambda-53  reason: not valid java name */
    public static final StoriesGetViewersExtendedV5115Response m1317storiesGetViewersExtended$lambda53(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesGetViewersExtendedV5115Response) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesGetViewersExtendedV5115Response.class);
    }

    public static /* synthetic */ VKRequest storiesHideAllReplies$default(StoriesService storiesService, UserId userId, UserId userId2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            userId2 = null;
        }
        return storiesService.storiesHideAllReplies(userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesHideAllReplies$lambda-57  reason: not valid java name */
    public static final BaseOkResponse m1318storiesHideAllReplies$lambda57(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesHideReply$lambda-60  reason: not valid java name */
    public static final BaseOkResponse m1319storiesHideReply$lambda60(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storiesSave$default(StoriesService storiesService, List list, List list2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            list2 = null;
        }
        return storiesService.storiesSave(list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesSave$lambda-62  reason: not valid java name */
    public static final StoriesSaveResponse m1320storiesSave$lambda62(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesSaveResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesSaveResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storiesSearch$default(StoriesService storiesService, String str, Integer num, Float f10, Float f11, Integer num2, Integer num3, Integer num4, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            f10 = null;
        }
        if ((i9 & 8) != 0) {
            f11 = null;
        }
        if ((i9 & 16) != 0) {
            num2 = null;
        }
        if ((i9 & 32) != 0) {
            num3 = null;
        }
        if ((i9 & 64) != 0) {
            num4 = null;
        }
        if ((i9 & 128) != 0) {
            list = null;
        }
        return storiesService.storiesSearch(str, num, f10, f11, num2, num3, num4, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesSearch$lambda-65  reason: not valid java name */
    public static final StoriesGetV5113Response m1321storiesSearch$lambda65(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (StoriesGetV5113Response) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) StoriesGetV5113Response.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesSendInteraction$lambda-75  reason: not valid java name */
    public static final BaseOkResponse m1322storiesSendInteraction$lambda75(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storiesUnbanOwner$lambda-81  reason: not valid java name */
    public static final BaseOkResponse m1323storiesUnbanOwner$lambda81(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<BaseOkResponse> storiesBanOwner(@NotNull List<UserId> ownersIds) {
        Intrinsics.checkNotNullParameter(ownersIds, "ownersIds");
        NewApiRequest newApiRequest = new NewApiRequest("stories.banOwner", new ApiResponseParser() { // from class: of.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1306storiesBanOwner$lambda0;
                m1306storiesBanOwner$lambda0 = StoriesService.m1306storiesBanOwner$lambda0(jsonElement);
                return m1306storiesBanOwner$lambda0;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "owners_ids", ownersIds, 0L, 0L, 12, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> storiesDelete(@Nullable UserId userId, @Nullable Integer num, @Nullable List<String> list) {
        NewApiRequest newApiRequest = new NewApiRequest("stories.delete", new ApiResponseParser() { // from class: of.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1307storiesDelete$lambda2;
                m1307storiesDelete$lambda2 = StoriesService.m1307storiesDelete$lambda2(jsonElement);
                return m1307storiesDelete$lambda2;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "story_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (list != null) {
            newApiRequest.addParam("stories", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesGetV5113Response> storiesGet(@Nullable UserId userId, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("stories.get", new ApiResponseParser() { // from class: of.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesGetV5113Response m1308storiesGet$lambda7;
                m1308storiesGet$lambda7 = StoriesService.m1308storiesGet$lambda7(jsonElement);
                return m1308storiesGet$lambda7;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (BaseUserGroupFields baseUserGroupFields : list) {
                arrayList.add(baseUserGroupFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesGetBannedResponse> storiesGetBanned(@Nullable List<? extends BaseUserGroupFields> list) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("stories.getBanned", new ApiResponseParser() { // from class: of.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesGetBannedResponse m1309storiesGetBanned$lambda12;
                m1309storiesGetBanned$lambda12 = StoriesService.m1309storiesGetBanned$lambda12(jsonElement);
                return m1309storiesGetBanned$lambda12;
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
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesGetBannedExtendedResponse> storiesGetBannedExtended(@Nullable List<? extends BaseUserGroupFields> list) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("stories.getBanned", new ApiResponseParser() { // from class: of.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesGetBannedExtendedResponse m1310storiesGetBannedExtended$lambda16;
                m1310storiesGetBannedExtended$lambda16 = StoriesService.m1310storiesGetBannedExtended$lambda16(jsonElement);
                return m1310storiesGetBannedExtended$lambda16;
            }
        });
        newApiRequest.addParam("extended", true);
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
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesGetByIdExtendedResponse> storiesGetById(@NotNull List<String> stories, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(stories, "stories");
        NewApiRequest newApiRequest = new NewApiRequest("stories.getById", new ApiResponseParser() { // from class: of.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesGetByIdExtendedResponse m1311storiesGetById$lambda20;
                m1311storiesGetById$lambda20 = StoriesService.m1311storiesGetById$lambda20(jsonElement);
                return m1311storiesGetById$lambda20;
            }
        });
        newApiRequest.addParam("stories", stories);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (BaseUserGroupFields baseUserGroupFields : list) {
                arrayList.add(baseUserGroupFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesGetPhotoUploadServerResponse> storiesGetPhotoUploadServer(@Nullable Boolean bool, @Nullable List<Integer> list, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable UserId userId, @Nullable String str4) {
        NewApiRequest newApiRequest = new NewApiRequest("stories.getPhotoUploadServer", new ApiResponseParser() { // from class: of.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesGetPhotoUploadServerResponse m1312storiesGetPhotoUploadServer$lambda24;
                m1312storiesGetPhotoUploadServer$lambda24 = StoriesService.m1312storiesGetPhotoUploadServer$lambda24(jsonElement);
                return m1312storiesGetPhotoUploadServer$lambda24;
            }
        });
        if (bool != null) {
            newApiRequest.addParam("add_to_news", bool.booleanValue());
        }
        if (list != null) {
            newApiRequest.addParam("user_ids", list);
        }
        if (str != null) {
            newApiRequest.addParam("reply_to_story", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("link_text", str2);
        }
        if (str3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "link_url", str3, 0, 2048, 4, (Object) null);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (str4 != null) {
            newApiRequest.addParam("clickable_stickers", str4);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesGetV5113Response> storiesGetReplies(@NotNull UserId ownerId, int i9, @Nullable String str, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("stories.getReplies", new ApiResponseParser() { // from class: of.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesGetV5113Response m1313storiesGetReplies$lambda33;
                m1313storiesGetReplies$lambda33 = StoriesService.m1313storiesGetReplies$lambda33(jsonElement);
                return m1313storiesGetReplies$lambda33;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "story_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (BaseUserGroupFields baseUserGroupFields : list) {
                arrayList.add(baseUserGroupFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesStoryStats> storiesGetStats(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("stories.getStats", new ApiResponseParser() { // from class: of.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesStoryStats m1314storiesGetStats$lambda38;
                m1314storiesGetStats$lambda38 = StoriesService.m1314storiesGetStats$lambda38(jsonElement);
                return m1314storiesGetStats$lambda38;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "story_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesGetVideoUploadServerResponse> storiesGetVideoUploadServer(@Nullable Boolean bool, @Nullable List<Integer> list, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable UserId userId, @Nullable String str4) {
        NewApiRequest newApiRequest = new NewApiRequest("stories.getVideoUploadServer", new ApiResponseParser() { // from class: of.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesGetVideoUploadServerResponse m1315storiesGetVideoUploadServer$lambda40;
                m1315storiesGetVideoUploadServer$lambda40 = StoriesService.m1315storiesGetVideoUploadServer$lambda40(jsonElement);
                return m1315storiesGetVideoUploadServer$lambda40;
            }
        });
        if (bool != null) {
            newApiRequest.addParam("add_to_news", bool.booleanValue());
        }
        if (list != null) {
            newApiRequest.addParam("user_ids", list);
        }
        if (str != null) {
            newApiRequest.addParam("reply_to_story", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("link_text", str2);
        }
        if (str3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "link_url", str3, 0, 2048, 4, (Object) null);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (str4 != null) {
            newApiRequest.addParam("clickable_stickers", str4);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesGetViewersExtendedV5115Response> storiesGetViewers(@NotNull UserId ownerId, int i9, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("stories.getViewers", new ApiResponseParser() { // from class: of.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesGetViewersExtendedV5115Response m1316storiesGetViewers$lambda49;
                m1316storiesGetViewers$lambda49 = StoriesService.m1316storiesGetViewers$lambda49(jsonElement);
                return m1316storiesGetViewers$lambda49;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "story_id", i9, 0, 0, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesGetViewersExtendedV5115Response> storiesGetViewersExtended(@NotNull UserId ownerId, int i9, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("stories.getViewers", new ApiResponseParser() { // from class: of.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesGetViewersExtendedV5115Response m1317storiesGetViewersExtended$lambda53;
                m1317storiesGetViewersExtended$lambda53 = StoriesService.m1317storiesGetViewersExtended$lambda53(jsonElement);
                return m1317storiesGetViewersExtended$lambda53;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "story_id", i9, 0, 0, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        newApiRequest.addParam("extended", true);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> storiesHideAllReplies(@NotNull UserId ownerId, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("stories.hideAllReplies", new ApiResponseParser() { // from class: of.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1318storiesHideAllReplies$lambda57;
                m1318storiesHideAllReplies$lambda57 = StoriesService.m1318storiesHideAllReplies$lambda57(jsonElement);
                return m1318storiesHideAllReplies$lambda57;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> storiesHideReply(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("stories.hideReply", new ApiResponseParser() { // from class: of.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1319storiesHideReply$lambda60;
                m1319storiesHideReply$lambda60 = StoriesService.m1319storiesHideReply$lambda60(jsonElement);
                return m1319storiesHideReply$lambda60;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "story_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesSaveResponse> storiesSave(@NotNull List<String> uploadResults, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(uploadResults, "uploadResults");
        NewApiRequest newApiRequest = new NewApiRequest("stories.save", new ApiResponseParser() { // from class: of.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesSaveResponse m1320storiesSave$lambda62;
                m1320storiesSave$lambda62 = StoriesService.m1320storiesSave$lambda62(jsonElement);
                return m1320storiesSave$lambda62;
            }
        });
        newApiRequest.addParam("upload_results", uploadResults);
        if (list != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<StoriesGetV5113Response> storiesSearch(@Nullable String str, @Nullable Integer num, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable List<String> list) {
        NewApiRequest newApiRequest = new NewApiRequest("stories.search", new ApiResponseParser() { // from class: of.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                StoriesGetV5113Response m1321storiesSearch$lambda65;
                m1321storiesSearch$lambda65 = StoriesService.m1321storiesSearch$lambda65(jsonElement);
                return m1321storiesSearch$lambda65;
            }
        });
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "q", str, 0, 255, 4, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "place_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (f10 != null) {
            newApiRequest.addParam("latitude", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("longitude", f11.floatValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "radius", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam("mentioned_id", num3.intValue());
        }
        if (num4 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num4.intValue(), 1, 1000);
        }
        if (list != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> storiesSendInteraction(@NotNull String accessKey, @Nullable String str, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        Intrinsics.checkNotNullParameter(accessKey, "accessKey");
        NewApiRequest newApiRequest = new NewApiRequest("stories.sendInteraction", new ApiResponseParser() { // from class: of.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1322storiesSendInteraction$lambda75;
                m1322storiesSendInteraction$lambda75 = StoriesService.m1322storiesSendInteraction$lambda75(jsonElement);
                return m1322storiesSendInteraction$lambda75;
            }
        });
        newApiRequest.addParam("access_key", accessKey);
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "message", str, 0, 1000, 4, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("is_broadcast", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("is_anonymous", bool2.booleanValue());
        }
        if (bool3 != null) {
            newApiRequest.addParam("unseen_marker", bool3.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> storiesUnbanOwner(@NotNull List<UserId> ownersIds) {
        Intrinsics.checkNotNullParameter(ownersIds, "ownersIds");
        NewApiRequest newApiRequest = new NewApiRequest("stories.unbanOwner", new ApiResponseParser() { // from class: of.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1323storiesUnbanOwner$lambda81;
                m1323storiesUnbanOwner$lambda81 = StoriesService.m1323storiesUnbanOwner$lambda81(jsonElement);
                return m1323storiesUnbanOwner$lambda81;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "owners_ids", ownersIds, 0L, 0L, 12, (Object) null);
        return newApiRequest;
    }
}
