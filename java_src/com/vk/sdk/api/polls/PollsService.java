package com.vk.sdk.api.polls;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.GraphRequest;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.base.dto.BaseUploadServer;
import com.vk.sdk.api.polls.dto.PollsBackground;
import com.vk.sdk.api.polls.dto.PollsCreateBackgroundId;
import com.vk.sdk.api.polls.dto.PollsEditBackgroundId;
import com.vk.sdk.api.polls.dto.PollsGetByIdNameCase;
import com.vk.sdk.api.polls.dto.PollsGetVotersNameCase;
import com.vk.sdk.api.polls.dto.PollsPoll;
import com.vk.sdk.api.polls.dto.PollsVoters;
import com.vk.sdk.api.users.dto.UsersFields;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J?\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\u0089\u0001\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u001cJ9\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u001fJy\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010$¢\u0006\u0002\u0010%J\u0012\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0\t0\u0004J[\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00100\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\t2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,¢\u0006\u0002\u0010-J\u0018\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0087\u0001\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002010\t0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u00102\u001a\u0004\u0018\u00010\r2\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010*\u001a\n\u0012\u0004\u0012\u000205\u0018\u00010\t2\n\b\u0002\u0010+\u001a\u0004\u0018\u000106¢\u0006\u0002\u00107J\u001c\u00108\u001a\b\u0012\u0004\u0012\u00020'0\u00042\u0006\u00109\u001a\u00020\u00122\u0006\u0010:\u001a\u00020\u0012¨\u0006;"}, d2 = {"Lcom/vk/sdk/api/polls/PollsService;", "", "()V", "pollsAddVote", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "pollId", "", "answerIds", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "isBoard", "", "(ILjava/util/List;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "pollsCreate", "Lcom/vk/sdk/api/polls/dto/PollsPoll;", "question", "", "isAnonymous", "isMultiple", "endDate", "appId", "addAnswers", "photoId", "backgroundId", "Lcom/vk/sdk/api/polls/dto/PollsCreateBackgroundId;", "disableUnvote", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/polls/dto/PollsCreateBackgroundId;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "pollsDeleteVote", "answerId", "(IILcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "pollsEdit", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "editAnswers", "deleteAnswers", "Lcom/vk/sdk/api/polls/dto/PollsEditBackgroundId;", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/polls/dto/PollsEditBackgroundId;)Lcom/vk/api/sdk/requests/VKRequest;", "pollsGetBackgrounds", "Lcom/vk/sdk/api/polls/dto/PollsBackground;", "pollsGetById", "friendsCount", GraphRequest.FIELDS_PARAM, "nameCase", "Lcom/vk/sdk/api/polls/dto/PollsGetByIdNameCase;", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/polls/dto/PollsGetByIdNameCase;)Lcom/vk/api/sdk/requests/VKRequest;", "pollsGetPhotoUploadServer", "Lcom/vk/sdk/api/base/dto/BaseUploadServer;", "pollsGetVoters", "Lcom/vk/sdk/api/polls/dto/PollsVoters;", "friendsOnly", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "Lcom/vk/sdk/api/users/dto/UsersFields;", "Lcom/vk/sdk/api/polls/dto/PollsGetVotersNameCase;", "(ILjava/util/List;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/polls/dto/PollsGetVotersNameCase;)Lcom/vk/api/sdk/requests/VKRequest;", "pollsSavePhoto", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "hash", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PollsService {
    public static /* synthetic */ VKRequest pollsAddVote$default(PollsService pollsService, int i9, List list, UserId userId, Boolean bool, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            userId = null;
        }
        if ((i10 & 8) != 0) {
            bool = null;
        }
        return pollsService.pollsAddVote(i9, list, userId, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pollsAddVote$lambda-0  reason: not valid java name */
    public static final BaseBoolInt m1267pollsAddVote$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    public static /* synthetic */ VKRequest pollsCreate$default(PollsService pollsService, String str, Boolean bool, Boolean bool2, Integer num, UserId userId, Integer num2, String str2, Integer num3, PollsCreateBackgroundId pollsCreateBackgroundId, Boolean bool3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            bool = null;
        }
        if ((i9 & 4) != 0) {
            bool2 = null;
        }
        if ((i9 & 8) != 0) {
            num = null;
        }
        if ((i9 & 16) != 0) {
            userId = null;
        }
        if ((i9 & 32) != 0) {
            num2 = null;
        }
        if ((i9 & 64) != 0) {
            str2 = null;
        }
        if ((i9 & 128) != 0) {
            num3 = null;
        }
        if ((i9 & 256) != 0) {
            pollsCreateBackgroundId = null;
        }
        if ((i9 & 512) != 0) {
            bool3 = null;
        }
        return pollsService.pollsCreate(str, bool, bool2, num, userId, num2, str2, num3, pollsCreateBackgroundId, bool3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pollsCreate$lambda-4  reason: not valid java name */
    public static final PollsPoll m1268pollsCreate$lambda4(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PollsPoll) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PollsPoll.class);
    }

    public static /* synthetic */ VKRequest pollsDeleteVote$default(PollsService pollsService, int i9, int i10, UserId userId, Boolean bool, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            userId = null;
        }
        if ((i11 & 8) != 0) {
            bool = null;
        }
        return pollsService.pollsDeleteVote(i9, i10, userId, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pollsDeleteVote$lambda-16  reason: not valid java name */
    public static final BaseBoolInt m1269pollsDeleteVote$lambda16(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pollsEdit$lambda-20  reason: not valid java name */
    public static final BaseOkResponse m1270pollsEdit$lambda20(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pollsGetBackgrounds$lambda-30  reason: not valid java name */
    public static final List m1271pollsGetBackgrounds$lambda30(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PollsBackground>>() { // from class: com.vk.sdk.api.polls.PollsService$pollsGetBackgrounds$1$typeToken$1
        }.getType());
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson…ckground>>(it, typeToken)");
        return (List) fromJson;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pollsGetById$lambda-31  reason: not valid java name */
    public static final PollsPoll m1272pollsGetById$lambda31(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PollsPoll) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PollsPoll.class);
    }

    public static /* synthetic */ VKRequest pollsGetPhotoUploadServer$default(PollsService pollsService, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        return pollsService.pollsGetPhotoUploadServer(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pollsGetPhotoUploadServer$lambda-38  reason: not valid java name */
    public static final BaseUploadServer m1273pollsGetPhotoUploadServer$lambda38(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseUploadServer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseUploadServer.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pollsGetVoters$lambda-41  reason: not valid java name */
    public static final List m1274pollsGetVoters$lambda41(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PollsVoters>>() { // from class: com.vk.sdk.api.polls.PollsService$pollsGetVoters$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pollsSavePhoto$lambda-51  reason: not valid java name */
    public static final PollsBackground m1275pollsSavePhoto$lambda51(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PollsBackground) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PollsBackground.class);
    }

    @NotNull
    public final VKRequest<BaseBoolInt> pollsAddVote(int i9, @NotNull List<Integer> answerIds, @Nullable UserId userId, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(answerIds, "answerIds");
        NewApiRequest newApiRequest = new NewApiRequest("polls.addVote", new ApiResponseParser() { // from class: com.vk.sdk.api.polls.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1267pollsAddVote$lambda0;
                m1267pollsAddVote$lambda0 = PollsService.m1267pollsAddVote$lambda0(jsonElement);
                return m1267pollsAddVote$lambda0;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "poll_id", i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("answer_ids", answerIds);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (bool != null) {
            newApiRequest.addParam("is_board", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PollsPoll> pollsCreate(@Nullable String str, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Integer num, @Nullable UserId userId, @Nullable Integer num2, @Nullable String str2, @Nullable Integer num3, @Nullable PollsCreateBackgroundId pollsCreateBackgroundId, @Nullable Boolean bool3) {
        NewApiRequest newApiRequest = new NewApiRequest("polls.create", new ApiResponseParser() { // from class: com.vk.sdk.api.polls.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PollsPoll m1268pollsCreate$lambda4;
                m1268pollsCreate$lambda4 = PollsService.m1268pollsCreate$lambda4(jsonElement);
                return m1268pollsCreate$lambda4;
            }
        });
        if (str != null) {
            newApiRequest.addParam("question", str);
        }
        if (bool != null) {
            newApiRequest.addParam("is_anonymous", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("is_multiple", bool2.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "end_date", num.intValue(), 1550700000, 0, 8, (Object) null);
        }
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num2 != null) {
            newApiRequest.addParam("app_id", num2.intValue());
        }
        if (str2 != null) {
            newApiRequest.addParam("add_answers", str2);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "photo_id", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (pollsCreateBackgroundId != null) {
            newApiRequest.addParam("background_id", pollsCreateBackgroundId.getValue());
        }
        if (bool3 != null) {
            newApiRequest.addParam("disable_unvote", bool3.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> pollsDeleteVote(int i9, int i10, @Nullable UserId userId, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("polls.deleteVote", new ApiResponseParser() { // from class: com.vk.sdk.api.polls.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1269pollsDeleteVote$lambda16;
                m1269pollsDeleteVote$lambda16 = PollsService.m1269pollsDeleteVote$lambda16(jsonElement);
                return m1269pollsDeleteVote$lambda16;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "poll_id", i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "answer_id", i10, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (bool != null) {
            newApiRequest.addParam("is_board", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> pollsEdit(int i9, @Nullable UserId userId, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num, @Nullable Integer num2, @Nullable PollsEditBackgroundId pollsEditBackgroundId) {
        NewApiRequest newApiRequest = new NewApiRequest("polls.edit", new ApiResponseParser() { // from class: com.vk.sdk.api.polls.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1270pollsEdit$lambda20;
                m1270pollsEdit$lambda20 = PollsService.m1270pollsEdit$lambda20(jsonElement);
                return m1270pollsEdit$lambda20;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "poll_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("question", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("add_answers", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("edit_answers", str3);
        }
        if (str4 != null) {
            newApiRequest.addParam("delete_answers", str4);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "end_date", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "photo_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (pollsEditBackgroundId != null) {
            newApiRequest.addParam("background_id", pollsEditBackgroundId.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PollsBackground>> pollsGetBackgrounds() {
        return new NewApiRequest("polls.getBackgrounds", new ApiResponseParser() { // from class: com.vk.sdk.api.polls.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1271pollsGetBackgrounds$lambda30;
                m1271pollsGetBackgrounds$lambda30 = PollsService.m1271pollsGetBackgrounds$lambda30(jsonElement);
                return m1271pollsGetBackgrounds$lambda30;
            }
        });
    }

    @NotNull
    public final VKRequest<PollsPoll> pollsGetById(int i9, @Nullable UserId userId, @Nullable Boolean bool, @Nullable Integer num, @Nullable List<String> list, @Nullable PollsGetByIdNameCase pollsGetByIdNameCase) {
        NewApiRequest newApiRequest = new NewApiRequest("polls.getById", new ApiResponseParser() { // from class: com.vk.sdk.api.polls.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PollsPoll m1272pollsGetById$lambda31;
                m1272pollsGetById$lambda31 = PollsService.m1272pollsGetById$lambda31(jsonElement);
                return m1272pollsGetById$lambda31;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "poll_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (bool != null) {
            newApiRequest.addParam("is_board", bool.booleanValue());
        }
        if (num != null) {
            newApiRequest.addParam("friends_count", num.intValue(), 0, 100);
        }
        if (list != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, list);
        }
        if (pollsGetByIdNameCase != null) {
            newApiRequest.addParam("name_case", pollsGetByIdNameCase.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseUploadServer> pollsGetPhotoUploadServer(@Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("polls.getPhotoUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.polls.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseUploadServer m1273pollsGetPhotoUploadServer$lambda38;
                m1273pollsGetPhotoUploadServer$lambda38 = PollsService.m1273pollsGetPhotoUploadServer$lambda38(jsonElement);
                return m1273pollsGetPhotoUploadServer$lambda38;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PollsVoters>> pollsGetVoters(int i9, @NotNull List<Integer> answerIds, @Nullable UserId userId, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Integer num, @Nullable Integer num2, @Nullable List<? extends UsersFields> list, @Nullable PollsGetVotersNameCase pollsGetVotersNameCase) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(answerIds, "answerIds");
        NewApiRequest newApiRequest = new NewApiRequest("polls.getVoters", new ApiResponseParser() { // from class: com.vk.sdk.api.polls.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1274pollsGetVoters$lambda41;
                m1274pollsGetVoters$lambda41 = PollsService.m1274pollsGetVoters$lambda41(jsonElement);
                return m1274pollsGetVoters$lambda41;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "poll_id", i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("answer_ids", answerIds);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (bool != null) {
            newApiRequest.addParam("is_board", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("friends_only", bool2.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
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
        if (pollsGetVotersNameCase != null) {
            newApiRequest.addParam("name_case", pollsGetVotersNameCase.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PollsBackground> pollsSavePhoto(@NotNull String photo, @NotNull String hash) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(hash, "hash");
        NewApiRequest newApiRequest = new NewApiRequest("polls.savePhoto", new ApiResponseParser() { // from class: com.vk.sdk.api.polls.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PollsBackground m1275pollsSavePhoto$lambda51;
                m1275pollsSavePhoto$lambda51 = PollsService.m1275pollsSavePhoto$lambda51(jsonElement);
                return m1275pollsSavePhoto$lambda51;
            }
        });
        newApiRequest.addParam(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, photo);
        newApiRequest.addParam("hash", hash);
        return newApiRequest;
    }
}
