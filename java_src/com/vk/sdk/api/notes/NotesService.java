package com.vk.sdk.api.notes;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.JsonElement;
import com.guochao.faceshow.utils.Contants;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.notes.NotesService;
import com.vk.sdk.api.notes.dto.NotesGetCommentsResponse;
import com.vk.sdk.api.notes.dto.NotesGetCommentsSort;
import com.vk.sdk.api.notes.dto.NotesGetResponse;
import com.vk.sdk.api.notes.dto.NotesGetSort;
import com.vk.sdk.api.notes.dto.NotesNote;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nJE\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0013J\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00042\u0006\u0010\r\u001a\u00020\u0005J \u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00042\u0006\u0010\u0017\u001a\u00020\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010JH\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u00042\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nJ(\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00150\u00042\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010JS\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00042\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!¢\u0006\u0002\u0010\"J1\u0010#\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\r\u001a\u00020\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&¢\u0006\u0002\u0010'JI\u0010(\u001a\b\u0012\u0004\u0012\u00020)0\u00042\u0006\u0010\r\u001a\u00020\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010 \u001a\u0004\u0018\u00010*2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010+J \u0010,\u001a\b\u0012\u0004\u0012\u00020\u00150\u00042\u0006\u0010\u0017\u001a\u00020\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¨\u0006-"}, d2 = {"Lcom/vk/sdk/api/notes/NotesService;", "", "()V", "notesAdd", "Lcom/vk/api/sdk/requests/VKRequest;", "", "title", "", ViewHierarchyConstants.TEXT_KEY, "privacyView", "", "privacyComment", "notesCreateComment", "noteId", "message", "ownerId", "Lcom/vk/dto/common/id/UserId;", "replyTo", TPDownloadProxyEnum.USER_GUID, "(ILjava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "notesDelete", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "notesDeleteComment", "commentId", "notesEdit", "notesEditComment", "notesGet", "Lcom/vk/sdk/api/notes/dto/NotesGetResponse;", "noteIds", Contants.USER_ID, TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "sort", "Lcom/vk/sdk/api/notes/dto/NotesGetSort;", "(Ljava/util/List;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/notes/dto/NotesGetSort;)Lcom/vk/api/sdk/requests/VKRequest;", "notesGetById", "Lcom/vk/sdk/api/notes/dto/NotesNote;", "needWiki", "", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "notesGetComments", "Lcom/vk/sdk/api/notes/dto/NotesGetCommentsResponse;", "Lcom/vk/sdk/api/notes/dto/NotesGetCommentsSort;", "(ILcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/notes/dto/NotesGetCommentsSort;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "notesRestoreComment", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NotesService {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest notesAdd$default(NotesService notesService, String str, String str2, List list, List list2, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            list = null;
        }
        if ((i9 & 8) != 0) {
            list2 = null;
        }
        return notesService.notesAdd(str, str2, list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notesAdd$lambda-0  reason: not valid java name */
    public static final Integer m1186notesAdd$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notesCreateComment$lambda-4  reason: not valid java name */
    public static final Integer m1187notesCreateComment$lambda4(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notesDelete$lambda-9  reason: not valid java name */
    public static final BaseOkResponse m1188notesDelete$lambda9(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest notesDeleteComment$default(NotesService notesService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return notesService.notesDeleteComment(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notesDeleteComment$lambda-11  reason: not valid java name */
    public static final BaseOkResponse m1189notesDeleteComment$lambda11(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notesEdit$lambda-14  reason: not valid java name */
    public static final BaseOkResponse m1190notesEdit$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest notesEditComment$default(NotesService notesService, int i9, String str, UserId userId, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            userId = null;
        }
        return notesService.notesEditComment(i9, str, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notesEditComment$lambda-18  reason: not valid java name */
    public static final BaseOkResponse m1191notesEditComment$lambda18(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest notesGet$default(NotesService notesService, List list, UserId userId, Integer num, Integer num2, NotesGetSort notesGetSort, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = null;
        }
        if ((i9 & 2) != 0) {
            userId = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            notesGetSort = null;
        }
        return notesService.notesGet(list, userId, num, num2, notesGetSort);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notesGet$lambda-21  reason: not valid java name */
    public static final NotesGetResponse m1192notesGet$lambda21(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NotesGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NotesGetResponse.class);
    }

    public static /* synthetic */ VKRequest notesGetById$default(NotesService notesService, int i9, UserId userId, Boolean bool, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            bool = null;
        }
        return notesService.notesGetById(i9, userId, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notesGetById$lambda-28  reason: not valid java name */
    public static final NotesNote m1193notesGetById$lambda28(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NotesNote) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NotesNote.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notesGetComments$lambda-32  reason: not valid java name */
    public static final NotesGetCommentsResponse m1194notesGetComments$lambda32(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (NotesGetCommentsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) NotesGetCommentsResponse.class);
    }

    public static /* synthetic */ VKRequest notesRestoreComment$default(NotesService notesService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return notesService.notesRestoreComment(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notesRestoreComment$lambda-38  reason: not valid java name */
    public static final BaseOkResponse m1195notesRestoreComment$lambda38(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<Integer> notesAdd(@NotNull String title, @NotNull String text, @Nullable List<String> list, @Nullable List<String> list2) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(text, "text");
        NewApiRequest newApiRequest = new NewApiRequest("notes.add", new ApiResponseParser() { // from class: kf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1186notesAdd$lambda0;
                m1186notesAdd$lambda0 = NotesService.m1186notesAdd$lambda0(jsonElement);
                return m1186notesAdd$lambda0;
            }
        });
        newApiRequest.addParam("title", title);
        newApiRequest.addParam(ViewHierarchyConstants.TEXT_KEY, text);
        if (list != null) {
            newApiRequest.addParam("privacy_view", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("privacy_comment", list2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> notesCreateComment(int i9, @NotNull String message, @Nullable UserId userId, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(message, "message");
        NewApiRequest newApiRequest = new NewApiRequest("notes.createComment", new ApiResponseParser() { // from class: kf.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1187notesCreateComment$lambda4;
                m1187notesCreateComment$lambda4 = NotesService.m1187notesCreateComment$lambda4(jsonElement);
                return m1187notesCreateComment$lambda4;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "note_id", i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("message", message);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "owner_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "reply_to", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam(TPDownloadProxyEnum.USER_GUID, str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> notesDelete(int i9) {
        NewApiRequest newApiRequest = new NewApiRequest("notes.delete", new ApiResponseParser() { // from class: kf.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1188notesDelete$lambda9;
                m1188notesDelete$lambda9 = NotesService.m1188notesDelete$lambda9(jsonElement);
                return m1188notesDelete$lambda9;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "note_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> notesDeleteComment(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("notes.deleteComment", new ApiResponseParser() { // from class: kf.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1189notesDeleteComment$lambda11;
                m1189notesDeleteComment$lambda11 = NotesService.m1189notesDeleteComment$lambda11(jsonElement);
                return m1189notesDeleteComment$lambda11;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "owner_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> notesEdit(int i9, @NotNull String title, @NotNull String text, @Nullable List<String> list, @Nullable List<String> list2) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(text, "text");
        NewApiRequest newApiRequest = new NewApiRequest("notes.edit", new ApiResponseParser() { // from class: kf.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1190notesEdit$lambda14;
                m1190notesEdit$lambda14 = NotesService.m1190notesEdit$lambda14(jsonElement);
                return m1190notesEdit$lambda14;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "note_id", i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("title", title);
        newApiRequest.addParam(ViewHierarchyConstants.TEXT_KEY, text);
        if (list != null) {
            newApiRequest.addParam("privacy_view", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("privacy_comment", list2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> notesEditComment(int i9, @NotNull String message, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(message, "message");
        NewApiRequest newApiRequest = new NewApiRequest("notes.editComment", new ApiResponseParser() { // from class: kf.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1191notesEditComment$lambda18;
                m1191notesEditComment$lambda18 = NotesService.m1191notesEditComment$lambda18(jsonElement);
                return m1191notesEditComment$lambda18;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "message", message, 2, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "owner_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NotesGetResponse> notesGet(@Nullable List<Integer> list, @Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable NotesGetSort notesGetSort) {
        NewApiRequest newApiRequest = new NewApiRequest("notes.get", new ApiResponseParser() { // from class: kf.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NotesGetResponse m1192notesGet$lambda21;
                m1192notesGet$lambda21 = NotesService.m1192notesGet$lambda21(jsonElement);
                return m1192notesGet$lambda21;
            }
        });
        if (list != null) {
            newApiRequest.addParam("note_ids", list);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        if (notesGetSort != null) {
            newApiRequest.addParam("sort", notesGetSort.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NotesNote> notesGetById(int i9, @Nullable UserId userId, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("notes.getById", new ApiResponseParser() { // from class: kf.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NotesNote m1193notesGetById$lambda28;
                m1193notesGetById$lambda28 = NotesService.m1193notesGetById$lambda28(jsonElement);
                return m1193notesGetById$lambda28;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "note_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "owner_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("need_wiki", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<NotesGetCommentsResponse> notesGetComments(int i9, @Nullable UserId userId, @Nullable NotesGetCommentsSort notesGetCommentsSort, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("notes.getComments", new ApiResponseParser() { // from class: kf.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                NotesGetCommentsResponse m1194notesGetComments$lambda32;
                m1194notesGetComments$lambda32 = NotesService.m1194notesGetComments$lambda32(jsonElement);
                return m1194notesGetComments$lambda32;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "note_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "owner_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (notesGetCommentsSort != null) {
            newApiRequest.addParam("sort", notesGetCommentsSort.getValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> notesRestoreComment(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("notes.restoreComment", new ApiResponseParser() { // from class: kf.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1195notesRestoreComment$lambda38;
                m1195notesRestoreComment$lambda38 = NotesService.m1195notesRestoreComment$lambda38(jsonElement);
                return m1195notesRestoreComment$lambda38;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "owner_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }
}
