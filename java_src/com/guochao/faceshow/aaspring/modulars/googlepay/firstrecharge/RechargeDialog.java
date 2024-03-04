package com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge;

import android.app.Dialog;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.SkuDetails;
import com.appsflyer.AppsFlyerProperties;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.beans.FirstRechargeBean;
import com.guochao.faceshow.aaspring.beans.GiftBean;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.databinding.DialogRechargeBinding;
import com.guochao.faceshow.mine.model.RecharfeModeBean;
import com.guochao.faceshow.mine.view.fragment.RechargeBuzzCoinFragment;
import com.guochao.faceshow.mine.view.fragment.RechargeFragment;
import com.guochao.faceshow.signin.RechargeListener;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p9.a;
@Metadata(bv = {}, d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\r\b\u0016\u0018\u0000 f2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002fgB\u0007¢\u0006\u0004\be\u0010AJ\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\u001c\u0010\f\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u001c\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0016\u0010\u0016\u001a\u00020\u00052\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\b\u0010\u0017\u001a\u00020\u0005H\u0002J\"\u0010\u001b\u001a\u00020\u00052\u0010\u0010\u0019\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u00182\u0006\u0010\u001a\u001a\u00020\u0010H\u0002J\u0012\u0010\u001e\u001a\u00020\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010 \u001a\u00020\u001f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014J\b\u0010%\u001a\u00020$H\u0016J\b\u0010&\u001a\u00020$H\u0016J\b\u0010'\u001a\u00020$H\u0016J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0010H\u0016J\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\b\u0010+\u001a\u00020\u0005H\u0016J\u0010\u0010-\u001a\u00020\u00052\u0006\u0010,\u001a\u00020$H\u0016J\b\u0010.\u001a\u00020\u0005H\u0016J\u001a\u00103\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\b\u00102\u001a\u0004\u0018\u000101H\u0016J\b\u00104\u001a\u00020\u0005H\u0016R\u001d\u00105\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0006¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108R(\u0010:\u001a\u0002098\u0016@\u0016X\u0097.¢\u0006\u0018\n\u0004\b:\u0010;\u0012\u0004\b@\u0010A\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R$\u0010B\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR$\u0010H\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\"\u0010O\u001a\u00020N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\"\u0010U\u001a\u0002018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bU\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u0018\u0010\\\u001a\u00060[R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010^\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\"\u0010`\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\b`\u0010b\"\u0004\bc\u0010d¨\u0006h"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "Lp9/a$e;", "Lcom/guochao/faceshow/signin/RechargeListener;", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;", "", "getRechargeModeList", "loadHeaderData", "Landroid/widget/ImageView;", "imageView", "Lcom/guochao/faceshow/aaspring/beans/GiftBean;", "giftBean", "setImageResouse", "Landroid/widget/TextView;", "textView", "setTextView", "", "preLoad", "dispatchRechargeResponse", "", "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;", "appSkuLocal", "realSkuResponse", "getGoogleSkus", "", "responseData", "updatePrice", "saveAppSkuLocal", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/app/Dialog;", "onCreateDialog", "Landroid/view/View;", "root", "initView", "", "getSelectTextColor", "getStartBuyBackground", "getRechargeItemBackground", "enable", "onSetupResponse", "getAppSkuLocal", "onDestroy", "currentDiamonds", "onDiamondsChanged", "onRecharged", "Landroidx/fragment/app/FragmentManager;", "manager", "", "tag", "show", "dismissAllowingStateLoss", "mDataList", "Ljava/util/List;", "getMDataList", "()Ljava/util/List;", "Lcom/guochao/faceshow/databinding/DialogRechargeBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/DialogRechargeBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/DialogRechargeBinding;)V", "getViewBinding$annotations", "()V", "rechargeHeader", "Landroid/view/View;", "getRechargeHeader", "()Landroid/view/View;", "setRechargeHeader", "(Landroid/view/View;)V", "tvCountDown", "Landroid/widget/TextView;", "getTvCountDown", "()Landroid/widget/TextView;", "setTvCountDown", "(Landroid/widget/TextView;)V", "Lcom/guochao/faceshow/views/g;", "countDownTimerUtil", "Lcom/guochao/faceshow/views/g;", "getCountDownTimerUtil", "()Lcom/guochao/faceshow/views/g;", "setCountDownTimerUtil", "(Lcom/guochao/faceshow/views/g;)V", "mIsSelectId", "Ljava/lang/String;", "getMIsSelectId", "()Ljava/lang/String;", "setMIsSelectId", "(Ljava/lang/String;)V", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;", "runnable", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;", "requestCount", "I", "isShow", "Z", "()Z", "setShow", "(Z)V", "<init>", "Companion", "RechargeRunnable", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class RechargeDialog extends GCCoreFragment implements a.e, RechargeListener, d.x {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int DRESS_UP_MARKET = 6;
    public static final int F2F_GIFT = 8;
    public static final int FILTER_1V1 = 7;
    public static final int FROM_TASK = 1;
    public static final int IM_GIFT = 4;
    public static final int LIVE_GAME = 3;
    public static final int LIVE_GIFT = 2;
    public static final int TRTC_CALL = 9;
    public static final int TRTC_GIFT = 10;
    public static final int VIDEO_GIFT = 5;
    public static final int VOICE_ENTER = 12;
    public static final int VOICE_GIFT = 11;
    private boolean isShow;
    @Nullable
    private View rechargeHeader;
    private int requestCount;
    @Nullable
    private TextView tvCountDown;
    public DialogRechargeBinding viewBinding;
    @NotNull
    private final List<RecharfeModeBean> mDataList = new ArrayList();
    @NotNull
    private com.guochao.faceshow.views.g countDownTimerUtil = new com.guochao.faceshow.views.g(2147483647L) { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog$countDownTimerUtil$1
        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            if (RechargeDialog.this.isDetached() || !RechargeDialog.this.isAdded()) {
                return;
            }
            long lastLoginTime = ((86400000 + FirstRechargeDownTimeUtils.INSTANCE.getLastLoginTime()) - System.currentTimeMillis()) - com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff();
            if (lastLoginTime < 0) {
                cancel();
                lastLoginTime = 0;
            }
            StringBuilder sb2 = new StringBuilder();
            long j11 = lastLoginTime / 1000;
            long j12 = j11 / ((long) LocalCache.TIME_HOUR);
            sb2.append(j12 < 10 ? "0" : "");
            sb2.append(j12);
            String sb3 = sb2.toString();
            StringBuilder sb4 = new StringBuilder();
            long j13 = 60;
            long j14 = (j11 / j13) % j13;
            sb4.append(j14 < 10 ? "0" : "");
            sb4.append(j14);
            String sb5 = sb4.toString();
            StringBuilder sb6 = new StringBuilder();
            long j15 = j11 % j13;
            sb6.append(j15 >= 10 ? "" : "0");
            sb6.append(j15);
            String sb7 = sb6.toString();
            TextView tvCountDown = RechargeDialog.this.getTvCountDown();
            if (tvCountDown == null) {
                return;
            }
            tvCountDown.setText(sb3 + (char) 65306 + sb5 + (char) 65306 + sb7);
        }
    };
    @NotNull
    private String mIsSelectId = "facecast1";
    @NotNull
    private final RechargeRunnable runnable = new RechargeRunnable();

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J-\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0002\u0010\u0016J7\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0017\u001a\u00020\u0018H\u0007¢\u0006\u0002\u0010\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;", "", "()V", "DRESS_UP_MARKET", "", "F2F_GIFT", "FILTER_1V1", "FROM_TASK", "IM_GIFT", "LIVE_GAME", "LIVE_GIFT", "TRTC_CALL", "TRTC_GIFT", "VIDEO_GIFT", "VOICE_ENTER", "VOICE_GIFT", "showDialog", "", "fm", "Landroidx/fragment/app/FragmentManager;", "type", "from", "(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V", "hideLessMoney", "", "(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;Z)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void showDialog$default(Companion companion, FragmentManager fragmentManager, Integer num, Integer num2, int i9, Object obj) {
            if ((i9 & 2) != 0) {
                num = null;
            }
            if ((i9 & 4) != 0) {
                num2 = 0;
            }
            companion.showDialog(fragmentManager, num, num2);
        }

        @JvmStatic
        public final void showDialog(@NotNull FragmentManager fm, @Nullable Integer num, @Nullable Integer num2) {
            Intrinsics.checkNotNullParameter(fm, "fm");
            showDialog(fm, num, num2, false);
        }

        public static /* synthetic */ void showDialog$default(Companion companion, FragmentManager fragmentManager, Integer num, Integer num2, boolean z10, int i9, Object obj) {
            if ((i9 & 2) != 0) {
                num = null;
            }
            if ((i9 & 4) != 0) {
                num2 = 0;
            }
            if ((i9 & 8) != 0) {
                z10 = false;
            }
            companion.showDialog(fragmentManager, num, num2, z10);
        }

        @JvmStatic
        public final void showDialog(@NotNull FragmentManager fm, @Nullable Integer num, @Nullable Integer num2, boolean z10) {
            Intrinsics.checkNotNullParameter(fm, "fm");
            List<Fragment> fragments = fm.getFragments();
            Intrinsics.checkNotNullExpressionValue(fragments, "fm.fragments");
            for (Fragment fragment : fragments) {
                if (fragment instanceof RechargeDialog) {
                    RechargeDialog rechargeDialog = (RechargeDialog) fragment;
                    if (rechargeDialog.isAdded() && !rechargeDialog.isDetached() && rechargeDialog.isShow()) {
                        return;
                    }
                }
            }
            RechargeDialog rechargeDialog2 = new RechargeDialog();
            Bundle bundle = new Bundle();
            bundle.putInt("type", num != null ? num.intValue() : 0);
            bundle.putInt("from", num2 != null ? num2.intValue() : 0);
            bundle.putBoolean("hideLessMoney", z10);
            rechargeDialog2.setArguments(bundle);
            rechargeDialog2.show(fm, RechargeDialog.class.getSimpleName());
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0016\u0010\b\u001a\u00020\u00072\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;", "Ljava/lang/Runnable;", "(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V", "data", "", "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;", "run", "", "setData", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class RechargeRunnable implements Runnable {
        @Nullable
        private List<RecharfeModeBean> data;

        public RechargeRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10 = true;
            if (!RechargeDialog.this.getAppSkuLocal().isEmpty()) {
                List<RecharfeModeBean> list = this.data;
                if (!((list == null || list.size() != RechargeDialog.this.getAppSkuLocal().size()) ? false : false)) {
                    List<RecharfeModeBean> list2 = this.data;
                    if (list2 != null) {
                        list2.clear();
                    }
                    List<RecharfeModeBean> appSkuLocal = RechargeDialog.this.getAppSkuLocal();
                    List<RecharfeModeBean> list3 = this.data;
                    if (list3 != null) {
                        list3.addAll(appSkuLocal);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            List<RecharfeModeBean> list4 = this.data;
            if (list4 != null) {
                for (RecharfeModeBean recharfeModeBean : list4) {
                    recharfeModeBean.setDefaultPrice();
                    String sign = recharfeModeBean.getSign();
                    Intrinsics.checkNotNullExpressionValue(sign, "datum.sign");
                    arrayList.add(sign);
                }
            }
            RechargeDialog.this.saveAppSkuLocal(this.data, false);
            com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().q0(arrayList);
            List<RecharfeModeBean> list5 = this.data;
            if (list5 != null) {
                RechargeDialog.this.realSkuResponse(list5);
            }
        }

        public final void setData(@Nullable List<RecharfeModeBean> list) {
            this.data = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dispatchRechargeResponse(boolean z10) {
        if (!z10) {
            int i9 = this.requestCount + 1;
            this.requestCount = i9;
            if (i9 < 2) {
                return;
            }
            this.requestCount = 0;
        }
        List<RecharfeModeBean> appSkuLocal = getAppSkuLocal();
        realSkuResponse(appSkuLocal);
        if (appSkuLocal.isEmpty()) {
            return;
        }
        this.runnable.setData(appSkuLocal);
        HandlerGetter.getMainHandler().removeCallbacks(this.runnable);
        HandlerGetter.getMainHandler().postDelayed(this.runnable, 3000L);
    }

    private final void getGoogleSkus() {
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().V(new com.android.billingclient.api.m() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.p
            @Override // com.android.billingclient.api.m
            public final void a(com.android.billingclient.api.e eVar, List list) {
                RechargeDialog.m426getGoogleSkus$lambda13(RechargeDialog.this, eVar, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getGoogleSkus$lambda-13  reason: not valid java name */
    public static final void m426getGoogleSkus$lambda13(final RechargeDialog this$0, com.android.billingclient.api.e billingResult, final List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.q
            @Override // java.lang.Runnable
            public final void run() {
                RechargeDialog.m427getGoogleSkus$lambda13$lambda12(list, this$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getGoogleSkus$lambda-13$lambda-12  reason: not valid java name */
    public static final void m427getGoogleSkus$lambda13$lambda12(List list, RechargeDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().i0(list);
        LogUtils.i("zune：", "onSkuDetailsResponse = " + GsonGetter.getGson().toJson(list));
        if (!this$0.getAppSkuLocal().isEmpty()) {
            this$0.saveAppSkuLocal(this$0.getAppSkuLocal(), true);
        }
        this$0.dispatchRechargeResponse(false);
    }

    private final void getRechargeModeList() {
        final List<RecharfeModeBean> appSkuLocal = getAppSkuLocal();
        if (!appSkuLocal.isEmpty()) {
            dispatchRechargeResponse(true);
        }
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(com.guochao.faceshow.aaspring.modulars.googlepay.i.e().d())) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put(AppsFlyerProperties.CURRENCY_CODE, com.guochao.faceshow.aaspring.modulars.googlepay.i.e().d());
            String json = GsonGetter.getGson().toJson(hashMap2);
            Intrinsics.checkNotNullExpressionValue(json, "getGson().toJson(map)");
            hashMap.put(RemoteMessageConst.MessageBody.PARAM, json);
        }
        com.guochao.faceshow.aaspring.base.http.client.a httpClient = getHttpClient();
        if (httpClient != null) {
            httpClient.b(this, Contants.RECHARGE_MODE_LIST, hashMap, new com.guochao.faceshow.aaspring.base.http.callback.c<List<? extends RecharfeModeBean>>() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog$getRechargeModeList$1
                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NotNull g7.a<List<? extends RecharfeModeBean>> exp) {
                    Intrinsics.checkNotNullParameter(exp, "exp");
                    if (appSkuLocal.isEmpty()) {
                        this.realSkuResponse(new ArrayList());
                    }
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public /* bridge */ /* synthetic */ void onResponse(List<? extends RecharfeModeBean> list, FaceCastBaseResponse<List<? extends RecharfeModeBean>> faceCastBaseResponse) {
                    onResponse2(list, (FaceCastBaseResponse<List<RecharfeModeBean>>) faceCastBaseResponse);
                }

                /* renamed from: onResponse  reason: avoid collision after fix types in other method */
                public void onResponse2(@Nullable List<? extends RecharfeModeBean> list, @NotNull FaceCastBaseResponse<List<RecharfeModeBean>> baseResponse) {
                    Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                    if (list != null && !list.isEmpty()) {
                        if (this instanceof RechargeBuzzCoinFragment) {
                            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.recharge_list_success);
                        } else {
                            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.fast_recharge_list_success);
                        }
                        if (!appSkuLocal.isEmpty()) {
                            for (RecharfeModeBean recharfeModeBean : appSkuLocal) {
                                String price = recharfeModeBean.getPrice();
                                String sign = recharfeModeBean.getSign();
                                for (RecharfeModeBean recharfeModeBean2 : list) {
                                    if (recharfeModeBean2.getSign() != null && Intrinsics.areEqual(recharfeModeBean2.getSign(), sign)) {
                                        recharfeModeBean2.setPrice(price);
                                    }
                                }
                            }
                        }
                        this.saveAppSkuLocal(list, true);
                        this.dispatchRechargeResponse(appSkuLocal.isEmpty());
                        return;
                    }
                    onFailure(new g7.a<>(new Exception(""), -1));
                }
            });
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m428initView$lambda0(RechargeDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m429initView$lambda1(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m430initView$lambda2(RechargeDialog this$0, int i9, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0 instanceof RechargeBuzzCoinFragment) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.recharge_start_pay);
        } else {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.fast_recharge_recharge_click);
        }
        if (this$0.getActivity() instanceof WatchLiveRoomActivity) {
            com.guochao.faceshow.aaspring.modulars.googlepay.d Z = com.guochao.faceshow.aaspring.modulars.googlepay.d.Z();
            String str = this$0.mIsSelectId;
            FragmentActivity activity = this$0.getActivity();
            Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity");
            Z.B0(str, i9, 2, com.guochao.faceshow.aaspring.modulars.googlepay.d.X(((WatchLiveRoomActivity) activity).e0().getCurrentLiveRoom().getBroadCasterUserId()));
        } else if (this$0.getParentFragment() instanceof RechargeFragment) {
            com.guochao.faceshow.aaspring.modulars.googlepay.d Z2 = com.guochao.faceshow.aaspring.modulars.googlepay.d.Z();
            String str2 = this$0.mIsSelectId;
            Fragment parentFragment = this$0.getParentFragment();
            Intrinsics.checkNotNull(parentFragment, "null cannot be cast to non-null type com.guochao.faceshow.mine.view.fragment.RechargeFragment");
            Z2.A0(str2, ((RechargeFragment) parentFragment).f25991l, 3);
        } else {
            com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().A0(this$0.mIsSelectId, i9, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m431initView$lambda3(RechargeDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewBinding().tvDiamond.setText(String.valueOf(p9.a.g().f()));
    }

    private final void loadHeaderData() {
        RecyclerView recyclerView;
        RecyclerView.Adapter adapter;
        List<GiftBean> giftList;
        ImageView imageView;
        TextView textView;
        RecyclerView recyclerView2;
        final ArrayList arrayList = new ArrayList();
        View inflate = (this instanceof RechargeBuzzCoinFragment ? getViewBinding().rechargeHeaderPage : getViewBinding().rechargeHeader).inflate();
        this.rechargeHeader = inflate;
        if (inflate != null) {
            inflate.setVisibility(0);
        }
        View view = this.rechargeHeader;
        this.tvCountDown = view != null ? (TextView) view.findViewById(R.id.tv_count_down) : null;
        View view2 = this.rechargeHeader;
        if (view2 != null && (recyclerView2 = (RecyclerView) view2.findViewById(R.id.recycler_header)) != null) {
            recyclerView2.setLayoutManager(new GridLayoutManager(recyclerView2.getContext(), 4, 1, false));
            recyclerView2.setAdapter(new RecyclerView.Adapter<BaseViewHolder>() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog$loadHeaderData$1$1
                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemCount() {
                    return arrayList.size();
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
                    Intrinsics.checkNotNullParameter(holder, "holder");
                    if (i9 < 4) {
                        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = 0;
                    } else {
                        ViewGroup.LayoutParams layoutParams2 = holder.itemView.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = DensityUtil.dp2px(11.0f);
                    }
                    RechargeDialog.this.setTextView((TextView) holder.itemView.findViewById(R.id.text_view), arrayList.get(i9));
                    RechargeDialog.this.setImageResouse((ImageView) holder.itemView.findViewById(R.id.image_view), arrayList.get(i9));
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                @NotNull
                public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    return new BaseViewHolder(parent.getContext(), R.layout.item_first_recharge_header, parent);
                }
            });
        }
        View view3 = this.rechargeHeader;
        if (view3 != null && (textView = (TextView) view3.findViewById(R.id.view_first_charge)) != null) {
            ViewExtendsKt.onClick$default(textView, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    RechargeDialog.m432loadHeaderData$lambda5(view4);
                }
            }, 1, null);
        }
        View view4 = this.rechargeHeader;
        if (view4 != null && (imageView = (ImageView) view4.findViewById(R.id.view_first_charge_iv)) != null) {
            ViewExtendsKt.onClick$default(imageView, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view5) {
                    RechargeDialog.m433loadHeaderData$lambda6(view5);
                }
            }, 1, null);
        }
        FirstRechargeBean firstRechargeBean = (FirstRechargeBean) com.guochao.faceshow.aaspring.manager.b.a("pay", "RechargeHeaderData", FirstRechargeBean.class);
        if (firstRechargeBean != null && (giftList = firstRechargeBean.getGiftList()) != null) {
            arrayList.addAll(giftList);
        }
        View view5 = this.rechargeHeader;
        if (view5 != null && (recyclerView = (RecyclerView) view5.findViewById(R.id.recycler_header)) != null && (adapter = recyclerView.getAdapter()) != null) {
            adapter.notifyDataSetChanged();
        }
        GCRequest gCRequest = new GCRequest("api/token/promotion/firstpay/list");
        gCRequest.getCallbackHolder().setSuccessClz(FirstRechargeBean.class);
        gCRequest.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog$loadHeaderData$$inlined$success$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                RecyclerView recyclerView3;
                RecyclerView.Adapter adapter2;
                Intrinsics.checkNotNullParameter(_response, "_response");
                FirstRechargeBean firstRechargeBean2 = (FirstRechargeBean) _response.getData();
                if ((firstRechargeBean2 != null ? firstRechargeBean2.getGiftList() : null) != null) {
                    List<GiftBean> giftList2 = firstRechargeBean2.getGiftList();
                    boolean z10 = true;
                    if (!((giftList2 == null || !giftList2.isEmpty()) ? false : false)) {
                        List<GiftBean> giftList3 = firstRechargeBean2.getGiftList();
                        if (giftList3 != null) {
                            arrayList.clear();
                            arrayList.addAll(giftList3);
                        }
                        com.guochao.faceshow.aaspring.manager.b.f("pay", "RechargeHeaderData", firstRechargeBean2);
                        View rechargeHeader = RechargeDialog.this.getRechargeHeader();
                        if (rechargeHeader != null && (recyclerView3 = (RecyclerView) rechargeHeader.findViewById(R.id.recycler_header)) != null && (adapter2 = recyclerView3.getAdapter()) != null) {
                            adapter2.notifyDataSetChanged();
                        }
                        RechargeDialog.this.getCountDownTimerUtil().start();
                        FirstRechargeManager firstRechargeManager = FirstRechargeManager.INSTANCE;
                        if (firstRechargeManager.isFirstRechargeAutoShown()) {
                            return;
                        }
                        firstRechargeManager.autoShowFirstRecharge();
                        FirstRechargeDialog.Companion.showDialog(9);
                        return;
                    }
                }
                View rechargeHeader2 = RechargeDialog.this.getRechargeHeader();
                if (rechargeHeader2 == null) {
                    return;
                }
                rechargeHeader2.setVisibility(8);
            }
        });
        gCRequest.getCallbackHolder().setFailClz(Object.class);
        gCRequest.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog$loadHeaderData$$inlined$fail$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                View rechargeHeader = RechargeDialog.this.getRechargeHeader();
                if (rechargeHeader == null) {
                    return;
                }
                rechargeHeader.setVisibility(8);
            }
        });
        gCRequest.request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadHeaderData$lambda-5  reason: not valid java name */
    public static final void m432loadHeaderData$lambda5(View view) {
        FirstRechargeDialog.Companion.showDialog(10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadHeaderData$lambda-6  reason: not valid java name */
    public static final void m433loadHeaderData$lambda6(View view) {
        FirstRechargeDialog.Companion.showDialog(10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void realSkuResponse(List<RecharfeModeBean> list) {
        this.mDataList.clear();
        this.mDataList.addAll(list);
        try {
            RecyclerView.Adapter adapter = getViewBinding().recyclerView.getAdapter();
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void saveAppSkuLocal(List<? extends RecharfeModeBean> list, boolean z10) {
        String str;
        if (list == null || list.isEmpty()) {
            return;
        }
        List<SkuDetails> b02 = com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().b0();
        try {
            Iterator<? extends RecharfeModeBean> it = list.iterator();
            while (it.hasNext()) {
                RecharfeModeBean next = it.next();
                if (b02 != null && (!b02.isEmpty())) {
                    Iterator<SkuDetails> it2 = b02.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            SkuDetails next2 = it2.next();
                            if ((next != null ? next.getSign() : null) != null && next2 != null) {
                                try {
                                    str = next2.f();
                                } catch (Exception unused) {
                                    str = null;
                                }
                                if (Intrinsics.areEqual(next.getSign(), str)) {
                                    next.setPrice(next2.d());
                                    break;
                                }
                            }
                        }
                    }
                } else if (z10) {
                    String price = next != null ? next.getPrice() : null;
                    if (next != null) {
                        next.setPrice(null);
                    }
                    String defaultPrice = next != null ? next.getDefaultPrice() : null;
                    if (price != null && Intrinsics.areEqual(price, defaultPrice)) {
                        next.setPrice(defaultPrice);
                    }
                    if (next != null) {
                        next.setPrice(null);
                    }
                }
            }
            com.guochao.faceshow.aaspring.manager.b.g("pay", "AppSkuDetails", list);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setImageResouse(ImageView imageView, GiftBean giftBean) {
        Integer prizeType = giftBean != null ? giftBean.getPrizeType() : null;
        if (prizeType != null && prizeType.intValue() == 0) {
            if (imageView != null) {
                imageView.setImageResource(R.mipmap.icon_recharge_exp);
            }
        } else if (prizeType != null && prizeType.intValue() == 1) {
            if (imageView != null) {
                imageView.setImageResource(R.mipmap.icon_game_diamond);
            }
        } else if (prizeType == null || prizeType.intValue() != 2) {
            hc.a.k(imageView, giftBean != null ? giftBean.getPrizeUrl() : null, false);
        } else if (imageView != null) {
            imageView.setImageResource(R.mipmap.icon_game_shuijing);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setTextView(android.widget.TextView r5, com.guochao.faceshow.aaspring.beans.GiftBean r6) {
        /*
            r4 = this;
            r0 = 0
            if (r6 == 0) goto Le
            java.lang.Integer r1 = r6.getPrizeType()
            if (r1 == 0) goto Le
            int r1 = r1.intValue()
            goto Lf
        Le:
            r1 = 0
        Lf:
            r2 = 3
            r3 = 1
            if (r1 <= r2) goto L64
            if (r6 == 0) goto L20
            java.lang.Integer r6 = r6.getPrizeUseDay()     // Catch: java.lang.Exception -> L20
            if (r6 == 0) goto L20
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L20
            goto L21
        L20:
            r6 = 1
        L21:
            com.guochao.faceshow.BaseApplication r1 = com.guochao.faceshow.BaseApplication.getInstance()
            android.content.res.Resources r1 = r1.getResources()
            r2 = 2131755013(0x7f100005, float:1.9140893E38)
            java.lang.String r1 = r1.getQuantityString(r2, r6)
            java.lang.String r2 = "getInstance().resources.…R.plurals.gift_days, day)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            kotlin.jvm.internal.StringCompanionObject r2 = kotlin.jvm.internal.StringCompanionObject.INSTANCE
            java.lang.Object[] r2 = new java.lang.Object[r3]
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r2[r0] = r6
            java.lang.Object[] r6 = java.util.Arrays.copyOf(r2, r3)
            java.lang.String r6 = java.lang.String.format(r1, r6)
            java.lang.String r0 = "format(format, *args)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r0)
            kotlin.text.Regex r0 = new kotlin.text.Regex
            java.lang.String r1 = " "
            r0.<init>(r1)
            java.lang.String r1 = ""
            java.lang.String r6 = r0.replace(r6, r1)
            if (r5 != 0) goto L5c
            goto L98
        L5c:
            java.lang.String r6 = java.lang.String.valueOf(r6)
            r5.setText(r6)
            goto L98
        L64:
            if (r5 != 0) goto L67
            goto L98
        L67:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 120(0x78, float:1.68E-43)
            r0.append(r1)
            if (r6 == 0) goto L7e
            java.lang.Integer r1 = r6.getPrizeNum()
            if (r1 == 0) goto L7e
            int r1 = r1.intValue()
            goto L7f
        L7e:
            r1 = -1
        L7f:
            if (r1 > 0) goto L86
            java.lang.Integer r6 = java.lang.Integer.valueOf(r3)
            goto L8e
        L86:
            if (r6 == 0) goto L8d
            java.lang.Integer r6 = r6.getPrizeNum()
            goto L8e
        L8d:
            r6 = 0
        L8e:
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            r5.setText(r6)
        L98:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog.setTextView(android.widget.TextView, com.guochao.faceshow.aaspring.beans.GiftBean):void");
    }

    @JvmStatic
    public static final void showDialog(@NotNull FragmentManager fragmentManager, @Nullable Integer num, @Nullable Integer num2) {
        Companion.showDialog(fragmentManager, num, num2);
    }

    @JvmStatic
    public static final void showDialog(@NotNull FragmentManager fragmentManager, @Nullable Integer num, @Nullable Integer num2, boolean z10) {
        Companion.showDialog(fragmentManager, num, num2, z10);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        super.dismissAllowingStateLoss();
        this.isShow = false;
    }

    @NotNull
    public final List<RecharfeModeBean> getAppSkuLocal() {
        List<RecharfeModeBean> list = (List) com.guochao.faceshow.aaspring.manager.b.c("pay", "AppSkuDetails", new TypeToken<List<RecharfeModeBean>>() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog$getAppSkuLocal$cache$1
        }.getType());
        return list == null ? new ArrayList() : list;
    }

    @NotNull
    public final com.guochao.faceshow.views.g getCountDownTimerUtil() {
        return this.countDownTimerUtil;
    }

    @NotNull
    public final List<RecharfeModeBean> getMDataList() {
        return this.mDataList;
    }

    @NotNull
    public final String getMIsSelectId() {
        return this.mIsSelectId;
    }

    @Nullable
    public final View getRechargeHeader() {
        return this.rechargeHeader;
    }

    public int getRechargeItemBackground() {
        return R.drawable.bg_item_recharge_selector;
    }

    public int getSelectTextColor() {
        return ContextCompat.getColor(GCApplication.app(), R.color.color_ugc_text_level_1);
    }

    public int getStartBuyBackground() {
        return R.drawable.btn_common_bg;
    }

    @Nullable
    public final TextView getTvCountDown() {
        return this.tvCountDown;
    }

    @NotNull
    public DialogRechargeBinding getViewBinding() {
        DialogRechargeBinding dialogRechargeBinding = this.viewBinding;
        if (dialogRechargeBinding != null) {
            return dialogRechargeBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        Bundle arguments = getArguments();
        final int i9 = arguments != null ? arguments.getInt("type") : 0;
        Bundle arguments2 = getArguments();
        int i10 = arguments2 != null ? arguments2.getInt("from") : 0;
        if (this instanceof RechargeBuzzCoinFragment) {
            RechargeBuzzCoinFragment rechargeBuzzCoinFragment = (RechargeBuzzCoinFragment) this;
            if (rechargeBuzzCoinFragment.getParentFragment() instanceof RechargeFragment) {
                EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
                String str = EventTrackingV2Utils.recharge_page;
                Fragment parentFragment = rechargeBuzzCoinFragment.getParentFragment();
                Intrinsics.checkNotNull(parentFragment, "null cannot be cast to non-null type com.guochao.faceshow.mine.view.fragment.RechargeFragment");
                eventTrackingV2Utils.track(str, String.valueOf(((RechargeFragment) parentFragment).f25991l));
            }
        } else if (i10 > 0) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.fast_recharge_dialog_show, String.valueOf(i10));
        }
        getViewBinding().bgView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RechargeDialog.m428initView$lambda0(RechargeDialog.this, view);
            }
        });
        getViewBinding().contentArea.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RechargeDialog.m429initView$lambda1(view);
            }
        });
        TextView textView = getViewBinding().lessMoney;
        Bundle arguments3 = getArguments();
        textView.setVisibility(arguments3 != null && arguments3.getBoolean("hideLessMoney", false) ? 8 : 0);
        getViewBinding().tvDiamond.setText(String.valueOf(p9.a.g().f()));
        getViewBinding().startBuy.setBackgroundResource(getStartBuyBackground());
        TextView textView2 = getViewBinding().startBuy;
        Intrinsics.checkNotNullExpressionValue(textView2, "viewBinding.startBuy");
        ViewExtendsKt.onClick(textView2, 2000L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RechargeDialog.m430initView$lambda2(RechargeDialog.this, i9, view);
            }
        });
        getViewBinding().recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 3, 1, false));
        getViewBinding().recyclerView.setAdapter(new RechargeDialog$initView$4(this));
        getRechargeModeList();
        if (b8.e.g().c().getRecharged() == 0 && FirstRechargeManager.INSTANCE.shouldShowFirstRecharge()) {
            loadHeaderData();
        }
        p9.a.g().refreshWalletData(new a.f() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.r
            @Override // p9.a.f
            public /* synthetic */ void onCustomRecharge() {
                p9.c.a(this);
            }

            @Override // p9.a.f
            public final void onResponse() {
                RechargeDialog.m431initView$lambda3(RechargeDialog.this);
            }
        });
    }

    public final boolean isShow() {
        return this.isShow;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* bridge */ /* synthetic */ void onConsumeResponse() {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.a(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
        p9.a.g().c(this);
        SigninManager.INSTANCE.registerRechargeListener(this);
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().u0(this);
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().z0(false, 0);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        AppCompatDialog createCenterDialog = createCenterDialog();
        Window window = createCenterDialog.getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes != null) {
            attributes.width = -1;
        }
        if (window != null) {
            window.setAttributes(attributes);
        }
        return createCenterDialog;
    }

    @Override // p9.a.e
    public /* bridge */ /* synthetic */ void onCrystalsChanged(int i9) {
        p9.b.a(this, i9);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.countDownTimerUtil.cancel();
        p9.a.g().r(this);
        SigninManager.INSTANCE.unRegisterRechargeListener(this);
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().I0(this);
    }

    @Override // p9.a.e
    public void onDiamondsChanged(int i9) {
        View view;
        getViewBinding().tvDiamond.setText(String.valueOf(i9));
        if (b8.e.g().c().getRecharged() != 1 || (view = this.rechargeHeader) == null) {
            return;
        }
        view.setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* bridge */ /* synthetic */ void onPayError(Throwable th2) {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.b(this, th2);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    @Deprecated
    public /* bridge */ /* synthetic */ void onPayResponse() {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.c(this);
    }

    @Override // com.guochao.faceshow.signin.RechargeListener
    public void onRecharged() {
        if (this instanceof RechargeBuzzCoinFragment) {
            return;
        }
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.fast_recharge_recharge_success);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public void onSetupResponse(boolean z10) {
        if (z10) {
            getGoogleSkus();
        } else {
            dispatchRechargeResponse(false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* bridge */ /* synthetic */ void onSubscribeFailed() {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.d(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* bridge */ /* synthetic */ void onSubscribeSuccess() {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.e(this);
    }

    public final void setCountDownTimerUtil(@NotNull com.guochao.faceshow.views.g gVar) {
        Intrinsics.checkNotNullParameter(gVar, "<set-?>");
        this.countDownTimerUtil = gVar;
    }

    public final void setMIsSelectId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mIsSelectId = str;
    }

    public final void setRechargeHeader(@Nullable View view) {
        this.rechargeHeader = view;
    }

    public final void setShow(boolean z10) {
        this.isShow = z10;
    }

    public final void setTvCountDown(@Nullable TextView textView) {
        this.tvCountDown = textView;
    }

    public void setViewBinding(@NotNull DialogRechargeBinding dialogRechargeBinding) {
        Intrinsics.checkNotNullParameter(dialogRechargeBinding, "<set-?>");
        this.viewBinding = dialogRechargeBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String str) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, str);
        this.isShow = true;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* bridge */ /* synthetic */ void startSubscribe() {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.f(this);
    }
}
