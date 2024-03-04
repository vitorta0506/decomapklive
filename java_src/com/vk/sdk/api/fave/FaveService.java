package com.vk.sdk.api.fave;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.google.gson.JsonElement;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.base.dto.BaseUserGroupFields;
import com.vk.sdk.api.fave.FaveService;
import com.vk.sdk.api.fave.dto.FaveAddTagPosition;
import com.vk.sdk.api.fave.dto.FaveGetExtendedItemType;
import com.vk.sdk.api.fave.dto.FaveGetExtendedResponse;
import com.vk.sdk.api.fave.dto.FaveGetItemType;
import com.vk.sdk.api.fave.dto.FaveGetPagesResponse;
import com.vk.sdk.api.fave.dto.FaveGetPagesType;
import com.vk.sdk.api.fave.dto.FaveGetResponse;
import com.vk.sdk.api.fave.dto.FaveGetTagsResponse;
import com.vk.sdk.api.fave.dto.FaveSetTagsItemType;
import com.vk.sdk.api.fave.dto.FaveTag;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\t\u001a\u00020\u0007J$\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fJ(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007J(\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007J$\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018J(\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007J\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0007JY\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00042\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$¢\u0006\u0002\u0010%JY\u0010&\u001a\b\u0012\u0004\u0012\u00020'0\u00042\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$¢\u0006\u0002\u0010)JS\u0010*\u001a\b\u0012\u0004\u0012\u00020+0\u00042\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-2\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010.2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u00100J\f\u00101\u001a\b\u0012\u0004\u0012\u0002020\u0004J\f\u00103\u001a\b\u0012\u0004\u0012\u0002040\u0004J\u001c\u00105\u001a\b\u0012\u0004\u0012\u0002040\u00042\u0006\u0010\u000f\u001a\u00020\f2\u0006\u00106\u001a\u00020\u0011J$\u00107\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007J$\u00109\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fJ\u001c\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011J\u001c\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0014\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0010\u001a\u00020\u0011J\u001c\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011J\u001a\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00110.J6\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010.J_\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010C2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u00112\u0010\b\u0002\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010.2\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010F\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010GJ$\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¨\u0006I"}, d2 = {"Lcom/vk/sdk/api/fave/FaveService;", "", "()V", "faveAddArticle", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "url", "", "faveAddLink", "link", "faveAddPage", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "groupId", "faveAddPost", "ownerId", "id", "", "accessKey", "faveAddProduct", "faveAddTag", "Lcom/vk/sdk/api/fave/dto/FaveTag;", "name", "position", "Lcom/vk/sdk/api/fave/dto/FaveAddTagPosition;", "faveAddVideo", "faveEditTag", "faveGet", "Lcom/vk/sdk/api/fave/dto/FaveGetResponse;", "itemType", "Lcom/vk/sdk/api/fave/dto/FaveGetItemType;", "tagId", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, GraphRequest.FIELDS_PARAM, "isFromSnackbar", "", "(Lcom/vk/sdk/api/fave/dto/FaveGetItemType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "faveGetExtended", "Lcom/vk/sdk/api/fave/dto/FaveGetExtendedResponse;", "Lcom/vk/sdk/api/fave/dto/FaveGetExtendedItemType;", "(Lcom/vk/sdk/api/fave/dto/FaveGetExtendedItemType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "faveGetPages", "Lcom/vk/sdk/api/fave/dto/FaveGetPagesResponse;", "type", "Lcom/vk/sdk/api/fave/dto/FaveGetPagesType;", "", "Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/fave/dto/FaveGetPagesType;Ljava/util/List;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "faveGetTags", "Lcom/vk/sdk/api/fave/dto/FaveGetTagsResponse;", "faveMarkSeen", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "faveRemoveArticle", "articleId", "faveRemoveLink", "linkId", "faveRemovePage", "faveRemovePost", "faveRemoveProduct", "faveRemoveTag", "faveRemoveVideo", "faveReorderTags", "ids", "faveSetPageTags", "tagIds", "faveSetTags", "Lcom/vk/sdk/api/fave/dto/FaveSetTagsItemType;", "itemOwnerId", "itemId", "linkUrl", "(Lcom/vk/sdk/api/fave/dto/FaveSetTagsItemType;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "faveTrackPageInteraction", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FaveService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveAddArticle$lambda-0  reason: not valid java name */
    public static final BaseOkResponse m977faveAddArticle$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveAddLink$lambda-2  reason: not valid java name */
    public static final BaseOkResponse m978faveAddLink$lambda2(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest faveAddPage$default(FaveService faveService, UserId userId, UserId userId2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            userId2 = null;
        }
        return faveService.faveAddPage(userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveAddPage$lambda-4  reason: not valid java name */
    public static final BaseOkResponse m979faveAddPage$lambda4(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest faveAddPost$default(FaveService faveService, UserId userId, int i9, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str = null;
        }
        return faveService.faveAddPost(userId, i9, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveAddPost$lambda-8  reason: not valid java name */
    public static final BaseOkResponse m980faveAddPost$lambda8(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest faveAddProduct$default(FaveService faveService, UserId userId, int i9, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str = null;
        }
        return faveService.faveAddProduct(userId, i9, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveAddProduct$lambda-11  reason: not valid java name */
    public static final BaseOkResponse m981faveAddProduct$lambda11(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest faveAddTag$default(FaveService faveService, String str, FaveAddTagPosition faveAddTagPosition, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            faveAddTagPosition = null;
        }
        return faveService.faveAddTag(str, faveAddTagPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveAddTag$lambda-14  reason: not valid java name */
    public static final FaveTag m982faveAddTag$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FaveTag) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FaveTag.class);
    }

    public static /* synthetic */ VKRequest faveAddVideo$default(FaveService faveService, UserId userId, int i9, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str = null;
        }
        return faveService.faveAddVideo(userId, i9, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveAddVideo$lambda-18  reason: not valid java name */
    public static final BaseOkResponse m983faveAddVideo$lambda18(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveEditTag$lambda-21  reason: not valid java name */
    public static final BaseOkResponse m984faveEditTag$lambda21(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest faveGet$default(FaveService faveService, FaveGetItemType faveGetItemType, Integer num, Integer num2, Integer num3, String str, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            faveGetItemType = null;
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
            str = null;
        }
        if ((i9 & 32) != 0) {
            bool = null;
        }
        return faveService.faveGet(faveGetItemType, num, num2, num3, str, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveGet$lambda-23  reason: not valid java name */
    public static final FaveGetResponse m985faveGet$lambda23(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FaveGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FaveGetResponse.class);
    }

    public static /* synthetic */ VKRequest faveGetExtended$default(FaveService faveService, FaveGetExtendedItemType faveGetExtendedItemType, Integer num, Integer num2, Integer num3, String str, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            faveGetExtendedItemType = null;
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
            str = null;
        }
        if ((i9 & 32) != 0) {
            bool = null;
        }
        return faveService.faveGetExtended(faveGetExtendedItemType, num, num2, num3, str, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveGetExtended$lambda-31  reason: not valid java name */
    public static final FaveGetExtendedResponse m986faveGetExtended$lambda31(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FaveGetExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FaveGetExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest faveGetPages$default(FaveService faveService, Integer num, Integer num2, FaveGetPagesType faveGetPagesType, List list, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            faveGetPagesType = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        if ((i9 & 16) != 0) {
            num3 = null;
        }
        return faveService.faveGetPages(num, num2, faveGetPagesType, list, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveGetPages$lambda-39  reason: not valid java name */
    public static final FaveGetPagesResponse m987faveGetPages$lambda39(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (FaveGetPagesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FaveGetPagesResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveGetTags$lambda-47  reason: not valid java name */
    public static final FaveGetTagsResponse m988faveGetTags$lambda47(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) FaveGetTagsResponse.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson…TagsResponse::class.java)");
        return (FaveGetTagsResponse) fromJson;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveMarkSeen$lambda-48  reason: not valid java name */
    public static final BaseBoolInt m989faveMarkSeen$lambda48(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson… BaseBoolInt::class.java)");
        return (BaseBoolInt) fromJson;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveRemoveArticle$lambda-49  reason: not valid java name */
    public static final BaseBoolInt m990faveRemoveArticle$lambda49(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    public static /* synthetic */ VKRequest faveRemoveLink$default(FaveService faveService, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        return faveService.faveRemoveLink(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveRemoveLink$lambda-51  reason: not valid java name */
    public static final BaseOkResponse m991faveRemoveLink$lambda51(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest faveRemovePage$default(FaveService faveService, UserId userId, UserId userId2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            userId2 = null;
        }
        return faveService.faveRemovePage(userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveRemovePage$lambda-55  reason: not valid java name */
    public static final BaseOkResponse m992faveRemovePage$lambda55(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveRemovePost$lambda-59  reason: not valid java name */
    public static final BaseOkResponse m993faveRemovePost$lambda59(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveRemoveProduct$lambda-61  reason: not valid java name */
    public static final BaseOkResponse m994faveRemoveProduct$lambda61(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveRemoveTag$lambda-63  reason: not valid java name */
    public static final BaseOkResponse m995faveRemoveTag$lambda63(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveRemoveVideo$lambda-65  reason: not valid java name */
    public static final BaseOkResponse m996faveRemoveVideo$lambda65(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveReorderTags$lambda-67  reason: not valid java name */
    public static final BaseOkResponse m997faveReorderTags$lambda67(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest faveSetPageTags$default(FaveService faveService, UserId userId, UserId userId2, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            userId2 = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        return faveService.faveSetPageTags(userId, userId2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveSetPageTags$lambda-69  reason: not valid java name */
    public static final BaseOkResponse m998faveSetPageTags$lambda69(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest faveSetTags$default(FaveService faveService, FaveSetTagsItemType faveSetTagsItemType, UserId userId, Integer num, List list, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            faveSetTagsItemType = null;
        }
        if ((i9 & 2) != 0) {
            userId = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        if ((i9 & 16) != 0) {
            str = null;
        }
        if ((i9 & 32) != 0) {
            str2 = null;
        }
        return faveService.faveSetTags(faveSetTagsItemType, userId, num, list, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveSetTags$lambda-74  reason: not valid java name */
    public static final BaseOkResponse m999faveSetTags$lambda74(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest faveTrackPageInteraction$default(FaveService faveService, UserId userId, UserId userId2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            userId2 = null;
        }
        return faveService.faveTrackPageInteraction(userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: faveTrackPageInteraction$lambda-82  reason: not valid java name */
    public static final BaseOkResponse m1000faveTrackPageInteraction$lambda82(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveAddArticle(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        NewApiRequest newApiRequest = new NewApiRequest("fave.addArticle", new ApiResponseParser() { // from class: ff.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m977faveAddArticle$lambda0;
                m977faveAddArticle$lambda0 = FaveService.m977faveAddArticle$lambda0(jsonElement);
                return m977faveAddArticle$lambda0;
            }
        });
        newApiRequest.addParam("url", url);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveAddLink(@NotNull String link) {
        Intrinsics.checkNotNullParameter(link, "link");
        NewApiRequest newApiRequest = new NewApiRequest("fave.addLink", new ApiResponseParser() { // from class: ff.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m978faveAddLink$lambda2;
                m978faveAddLink$lambda2 = FaveService.m978faveAddLink$lambda2(jsonElement);
                return m978faveAddLink$lambda2;
            }
        });
        newApiRequest.addParam("link", link);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveAddPage(@Nullable UserId userId, @Nullable UserId userId2) {
        NewApiRequest newApiRequest = new NewApiRequest("fave.addPage", new ApiResponseParser() { // from class: ff.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m979faveAddPage$lambda4;
                m979faveAddPage$lambda4 = FaveService.m979faveAddPage$lambda4(jsonElement);
                return m979faveAddPage$lambda4;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (userId2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId2, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveAddPost(@NotNull UserId ownerId, int i9, @Nullable String str) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("fave.addPost", new ApiResponseParser() { // from class: ff.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m980faveAddPost$lambda8;
                m980faveAddPost$lambda8 = FaveService.m980faveAddPost$lambda8(jsonElement);
                return m980faveAddPost$lambda8;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        newApiRequest.addParam("id", i9);
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveAddProduct(@NotNull UserId ownerId, int i9, @Nullable String str) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("fave.addProduct", new ApiResponseParser() { // from class: ff.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m981faveAddProduct$lambda11;
                m981faveAddProduct$lambda11 = FaveService.m981faveAddProduct$lambda11(jsonElement);
                return m981faveAddProduct$lambda11;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        newApiRequest.addParam("id", i9);
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FaveTag> faveAddTag(@Nullable String str, @Nullable FaveAddTagPosition faveAddTagPosition) {
        NewApiRequest newApiRequest = new NewApiRequest("fave.addTag", new ApiResponseParser() { // from class: ff.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FaveTag m982faveAddTag$lambda14;
                m982faveAddTag$lambda14 = FaveService.m982faveAddTag$lambda14(jsonElement);
                return m982faveAddTag$lambda14;
            }
        });
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "name", str, 0, 50, 4, (Object) null);
        }
        if (faveAddTagPosition != null) {
            newApiRequest.addParam("position", faveAddTagPosition.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveAddVideo(@NotNull UserId ownerId, int i9, @Nullable String str) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("fave.addVideo", new ApiResponseParser() { // from class: ff.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m983faveAddVideo$lambda18;
                m983faveAddVideo$lambda18 = FaveService.m983faveAddVideo$lambda18(jsonElement);
                return m983faveAddVideo$lambda18;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        newApiRequest.addParam("id", i9);
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveEditTag(int i9, @NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        NewApiRequest newApiRequest = new NewApiRequest("fave.editTag", new ApiResponseParser() { // from class: ff.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m984faveEditTag$lambda21;
                m984faveEditTag$lambda21 = FaveService.m984faveEditTag$lambda21(jsonElement);
                return m984faveEditTag$lambda21;
            }
        });
        newApiRequest.addParam("id", i9);
        NewApiRequest.addParam$default(newApiRequest, "name", name, 0, 50, 4, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FaveGetResponse> faveGet(@Nullable FaveGetItemType faveGetItemType, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("fave.get", new ApiResponseParser() { // from class: ff.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FaveGetResponse m985faveGet$lambda23;
                m985faveGet$lambda23 = FaveService.m985faveGet$lambda23(jsonElement);
                return m985faveGet$lambda23;
            }
        });
        if (faveGetItemType != null) {
            newApiRequest.addParam("item_type", faveGetItemType.getValue());
        }
        if (num != null) {
            newApiRequest.addParam(PushConstants.SUB_TAGS_STATUS_ID, num.intValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 1, 100);
        }
        if (str != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, str);
        }
        if (bool != null) {
            newApiRequest.addParam("is_from_snackbar", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FaveGetExtendedResponse> faveGetExtended(@Nullable FaveGetExtendedItemType faveGetExtendedItemType, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("fave.get", new ApiResponseParser() { // from class: ff.t
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FaveGetExtendedResponse m986faveGetExtended$lambda31;
                m986faveGetExtended$lambda31 = FaveService.m986faveGetExtended$lambda31(jsonElement);
                return m986faveGetExtended$lambda31;
            }
        });
        newApiRequest.addParam("extended", true);
        if (faveGetExtendedItemType != null) {
            newApiRequest.addParam("item_type", faveGetExtendedItemType.getValue());
        }
        if (num != null) {
            newApiRequest.addParam(PushConstants.SUB_TAGS_STATUS_ID, num.intValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 1, 100);
        }
        if (str != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, str);
        }
        if (bool != null) {
            newApiRequest.addParam("is_from_snackbar", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FaveGetPagesResponse> faveGetPages(@Nullable Integer num, @Nullable Integer num2, @Nullable FaveGetPagesType faveGetPagesType, @Nullable List<? extends BaseUserGroupFields> list, @Nullable Integer num3) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("fave.getPages", new ApiResponseParser() { // from class: ff.x
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FaveGetPagesResponse m987faveGetPages$lambda39;
                m987faveGetPages$lambda39 = FaveService.m987faveGetPages$lambda39(jsonElement);
                return m987faveGetPages$lambda39;
            }
        });
        if (num != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 10000);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 1, 500);
        }
        if (faveGetPagesType != null) {
            newApiRequest.addParam("type", faveGetPagesType.getValue());
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
        if (num3 != null) {
            newApiRequest.addParam(PushConstants.SUB_TAGS_STATUS_ID, num3.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<FaveGetTagsResponse> faveGetTags() {
        return new NewApiRequest("fave.getTags", new ApiResponseParser() { // from class: ff.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                FaveGetTagsResponse m988faveGetTags$lambda47;
                m988faveGetTags$lambda47 = FaveService.m988faveGetTags$lambda47(jsonElement);
                return m988faveGetTags$lambda47;
            }
        });
    }

    @NotNull
    public final VKRequest<BaseBoolInt> faveMarkSeen() {
        return new NewApiRequest("fave.markSeen", new ApiResponseParser() { // from class: ff.w
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m989faveMarkSeen$lambda48;
                m989faveMarkSeen$lambda48 = FaveService.m989faveMarkSeen$lambda48(jsonElement);
                return m989faveMarkSeen$lambda48;
            }
        });
    }

    @NotNull
    public final VKRequest<BaseBoolInt> faveRemoveArticle(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("fave.removeArticle", new ApiResponseParser() { // from class: ff.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m990faveRemoveArticle$lambda49;
                m990faveRemoveArticle$lambda49 = FaveService.m990faveRemoveArticle$lambda49(jsonElement);
                return m990faveRemoveArticle$lambda49;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "article_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveRemoveLink(@Nullable String str, @Nullable String str2) {
        NewApiRequest newApiRequest = new NewApiRequest("fave.removeLink", new ApiResponseParser() { // from class: ff.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m991faveRemoveLink$lambda51;
                m991faveRemoveLink$lambda51 = FaveService.m991faveRemoveLink$lambda51(jsonElement);
                return m991faveRemoveLink$lambda51;
            }
        });
        if (str != null) {
            newApiRequest.addParam("link_id", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("link", str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveRemovePage(@Nullable UserId userId, @Nullable UserId userId2) {
        NewApiRequest newApiRequest = new NewApiRequest("fave.removePage", new ApiResponseParser() { // from class: ff.u
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m992faveRemovePage$lambda55;
                m992faveRemovePage$lambda55 = FaveService.m992faveRemovePage$lambda55(jsonElement);
                return m992faveRemovePage$lambda55;
            }
        });
        if (userId != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, userId);
        }
        if (userId2 != null) {
            newApiRequest.addParam("group_id", userId2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveRemovePost(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("fave.removePost", new ApiResponseParser() { // from class: ff.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m993faveRemovePost$lambda59;
                m993faveRemovePost$lambda59 = FaveService.m993faveRemovePost$lambda59(jsonElement);
                return m993faveRemovePost$lambda59;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        newApiRequest.addParam("id", i9);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveRemoveProduct(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("fave.removeProduct", new ApiResponseParser() { // from class: ff.s
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m994faveRemoveProduct$lambda61;
                m994faveRemoveProduct$lambda61 = FaveService.m994faveRemoveProduct$lambda61(jsonElement);
                return m994faveRemoveProduct$lambda61;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        newApiRequest.addParam("id", i9);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveRemoveTag(int i9) {
        NewApiRequest newApiRequest = new NewApiRequest("fave.removeTag", new ApiResponseParser() { // from class: ff.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m995faveRemoveTag$lambda63;
                m995faveRemoveTag$lambda63 = FaveService.m995faveRemoveTag$lambda63(jsonElement);
                return m995faveRemoveTag$lambda63;
            }
        });
        newApiRequest.addParam("id", i9);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveRemoveVideo(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("fave.removeVideo", new ApiResponseParser() { // from class: ff.v
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m996faveRemoveVideo$lambda65;
                m996faveRemoveVideo$lambda65 = FaveService.m996faveRemoveVideo$lambda65(jsonElement);
                return m996faveRemoveVideo$lambda65;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        newApiRequest.addParam("id", i9);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveReorderTags(@NotNull List<Integer> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        NewApiRequest newApiRequest = new NewApiRequest("fave.reorderTags", new ApiResponseParser() { // from class: ff.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m997faveReorderTags$lambda67;
                m997faveReorderTags$lambda67 = FaveService.m997faveReorderTags$lambda67(jsonElement);
                return m997faveReorderTags$lambda67;
            }
        });
        newApiRequest.addParam("ids", ids);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveSetPageTags(@Nullable UserId userId, @Nullable UserId userId2, @Nullable List<Integer> list) {
        NewApiRequest newApiRequest = new NewApiRequest("fave.setPageTags", new ApiResponseParser() { // from class: ff.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m998faveSetPageTags$lambda69;
                m998faveSetPageTags$lambda69 = FaveService.m998faveSetPageTags$lambda69(jsonElement);
                return m998faveSetPageTags$lambda69;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (userId2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId2, 0L, 0L, 8, (Object) null);
        }
        if (list != null) {
            newApiRequest.addParam("tag_ids", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveSetTags(@Nullable FaveSetTagsItemType faveSetTagsItemType, @Nullable UserId userId, @Nullable Integer num, @Nullable List<Integer> list, @Nullable String str, @Nullable String str2) {
        NewApiRequest newApiRequest = new NewApiRequest("fave.setTags", new ApiResponseParser() { // from class: ff.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m999faveSetTags$lambda74;
                m999faveSetTags$lambda74 = FaveService.m999faveSetTags$lambda74(jsonElement);
                return m999faveSetTags$lambda74;
            }
        });
        if (faveSetTagsItemType != null) {
            newApiRequest.addParam("item_type", faveSetTagsItemType.getValue());
        }
        if (userId != null) {
            newApiRequest.addParam("item_owner_id", userId);
        }
        if (num != null) {
            newApiRequest.addParam(EventTrackingUtils.ITEM_ID, num.intValue());
        }
        if (list != null) {
            newApiRequest.addParam("tag_ids", list);
        }
        if (str != null) {
            newApiRequest.addParam("link_id", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("link_url", str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> faveTrackPageInteraction(@Nullable UserId userId, @Nullable UserId userId2) {
        NewApiRequest newApiRequest = new NewApiRequest("fave.trackPageInteraction", new ApiResponseParser() { // from class: ff.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1000faveTrackPageInteraction$lambda82;
                m1000faveTrackPageInteraction$lambda82 = FaveService.m1000faveTrackPageInteraction$lambda82(jsonElement);
                return m1000faveTrackPageInteraction$lambda82;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (userId2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId2, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }
}
