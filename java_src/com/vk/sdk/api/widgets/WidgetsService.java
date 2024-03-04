package com.vk.sdk.api.widgets;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.GraphRequest;
import com.google.gson.JsonElement;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.users.dto.UsersFields;
import com.vk.sdk.api.widgets.WidgetsService;
import com.vk.sdk.api.widgets.dto.WidgetsGetCommentsResponse;
import com.vk.sdk.api.widgets.dto.WidgetsGetPagesResponse;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002Jk\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0011JM\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/widgets/WidgetsService;", "", "()V", "widgetsGetComments", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/widgets/dto/WidgetsGetCommentsResponse;", "widgetApiId", "", "url", "", "pageId", "order", GraphRequest.FIELDS_PARAM, "", "Lcom/vk/sdk/api/users/dto/UsersFields;", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "widgetsGetPages", "Lcom/vk/sdk/api/widgets/dto/WidgetsGetPagesResponse;", "period", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WidgetsService {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest widgetsGetComments$default(WidgetsService widgetsService, Integer num, String str, String str2, String str3, List list, Integer num2, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            str2 = null;
        }
        if ((i9 & 8) != 0) {
            str3 = null;
        }
        if ((i9 & 16) != 0) {
            list = null;
        }
        if ((i9 & 32) != 0) {
            num2 = null;
        }
        if ((i9 & 64) != 0) {
            num3 = null;
        }
        return widgetsService.widgetsGetComments(num, str, str2, str3, list, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: widgetsGetComments$lambda-0  reason: not valid java name */
    public static final WidgetsGetCommentsResponse m1400widgetsGetComments$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WidgetsGetCommentsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WidgetsGetCommentsResponse.class);
    }

    public static /* synthetic */ VKRequest widgetsGetPages$default(WidgetsService widgetsService, Integer num, String str, String str2, Integer num2, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            str2 = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            num3 = null;
        }
        return widgetsService.widgetsGetPages(num, str, str2, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: widgetsGetPages$lambda-10  reason: not valid java name */
    public static final WidgetsGetPagesResponse m1401widgetsGetPages$lambda10(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (WidgetsGetPagesResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) WidgetsGetPagesResponse.class);
    }

    @NotNull
    public final VKRequest<WidgetsGetCommentsResponse> widgetsGetComments(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable List<? extends UsersFields> list, @Nullable Integer num2, @Nullable Integer num3) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("widgets.getComments", new ApiResponseParser() { // from class: rf.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WidgetsGetCommentsResponse m1400widgetsGetComments$lambda0;
                m1400widgetsGetComments$lambda0 = WidgetsService.m1400widgetsGetComments$lambda0(jsonElement);
                return m1400widgetsGetComments$lambda0;
            }
        });
        if (num != null) {
            newApiRequest.addParam("widget_api_id", num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("url", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("page_id", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("order", str3);
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
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 10, 200);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<WidgetsGetPagesResponse> widgetsGetPages(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("widgets.getPages", new ApiResponseParser() { // from class: rf.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                WidgetsGetPagesResponse m1401widgetsGetPages$lambda10;
                m1401widgetsGetPages$lambda10 = WidgetsService.m1401widgetsGetPages$lambda10(jsonElement);
                return m1401widgetsGetPages$lambda10;
            }
        });
        if (num != null) {
            newApiRequest.addParam("widget_api_id", num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("order", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("period", str2);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 10, 200);
        }
        return newApiRequest;
    }
}
