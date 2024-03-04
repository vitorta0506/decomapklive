package com.vk.sdk.api.docs;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.share.internal.ShareInternalUtility;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.base.dto.BaseUploadServer;
import com.vk.sdk.api.docs.dto.DocsDoc;
import com.vk.sdk.api.docs.dto.DocsGetMessagesUploadServerType;
import com.vk.sdk.api.docs.dto.DocsGetResponse;
import com.vk.sdk.api.docs.dto.DocsGetType;
import com.vk.sdk.api.docs.dto.DocsGetTypesResponse;
import com.vk.sdk.api.docs.dto.DocsSaveResponse;
import com.vk.sdk.api.docs.dto.DocsSearchResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nJ\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005J6\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\n2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0010JM\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u0010\u0019J1\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u00100\u00042\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\n0\u00102\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u0010\u001dJ)\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\"J\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0007J\u0018\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0007J=\u0010(\u001a\b\u0012\u0004\u0012\u00020)0\u00042\u0006\u0010*\u001a\u00020\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u0010+JI\u0010,\u001a\b\u0012\u0004\u0012\u00020-0\u00042\u0006\u0010.\u001a\u00020\n2\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u00100¨\u00061"}, d2 = {"Lcom/vk/sdk/api/docs/DocsService;", "", "()V", "docsAdd", "Lcom/vk/api/sdk/requests/VKRequest;", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "docId", "accessKey", "", "docsDelete", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "docsEdit", "title", "tags", "", "docsGet", "Lcom/vk/sdk/api/docs/dto/DocsGetResponse;", AnimatedPasterJsonConfig.CONFIG_COUNT, TypedValues.CycleType.S_WAVE_OFFSET, "type", "Lcom/vk/sdk/api/docs/dto/DocsGetType;", "returnTags", "", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/docs/dto/DocsGetType;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "docsGetById", "Lcom/vk/sdk/api/docs/dto/DocsDoc;", "docs", "(Ljava/util/List;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "docsGetMessagesUploadServer", "Lcom/vk/sdk/api/base/dto/BaseUploadServer;", "Lcom/vk/sdk/api/docs/dto/DocsGetMessagesUploadServerType;", "peerId", "(Lcom/vk/sdk/api/docs/dto/DocsGetMessagesUploadServerType;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "docsGetTypes", "Lcom/vk/sdk/api/docs/dto/DocsGetTypesResponse;", "docsGetUploadServer", "groupId", "docsGetWallUploadServer", "docsSave", "Lcom/vk/sdk/api/docs/dto/DocsSaveResponse;", ShareInternalUtility.STAGING_PARAM, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "docsSearch", "Lcom/vk/sdk/api/docs/dto/DocsSearchResponse;", "q", "searchOwn", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DocsService {
    public static /* synthetic */ VKRequest docsAdd$default(DocsService docsService, UserId userId, int i9, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str = null;
        }
        return docsService.docsAdd(userId, i9, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: docsAdd$lambda-0  reason: not valid java name */
    public static final Integer m960docsAdd$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: docsDelete$lambda-3  reason: not valid java name */
    public static final BaseOkResponse m961docsDelete$lambda3(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest docsEdit$default(DocsService docsService, UserId userId, int i9, String str, List list, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            list = null;
        }
        return docsService.docsEdit(userId, i9, str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: docsEdit$lambda-5  reason: not valid java name */
    public static final BaseOkResponse m962docsEdit$lambda5(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest docsGet$default(DocsService docsService, Integer num, Integer num2, DocsGetType docsGetType, UserId userId, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            docsGetType = null;
        }
        if ((i9 & 8) != 0) {
            userId = null;
        }
        if ((i9 & 16) != 0) {
            bool = null;
        }
        return docsService.docsGet(num, num2, docsGetType, userId, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: docsGet$lambda-8  reason: not valid java name */
    public static final DocsGetResponse m963docsGet$lambda8(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DocsGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DocsGetResponse.class);
    }

    public static /* synthetic */ VKRequest docsGetById$default(DocsService docsService, List list, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bool = null;
        }
        return docsService.docsGetById(list, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: docsGetById$lambda-15  reason: not valid java name */
    public static final List m964docsGetById$lambda15(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends DocsDoc>>() { // from class: com.vk.sdk.api.docs.DocsService$docsGetById$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest docsGetMessagesUploadServer$default(DocsService docsService, DocsGetMessagesUploadServerType docsGetMessagesUploadServerType, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            docsGetMessagesUploadServerType = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        return docsService.docsGetMessagesUploadServer(docsGetMessagesUploadServerType, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: docsGetMessagesUploadServer$lambda-18  reason: not valid java name */
    public static final BaseUploadServer m965docsGetMessagesUploadServer$lambda18(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseUploadServer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseUploadServer.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: docsGetTypes$lambda-22  reason: not valid java name */
    public static final DocsGetTypesResponse m966docsGetTypes$lambda22(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DocsGetTypesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DocsGetTypesResponse.class);
    }

    public static /* synthetic */ VKRequest docsGetUploadServer$default(DocsService docsService, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        return docsService.docsGetUploadServer(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: docsGetUploadServer$lambda-24  reason: not valid java name */
    public static final BaseUploadServer m967docsGetUploadServer$lambda24(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseUploadServer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseUploadServer.class);
    }

    public static /* synthetic */ VKRequest docsGetWallUploadServer$default(DocsService docsService, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        return docsService.docsGetWallUploadServer(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: docsGetWallUploadServer$lambda-27  reason: not valid java name */
    public static final BaseUploadServer m968docsGetWallUploadServer$lambda27(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseUploadServer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseUploadServer.class);
    }

    public static /* synthetic */ VKRequest docsSave$default(DocsService docsService, String str, String str2, String str3, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        if ((i9 & 4) != 0) {
            str3 = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        return docsService.docsSave(str, str2, str3, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: docsSave$lambda-30  reason: not valid java name */
    public static final DocsSaveResponse m969docsSave$lambda30(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DocsSaveResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DocsSaveResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: docsSearch$lambda-35  reason: not valid java name */
    public static final DocsSearchResponse m970docsSearch$lambda35(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (DocsSearchResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) DocsSearchResponse.class);
    }

    @NotNull
    public final VKRequest<Integer> docsAdd(@NotNull UserId ownerId, int i9, @Nullable String str) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("docs.add", new ApiResponseParser() { // from class: com.vk.sdk.api.docs.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m960docsAdd$lambda0;
                m960docsAdd$lambda0 = DocsService.m960docsAdd$lambda0(jsonElement);
                return m960docsAdd$lambda0;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "doc_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> docsDelete(@NotNull UserId ownerId, int i9) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("docs.delete", new ApiResponseParser() { // from class: com.vk.sdk.api.docs.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m961docsDelete$lambda3;
                m961docsDelete$lambda3 = DocsService.m961docsDelete$lambda3(jsonElement);
                return m961docsDelete$lambda3;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "doc_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> docsEdit(@NotNull UserId ownerId, int i9, @NotNull String title, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        NewApiRequest newApiRequest = new NewApiRequest("docs.edit", new ApiResponseParser() { // from class: com.vk.sdk.api.docs.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m962docsEdit$lambda5;
                m962docsEdit$lambda5 = DocsService.m962docsEdit$lambda5(jsonElement);
                return m962docsEdit$lambda5;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "doc_id", i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "title", title, 0, 128, 4, (Object) null);
        if (list != null) {
            newApiRequest.addParam("tags", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DocsGetResponse> docsGet(@Nullable Integer num, @Nullable Integer num2, @Nullable DocsGetType docsGetType, @Nullable UserId userId, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("docs.get", new ApiResponseParser() { // from class: com.vk.sdk.api.docs.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DocsGetResponse m963docsGet$lambda8;
                m963docsGet$lambda8 = DocsService.m963docsGet$lambda8(jsonElement);
                return m963docsGet$lambda8;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (docsGetType != null) {
            newApiRequest.addParam("type", docsGetType.getValue());
        }
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (bool != null) {
            newApiRequest.addParam("return_tags", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<DocsDoc>> docsGetById(@NotNull List<String> docs, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(docs, "docs");
        NewApiRequest newApiRequest = new NewApiRequest("docs.getById", new ApiResponseParser() { // from class: com.vk.sdk.api.docs.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m964docsGetById$lambda15;
                m964docsGetById$lambda15 = DocsService.m964docsGetById$lambda15(jsonElement);
                return m964docsGetById$lambda15;
            }
        });
        newApiRequest.addParam("docs", docs);
        if (bool != null) {
            newApiRequest.addParam("return_tags", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseUploadServer> docsGetMessagesUploadServer(@Nullable DocsGetMessagesUploadServerType docsGetMessagesUploadServerType, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("docs.getMessagesUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.docs.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseUploadServer m965docsGetMessagesUploadServer$lambda18;
                m965docsGetMessagesUploadServer$lambda18 = DocsService.m965docsGetMessagesUploadServer$lambda18(jsonElement);
                return m965docsGetMessagesUploadServer$lambda18;
            }
        });
        if (docsGetMessagesUploadServerType != null) {
            newApiRequest.addParam("type", docsGetMessagesUploadServerType.getValue());
        }
        if (num != null) {
            newApiRequest.addParam("peer_id", num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DocsGetTypesResponse> docsGetTypes(@NotNull UserId ownerId) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("docs.getTypes", new ApiResponseParser() { // from class: com.vk.sdk.api.docs.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DocsGetTypesResponse m966docsGetTypes$lambda22;
                m966docsGetTypes$lambda22 = DocsService.m966docsGetTypes$lambda22(jsonElement);
                return m966docsGetTypes$lambda22;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseUploadServer> docsGetUploadServer(@Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("docs.getUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.docs.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseUploadServer m967docsGetUploadServer$lambda24;
                m967docsGetUploadServer$lambda24 = DocsService.m967docsGetUploadServer$lambda24(jsonElement);
                return m967docsGetUploadServer$lambda24;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseUploadServer> docsGetWallUploadServer(@Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("docs.getWallUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.docs.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseUploadServer m968docsGetWallUploadServer$lambda27;
                m968docsGetWallUploadServer$lambda27 = DocsService.m968docsGetWallUploadServer$lambda27(jsonElement);
                return m968docsGetWallUploadServer$lambda27;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DocsSaveResponse> docsSave(@NotNull String file, @Nullable String str, @Nullable String str2, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(file, "file");
        NewApiRequest newApiRequest = new NewApiRequest("docs.save", new ApiResponseParser() { // from class: com.vk.sdk.api.docs.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DocsSaveResponse m969docsSave$lambda30;
                m969docsSave$lambda30 = DocsService.m969docsSave$lambda30(jsonElement);
                return m969docsSave$lambda30;
            }
        });
        newApiRequest.addParam(ShareInternalUtility.STAGING_PARAM, file);
        if (str != null) {
            newApiRequest.addParam("title", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("tags", str2);
        }
        if (bool != null) {
            newApiRequest.addParam("return_tags", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<DocsSearchResponse> docsSearch(@NotNull String q10, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(q10, "q");
        NewApiRequest newApiRequest = new NewApiRequest("docs.search", new ApiResponseParser() { // from class: com.vk.sdk.api.docs.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                DocsSearchResponse m970docsSearch$lambda35;
                m970docsSearch$lambda35 = DocsService.m970docsSearch$lambda35(jsonElement);
                return m970docsSearch$lambda35;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "q", q10, 0, 512, 4, (Object) null);
        if (bool != null) {
            newApiRequest.addParam("search_own", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool2 != null) {
            newApiRequest.addParam("return_tags", bool2.booleanValue());
        }
        return newApiRequest;
    }
}
