package com.vk.sdk.api.appWidgets;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.appWidgets.dto.AppWidgetsGetAppImageUploadServerImageType;
import com.vk.sdk.api.appWidgets.dto.AppWidgetsGetAppImageUploadServerResponse;
import com.vk.sdk.api.appWidgets.dto.AppWidgetsGetAppImagesImageType;
import com.vk.sdk.api.appWidgets.dto.AppWidgetsGetGroupImageUploadServerImageType;
import com.vk.sdk.api.appWidgets.dto.AppWidgetsGetGroupImageUploadServerResponse;
import com.vk.sdk.api.appWidgets.dto.AppWidgetsGetGroupImagesImageType;
import com.vk.sdk.api.appWidgets.dto.AppWidgetsPhoto;
import com.vk.sdk.api.appWidgets.dto.AppWidgetsPhotos;
import com.vk.sdk.api.appWidgets.dto.AppWidgetsUpdateType;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J5\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00042\u0006\u0010\u0006\u001a\u00020\u0011J5\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010\u0014J \u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\u00042\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0016J\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u00042\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0019J\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00170\u00042\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0019J\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00042\u0006\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/appWidgets/AppWidgetsService;", "", "()V", "appWidgetsGetAppImageUploadServer", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsGetAppImageUploadServerResponse;", "imageType", "Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsGetAppImageUploadServerImageType;", "appWidgetsGetAppImages", "Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsPhotos;", TypedValues.CycleType.S_WAVE_OFFSET, "", AnimatedPasterJsonConfig.CONFIG_COUNT, "Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsGetAppImagesImageType;", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsGetAppImagesImageType;)Lcom/vk/api/sdk/requests/VKRequest;", "appWidgetsGetGroupImageUploadServer", "Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsGetGroupImageUploadServerResponse;", "Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsGetGroupImageUploadServerImageType;", "appWidgetsGetGroupImages", "Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsGetGroupImagesImageType;", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsGetGroupImagesImageType;)Lcom/vk/api/sdk/requests/VKRequest;", "appWidgetsGetImagesById", "", "Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsPhoto;", "images", "", "appWidgetsSaveAppImage", "hash", "image", "appWidgetsSaveGroupImage", "appWidgetsUpdate", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "code", "type", "Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsUpdateType;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppWidgetsService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appWidgetsGetAppImageUploadServer$lambda-0  reason: not valid java name */
    public static final AppWidgetsGetAppImageUploadServerResponse m911appWidgetsGetAppImageUploadServer$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppWidgetsGetAppImageUploadServerResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppWidgetsGetAppImageUploadServerResponse.class);
    }

    public static /* synthetic */ VKRequest appWidgetsGetAppImages$default(AppWidgetsService appWidgetsService, Integer num, Integer num2, AppWidgetsGetAppImagesImageType appWidgetsGetAppImagesImageType, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            appWidgetsGetAppImagesImageType = null;
        }
        return appWidgetsService.appWidgetsGetAppImages(num, num2, appWidgetsGetAppImagesImageType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appWidgetsGetAppImages$lambda-2  reason: not valid java name */
    public static final AppWidgetsPhotos m912appWidgetsGetAppImages$lambda2(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppWidgetsPhotos) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppWidgetsPhotos.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appWidgetsGetGroupImageUploadServer$lambda-7  reason: not valid java name */
    public static final AppWidgetsGetGroupImageUploadServerResponse m913appWidgetsGetGroupImageUploadServer$lambda7(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppWidgetsGetGroupImageUploadServerResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppWidgetsGetGroupImageUploadServerResponse.class);
    }

    public static /* synthetic */ VKRequest appWidgetsGetGroupImages$default(AppWidgetsService appWidgetsService, Integer num, Integer num2, AppWidgetsGetGroupImagesImageType appWidgetsGetGroupImagesImageType, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            appWidgetsGetGroupImagesImageType = null;
        }
        return appWidgetsService.appWidgetsGetGroupImages(num, num2, appWidgetsGetGroupImagesImageType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appWidgetsGetGroupImages$lambda-9  reason: not valid java name */
    public static final AppWidgetsPhotos m914appWidgetsGetGroupImages$lambda9(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppWidgetsPhotos) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppWidgetsPhotos.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appWidgetsGetImagesById$lambda-14  reason: not valid java name */
    public static final List m915appWidgetsGetImagesById$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends AppWidgetsPhoto>>() { // from class: com.vk.sdk.api.appWidgets.AppWidgetsService$appWidgetsGetImagesById$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appWidgetsSaveAppImage$lambda-16  reason: not valid java name */
    public static final AppWidgetsPhoto m916appWidgetsSaveAppImage$lambda16(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppWidgetsPhoto) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppWidgetsPhoto.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appWidgetsSaveGroupImage$lambda-18  reason: not valid java name */
    public static final AppWidgetsPhoto m917appWidgetsSaveGroupImage$lambda18(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (AppWidgetsPhoto) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) AppWidgetsPhoto.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: appWidgetsUpdate$lambda-20  reason: not valid java name */
    public static final BaseOkResponse m918appWidgetsUpdate$lambda20(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    @NotNull
    public final VKRequest<AppWidgetsGetAppImageUploadServerResponse> appWidgetsGetAppImageUploadServer(@NotNull AppWidgetsGetAppImageUploadServerImageType imageType) {
        Intrinsics.checkNotNullParameter(imageType, "imageType");
        NewApiRequest newApiRequest = new NewApiRequest("appWidgets.getAppImageUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.appWidgets.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppWidgetsGetAppImageUploadServerResponse m911appWidgetsGetAppImageUploadServer$lambda0;
                m911appWidgetsGetAppImageUploadServer$lambda0 = AppWidgetsService.m911appWidgetsGetAppImageUploadServer$lambda0(jsonElement);
                return m911appWidgetsGetAppImageUploadServer$lambda0;
            }
        });
        newApiRequest.addParam("image_type", imageType.getValue());
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppWidgetsPhotos> appWidgetsGetAppImages(@Nullable Integer num, @Nullable Integer num2, @Nullable AppWidgetsGetAppImagesImageType appWidgetsGetAppImagesImageType) {
        NewApiRequest newApiRequest = new NewApiRequest("appWidgets.getAppImages", new ApiResponseParser() { // from class: com.vk.sdk.api.appWidgets.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppWidgetsPhotos m912appWidgetsGetAppImages$lambda2;
                m912appWidgetsGetAppImages$lambda2 = AppWidgetsService.m912appWidgetsGetAppImages$lambda2(jsonElement);
                return m912appWidgetsGetAppImages$lambda2;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        if (appWidgetsGetAppImagesImageType != null) {
            newApiRequest.addParam("image_type", appWidgetsGetAppImagesImageType.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppWidgetsGetGroupImageUploadServerResponse> appWidgetsGetGroupImageUploadServer(@NotNull AppWidgetsGetGroupImageUploadServerImageType imageType) {
        Intrinsics.checkNotNullParameter(imageType, "imageType");
        NewApiRequest newApiRequest = new NewApiRequest("appWidgets.getGroupImageUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.appWidgets.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppWidgetsGetGroupImageUploadServerResponse m913appWidgetsGetGroupImageUploadServer$lambda7;
                m913appWidgetsGetGroupImageUploadServer$lambda7 = AppWidgetsService.m913appWidgetsGetGroupImageUploadServer$lambda7(jsonElement);
                return m913appWidgetsGetGroupImageUploadServer$lambda7;
            }
        });
        newApiRequest.addParam("image_type", imageType.getValue());
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppWidgetsPhotos> appWidgetsGetGroupImages(@Nullable Integer num, @Nullable Integer num2, @Nullable AppWidgetsGetGroupImagesImageType appWidgetsGetGroupImagesImageType) {
        NewApiRequest newApiRequest = new NewApiRequest("appWidgets.getGroupImages", new ApiResponseParser() { // from class: com.vk.sdk.api.appWidgets.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppWidgetsPhotos m914appWidgetsGetGroupImages$lambda9;
                m914appWidgetsGetGroupImages$lambda9 = AppWidgetsService.m914appWidgetsGetGroupImages$lambda9(jsonElement);
                return m914appWidgetsGetGroupImages$lambda9;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        if (appWidgetsGetGroupImagesImageType != null) {
            newApiRequest.addParam("image_type", appWidgetsGetGroupImagesImageType.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<AppWidgetsPhoto>> appWidgetsGetImagesById(@NotNull List<String> images) {
        Intrinsics.checkNotNullParameter(images, "images");
        NewApiRequest newApiRequest = new NewApiRequest("appWidgets.getImagesById", new ApiResponseParser() { // from class: com.vk.sdk.api.appWidgets.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m915appWidgetsGetImagesById$lambda14;
                m915appWidgetsGetImagesById$lambda14 = AppWidgetsService.m915appWidgetsGetImagesById$lambda14(jsonElement);
                return m915appWidgetsGetImagesById$lambda14;
            }
        });
        newApiRequest.addParam("images", images);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppWidgetsPhoto> appWidgetsSaveAppImage(@NotNull String hash, @NotNull String image) {
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(image, "image");
        NewApiRequest newApiRequest = new NewApiRequest("appWidgets.saveAppImage", new ApiResponseParser() { // from class: com.vk.sdk.api.appWidgets.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppWidgetsPhoto m916appWidgetsSaveAppImage$lambda16;
                m916appWidgetsSaveAppImage$lambda16 = AppWidgetsService.m916appWidgetsSaveAppImage$lambda16(jsonElement);
                return m916appWidgetsSaveAppImage$lambda16;
            }
        });
        newApiRequest.addParam("hash", hash);
        newApiRequest.addParam("image", image);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<AppWidgetsPhoto> appWidgetsSaveGroupImage(@NotNull String hash, @NotNull String image) {
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(image, "image");
        NewApiRequest newApiRequest = new NewApiRequest("appWidgets.saveGroupImage", new ApiResponseParser() { // from class: com.vk.sdk.api.appWidgets.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                AppWidgetsPhoto m917appWidgetsSaveGroupImage$lambda18;
                m917appWidgetsSaveGroupImage$lambda18 = AppWidgetsService.m917appWidgetsSaveGroupImage$lambda18(jsonElement);
                return m917appWidgetsSaveGroupImage$lambda18;
            }
        });
        newApiRequest.addParam("hash", hash);
        newApiRequest.addParam("image", image);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> appWidgetsUpdate(@NotNull String code, @NotNull AppWidgetsUpdateType type) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(type, "type");
        NewApiRequest newApiRequest = new NewApiRequest("appWidgets.update", new ApiResponseParser() { // from class: com.vk.sdk.api.appWidgets.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m918appWidgetsUpdate$lambda20;
                m918appWidgetsUpdate$lambda20 = AppWidgetsService.m918appWidgetsUpdate$lambda20(jsonElement);
                return m918appWidgetsUpdate$lambda20;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "code", code, 0, (int) BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH, 4, (Object) null);
        newApiRequest.addParam("type", type.getValue());
        return newApiRequest;
    }
}
