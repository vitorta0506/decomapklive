package com.guochao.faceshow.aaspring.modulars.googlepay;

import android.os.Bundle;
import androidx.lifecycle.ViewModelKt;
import com.android.billingclient.api.Purchase;
import com.facebook.GraphResponse;
import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.PayLoadingDialog;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel;
import com.guochao.faceshow.aaspring.modulars.googlepay.repository.GooglePayOrderRepository;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.signin.RechargeListener;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u0006\u0010\r\u001a\u00020\tJ \u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\n\u001a\u00020\fJ'\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0002\u0010\u0019J,\u0010\u001a\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\f2\f\b\u0002\u0010\u001b\u001a\u00060\u001cj\u0002`\u001d2\f\b\u0002\u0010\u001e\u001a\u00060\u001cj\u0002`\u001dH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "lastCheckTime", "", "repository", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;", "checkHistorySubscribe", "", "purchase", "", "Lcom/android/billingclient/api/Purchase;", "checkSavedPayOrder", "googlePayCertificate", "sceneType", "", "extData", "", "loadEvent", "requestModel", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;", "cache", "", "diamond", "(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;ZLjava/lang/Integer;)V", "subscribePayCertificate", GraphResponse.SUCCESS_KEY, "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "faile", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GooglePayOrderViewModel extends BaseViewModel<BaseModel> {
    private long lastCheckTime;
    @NotNull
    private final GooglePayOrderRepository repository = new GooglePayOrderRepository();

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadEvent(GooglePayOrderRequestModel googlePayOrderRequestModel, boolean z10, Integer num) {
        int intValue;
        Bundle bundle = new Bundle();
        bundle.putString(EventTrackingUtils.ITEM_ID, b8.e.g().getUserId());
        bundle.putString(EventTrackingUtils.ITEM_NAME, SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_NICKNAME));
        bundle.putString(EventTrackingUtils.CONTENT_TYPE, "googlepay");
        bundle.putString("sceneType", String.valueOf(googlePayOrderRequestModel.getSceneType()));
        EventTrackingUtils.getInstance().track(EventTrackingUtils.GOOGLE_COMPLETE_PURCHASE, bundle);
        Bundle bundle2 = new Bundle();
        bundle2.putString(NativeProtocol.WEB_DIALOG_PARAMS, !z10 ? "正常完成订单成功" : "进入app重试完成订单成功");
        EventTrackingUtils.getInstance().track(EventTrackingUtils.GOOGLE_PAY_AFTER_SERVER_SUCCESS, bundle2);
        int f10 = p9.a.g().f();
        if (num == null || (intValue = num.intValue()) <= f10) {
            return;
        }
        ToastUtils.showToast$default(GCApplication.app(), R.string.pay_success, 0, 4, null);
        b8.e.g().c().setRecharged(1);
        p9.a.g().B(intValue);
        for (RechargeListener rechargeListener : SigninManager.INSTANCE.getRechargeListeners()) {
            rechargeListener.onRecharged();
        }
        b8.e.h();
    }

    public static /* synthetic */ void subscribePayCertificate$default(GooglePayOrderViewModel googlePayOrderViewModel, Purchase purchase, Runnable runnable, Runnable runnable2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            runnable = new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$subscribePayCertificate$default$$inlined$Runnable$1
                @Override // java.lang.Runnable
                public final void run() {
                }
            };
        }
        if ((i9 & 4) != 0) {
            runnable2 = new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$subscribePayCertificate$default$$inlined$Runnable$2
                @Override // java.lang.Runnable
                public final void run() {
                }
            };
        }
        googlePayOrderViewModel.subscribePayCertificate(purchase, runnable, runnable2);
    }

    public final void checkHistorySubscribe(@NotNull List<Purchase> purchase) {
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new GooglePayOrderViewModel$checkHistorySubscribe$1(purchase, this, null), 3, null);
    }

    public final void checkSavedPayOrder() {
        if (System.currentTimeMillis() - this.lastCheckTime <= 300000) {
            return;
        }
        this.lastCheckTime = System.currentTimeMillis();
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new GooglePayOrderViewModel$checkSavedPayOrder$1(this, null), 2, null);
    }

    public final void googlePayCertificate(int i9, @Nullable String str, @NotNull Purchase purchase) {
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        ToastUtils.debug("谷歌回调了支付结果" + purchase);
        PayLoadingDialog.Companion.showDialog();
        ArrayList<String> f10 = purchase.f();
        String str2 = f10.isEmpty() ? null : f10.get(0);
        if (str2 == null) {
            return;
        }
        String userId = b8.e.g().getUserId();
        String a10 = purchase.a();
        Intrinsics.checkNotNullExpressionValue(a10, "purchase.orderId");
        long c10 = purchase.c();
        String b10 = purchase.b();
        Intrinsics.checkNotNullExpressionValue(b10, "purchase.originalJson");
        String e10 = purchase.e();
        Intrinsics.checkNotNullExpressionValue(e10, "purchase.signature");
        Intrinsics.checkNotNullExpressionValue(userId, "userId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new GooglePayOrderViewModel$googlePayCertificate$1(this, new GooglePayOrderRequestModel(a10, str2, c10, b10, e10, i9, userId, str), null), 2, null);
    }

    @JvmOverloads
    public final void subscribePayCertificate(@NotNull Purchase purchase) {
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        subscribePayCertificate$default(this, purchase, null, null, 6, null);
    }

    @JvmOverloads
    public final void subscribePayCertificate(@NotNull Purchase purchase, @NotNull Runnable success) {
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        Intrinsics.checkNotNullParameter(success, "success");
        subscribePayCertificate$default(this, purchase, success, null, 4, null);
    }

    @JvmOverloads
    public final void subscribePayCertificate(@NotNull Purchase purchase, @NotNull Runnable success, @NotNull Runnable faile) {
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        Intrinsics.checkNotNullParameter(success, "success");
        Intrinsics.checkNotNullParameter(faile, "faile");
        ToastUtils.debug("谷歌回调了订阅结果" + purchase);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new GooglePayOrderViewModel$subscribePayCertificate$3(purchase, this, success, faile, null), 2, null);
    }
}
