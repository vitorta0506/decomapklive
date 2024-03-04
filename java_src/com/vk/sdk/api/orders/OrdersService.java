package com.vk.sdk.api.orders;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.facebook.internal.NativeProtocol;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.utils.Contants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.orders.dto.OrdersAmount;
import com.vk.sdk.api.orders.dto.OrdersChangeStateAction;
import com.vk.sdk.api.orders.dto.OrdersGetUserSubscriptionsResponse;
import com.vk.sdk.api.orders.dto.OrdersOrder;
import com.vk.sdk.api.orders.dto.OrdersSubscription;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J-\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ9\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00042\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0014J;\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u001aJ(\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00160\u00042\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0016JA\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00162\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010 J\u001c\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J$\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010&\u001a\u00020\t¨\u0006'"}, d2 = {"Lcom/vk/sdk/api/orders/OrdersService;", "", "()V", "ordersCancelSubscription", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "subscriptionId", "", "pendingCancel", "", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "ordersChangeState", "", "orderId", NativeProtocol.WEB_DIALOG_ACTION, "Lcom/vk/sdk/api/orders/dto/OrdersChangeStateAction;", "appOrderId", "testMode", "(ILcom/vk/sdk/api/orders/dto/OrdersChangeStateAction;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "ordersGet", "", "Lcom/vk/sdk/api/orders/dto/OrdersOrder;", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "ordersGetAmount", "Lcom/vk/sdk/api/orders/dto/OrdersAmount;", "votes", "ordersGetById", "orderIds", "(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "ordersGetUserSubscriptionById", "Lcom/vk/sdk/api/orders/dto/OrdersSubscription;", "ordersGetUserSubscriptions", "Lcom/vk/sdk/api/orders/dto/OrdersGetUserSubscriptionsResponse;", "ordersUpdateSubscription", InAppPurchaseMetaData.KEY_PRICE, "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class OrdersService {
    public static /* synthetic */ VKRequest ordersCancelSubscription$default(OrdersService ordersService, UserId userId, int i9, Boolean bool, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bool = null;
        }
        return ordersService.ordersCancelSubscription(userId, i9, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ordersCancelSubscription$lambda-0  reason: not valid java name */
    public static final BaseBoolInt m1199ordersCancelSubscription$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    public static /* synthetic */ VKRequest ordersChangeState$default(OrdersService ordersService, int i9, OrdersChangeStateAction ordersChangeStateAction, Integer num, Boolean bool, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            bool = null;
        }
        return ordersService.ordersChangeState(i9, ordersChangeStateAction, num, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ordersChangeState$lambda-3  reason: not valid java name */
    public static final String m1200ordersChangeState$lambda3(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (String) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) String.class);
    }

    public static /* synthetic */ VKRequest ordersGet$default(OrdersService ordersService, Integer num, Integer num2, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        if ((i9 & 4) != 0) {
            bool = null;
        }
        return ordersService.ordersGet(num, num2, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ordersGet$lambda-7  reason: not valid java name */
    public static final List m1201ordersGet$lambda7(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends OrdersOrder>>() { // from class: com.vk.sdk.api.orders.OrdersService$ordersGet$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ordersGetAmount$lambda-12  reason: not valid java name */
    public static final List m1202ordersGetAmount$lambda12(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends OrdersAmount>>() { // from class: com.vk.sdk.api.orders.OrdersService$ordersGetAmount$1$typeToken$1
        }.getType());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest ordersGetById$default(OrdersService ordersService, Integer num, List list, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            list = null;
        }
        if ((i9 & 4) != 0) {
            bool = null;
        }
        return ordersService.ordersGetById(num, list, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ordersGetById$lambda-14  reason: not valid java name */
    public static final List m1203ordersGetById$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends OrdersOrder>>() { // from class: com.vk.sdk.api.orders.OrdersService$ordersGetById$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ordersGetUserSubscriptionById$lambda-19  reason: not valid java name */
    public static final OrdersSubscription m1204ordersGetUserSubscriptionById$lambda19(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (OrdersSubscription) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) OrdersSubscription.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ordersGetUserSubscriptions$lambda-21  reason: not valid java name */
    public static final OrdersGetUserSubscriptionsResponse m1205ordersGetUserSubscriptions$lambda21(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (OrdersGetUserSubscriptionsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) OrdersGetUserSubscriptionsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ordersUpdateSubscription$lambda-23  reason: not valid java name */
    public static final BaseBoolInt m1206ordersUpdateSubscription$lambda23(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    @NotNull
    public final VKRequest<BaseBoolInt> ordersCancelSubscription(@NotNull UserId userId, int i9, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("orders.cancelSubscription", new ApiResponseParser() { // from class: com.vk.sdk.api.orders.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1199ordersCancelSubscription$lambda0;
                m1199ordersCancelSubscription$lambda0 = OrdersService.m1199ordersCancelSubscription$lambda0(jsonElement);
                return m1199ordersCancelSubscription$lambda0;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "subscription_id", i9, 0, 0, 8, (Object) null);
        if (bool != null) {
            newApiRequest.addParam("pending_cancel", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<String> ordersChangeState(int i9, @NotNull OrdersChangeStateAction action, @Nullable Integer num, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(action, "action");
        NewApiRequest newApiRequest = new NewApiRequest("orders.changeState", new ApiResponseParser() { // from class: com.vk.sdk.api.orders.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                String m1200ordersChangeState$lambda3;
                m1200ordersChangeState$lambda3 = OrdersService.m1200ordersChangeState$lambda3(jsonElement);
                return m1200ordersChangeState$lambda3;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "order_id", i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam(NativeProtocol.WEB_DIALOG_ACTION, action.getValue());
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "app_order_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("test_mode", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<OrdersOrder>> ordersGet(@Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("orders.get", new ApiResponseParser() { // from class: com.vk.sdk.api.orders.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1201ordersGet$lambda7;
                m1201ordersGet$lambda7 = OrdersService.m1201ordersGet$lambda7(jsonElement);
                return m1201ordersGet$lambda7;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
        }
        if (bool != null) {
            newApiRequest.addParam("test_mode", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<OrdersAmount>> ordersGetAmount(@NotNull UserId userId, @NotNull List<String> votes) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(votes, "votes");
        NewApiRequest newApiRequest = new NewApiRequest("orders.getAmount", new ApiResponseParser() { // from class: com.vk.sdk.api.orders.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1202ordersGetAmount$lambda12;
                m1202ordersGetAmount$lambda12 = OrdersService.m1202ordersGetAmount$lambda12(jsonElement);
                return m1202ordersGetAmount$lambda12;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        newApiRequest.addParam("votes", votes);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<OrdersOrder>> ordersGetById(@Nullable Integer num, @Nullable List<Integer> list, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("orders.getById", new ApiResponseParser() { // from class: com.vk.sdk.api.orders.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1203ordersGetById$lambda14;
                m1203ordersGetById$lambda14 = OrdersService.m1203ordersGetById$lambda14(jsonElement);
                return m1203ordersGetById$lambda14;
            }
        });
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "order_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (list != null) {
            newApiRequest.addParam("order_ids", list);
        }
        if (bool != null) {
            newApiRequest.addParam("test_mode", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<OrdersSubscription> ordersGetUserSubscriptionById(@NotNull UserId userId, int i9) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("orders.getUserSubscriptionById", new ApiResponseParser() { // from class: com.vk.sdk.api.orders.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                OrdersSubscription m1204ordersGetUserSubscriptionById$lambda19;
                m1204ordersGetUserSubscriptionById$lambda19 = OrdersService.m1204ordersGetUserSubscriptionById$lambda19(jsonElement);
                return m1204ordersGetUserSubscriptionById$lambda19;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "subscription_id", i9, 0, 0, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<OrdersGetUserSubscriptionsResponse> ordersGetUserSubscriptions(@NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("orders.getUserSubscriptions", new ApiResponseParser() { // from class: com.vk.sdk.api.orders.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                OrdersGetUserSubscriptionsResponse m1205ordersGetUserSubscriptions$lambda21;
                m1205ordersGetUserSubscriptions$lambda21 = OrdersService.m1205ordersGetUserSubscriptions$lambda21(jsonElement);
                return m1205ordersGetUserSubscriptions$lambda21;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> ordersUpdateSubscription(@NotNull UserId userId, int i9, int i10) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("orders.updateSubscription", new ApiResponseParser() { // from class: com.vk.sdk.api.orders.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1206ordersUpdateSubscription$lambda23;
                m1206ordersUpdateSubscription$lambda23 = OrdersService.m1206ordersUpdateSubscription$lambda23(jsonElement);
                return m1206ordersUpdateSubscription$lambda23;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 1L, 0L, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, "subscription_id", i9, 0, 0, 8, (Object) null);
        NewApiRequest.addParam$default(newApiRequest, InAppPurchaseMetaData.KEY_PRICE, i10, 0, 0, 8, (Object) null);
        return newApiRequest;
    }
}
