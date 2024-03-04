package com.guochao.faceshow.aaspring.modulars.googlepay.repository;

import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.modulars.googlepay.database.GooglePayOrderRequestModelDatabase;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\tJ\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\tJ!\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J\u0019\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J!\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f2\u0006\u0010\u001b\u001a\u00020\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;", "", "()V", "googlePayOrderRequestModelDatabase", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;", "findSavedSubscribeRequestModel", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;", "googleOrderId", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getSavedPurchaseRequestModel", "", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;", Contants.USER_ID, "googlePayOrderCertificate", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "requestModel", "(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeSaveModel", "", "removeSubscribeRequestModel", DeviceRequestsHelper.DEVICE_INFO_MODEL, "(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "savePurchaseRequestModel", "saveSubscribeRequestModel", "subscribeCertificate", "subscribeRequestModel", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GooglePayOrderRepository {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String URL_GOOGLE_PAY_CERTIFICATE = "api/token/trade/recharge/google/payCertificate/_vse";
    @NotNull
    private static final String URL_GOOGLE_SUBSCRIBE_CERTIFICATE = "api/token/trade/recharge/vip/payCertificate/_vse";
    @NotNull
    private final GooglePayOrderRequestModelDatabase googlePayOrderRequestModelDatabase = GooglePayOrderRequestModelDatabase.Companion.getInstance();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$Companion;", "", "()V", "URL_GOOGLE_PAY_CERTIFICATE", "", "URL_GOOGLE_SUBSCRIBE_CERTIFICATE", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Nullable
    public final Object findSavedSubscribeRequestModel(@NotNull String str, @NotNull Continuation<? super GoogleSubscribeRequestModel> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new GooglePayOrderRepository$findSavedSubscribeRequestModel$2(this, str, null), continuation);
    }

    @Nullable
    public final Object getSavedPurchaseRequestModel(@NotNull String str, @NotNull Continuation<? super List<GooglePayOrderRequestModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new GooglePayOrderRepository$getSavedPurchaseRequestModel$2(this, str, null), continuation);
    }

    @Nullable
    public final Object googlePayOrderCertificate(@NotNull GooglePayOrderRequestModel googlePayOrderRequestModel, @NotNull Continuation<? super Response<Integer>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new GooglePayOrderRepository$googlePayOrderCertificate$2(googlePayOrderRequestModel, null), continuation);
    }

    @Nullable
    public final Object removeSaveModel(@NotNull GooglePayOrderRequestModel googlePayOrderRequestModel, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new GooglePayOrderRepository$removeSaveModel$2(this, googlePayOrderRequestModel, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return withContext == coroutine_suspended ? withContext : Unit.INSTANCE;
    }

    @Nullable
    public final Object removeSubscribeRequestModel(@NotNull GoogleSubscribeRequestModel googleSubscribeRequestModel, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new GooglePayOrderRepository$removeSubscribeRequestModel$2(this, googleSubscribeRequestModel, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return withContext == coroutine_suspended ? withContext : Unit.INSTANCE;
    }

    @Nullable
    public final Object savePurchaseRequestModel(@NotNull GooglePayOrderRequestModel googlePayOrderRequestModel, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new GooglePayOrderRepository$savePurchaseRequestModel$2(this, googlePayOrderRequestModel, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return withContext == coroutine_suspended ? withContext : Unit.INSTANCE;
    }

    @Nullable
    public final Object saveSubscribeRequestModel(@NotNull GoogleSubscribeRequestModel googleSubscribeRequestModel, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new GooglePayOrderRepository$saveSubscribeRequestModel$2(this, googleSubscribeRequestModel, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return withContext == coroutine_suspended ? withContext : Unit.INSTANCE;
    }

    @Nullable
    public final Object subscribeCertificate(@NotNull GoogleSubscribeRequestModel googleSubscribeRequestModel, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new GooglePayOrderRepository$subscribeCertificate$2(googleSubscribeRequestModel, null), continuation);
    }
}
