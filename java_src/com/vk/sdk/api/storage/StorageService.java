package com.vk.sdk.api.storage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
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
import com.vk.sdk.api.storage.dto.StorageValue;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J<\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bJ;\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00050\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u0010J,\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00042\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/storage/StorageService;", "", "()V", "storageGet", "Lcom/vk/api/sdk/requests/VKRequest;", "", "Lcom/vk/sdk/api/storage/dto/StorageValue;", "key", "", "keys", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "storageGetKeys", TypedValues.CycleType.S_WAVE_OFFSET, "", AnimatedPasterJsonConfig.CONFIG_COUNT, "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "storageSet", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "value", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StorageService {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest storageGet$default(StorageService storageService, String str, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            list = null;
        }
        if ((i9 & 4) != 0) {
            userId = null;
        }
        return storageService.storageGet(str, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storageGet$lambda-0  reason: not valid java name */
    public static final List m1298storageGet$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends StorageValue>>() { // from class: com.vk.sdk.api.storage.StorageService$storageGet$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest storageGetKeys$default(StorageService storageService, UserId userId, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        return storageService.storageGetKeys(userId, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storageGetKeys$lambda-5  reason: not valid java name */
    public static final List m1299storageGetKeys$lambda5(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends String>>() { // from class: com.vk.sdk.api.storage.StorageService$storageGetKeys$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest storageSet$default(StorageService storageService, String str, String str2, UserId userId, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        if ((i9 & 4) != 0) {
            userId = null;
        }
        return storageService.storageSet(str, str2, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: storageSet$lambda-10  reason: not valid java name */
    public static final BaseOkResponse m1300storageSet$lambda10(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<List<StorageValue>> storageGet(@Nullable String str, @Nullable List<String> list, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("storage.get", new ApiResponseParser() { // from class: com.vk.sdk.api.storage.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1298storageGet$lambda0;
                m1298storageGet$lambda0 = StorageService.m1298storageGet$lambda0(jsonElement);
                return m1298storageGet$lambda0;
            }
        });
        if (str != null) {
            NewApiRequest.addParam$default(newApiRequest, "key", str, 0, 100, 4, (Object) null);
        }
        if (list != null) {
            newApiRequest.addParam("keys", list);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<String>> storageGetKeys(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("storage.getKeys", new ApiResponseParser() { // from class: com.vk.sdk.api.storage.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1299storageGetKeys$lambda5;
                m1299storageGetKeys$lambda5 = StorageService.m1299storageGetKeys$lambda5(jsonElement);
                return m1299storageGetKeys$lambda5;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> storageSet(@NotNull String key, @Nullable String str, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(key, "key");
        NewApiRequest newApiRequest = new NewApiRequest("storage.set", new ApiResponseParser() { // from class: com.vk.sdk.api.storage.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1300storageSet$lambda10;
                m1300storageSet$lambda10 = StorageService.m1300storageSet$lambda10(jsonElement);
                return m1300storageSet$lambda10;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "key", key, 0, 100, 4, (Object) null);
        if (str != null) {
            newApiRequest.addParam("value", str);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }
}
