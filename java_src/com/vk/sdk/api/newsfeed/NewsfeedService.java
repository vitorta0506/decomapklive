package com.vk.sdk.api.newsfeed;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.GraphRequest;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonElement;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.base.dto.BaseUserGroupFields;
import com.vk.sdk.api.newsfeed.NewsfeedService;
import com.vk.sdk.api.newsfeed.dto.NewsfeedCommentsFilters;
import com.vk.sdk.api.newsfeed.dto.NewsfeedGetBannedExtendedNameCase;
import com.vk.sdk.api.newsfeed.dto.NewsfeedGetBannedExtendedResponse;
import com.vk.sdk.api.newsfeed.dto.NewsfeedGetBannedNameCase;
import com.vk.sdk.api.newsfeed.dto.NewsfeedGetBannedResponse;
import com.vk.sdk.api.newsfeed.dto.NewsfeedGetCommentsResponse;
import com.vk.sdk.api.newsfeed.dto.NewsfeedGetListsExtendedResponse;
import com.vk.sdk.api.newsfeed.dto.NewsfeedGetListsResponse;
import com.vk.sdk.api.newsfeed.dto.NewsfeedGetMentionsResponse;
import com.vk.sdk.api.newsfeed.dto.NewsfeedGetRecommendedResponse;
import com.vk.sdk.api.newsfeed.dto.NewsfeedGetResponse;
import com.vk.sdk.api.newsfeed.dto.NewsfeedGetSuggestedSourcesResponse;
import com.vk.sdk.api.newsfeed.dto.NewsfeedNewsfeedItemType;
import com.vk.sdk.api.newsfeed.dto.NewsfeedSearchExtendedResponse;
import com.vk.sdk.api.newsfeed.dto.NewsfeedSearchResponse;
import com.vk.sdk.api.newsfeed.dto.NewsfeedUnsubscribeType;
import com.vk.sdk.api.users.dto.UsersFields;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007J0\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007J\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\f\u001a\u00020\bJ\u0095\u0001\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00042\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u00072\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010\u001dJ*\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"J*\u0010#\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010%J}\u0010&\u001a\b\u0012\u0004\u0012\u00020'0\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\u00072\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0007¢\u0006\u0002\u0010+J\u001e\u0010,\u001a\b\u0012\u0004\u0012\u00020-0\u00042\u0010\b\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007J\u001e\u0010/\u001a\b\u0012\u0004\u0012\u0002000\u00042\u0010\b\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007JM\u00101\u001a\b\u0012\u0004\u0012\u0002020\u00042\n\b\u0002\u00103\u001a\u0004\u0018\u0001042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u00105\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u00106J_\u00107\u001a\b\u0012\u0004\u0012\u0002080\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0007¢\u0006\u0002\u00109JG\u0010:\u001a\b\u0012\u0004\u0012\u00020;0\u00042\n\b\u0002\u00105\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00122\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0007¢\u0006\u0002\u0010=J1\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010?\u001a\u00020\u00172\n\b\u0002\u00103\u001a\u0004\u0018\u0001042\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010AJC\u0010B\u001a\b\u0012\u0004\u0012\u00020\b0\u00042\u0006\u0010C\u001a\u00020\u00172\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u000204\u0018\u00010\u00072\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010EJw\u0010F\u001a\b\u0012\u0004\u0012\u00020G0\u00042\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010J2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010J2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0007¢\u0006\u0002\u0010LJw\u0010M\u001a\b\u0012\u0004\u0012\u00020N0\u00042\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010J2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010J2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0007¢\u0006\u0002\u0010LJ0\u0010O\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010?\u001a\u00020\u00172\u0006\u00103\u001a\u0002042\u0006\u0010@\u001a\u00020\b2\n\b\u0002\u0010P\u001a\u0004\u0018\u00010\u0017J(\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010?\u001a\u00020R2\u0006\u0010@\u001a\u00020\b2\n\b\u0002\u00103\u001a\u0004\u0018\u000104¨\u0006S"}, d2 = {"Lcom/vk/sdk/api/newsfeed/NewsfeedService;", "", "()V", "newsfeedAddBan", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "userIds", "", "", "groupIds", "newsfeedDeleteBan", "newsfeedDeleteList", "listId", "newsfeedGet", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetResponse;", ShareConstants.WEB_DIALOG_PARAM_FILTERS, "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;", "returnBanned", "", "startTime", "endTime", "maxPhotos", "sourceIds", "", "startFrom", AnimatedPasterJsonConfig.CONFIG_COUNT, GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;", "section", "(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "newsfeedGetBanned", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetBannedResponse;", "Lcom/vk/sdk/api/users/dto/UsersFields;", "nameCase", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetBannedNameCase;", "newsfeedGetBannedExtended", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetBannedExtendedResponse;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetBannedExtendedNameCase;", "newsfeedGetComments", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetCommentsResponse;", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedCommentsFilters;", "reposts", "lastCommentsCount", "(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "newsfeedGetLists", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetListsResponse;", "listIds", "newsfeedGetListsExtended", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetListsExtendedResponse;", "newsfeedGetMentions", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetMentionsResponse;", "ownerId", "Lcom/vk/dto/common/id/UserId;", TypedValues.CycleType.S_WAVE_OFFSET, "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "newsfeedGetRecommended", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetRecommendedResponse;", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "newsfeedGetSuggestedSources", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetSuggestedSourcesResponse;", "shuffle", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "newsfeedIgnoreItem", "type", "itemId", "(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "newsfeedSaveList", "title", "noReposts", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "newsfeedSearch", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedSearchResponse;", "q", "latitude", "", "longitude", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "newsfeedSearchExtended", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedSearchExtendedResponse;", "newsfeedUnignoreItem", "trackCode", "newsfeedUnsubscribe", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedUnsubscribeType;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedService {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedAddBan$default(NewsfeedService newsfeedService, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            list2 = null;
        }
        return newsfeedService.newsfeedAddBan(list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedAddBan$lambda-0  reason: not valid java name */
    public static final BaseOkResponse m1168newsfeedAddBan$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedDeleteBan$default(NewsfeedService newsfeedService, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            list2 = null;
        }
        return newsfeedService.newsfeedDeleteBan(list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedDeleteBan$lambda-4  reason: not valid java name */
    public static final BaseOkResponse m1169newsfeedDeleteBan$lambda4(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedDeleteList$lambda-8  reason: not valid java name */
    public static final BaseOkResponse m1170newsfeedDeleteList$lambda8(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedGet$default(NewsfeedService newsfeedService, List list, Boolean bool, Integer num, Integer num2, Integer num3, String str, String str2, Integer num4, List list2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            bool = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            num3 = null;
        }
        if ((i9 & 32) != 0) {
            str = null;
        }
        if ((i9 & 64) != 0) {
            str2 = null;
        }
        if ((i9 & 128) != 0) {
            num4 = null;
        }
        if ((i9 & 256) != 0) {
            list2 = null;
        }
        if ((i9 & 512) != 0) {
            str3 = null;
        }
        return newsfeedService.newsfeedGet(list, bool, num, num2, num3, str, str2, num4, list2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedGet$lambda-10  reason: not valid java name */
    public static final NewsfeedGetResponse m1171newsfeedGet$lambda10(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NewsfeedGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NewsfeedGetResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedGetBanned$default(NewsfeedService newsfeedService, List list, NewsfeedGetBannedNameCase newsfeedGetBannedNameCase, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            newsfeedGetBannedNameCase = null;
        }
        return newsfeedService.newsfeedGetBanned(list, newsfeedGetBannedNameCase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedGetBanned$lambda-24  reason: not valid java name */
    public static final NewsfeedGetBannedResponse m1172newsfeedGetBanned$lambda24(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NewsfeedGetBannedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NewsfeedGetBannedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedGetBannedExtended$default(NewsfeedService newsfeedService, List list, NewsfeedGetBannedExtendedNameCase newsfeedGetBannedExtendedNameCase, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            newsfeedGetBannedExtendedNameCase = null;
        }
        return newsfeedService.newsfeedGetBannedExtended(list, newsfeedGetBannedExtendedNameCase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedGetBannedExtended$lambda-29  reason: not valid java name */
    public static final NewsfeedGetBannedExtendedResponse m1173newsfeedGetBannedExtended$lambda29(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NewsfeedGetBannedExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NewsfeedGetBannedExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedGetComments$default(NewsfeedService newsfeedService, Integer num, List list, String str, Integer num2, Integer num3, Integer num4, String str2, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            list = null;
        }
        if ((i9 & 4) != 0) {
            str = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            num3 = null;
        }
        if ((i9 & 32) != 0) {
            num4 = null;
        }
        if ((i9 & 64) != 0) {
            str2 = null;
        }
        if ((i9 & 128) != 0) {
            list2 = null;
        }
        return newsfeedService.newsfeedGetComments(num, list, str, num2, num3, num4, str2, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedGetComments$lambda-34  reason: not valid java name */
    public static final NewsfeedGetCommentsResponse m1174newsfeedGetComments$lambda34(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NewsfeedGetCommentsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NewsfeedGetCommentsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedGetLists$default(NewsfeedService newsfeedService, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        return newsfeedService.newsfeedGetLists(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedGetLists$lambda-46  reason: not valid java name */
    public static final NewsfeedGetListsResponse m1175newsfeedGetLists$lambda46(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NewsfeedGetListsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NewsfeedGetListsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedGetListsExtended$default(NewsfeedService newsfeedService, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        return newsfeedService.newsfeedGetListsExtended(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedGetListsExtended$lambda-49  reason: not valid java name */
    public static final NewsfeedGetListsExtendedResponse m1176newsfeedGetListsExtended$lambda49(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NewsfeedGetListsExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NewsfeedGetListsExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest newsfeedGetMentions$default(NewsfeedService newsfeedService, UserId userId, Integer num, Integer num2, Integer num3, Integer num4, int i9, Object obj) {
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
            num4 = null;
        }
        return newsfeedService.newsfeedGetMentions(userId, num, num2, num3, num4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedGetMentions$lambda-52  reason: not valid java name */
    public static final NewsfeedGetMentionsResponse m1177newsfeedGetMentions$lambda52(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NewsfeedGetMentionsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NewsfeedGetMentionsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedGetRecommended$default(NewsfeedService newsfeedService, Integer num, Integer num2, Integer num3, String str, Integer num4, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            num3 = null;
        }
        if ((i9 & 8) != 0) {
            str = null;
        }
        if ((i9 & 16) != 0) {
            num4 = null;
        }
        if ((i9 & 32) != 0) {
            list = null;
        }
        return newsfeedService.newsfeedGetRecommended(num, num2, num3, str, num4, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedGetRecommended$lambda-59  reason: not valid java name */
    public static final NewsfeedGetRecommendedResponse m1178newsfeedGetRecommended$lambda59(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NewsfeedGetRecommendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NewsfeedGetRecommendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedGetSuggestedSources$default(NewsfeedService newsfeedService, Integer num, Integer num2, Boolean bool, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            bool = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        return newsfeedService.newsfeedGetSuggestedSources(num, num2, bool, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedGetSuggestedSources$lambda-68  reason: not valid java name */
    public static final NewsfeedGetSuggestedSourcesResponse m1179newsfeedGetSuggestedSources$lambda68(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NewsfeedGetSuggestedSourcesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NewsfeedGetSuggestedSourcesResponse.class);
    }

    public static /* synthetic */ VKRequest newsfeedIgnoreItem$default(NewsfeedService newsfeedService, String str, UserId userId, Integer num, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            userId = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        return newsfeedService.newsfeedIgnoreItem(str, userId, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedIgnoreItem$lambda-75  reason: not valid java name */
    public static final BaseOkResponse m1180newsfeedIgnoreItem$lambda75(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedSaveList$default(NewsfeedService newsfeedService, String str, Integer num, List list, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        return newsfeedService.newsfeedSaveList(str, num, list, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedSaveList$lambda-79  reason: not valid java name */
    public static final Integer m1181newsfeedSaveList$lambda79(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedSearch$default(NewsfeedService newsfeedService, String str, Integer num, Float f10, Float f11, Integer num2, Integer num3, String str2, List list, int i9, Object obj) {
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
            str2 = null;
        }
        if ((i9 & 128) != 0) {
            list = null;
        }
        return newsfeedService.newsfeedSearch(str, num, f10, f11, num2, num3, str2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedSearch$lambda-84  reason: not valid java name */
    public static final NewsfeedSearchResponse m1182newsfeedSearch$lambda84(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NewsfeedSearchResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NewsfeedSearchResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest newsfeedSearchExtended$default(NewsfeedService newsfeedService, String str, Integer num, Float f10, Float f11, Integer num2, Integer num3, String str2, List list, int i9, Object obj) {
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
            str2 = null;
        }
        if ((i9 & 128) != 0) {
            list = null;
        }
        return newsfeedService.newsfeedSearchExtended(str, num, f10, f11, num2, num3, str2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedSearchExtended$lambda-95  reason: not valid java name */
    public static final NewsfeedSearchExtendedResponse m1183newsfeedSearchExtended$lambda95(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NewsfeedSearchExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NewsfeedSearchExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest newsfeedUnignoreItem$default(NewsfeedService newsfeedService, String str, UserId userId, int i9, String str2, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            str2 = null;
        }
        return newsfeedService.newsfeedUnignoreItem(str, userId, i9, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedUnignoreItem$lambda-106  reason: not valid java name */
    public static final BaseOkResponse m1184newsfeedUnignoreItem$lambda106(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest newsfeedUnsubscribe$default(NewsfeedService newsfeedService, NewsfeedUnsubscribeType newsfeedUnsubscribeType, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            userId = null;
        }
        return newsfeedService.newsfeedUnsubscribe(newsfeedUnsubscribeType, i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newsfeedUnsubscribe$lambda-109  reason: not valid java name */
    public static final BaseOkResponse m1185newsfeedUnsubscribe$lambda109(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<BaseOkResponse> newsfeedAddBan(@Nullable List<Integer> list, @Nullable List<Integer> list2) {
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.addBan", new ApiResponseParser() { // from class: jf.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1168newsfeedAddBan$lambda0;
                m1168newsfeedAddBan$lambda0 = NewsfeedService.m1168newsfeedAddBan$lambda0(jsonElement);
                return m1168newsfeedAddBan$lambda0;
            }
        });
        if (list != null) {
            newApiRequest.addParam("user_ids", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("group_ids", list2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> newsfeedDeleteBan(@Nullable List<Integer> list, @Nullable List<Integer> list2) {
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.deleteBan", new ApiResponseParser() { // from class: jf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1169newsfeedDeleteBan$lambda4;
                m1169newsfeedDeleteBan$lambda4 = NewsfeedService.m1169newsfeedDeleteBan$lambda4(jsonElement);
                return m1169newsfeedDeleteBan$lambda4;
            }
        });
        if (list != null) {
            newApiRequest.addParam("user_ids", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("group_ids", list2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> newsfeedDeleteList(int i9) {
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.deleteList", new ApiResponseParser() { // from class: jf.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1170newsfeedDeleteList$lambda8;
                m1170newsfeedDeleteList$lambda8 = NewsfeedService.m1170newsfeedDeleteList$lambda8(jsonElement);
                return m1170newsfeedDeleteList$lambda8;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "list_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NewsfeedGetResponse> newsfeedGet(@Nullable List<? extends NewsfeedNewsfeedItemType> list, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str, @Nullable String str2, @Nullable Integer num4, @Nullable List<? extends BaseUserGroupFields> list2, @Nullable String str3) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.get", new ApiResponseParser() { // from class: jf.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NewsfeedGetResponse m1171newsfeedGet$lambda10;
                m1171newsfeedGet$lambda10 = NewsfeedService.m1171newsfeedGet$lambda10(jsonElement);
                return m1171newsfeedGet$lambda10;
            }
        });
        ArrayList arrayList2 = null;
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (NewsfeedNewsfeedItemType newsfeedNewsfeedItemType : list) {
                arrayList.add(newsfeedNewsfeedItemType.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(ShareConstants.WEB_DIALOG_PARAM_FILTERS, (Iterable<?>) arrayList);
        }
        if (bool != null) {
            newApiRequest.addParam("return_banned", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_time", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "end_time", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "max_photos", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("source_ids", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("start_from", str2);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (list2 != null) {
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (BaseUserGroupFields baseUserGroupFields : list2) {
                arrayList2.add(baseUserGroupFields.getValue());
            }
        }
        if (arrayList2 != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList2);
        }
        if (str3 != null) {
            newApiRequest.addParam("section", str3);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NewsfeedGetBannedResponse> newsfeedGetBanned(@Nullable List<? extends UsersFields> list, @Nullable NewsfeedGetBannedNameCase newsfeedGetBannedNameCase) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.getBanned", new ApiResponseParser() { // from class: jf.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NewsfeedGetBannedResponse m1172newsfeedGetBanned$lambda24;
                m1172newsfeedGetBanned$lambda24 = NewsfeedService.m1172newsfeedGetBanned$lambda24(jsonElement);
                return m1172newsfeedGetBanned$lambda24;
            }
        });
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList2.add(usersFields.getValue());
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (newsfeedGetBannedNameCase != null) {
            newApiRequest.addParam("name_case", newsfeedGetBannedNameCase.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NewsfeedGetBannedExtendedResponse> newsfeedGetBannedExtended(@Nullable List<? extends UsersFields> list, @Nullable NewsfeedGetBannedExtendedNameCase newsfeedGetBannedExtendedNameCase) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.getBanned", new ApiResponseParser() { // from class: jf.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NewsfeedGetBannedExtendedResponse m1173newsfeedGetBannedExtended$lambda29;
                m1173newsfeedGetBannedExtended$lambda29 = NewsfeedService.m1173newsfeedGetBannedExtended$lambda29(jsonElement);
                return m1173newsfeedGetBannedExtended$lambda29;
            }
        });
        newApiRequest.addParam("extended", true);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList2.add(usersFields.getValue());
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (newsfeedGetBannedExtendedNameCase != null) {
            newApiRequest.addParam("name_case", newsfeedGetBannedExtendedNameCase.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NewsfeedGetCommentsResponse> newsfeedGetComments(@Nullable Integer num, @Nullable List<? extends NewsfeedCommentsFilters> list, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str2, @Nullable List<? extends BaseUserGroupFields> list2) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.getComments", new ApiResponseParser() { // from class: jf.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NewsfeedGetCommentsResponse m1174newsfeedGetComments$lambda34;
                m1174newsfeedGetComments$lambda34 = NewsfeedService.m1174newsfeedGetComments$lambda34(jsonElement);
                return m1174newsfeedGetComments$lambda34;
            }
        });
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 100);
        }
        ArrayList arrayList2 = null;
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (NewsfeedCommentsFilters newsfeedCommentsFilters : list) {
                arrayList.add(newsfeedCommentsFilters.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(ShareConstants.WEB_DIALOG_PARAM_FILTERS, (Iterable<?>) arrayList);
        }
        if (str != null) {
            newApiRequest.addParam("reposts", str);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_time", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "end_time", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            newApiRequest.addParam("last_comments_count", num4.intValue(), 0, 10);
        }
        if (str2 != null) {
            newApiRequest.addParam("start_from", str2);
        }
        if (list2 != null) {
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (BaseUserGroupFields baseUserGroupFields : list2) {
                arrayList2.add(baseUserGroupFields.getValue());
            }
        }
        if (arrayList2 != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NewsfeedGetListsResponse> newsfeedGetLists(@Nullable List<Integer> list) {
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.getLists", new ApiResponseParser() { // from class: jf.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NewsfeedGetListsResponse m1175newsfeedGetLists$lambda46;
                m1175newsfeedGetLists$lambda46 = NewsfeedService.m1175newsfeedGetLists$lambda46(jsonElement);
                return m1175newsfeedGetLists$lambda46;
            }
        });
        if (list != null) {
            newApiRequest.addParam("list_ids", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NewsfeedGetListsExtendedResponse> newsfeedGetListsExtended(@Nullable List<Integer> list) {
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.getLists", new ApiResponseParser() { // from class: jf.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NewsfeedGetListsExtendedResponse m1176newsfeedGetListsExtended$lambda49;
                m1176newsfeedGetListsExtended$lambda49 = NewsfeedService.m1176newsfeedGetListsExtended$lambda49(jsonElement);
                return m1176newsfeedGetListsExtended$lambda49;
            }
        });
        if (list != null) {
            newApiRequest.addParam("list_ids", list);
        }
        newApiRequest.addParam("extended", true);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NewsfeedGetMentionsResponse> newsfeedGetMentions(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4) {
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.getMentions", new ApiResponseParser() { // from class: jf.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NewsfeedGetMentionsResponse m1177newsfeedGetMentions$lambda52;
                m1177newsfeedGetMentions$lambda52 = NewsfeedService.m1177newsfeedGetMentions$lambda52(jsonElement);
                return m1177newsfeedGetMentions$lambda52;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_time", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "end_time", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num4.intValue(), 0, 50);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NewsfeedGetRecommendedResponse> newsfeedGetRecommended(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str, @Nullable Integer num4, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.getRecommended", new ApiResponseParser() { // from class: jf.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NewsfeedGetRecommendedResponse m1178newsfeedGetRecommended$lambda59;
                m1178newsfeedGetRecommended$lambda59 = NewsfeedService.m1178newsfeedGetRecommended$lambda59(jsonElement);
                return m1178newsfeedGetRecommended$lambda59;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_time", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "end_time", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "max_photos", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("start_from", str);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num4.intValue(), 0, 0, 8, (Object) null);
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
    public final VKRequest<NewsfeedGetSuggestedSourcesResponse> newsfeedGetSuggestedSources(@Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.getSuggestedSources", new ApiResponseParser() { // from class: jf.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NewsfeedGetSuggestedSourcesResponse m1179newsfeedGetSuggestedSources$lambda68;
                m1179newsfeedGetSuggestedSources$lambda68 = NewsfeedService.m1179newsfeedGetSuggestedSources$lambda68(jsonElement);
                return m1179newsfeedGetSuggestedSources$lambda68;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
        }
        if (bool != null) {
            newApiRequest.addParam("shuffle", bool.booleanValue());
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
    public final VKRequest<BaseOkResponse> newsfeedIgnoreItem(@NotNull String type, @Nullable UserId userId, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(type, "type");
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.ignoreItem", new ApiResponseParser() { // from class: jf.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1180newsfeedIgnoreItem$lambda75;
                m1180newsfeedIgnoreItem$lambda75 = NewsfeedService.m1180newsfeedIgnoreItem$lambda75(jsonElement);
                return m1180newsfeedIgnoreItem$lambda75;
            }
        });
        newApiRequest.addParam("type", type);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, num.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> newsfeedSaveList(@NotNull String title, @Nullable Integer num, @Nullable List<UserId> list, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(title, "title");
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.saveList", new ApiResponseParser() { // from class: jf.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1181newsfeedSaveList$lambda79;
                m1181newsfeedSaveList$lambda79 = NewsfeedService.m1181newsfeedSaveList$lambda79(jsonElement);
                return m1181newsfeedSaveList$lambda79;
            }
        });
        newApiRequest.addParam("title", title);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "list_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (list != null) {
            NewApiRequest.addParam$default(newApiRequest, "source_ids", list, 0L, 0L, 12, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("no_reposts", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NewsfeedSearchResponse> newsfeedSearch(@Nullable String str, @Nullable Integer num, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.search", new ApiResponseParser() { // from class: jf.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NewsfeedSearchResponse m1182newsfeedSearch$lambda84;
                m1182newsfeedSearch$lambda84 = NewsfeedService.m1182newsfeedSearch$lambda84(jsonElement);
                return m1182newsfeedSearch$lambda84;
            }
        });
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 200);
        }
        if (f10 != null) {
            newApiRequest.addParam("latitude", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("longitude", f11.floatValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_time", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "end_time", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (str2 != null) {
            newApiRequest.addParam("start_from", str2);
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
    public final VKRequest<NewsfeedSearchExtendedResponse> newsfeedSearchExtended(@Nullable String str, @Nullable Integer num, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable List<? extends BaseUserGroupFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.search", new ApiResponseParser() { // from class: jf.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NewsfeedSearchExtendedResponse m1183newsfeedSearchExtended$lambda95;
                m1183newsfeedSearchExtended$lambda95 = NewsfeedService.m1183newsfeedSearchExtended$lambda95(jsonElement);
                return m1183newsfeedSearchExtended$lambda95;
            }
        });
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        newApiRequest.addParam("extended", true);
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 200);
        }
        if (f10 != null) {
            newApiRequest.addParam("latitude", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("longitude", f11.floatValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_time", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "end_time", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (str2 != null) {
            newApiRequest.addParam("start_from", str2);
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
    public final VKRequest<BaseOkResponse> newsfeedUnignoreItem(@NotNull String type, @NotNull UserId ownerId, int i9, @Nullable String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.unignoreItem", new ApiResponseParser() { // from class: jf.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1184newsfeedUnignoreItem$lambda106;
                m1184newsfeedUnignoreItem$lambda106 = NewsfeedService.m1184newsfeedUnignoreItem$lambda106(jsonElement);
                return m1184newsfeedUnignoreItem$lambda106;
            }
        });
        newApiRequest.addParam("type", type);
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("track_code", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> newsfeedUnsubscribe(@NotNull NewsfeedUnsubscribeType type, int i9, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(type, "type");
        NewApiRequest newApiRequest = new NewApiRequest("newsfeed.unsubscribe", new ApiResponseParser() { // from class: jf.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1185newsfeedUnsubscribe$lambda109;
                m1185newsfeedUnsubscribe$lambda109 = NewsfeedService.m1185newsfeedUnsubscribe$lambda109(jsonElement);
                return m1185newsfeedUnsubscribe$lambda109;
            }
        });
        newApiRequest.addParam("type", type.getValue());
        NewApiRequest.addParam$default(newApiRequest, EventTrackingUtils.ITEM_ID, i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }
}
