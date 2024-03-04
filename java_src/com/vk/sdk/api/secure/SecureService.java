package com.vk.sdk.api.secure;

import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.AccessToken;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.utils.Contants;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.secure.dto.SecureGiveEventStickerItem;
import com.vk.sdk.api.secure.dto.SecureLevel;
import com.vk.sdk.api.secure.dto.SecureSmsNotification;
import com.vk.sdk.api.secure.dto.SecureTokenChecked;
import com.vk.sdk.api.secure.dto.SecureTransaction;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J-\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ$\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u0004JG\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0018J_\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u00130\u00042\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u001eJ \u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u00130\u00042\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013J(\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\u00130\u00042\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00070\u00132\u0006\u0010$\u001a\u00020\tJ8\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00130\u00042\u0006\u0010&\u001a\u00020\u000f2\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00132\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u001c\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u000fJG\u0010(\u001a\b\u0012\u0004\u0012\u00020)0\u00042\u0010\b\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00132\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-¢\u0006\u0002\u0010.¨\u0006/"}, d2 = {"Lcom/vk/sdk/api/secure/SecureService;", "", "()V", "secureAddAppEvent", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", AdUnitActivity.EXTRA_ACTIVITY_ID, "", "value", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "secureCheckToken", "Lcom/vk/sdk/api/secure/dto/SecureTokenChecked;", JThirdPlatFormInterface.KEY_TOKEN, "", "ip", "secureGetAppBalance", "secureGetSMSHistory", "", "Lcom/vk/sdk/api/secure/dto/SecureSmsNotification;", "dateFrom", "dateTo", "limit", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "secureGetTransactionsHistory", "Lcom/vk/sdk/api/secure/dto/SecureTransaction;", "type", "uidFrom", "uidTo", "(Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "secureGetUserLevel", "Lcom/vk/sdk/api/secure/dto/SecureLevel;", "userIds", "secureGiveEventSticker", "Lcom/vk/sdk/api/secure/dto/SecureGiveEventStickerItem;", "achievementId", "secureSendNotification", "message", "secureSendSMSNotification", "secureSetCounter", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "counters", "counter", "increment", "", "(Ljava/util/List;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class SecureService {
    public static /* synthetic */ VKRequest secureAddAppEvent$default(SecureService secureService, UserId userId, int i9, Integer num, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            num = null;
        }
        return secureService.secureAddAppEvent(userId, i9, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: secureAddAppEvent$lambda-0  reason: not valid java name */
    public static final BaseOkResponse m1283secureAddAppEvent$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest secureCheckToken$default(SecureService secureService, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        return secureService.secureCheckToken(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: secureCheckToken$lambda-3  reason: not valid java name */
    public static final SecureTokenChecked m1284secureCheckToken$lambda3(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (SecureTokenChecked) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) SecureTokenChecked.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: secureGetAppBalance$lambda-7  reason: not valid java name */
    public static final int m1285secureGetAppBalance$lambda7(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object fromJson = GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
        Intrinsics.checkNotNullExpressionValue(fromJson, "GsonHolder.gson.fromJson(it, Int::class.java)");
        return ((Number) fromJson).intValue();
    }

    public static /* synthetic */ VKRequest secureGetSMSHistory$default(SecureService secureService, UserId userId, Integer num, Integer num2, Integer num3, int i9, Object obj) {
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
        return secureService.secureGetSMSHistory(userId, num, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: secureGetSMSHistory$lambda-8  reason: not valid java name */
    public static final List m1286secureGetSMSHistory$lambda8(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends SecureSmsNotification>>() { // from class: com.vk.sdk.api.secure.SecureService$secureGetSMSHistory$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest secureGetTransactionsHistory$default(SecureService secureService, Integer num, UserId userId, UserId userId2, Integer num2, Integer num3, Integer num4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            userId = null;
        }
        if ((i9 & 4) != 0) {
            userId2 = null;
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
        return secureService.secureGetTransactionsHistory(num, userId, userId2, num2, num3, num4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: secureGetTransactionsHistory$lambda-14  reason: not valid java name */
    public static final List m1287secureGetTransactionsHistory$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends SecureTransaction>>() { // from class: com.vk.sdk.api.secure.SecureService$secureGetTransactionsHistory$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: secureGetUserLevel$lambda-22  reason: not valid java name */
    public static final List m1288secureGetUserLevel$lambda22(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends SecureLevel>>() { // from class: com.vk.sdk.api.secure.SecureService$secureGetUserLevel$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: secureGiveEventSticker$lambda-24  reason: not valid java name */
    public static final List m1289secureGiveEventSticker$lambda24(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends SecureGiveEventStickerItem>>() { // from class: com.vk.sdk.api.secure.SecureService$secureGiveEventSticker$1$typeToken$1
        }.getType());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest secureSendNotification$default(SecureService secureService, String str, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            list = null;
        }
        if ((i9 & 4) != 0) {
            userId = null;
        }
        return secureService.secureSendNotification(str, list, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: secureSendNotification$lambda-26  reason: not valid java name */
    public static final List m1290secureSendNotification$lambda26(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends UserId>>() { // from class: com.vk.sdk.api.secure.SecureService$secureSendNotification$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: secureSendSMSNotification$lambda-30  reason: not valid java name */
    public static final BaseOkResponse m1291secureSendSMSNotification$lambda30(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest secureSetCounter$default(SecureService secureService, List list, UserId userId, Integer num, Boolean bool, int i9, Object obj) {
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
            bool = null;
        }
        return secureService.secureSetCounter(list, userId, num, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: secureSetCounter$lambda-32  reason: not valid java name */
    public static final BaseBoolInt m1292secureSetCounter$lambda32(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    @NotNull
    public final VKRequest<BaseOkResponse> secureAddAppEvent(@NotNull UserId userId, int i9, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("secure.addAppEvent", new ApiResponseParser() { // from class: com.vk.sdk.api.secure.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1283secureAddAppEvent$lambda0;
                m1283secureAddAppEvent$lambda0 = SecureService.m1283secureAddAppEvent$lambda0(jsonElement);
                return m1283secureAddAppEvent$lambda0;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "activity_id", i9, 0, 0, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "value", num.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<SecureTokenChecked> secureCheckToken(@Nullable String str, @Nullable String str2) {
        NewApiRequest newApiRequest = new NewApiRequest("secure.checkToken", new ApiResponseParser() { // from class: com.vk.sdk.api.secure.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                SecureTokenChecked m1284secureCheckToken$lambda3;
                m1284secureCheckToken$lambda3 = SecureService.m1284secureCheckToken$lambda3(jsonElement);
                return m1284secureCheckToken$lambda3;
            }
        });
        if (str != null) {
            newApiRequest.addParam(JThirdPlatFormInterface.KEY_TOKEN, str);
        }
        if (str2 != null) {
            newApiRequest.addParam("ip", str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> secureGetAppBalance() {
        return new NewApiRequest("secure.getAppBalance", new ApiResponseParser() { // from class: com.vk.sdk.api.secure.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                int m1285secureGetAppBalance$lambda7;
                m1285secureGetAppBalance$lambda7 = SecureService.m1285secureGetAppBalance$lambda7(jsonElement);
                return Integer.valueOf(m1285secureGetAppBalance$lambda7);
            }
        });
    }

    @NotNull
    public final VKRequest<List<SecureSmsNotification>> secureGetSMSHistory(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("secure.getSMSHistory", new ApiResponseParser() { // from class: com.vk.sdk.api.secure.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1286secureGetSMSHistory$lambda8;
                m1286secureGetSMSHistory$lambda8 = SecureService.m1286secureGetSMSHistory$lambda8(jsonElement);
                return m1286secureGetSMSHistory$lambda8;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "date_from", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "date_to", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam("limit", num3.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<SecureTransaction>> secureGetTransactionsHistory(@Nullable Integer num, @Nullable UserId userId, @Nullable UserId userId2, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4) {
        NewApiRequest newApiRequest = new NewApiRequest("secure.getTransactionsHistory", new ApiResponseParser() { // from class: com.vk.sdk.api.secure.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1287secureGetTransactionsHistory$lambda14;
                m1287secureGetTransactionsHistory$lambda14 = SecureService.m1287secureGetTransactionsHistory$lambda14(jsonElement);
                return m1287secureGetTransactionsHistory$lambda14;
            }
        });
        if (num != null) {
            newApiRequest.addParam("type", num.intValue());
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "uid_from", userId, 1L, 0L, 8, (Object) null);
        }
        if (userId2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "uid_to", userId2, 1L, 0L, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "date_from", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "date_to", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            newApiRequest.addParam("limit", num4.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<SecureLevel>> secureGetUserLevel(@NotNull List<UserId> userIds) {
        Intrinsics.checkNotNullParameter(userIds, "userIds");
        NewApiRequest newApiRequest = new NewApiRequest("secure.getUserLevel", new ApiResponseParser() { // from class: com.vk.sdk.api.secure.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1288secureGetUserLevel$lambda22;
                m1288secureGetUserLevel$lambda22 = SecureService.m1288secureGetUserLevel$lambda22(jsonElement);
                return m1288secureGetUserLevel$lambda22;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "user_ids", userIds, 0L, 0L, 12, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<SecureGiveEventStickerItem>> secureGiveEventSticker(@NotNull List<UserId> userIds, int i9) {
        Intrinsics.checkNotNullParameter(userIds, "userIds");
        NewApiRequest newApiRequest = new NewApiRequest("secure.giveEventSticker", new ApiResponseParser() { // from class: com.vk.sdk.api.secure.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1289secureGiveEventSticker$lambda24;
                m1289secureGiveEventSticker$lambda24 = SecureService.m1289secureGiveEventSticker$lambda24(jsonElement);
                return m1289secureGiveEventSticker$lambda24;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "user_ids", userIds, 0L, 0L, 12, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "achievement_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<UserId>> secureSendNotification(@NotNull String message, @Nullable List<UserId> list, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(message, "message");
        NewApiRequest newApiRequest = new NewApiRequest("secure.sendNotification", new ApiResponseParser() { // from class: com.vk.sdk.api.secure.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1290secureSendNotification$lambda26;
                m1290secureSendNotification$lambda26 = SecureService.m1290secureSendNotification$lambda26(jsonElement);
                return m1290secureSendNotification$lambda26;
            }
        });
        newApiRequest.addParam("message", message);
        if (list != null) {
            NewApiRequest.addParam$default(newApiRequest, "user_ids", list, 0L, 0L, 12, (Object) null);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> secureSendSMSNotification(@NotNull UserId userId, @NotNull String message) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(message, "message");
        NewApiRequest newApiRequest = new NewApiRequest("secure.sendSMSNotification", new ApiResponseParser() { // from class: com.vk.sdk.api.secure.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1291secureSendSMSNotification$lambda30;
                m1291secureSendSMSNotification$lambda30 = SecureService.m1291secureSendSMSNotification$lambda30(jsonElement);
                return m1291secureSendSMSNotification$lambda30;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        newApiRequest.addParam("message", message);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> secureSetCounter(@Nullable List<String> list, @Nullable UserId userId, @Nullable Integer num, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("secure.setCounter", new ApiResponseParser() { // from class: com.vk.sdk.api.secure.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1292secureSetCounter$lambda32;
                m1292secureSetCounter$lambda32 = SecureService.m1292secureSetCounter$lambda32(jsonElement);
                return m1292secureSetCounter$lambda32;
            }
        });
        if (list != null) {
            newApiRequest.addParam("counters", list);
        }
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            newApiRequest.addParam("counter", num.intValue());
        }
        if (bool != null) {
            newApiRequest.addParam("increment", bool.booleanValue());
        }
        return newApiRequest;
    }
}
