package com.vk.sdk.api.friends;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.utils.Contants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.friends.dto.FriendsAddListResponse;
import com.vk.sdk.api.friends.dto.FriendsAddResponse;
import com.vk.sdk.api.friends.dto.FriendsDeleteResponse;
import com.vk.sdk.api.friends.dto.FriendsFriendExtendedStatus;
import com.vk.sdk.api.friends.dto.FriendsFriendStatus;
import com.vk.sdk.api.friends.dto.FriendsGetFieldsResponse;
import com.vk.sdk.api.friends.dto.FriendsGetListsResponse;
import com.vk.sdk.api.friends.dto.FriendsGetNameCase;
import com.vk.sdk.api.friends.dto.FriendsGetOrder;
import com.vk.sdk.api.friends.dto.FriendsGetRequestsResponse;
import com.vk.sdk.api.friends.dto.FriendsGetRequestsSort;
import com.vk.sdk.api.friends.dto.FriendsGetSuggestionsFilter;
import com.vk.sdk.api.friends.dto.FriendsGetSuggestionsNameCase;
import com.vk.sdk.api.friends.dto.FriendsGetSuggestionsResponse;
import com.vk.sdk.api.friends.dto.FriendsSearchNameCase;
import com.vk.sdk.api.friends.dto.FriendsSearchResponse;
import com.vk.sdk.api.friends.dto.FriendsUserXtrPhone;
import com.vk.sdk.api.users.dto.UsersFields;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J5\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ&\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00042\u0006\u0010\u000f\u001a\u00020\t2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0011J1\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00110\u00042\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u00112\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0015J1\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00110\u00042\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u00112\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0015J\u0018\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0004J\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00042\u0006\u0010\u001d\u001a\u00020\u001eJ&\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u0011JV\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00042\u0006\u0010\u001d\u001a\u00020\u001e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00112\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00112\u0010\b\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0011Jw\u0010$\u001a\b\u0012\u0004\u0012\u00020%0\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u001e2\u0010\b\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00112\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010/J\u0012\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00110\u0004J6\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002020\u00110\u00042\u0010\b\u0002\u00103\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00112\u0010\b\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u0011J)\u00104\u001a\b\u0012\u0004\u0012\u0002050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u00107Je\u00108\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00110\u00042\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00112\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u001e¢\u0006\u0002\u0010<J_\u0010=\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00110\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u001e¢\u0006\u0002\u0010?J#\u0010@\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00110\u00042\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u001e¢\u0006\u0002\u0010AJ\u0083\u0001\u0010B\u001a\b\u0012\u0004\u0012\u00020C0\u00042\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010F\u001a\u0004\u0018\u00010G2\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u0011¢\u0006\u0002\u0010JJY\u0010K\u001a\b\u0012\u0004\u0012\u00020L0\u00042\u0010\b\u0002\u0010M\u001a\n\u0012\u0004\u0012\u00020N\u0018\u00010\u00112\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u001e2\u0010\b\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00112\n\b\u0002\u0010,\u001a\u0004\u0018\u00010O¢\u0006\u0002\u0010PJ_\u0010Q\u001a\b\u0012\u0004\u0012\u00020R0\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00112\n\b\u0002\u0010,\u001a\u0004\u0018\u00010T2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u001e¢\u0006\u0002\u0010U¨\u0006V"}, d2 = {"Lcom/vk/sdk/api/friends/FriendsService;", "", "()V", "friendsAdd", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/friends/dto/FriendsAddResponse;", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", ViewHierarchyConstants.TEXT_KEY, "", "follow", "", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "friendsAddList", "Lcom/vk/sdk/api/friends/dto/FriendsAddListResponse;", "name", "userIds", "", "friendsAreFriends", "Lcom/vk/sdk/api/friends/dto/FriendsFriendStatus;", "needSign", "(Ljava/util/List;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "friendsAreFriendsExtended", "Lcom/vk/sdk/api/friends/dto/FriendsFriendExtendedStatus;", "friendsDelete", "Lcom/vk/sdk/api/friends/dto/FriendsDeleteResponse;", "friendsDeleteAllRequests", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "friendsDeleteList", "listId", "", "friendsEdit", "listIds", "friendsEditList", "addUserIds", "deleteUserIds", "friendsGet", "Lcom/vk/sdk/api/friends/dto/FriendsGetFieldsResponse;", "order", "Lcom/vk/sdk/api/friends/dto/FriendsGetOrder;", AnimatedPasterJsonConfig.CONFIG_COUNT, TypedValues.CycleType.S_WAVE_OFFSET, GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/users/dto/UsersFields;", "nameCase", "Lcom/vk/sdk/api/friends/dto/FriendsGetNameCase;", "ref", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/friends/dto/FriendsGetOrder;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/friends/dto/FriendsGetNameCase;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "friendsGetAppUsers", "friendsGetByPhones", "Lcom/vk/sdk/api/friends/dto/FriendsUserXtrPhone;", "phones", "friendsGetLists", "Lcom/vk/sdk/api/friends/dto/FriendsGetListsResponse;", "returnSystem", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "friendsGetMutual", "sourceUid", "targetUid", "targetUids", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "friendsGetOnline", "onlineMobile", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "friendsGetRecent", "(Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "friendsGetRequests", "Lcom/vk/sdk/api/friends/dto/FriendsGetRequestsResponse;", "needMutual", "out", "sort", "Lcom/vk/sdk/api/friends/dto/FriendsGetRequestsSort;", "needViewed", "suggested", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/friends/dto/FriendsGetRequestsSort;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "friendsGetSuggestions", "Lcom/vk/sdk/api/friends/dto/FriendsGetSuggestionsResponse;", "filter", "Lcom/vk/sdk/api/friends/dto/FriendsGetSuggestionsFilter;", "Lcom/vk/sdk/api/friends/dto/FriendsGetSuggestionsNameCase;", "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/friends/dto/FriendsGetSuggestionsNameCase;)Lcom/vk/api/sdk/requests/VKRequest;", "friendsSearch", "Lcom/vk/sdk/api/friends/dto/FriendsSearchResponse;", "q", "Lcom/vk/sdk/api/friends/dto/FriendsSearchNameCase;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/util/List;Lcom/vk/sdk/api/friends/dto/FriendsSearchNameCase;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FriendsService {
    public static /* synthetic */ VKRequest friendsAdd$default(FriendsService friendsService, UserId userId, String str, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            bool = null;
        }
        return friendsService.friendsAdd(userId, str, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsAdd$lambda-0  reason: not valid java name */
    public static final FriendsAddResponse m1001friendsAdd$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FriendsAddResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FriendsAddResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest friendsAddList$default(FriendsService friendsService, String str, List list, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            list = null;
        }
        return friendsService.friendsAddList(str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsAddList$lambda-5  reason: not valid java name */
    public static final FriendsAddListResponse m1002friendsAddList$lambda5(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FriendsAddListResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FriendsAddListResponse.class);
    }

    public static /* synthetic */ VKRequest friendsAreFriends$default(FriendsService friendsService, List list, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bool = null;
        }
        return friendsService.friendsAreFriends(list, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsAreFriends$lambda-8  reason: not valid java name */
    public static final List m1003friendsAreFriends$lambda8(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends FriendsFriendStatus>>() { // from class: com.vk.sdk.api.friends.FriendsService$friendsAreFriends$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest friendsAreFriendsExtended$default(FriendsService friendsService, List list, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bool = null;
        }
        return friendsService.friendsAreFriendsExtended(list, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsAreFriendsExtended$lambda-11  reason: not valid java name */
    public static final List m1004friendsAreFriendsExtended$lambda11(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends FriendsFriendExtendedStatus>>() { // from class: com.vk.sdk.api.friends.FriendsService$friendsAreFriendsExtended$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest friendsDelete$default(FriendsService friendsService, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        return friendsService.friendsDelete(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsDelete$lambda-14  reason: not valid java name */
    public static final FriendsDeleteResponse m1005friendsDelete$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FriendsDeleteResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FriendsDeleteResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsDeleteAllRequests$lambda-17  reason: not valid java name */
    public static final BaseOkResponse m1006friendsDeleteAllRequests$lambda17(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson…seOkResponse::class.java)");
        return (BaseOkResponse) fromJson;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsDeleteList$lambda-18  reason: not valid java name */
    public static final BaseOkResponse m1007friendsDeleteList$lambda18(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest friendsEdit$default(FriendsService friendsService, UserId userId, List list, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            list = null;
        }
        return friendsService.friendsEdit(userId, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsEdit$lambda-20  reason: not valid java name */
    public static final BaseOkResponse m1008friendsEdit$lambda20(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsEditList$lambda-23  reason: not valid java name */
    public static final BaseOkResponse m1009friendsEditList$lambda23(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest friendsGet$default(FriendsService friendsService, UserId userId, FriendsGetOrder friendsGetOrder, Integer num, Integer num2, Integer num3, List list, FriendsGetNameCase friendsGetNameCase, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            friendsGetOrder = null;
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
            list = null;
        }
        if ((i9 & 64) != 0) {
            friendsGetNameCase = null;
        }
        if ((i9 & 128) != 0) {
            str = null;
        }
        return friendsService.friendsGet(userId, friendsGetOrder, num, num2, num3, list, friendsGetNameCase, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsGet$lambda-29  reason: not valid java name */
    public static final FriendsGetFieldsResponse m1010friendsGet$lambda29(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FriendsGetFieldsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FriendsGetFieldsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsGetAppUsers$lambda-40  reason: not valid java name */
    public static final List m1011friendsGetAppUsers$lambda40(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends UserId>>() { // from class: com.vk.sdk.api.friends.FriendsService$friendsGetAppUsers$1$typeToken$1
        }.getType());
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson…t<UserId>>(it, typeToken)");
        return (List) fromJson;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest friendsGetByPhones$default(FriendsService friendsService, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            list2 = null;
        }
        return friendsService.friendsGetByPhones(list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsGetByPhones$lambda-41  reason: not valid java name */
    public static final List m1012friendsGetByPhones$lambda41(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends FriendsUserXtrPhone>>() { // from class: com.vk.sdk.api.friends.FriendsService$friendsGetByPhones$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest friendsGetLists$default(FriendsService friendsService, UserId userId, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            bool = null;
        }
        return friendsService.friendsGetLists(userId, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsGetLists$lambda-46  reason: not valid java name */
    public static final FriendsGetListsResponse m1013friendsGetLists$lambda46(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FriendsGetListsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FriendsGetListsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest friendsGetMutual$default(FriendsService friendsService, UserId userId, UserId userId2, List list, String str, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            userId2 = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        if ((i9 & 8) != 0) {
            str = null;
        }
        if ((i9 & 16) != 0) {
            num = null;
        }
        if ((i9 & 32) != 0) {
            num2 = null;
        }
        return friendsService.friendsGetMutual(userId, userId2, list, str, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsGetMutual$lambda-50  reason: not valid java name */
    public static final List m1014friendsGetMutual$lambda50(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends UserId>>() { // from class: com.vk.sdk.api.friends.FriendsService$friendsGetMutual$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest friendsGetOnline$default(FriendsService friendsService, UserId userId, Integer num, Boolean bool, String str, Integer num2, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            bool = null;
        }
        if ((i9 & 8) != 0) {
            str = null;
        }
        if ((i9 & 16) != 0) {
            num2 = null;
        }
        if ((i9 & 32) != 0) {
            num3 = null;
        }
        return friendsService.friendsGetOnline(userId, num, bool, str, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsGetOnline$lambda-58  reason: not valid java name */
    public static final List m1015friendsGetOnline$lambda58(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends UserId>>() { // from class: com.vk.sdk.api.friends.FriendsService$friendsGetOnline$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest friendsGetRecent$default(FriendsService friendsService, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        return friendsService.friendsGetRecent(num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsGetRecent$lambda-66  reason: not valid java name */
    public static final List m1016friendsGetRecent$lambda66(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends Integer>>() { // from class: com.vk.sdk.api.friends.FriendsService$friendsGetRecent$1$typeToken$1
        }.getType());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest friendsGetRequests$default(FriendsService friendsService, Integer num, Integer num2, Boolean bool, Boolean bool2, FriendsGetRequestsSort friendsGetRequestsSort, Boolean bool3, Boolean bool4, String str, List list, int i9, Object obj) {
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
            bool2 = null;
        }
        if ((i9 & 16) != 0) {
            friendsGetRequestsSort = null;
        }
        if ((i9 & 32) != 0) {
            bool3 = null;
        }
        if ((i9 & 64) != 0) {
            bool4 = null;
        }
        if ((i9 & 128) != 0) {
            str = null;
        }
        if ((i9 & 256) != 0) {
            list = null;
        }
        return friendsService.friendsGetRequests(num, num2, bool, bool2, friendsGetRequestsSort, bool3, bool4, str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsGetRequests$lambda-69  reason: not valid java name */
    public static final FriendsGetRequestsResponse m1017friendsGetRequests$lambda69(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FriendsGetRequestsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FriendsGetRequestsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest friendsGetSuggestions$default(FriendsService friendsService, List list, Integer num, Integer num2, List list2, FriendsGetSuggestionsNameCase friendsGetSuggestionsNameCase, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            list2 = null;
        }
        if ((i9 & 16) != 0) {
            friendsGetSuggestionsNameCase = null;
        }
        return friendsService.friendsGetSuggestions(list, num, num2, list2, friendsGetSuggestionsNameCase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsGetSuggestions$lambda-81  reason: not valid java name */
    public static final FriendsGetSuggestionsResponse m1018friendsGetSuggestions$lambda81(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FriendsGetSuggestionsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FriendsGetSuggestionsResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest friendsSearch$default(FriendsService friendsService, UserId userId, String str, List list, FriendsSearchNameCase friendsSearchNameCase, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        if ((i9 & 8) != 0) {
            friendsSearchNameCase = null;
        }
        if ((i9 & 16) != 0) {
            num = null;
        }
        if ((i9 & 32) != 0) {
            num2 = null;
        }
        return friendsService.friendsSearch(userId, str, list, friendsSearchNameCase, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: friendsSearch$lambda-90  reason: not valid java name */
    public static final FriendsSearchResponse m1019friendsSearch$lambda90(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FriendsSearchResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FriendsSearchResponse.class);
    }

    @NotNull
    public final VKRequest<FriendsAddResponse> friendsAdd(@Nullable UserId userId, @Nullable String str, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("friends.add", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FriendsAddResponse m1001friendsAdd$lambda0;
                m1001friendsAdd$lambda0 = FriendsService.m1001friendsAdd$lambda0(jsonElement);
                return m1001friendsAdd$lambda0;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam(ViewHierarchyConstants.TEXT_KEY, str);
        }
        if (bool != null) {
            newApiRequest.addParam("follow", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FriendsAddListResponse> friendsAddList(@NotNull String name, @Nullable List<UserId> list) {
        Intrinsics.checkNotNullParameter(name, "name");
        NewApiRequest newApiRequest = new NewApiRequest("friends.addList", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FriendsAddListResponse m1002friendsAddList$lambda5;
                m1002friendsAddList$lambda5 = FriendsService.m1002friendsAddList$lambda5(jsonElement);
                return m1002friendsAddList$lambda5;
            }
        });
        newApiRequest.addParam("name", name);
        if (list != null) {
            NewApiRequest.addParam$default(newApiRequest, "user_ids", list, 0L, 0L, 12, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<FriendsFriendStatus>> friendsAreFriends(@NotNull List<UserId> userIds, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(userIds, "userIds");
        NewApiRequest newApiRequest = new NewApiRequest("friends.areFriends", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1003friendsAreFriends$lambda8;
                m1003friendsAreFriends$lambda8 = FriendsService.m1003friendsAreFriends$lambda8(jsonElement);
                return m1003friendsAreFriends$lambda8;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "user_ids", userIds, 0L, 0L, 12, (Object) null);
        if (bool != null) {
            newApiRequest.addParam("need_sign", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<FriendsFriendExtendedStatus>> friendsAreFriendsExtended(@NotNull List<UserId> userIds, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(userIds, "userIds");
        NewApiRequest newApiRequest = new NewApiRequest("friends.areFriends", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1004friendsAreFriendsExtended$lambda11;
                m1004friendsAreFriendsExtended$lambda11 = FriendsService.m1004friendsAreFriendsExtended$lambda11(jsonElement);
                return m1004friendsAreFriendsExtended$lambda11;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "user_ids", userIds, 0L, 0L, 12, (Object) null);
        if (bool != null) {
            newApiRequest.addParam("need_sign", bool.booleanValue());
        }
        newApiRequest.addParam("extended", true);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FriendsDeleteResponse> friendsDelete(@Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("friends.delete", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FriendsDeleteResponse m1005friendsDelete$lambda14;
                m1005friendsDelete$lambda14 = FriendsService.m1005friendsDelete$lambda14(jsonElement);
                return m1005friendsDelete$lambda14;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> friendsDeleteAllRequests() {
        return new NewApiRequest("friends.deleteAllRequests", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1006friendsDeleteAllRequests$lambda17;
                m1006friendsDeleteAllRequests$lambda17 = FriendsService.m1006friendsDeleteAllRequests$lambda17(jsonElement);
                return m1006friendsDeleteAllRequests$lambda17;
            }
        });
    }

    @NotNull
    public final VKRequest<BaseOkResponse> friendsDeleteList(int i9) {
        NewApiRequest newApiRequest = new NewApiRequest("friends.deleteList", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1007friendsDeleteList$lambda18;
                m1007friendsDeleteList$lambda18 = FriendsService.m1007friendsDeleteList$lambda18(jsonElement);
                return m1007friendsDeleteList$lambda18;
            }
        });
        newApiRequest.addParam("list_id", i9, 0, 24);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> friendsEdit(@NotNull UserId userId, @Nullable List<Integer> list) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("friends.edit", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1008friendsEdit$lambda20;
                m1008friendsEdit$lambda20 = FriendsService.m1008friendsEdit$lambda20(jsonElement);
                return m1008friendsEdit$lambda20;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        if (list != null) {
            newApiRequest.addParam("list_ids", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> friendsEditList(int i9, @Nullable String str, @Nullable List<UserId> list, @Nullable List<UserId> list2, @Nullable List<UserId> list3) {
        NewApiRequest newApiRequest = new NewApiRequest("friends.editList", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1009friendsEditList$lambda23;
                m1009friendsEditList$lambda23 = FriendsService.m1009friendsEditList$lambda23(jsonElement);
                return m1009friendsEditList$lambda23;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "list_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("name", str);
        }
        if (list != null) {
            NewApiRequest.addParam$default(newApiRequest, "user_ids", list, 0L, 0L, 12, (Object) null);
        }
        if (list2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "add_user_ids", list2, 0L, 0L, 12, (Object) null);
        }
        if (list3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "delete_user_ids", list3, 0L, 0L, 12, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FriendsGetFieldsResponse> friendsGet(@Nullable UserId userId, @Nullable FriendsGetOrder friendsGetOrder, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<? extends UsersFields> list, @Nullable FriendsGetNameCase friendsGetNameCase, @Nullable String str) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("friends.get", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.s
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FriendsGetFieldsResponse m1010friendsGet$lambda29;
                m1010friendsGet$lambda29 = FriendsService.m1010friendsGet$lambda29(jsonElement);
                return m1010friendsGet$lambda29;
            }
        });
        if (userId != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, userId);
        }
        if (friendsGetOrder != null) {
            newApiRequest.addParam("order", friendsGetOrder.getValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "list_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (friendsGetNameCase != null) {
            newApiRequest.addParam("name_case", friendsGetNameCase.getValue());
        }
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "ref", str, 0, 255, 4, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<UserId>> friendsGetAppUsers() {
        return new NewApiRequest("friends.getAppUsers", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1011friendsGetAppUsers$lambda40;
                m1011friendsGetAppUsers$lambda40 = FriendsService.m1011friendsGetAppUsers$lambda40(jsonElement);
                return m1011friendsGetAppUsers$lambda40;
            }
        });
    }

    @NotNull
    public final VKRequest<List<FriendsUserXtrPhone>> friendsGetByPhones(@Nullable List<String> list, @Nullable List<? extends UsersFields> list2) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("friends.getByPhones", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1012friendsGetByPhones$lambda41;
                m1012friendsGetByPhones$lambda41 = FriendsService.m1012friendsGetByPhones$lambda41(jsonElement);
                return m1012friendsGetByPhones$lambda41;
            }
        });
        if (list != null) {
            newApiRequest.addParam("phones", list);
        }
        if (list2 == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list2) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FriendsGetListsResponse> friendsGetLists(@Nullable UserId userId, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("friends.getLists", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FriendsGetListsResponse m1013friendsGetLists$lambda46;
                m1013friendsGetLists$lambda46 = FriendsService.m1013friendsGetLists$lambda46(jsonElement);
                return m1013friendsGetLists$lambda46;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("return_system", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<UserId>> friendsGetMutual(@Nullable UserId userId, @Nullable UserId userId2, @Nullable List<UserId> list, @Nullable String str, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("friends.getMutual", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1014friendsGetMutual$lambda50;
                m1014friendsGetMutual$lambda50 = FriendsService.m1014friendsGetMutual$lambda50(jsonElement);
                return m1014friendsGetMutual$lambda50;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "source_uid", userId, 0L, 0L, 8, (Object) null);
        }
        if (userId2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "target_uid", userId2, 0L, 0L, 8, (Object) null);
        }
        if (list != null) {
            NewApiRequest.addParam$default(newApiRequest, "target_uids", list, 0L, 0L, 12, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("order", str);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<UserId>> friendsGetOnline(@Nullable UserId userId, @Nullable Integer num, @Nullable Boolean bool, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("friends.getOnline", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1015friendsGetOnline$lambda58;
                m1015friendsGetOnline$lambda58 = FriendsService.m1015friendsGetOnline$lambda58(jsonElement);
                return m1015friendsGetOnline$lambda58;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "list_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("online_mobile", bool.booleanValue());
        }
        if (str != null) {
            newApiRequest.addParam("order", str);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num3.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<Integer>> friendsGetRecent(@Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("friends.getRecent", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1016friendsGetRecent$lambda66;
                m1016friendsGetRecent$lambda66 = FriendsService.m1016friendsGetRecent$lambda66(jsonElement);
                return m1016friendsGetRecent$lambda66;
            }
        });
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FriendsGetRequestsResponse> friendsGetRequests(@Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable FriendsGetRequestsSort friendsGetRequestsSort, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable String str, @Nullable List<? extends UsersFields> list) {
        int collectionSizeOrDefault;
        ArrayList arrayList;
        NewApiRequest newApiRequest = new NewApiRequest("friends.getRequests", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FriendsGetRequestsResponse m1017friendsGetRequests$lambda69;
                m1017friendsGetRequests$lambda69 = FriendsService.m1017friendsGetRequests$lambda69(jsonElement);
                return m1017friendsGetRequests$lambda69;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
        }
        if (bool != null) {
            newApiRequest.addParam("need_mutual", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("out", bool2.booleanValue());
        }
        if (friendsGetRequestsSort != null) {
            newApiRequest.addParam("sort", friendsGetRequestsSort.getValue());
        }
        if (bool3 != null) {
            newApiRequest.addParam("need_viewed", bool3.booleanValue());
        }
        if (bool4 != null) {
            newApiRequest.addParam("suggested", bool4.booleanValue());
        }
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "ref", str, 0, 255, 4, (Object) null);
        }
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
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FriendsGetSuggestionsResponse> friendsGetSuggestions(@Nullable List<? extends FriendsGetSuggestionsFilter> list, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends UsersFields> list2, @Nullable FriendsGetSuggestionsNameCase friendsGetSuggestionsNameCase) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        NewApiRequest newApiRequest = new NewApiRequest("friends.getSuggestions", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FriendsGetSuggestionsResponse m1018friendsGetSuggestions$lambda81;
                m1018friendsGetSuggestions$lambda81 = FriendsService.m1018friendsGetSuggestions$lambda81(jsonElement);
                return m1018friendsGetSuggestions$lambda81;
            }
        });
        ArrayList arrayList2 = null;
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (FriendsGetSuggestionsFilter friendsGetSuggestionsFilter : list) {
                arrayList.add(friendsGetSuggestionsFilter.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam("filter", (Iterable<?>) arrayList);
        }
        if (num != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 500);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (list2 != null) {
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (UsersFields usersFields : list2) {
                arrayList2.add(usersFields.getValue());
            }
        }
        if (arrayList2 != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList2);
        }
        if (friendsGetSuggestionsNameCase != null) {
            newApiRequest.addParam("name_case", friendsGetSuggestionsNameCase.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FriendsSearchResponse> friendsSearch(@Nullable UserId userId, @Nullable String str, @Nullable List<? extends UsersFields> list, @Nullable FriendsSearchNameCase friendsSearchNameCase, @Nullable Integer num, @Nullable Integer num2) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("friends.search", new ApiResponseParser() { // from class: com.vk.sdk.api.friends.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FriendsSearchResponse m1019friendsSearch$lambda90;
                m1019friendsSearch$lambda90 = FriendsService.m1019friendsSearch$lambda90(jsonElement);
                return m1019friendsSearch$lambda90;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        if (friendsSearchNameCase != null) {
            newApiRequest.addParam("name_case", friendsSearchNameCase.getValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
        }
        return newApiRequest;
    }
}
