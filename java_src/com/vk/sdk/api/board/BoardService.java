package com.vk.sdk.api.board;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.JsonElement;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.board.BoardService;
import com.vk.sdk.api.board.dto.BoardGetCommentsExtendedResponse;
import com.vk.sdk.api.board.dto.BoardGetCommentsExtendedSort;
import com.vk.sdk.api.board.dto.BoardGetCommentsResponse;
import com.vk.sdk.api.board.dto.BoardGetCommentsSort;
import com.vk.sdk.api.board.dto.BoardGetTopicsExtendedOrder;
import com.vk.sdk.api.board.dto.BoardGetTopicsExtendedPreview;
import com.vk.sdk.api.board.dto.BoardGetTopicsExtendedResponse;
import com.vk.sdk.api.board.dto.BoardGetTopicsOrder;
import com.vk.sdk.api.board.dto.BoardGetTopicsPreview;
import com.vk.sdk.api.board.dto.BoardGetTopicsResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JK\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fJ\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005Jc\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00052\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000e2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0017J$\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005J\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0005JB\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000eJ$\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tJ\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005J]\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00052\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%¢\u0006\u0002\u0010&J]\u0010'\u001a\b\u0012\u0004\u0012\u00020(0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00052\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010$\u001a\u0004\u0018\u00010)¢\u0006\u0002\u0010*Jg\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0010\b\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u00103Jg\u00104\u001a\b\u0012\u0004\u0012\u0002050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0010\b\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e2\n\b\u0002\u0010.\u001a\u0004\u0018\u0001062\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u00100\u001a\u0004\u0018\u0001072\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u00108J\u001c\u00109\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005J$\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005J\u001c\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005¨\u0006<"}, d2 = {"Lcom/vk/sdk/api/board/BoardService;", "", "()V", "boardAddTopic", "Lcom/vk/api/sdk/requests/VKRequest;", "", "groupId", "Lcom/vk/dto/common/id/UserId;", "title", "", ViewHierarchyConstants.TEXT_KEY, "fromGroup", "", "attachments", "", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "boardCloseTopic", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "topicId", "boardCreateComment", "message", "stickerId", TPDownloadProxyEnum.USER_GUID, "(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "boardDeleteComment", "commentId", "boardDeleteTopic", "boardEditComment", "boardEditTopic", "boardFixTopic", "boardGetComments", "Lcom/vk/sdk/api/board/dto/BoardGetCommentsResponse;", "needLikes", "startCommentId", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "sort", "Lcom/vk/sdk/api/board/dto/BoardGetCommentsSort;", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/board/dto/BoardGetCommentsSort;)Lcom/vk/api/sdk/requests/VKRequest;", "boardGetCommentsExtended", "Lcom/vk/sdk/api/board/dto/BoardGetCommentsExtendedResponse;", "Lcom/vk/sdk/api/board/dto/BoardGetCommentsExtendedSort;", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/board/dto/BoardGetCommentsExtendedSort;)Lcom/vk/api/sdk/requests/VKRequest;", "boardGetTopics", "Lcom/vk/sdk/api/board/dto/BoardGetTopicsResponse;", "topicIds", "order", "Lcom/vk/sdk/api/board/dto/BoardGetTopicsOrder;", "preview", "Lcom/vk/sdk/api/board/dto/BoardGetTopicsPreview;", "previewLength", "(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Lcom/vk/sdk/api/board/dto/BoardGetTopicsOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/board/dto/BoardGetTopicsPreview;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "boardGetTopicsExtended", "Lcom/vk/sdk/api/board/dto/BoardGetTopicsExtendedResponse;", "Lcom/vk/sdk/api/board/dto/BoardGetTopicsExtendedOrder;", "Lcom/vk/sdk/api/board/dto/BoardGetTopicsExtendedPreview;", "(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Lcom/vk/sdk/api/board/dto/BoardGetTopicsExtendedOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/board/dto/BoardGetTopicsExtendedPreview;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "boardOpenTopic", "boardRestoreComment", "boardUnfixTopic", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BoardService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardAddTopic$lambda-0  reason: not valid java name */
    public static final Integer m933boardAddTopic$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardCloseTopic$lambda-5  reason: not valid java name */
    public static final BaseOkResponse m934boardCloseTopic$lambda5(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardCreateComment$lambda-7  reason: not valid java name */
    public static final Integer m935boardCreateComment$lambda7(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardDeleteComment$lambda-14  reason: not valid java name */
    public static final BaseOkResponse m936boardDeleteComment$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardDeleteTopic$lambda-16  reason: not valid java name */
    public static final BaseOkResponse m937boardDeleteTopic$lambda16(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardEditComment$lambda-18  reason: not valid java name */
    public static final BaseOkResponse m938boardEditComment$lambda18(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardEditTopic$lambda-22  reason: not valid java name */
    public static final BaseOkResponse m939boardEditTopic$lambda22(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardFixTopic$lambda-24  reason: not valid java name */
    public static final BaseOkResponse m940boardFixTopic$lambda24(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardGetComments$lambda-26  reason: not valid java name */
    public static final BoardGetCommentsResponse m941boardGetComments$lambda26(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BoardGetCommentsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BoardGetCommentsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardGetCommentsExtended$lambda-33  reason: not valid java name */
    public static final BoardGetCommentsExtendedResponse m942boardGetCommentsExtended$lambda33(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BoardGetCommentsExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BoardGetCommentsExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardGetTopics$lambda-40  reason: not valid java name */
    public static final BoardGetTopicsResponse m943boardGetTopics$lambda40(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BoardGetTopicsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BoardGetTopicsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardGetTopicsExtended$lambda-48  reason: not valid java name */
    public static final BoardGetTopicsExtendedResponse m944boardGetTopicsExtended$lambda48(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BoardGetTopicsExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BoardGetTopicsExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardOpenTopic$lambda-56  reason: not valid java name */
    public static final BaseOkResponse m945boardOpenTopic$lambda56(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardRestoreComment$lambda-58  reason: not valid java name */
    public static final BaseOkResponse m946boardRestoreComment$lambda58(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: boardUnfixTopic$lambda-60  reason: not valid java name */
    public static final BaseOkResponse m947boardUnfixTopic$lambda60(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<Integer> boardAddTopic(@NotNull UserId groupId, @NotNull String title, @Nullable String str, @Nullable Boolean bool, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(title, "title");
        NewApiRequest newApiRequest = new NewApiRequest("board.addTopic", new ApiResponseParser() { // from class: bf.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m933boardAddTopic$lambda0;
                m933boardAddTopic$lambda0 = BoardService.m933boardAddTopic$lambda0(jsonElement);
                return m933boardAddTopic$lambda0;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        newApiRequest.addParam("title", title);
        if (str != null) {
            newApiRequest.addParam(ViewHierarchyConstants.TEXT_KEY, str);
        }
        if (bool != null) {
            newApiRequest.addParam("from_group", bool.booleanValue());
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> boardCloseTopic(int i9, int i10) {
        NewApiRequest newApiRequest = new NewApiRequest("board.closeTopic", new ApiResponseParser() { // from class: bf.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m934boardCloseTopic$lambda5;
                m934boardCloseTopic$lambda5 = BoardService.m934boardCloseTopic$lambda5(jsonElement);
                return m934boardCloseTopic$lambda5;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i10, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> boardCreateComment(@NotNull UserId groupId, int i9, @Nullable String str, @Nullable List<String> list, @Nullable Boolean bool, @Nullable Integer num, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("board.createComment", new ApiResponseParser() { // from class: bf.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m935boardCreateComment$lambda7;
                m935boardCreateComment$lambda7 = BoardService.m935boardCreateComment$lambda7(jsonElement);
                return m935boardCreateComment$lambda7;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
        }
        if (bool != null) {
            newApiRequest.addParam("from_group", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "sticker_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (str2 != null) {
            newApiRequest.addParam(TPDownloadProxyEnum.USER_GUID, str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> boardDeleteComment(@NotNull UserId groupId, int i9, int i10) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("board.deleteComment", new ApiResponseParser() { // from class: bf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m936boardDeleteComment$lambda14;
                m936boardDeleteComment$lambda14 = BoardService.m936boardDeleteComment$lambda14(jsonElement);
                return m936boardDeleteComment$lambda14;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i9, 1, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i10, 1, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> boardDeleteTopic(@NotNull UserId groupId, int i9) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("board.deleteTopic", new ApiResponseParser() { // from class: bf.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m937boardDeleteTopic$lambda16;
                m937boardDeleteTopic$lambda16 = BoardService.m937boardDeleteTopic$lambda16(jsonElement);
                return m937boardDeleteTopic$lambda16;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> boardEditComment(@NotNull UserId groupId, int i9, int i10, @Nullable String str, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("board.editComment", new ApiResponseParser() { // from class: bf.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m938boardEditComment$lambda18;
                m938boardEditComment$lambda18 = BoardService.m938boardEditComment$lambda18(jsonElement);
                return m938boardEditComment$lambda18;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i10, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> boardEditTopic(@NotNull UserId groupId, int i9, @NotNull String title) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(title, "title");
        NewApiRequest newApiRequest = new NewApiRequest("board.editTopic", new ApiResponseParser() { // from class: bf.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m939boardEditTopic$lambda22;
                m939boardEditTopic$lambda22 = BoardService.m939boardEditTopic$lambda22(jsonElement);
                return m939boardEditTopic$lambda22;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("title", title);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> boardFixTopic(int i9, int i10) {
        NewApiRequest newApiRequest = new NewApiRequest("board.fixTopic", new ApiResponseParser() { // from class: bf.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m940boardFixTopic$lambda24;
                m940boardFixTopic$lambda24 = BoardService.m940boardFixTopic$lambda24(jsonElement);
                return m940boardFixTopic$lambda24;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i10, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BoardGetCommentsResponse> boardGetComments(@NotNull UserId groupId, int i9, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable BoardGetCommentsSort boardGetCommentsSort) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("board.getComments", new ApiResponseParser() { // from class: bf.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BoardGetCommentsResponse m941boardGetComments$lambda26;
                m941boardGetComments$lambda26 = BoardService.m941boardGetComments$lambda26(jsonElement);
                return m941boardGetComments$lambda26;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i9, 0, 0, 8, (Object) null);
        if (bool != null) {
            newApiRequest.addParam("need_likes", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_comment_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue());
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 100);
        }
        if (boardGetCommentsSort != null) {
            newApiRequest.addParam("sort", boardGetCommentsSort.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BoardGetCommentsExtendedResponse> boardGetCommentsExtended(@NotNull UserId groupId, int i9, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable BoardGetCommentsExtendedSort boardGetCommentsExtendedSort) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("board.getComments", new ApiResponseParser() { // from class: bf.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BoardGetCommentsExtendedResponse m942boardGetCommentsExtended$lambda33;
                m942boardGetCommentsExtended$lambda33 = BoardService.m942boardGetCommentsExtended$lambda33(jsonElement);
                return m942boardGetCommentsExtended$lambda33;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i9, 0, 0, 8, (Object) null);
        if (bool != null) {
            newApiRequest.addParam("need_likes", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_comment_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue());
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 100);
        }
        newApiRequest.addParam("extended", true);
        if (boardGetCommentsExtendedSort != null) {
            newApiRequest.addParam("sort", boardGetCommentsExtendedSort.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BoardGetTopicsResponse> boardGetTopics(@NotNull UserId groupId, @Nullable List<Integer> list, @Nullable BoardGetTopicsOrder boardGetTopicsOrder, @Nullable Integer num, @Nullable Integer num2, @Nullable BoardGetTopicsPreview boardGetTopicsPreview, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("board.getTopics", new ApiResponseParser() { // from class: bf.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BoardGetTopicsResponse m943boardGetTopics$lambda40;
                m943boardGetTopics$lambda40 = BoardService.m943boardGetTopics$lambda40(jsonElement);
                return m943boardGetTopics$lambda40;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (list != null) {
            newApiRequest.addParam("topic_ids", list);
        }
        if (boardGetTopicsOrder != null) {
            newApiRequest.addParam("order", boardGetTopicsOrder.getValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        if (boardGetTopicsPreview != null) {
            newApiRequest.addParam("preview", boardGetTopicsPreview.getValue());
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "preview_length", num3.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BoardGetTopicsExtendedResponse> boardGetTopicsExtended(@NotNull UserId groupId, @Nullable List<Integer> list, @Nullable BoardGetTopicsExtendedOrder boardGetTopicsExtendedOrder, @Nullable Integer num, @Nullable Integer num2, @Nullable BoardGetTopicsExtendedPreview boardGetTopicsExtendedPreview, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("board.getTopics", new ApiResponseParser() { // from class: bf.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BoardGetTopicsExtendedResponse m944boardGetTopicsExtended$lambda48;
                m944boardGetTopicsExtended$lambda48 = BoardService.m944boardGetTopicsExtended$lambda48(jsonElement);
                return m944boardGetTopicsExtended$lambda48;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (list != null) {
            newApiRequest.addParam("topic_ids", list);
        }
        if (boardGetTopicsExtendedOrder != null) {
            newApiRequest.addParam("order", boardGetTopicsExtendedOrder.getValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        newApiRequest.addParam("extended", true);
        if (boardGetTopicsExtendedPreview != null) {
            newApiRequest.addParam("preview", boardGetTopicsExtendedPreview.getValue());
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "preview_length", num3.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> boardOpenTopic(int i9, int i10) {
        NewApiRequest newApiRequest = new NewApiRequest("board.openTopic", new ApiResponseParser() { // from class: bf.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m945boardOpenTopic$lambda56;
                m945boardOpenTopic$lambda56 = BoardService.m945boardOpenTopic$lambda56(jsonElement);
                return m945boardOpenTopic$lambda56;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i10, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> boardRestoreComment(@NotNull UserId groupId, int i9, int i10) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("board.restoreComment", new ApiResponseParser() { // from class: bf.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m946boardRestoreComment$lambda58;
                m946boardRestoreComment$lambda58 = BoardService.m946boardRestoreComment$lambda58(jsonElement);
                return m946boardRestoreComment$lambda58;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i10, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> boardUnfixTopic(int i9, int i10) {
        NewApiRequest newApiRequest = new NewApiRequest("board.unfixTopic", new ApiResponseParser() { // from class: bf.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m947boardUnfixTopic$lambda60;
                m947boardUnfixTopic$lambda60 = BoardService.m947boardUnfixTopic$lambda60(jsonElement);
                return m947boardUnfixTopic$lambda60;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "topic_id", i10, 0, 0, 8, (Object) null);
        return newApiRequest;
    }
}
