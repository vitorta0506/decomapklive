package com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.SkuDetails;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.beans.FirstRechargeBean;
import com.guochao.faceshow.aaspring.beans.GiftBean;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.databinding.DialogFirstRechargeBinding;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.signin.RechargeListener;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 a2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001aB\u0007¢\u0006\u0004\b`\u0010WJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\b\u0010\r\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u000bH\u0002J\u001a\u0010\u0013\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001a\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001a\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0018\u001a\u00020\u0006H\u0002J\u0012\u0010\u001b\u001a\u00020\u000b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010 \u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014J\u0010\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020!H\u0016J\u0014\u0010&\u001a\u00020\u000b2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00110$J\u0014\u0010'\u001a\u00020\u000b2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00110$J\u0014\u0010(\u001a\u00020\u000b2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00110$J\b\u0010)\u001a\u00020\u000bH\u0016J\u001a\u0010.\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016J\b\u0010/\u001a\u00020\u000bH\u0016R6\u00102\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u000100j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`18\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R6\u00108\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u000100j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`18\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00103\u001a\u0004\b9\u00105\"\u0004\b:\u00107R\"\u0010;\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b;\u0010=\"\u0004\b>\u0010?R\"\u0010@\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\"\u0010F\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\"\u0010L\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010G\u001a\u0004\bM\u0010I\"\u0004\bN\u0010KR(\u0010P\u001a\u00020O8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\bP\u0010Q\u0012\u0004\bV\u0010W\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\"\u0010X\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bX\u0010<\u001a\u0004\bY\u0010=\"\u0004\bZ\u0010?R\u0017\u0010\\\u001a\u00020[8\u0006¢\u0006\f\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_¨\u0006b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;", "Lcom/guochao/faceshow/signin/RechargeListener;", "", "offsetTime", "", "getTime", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;", "response", "", "refreshData", "refreshText", "setCountDownTime", "Landroid/widget/ImageView;", "imageView", "Lcom/guochao/faceshow/aaspring/beans/GiftBean;", "giftBean", "setImageResouse", "Landroid/widget/TextView;", "textView", "setTextView", "setNumber", "getScene", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/app/Dialog;", "onCreateDialog", "Landroid/view/View;", "root", "initView", "", "enable", "onSetupResponse", "", "data", "showOneContent", "showTwoContent", "showMoreContent", "onRecharged", "Landroidx/fragment/app/FragmentManager;", "manager", "", "tag", "show", "onDestroyView", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "mDescX", "Ljava/util/ArrayList;", "getMDescX", "()Ljava/util/ArrayList;", "setMDescX", "(Ljava/util/ArrayList;)V", "mDescY", "getMDescY", "setMDescY", "isShow", "Z", "()Z", "setShow", "(Z)V", "mType", "I", "getMType", "()I", "setMType", "(I)V", "showTime", "J", "getShowTime", "()J", "setShowTime", "(J)V", "rechargeClickTIme", "getRechargeClickTIme", "setRechargeClickTIme", "Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/DialogFirstRechargeBinding;)V", "getViewBinding$annotations", "()V", "mGoogleEnable", "getMGoogleEnable", "setMGoogleEnable", "Lcom/guochao/faceshow/views/g;", "countdownTimer", "Lcom/guochao/faceshow/views/g;", "getCountdownTimer", "()Lcom/guochao/faceshow/views/g;", "<init>", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class FirstRechargeDialog extends GCCoreFragment implements d.x, RechargeListener {
    public static final int AUTO_SHOW_LIVE = 1;
    public static final int AUTO_SHOW_WALLET = 9;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int SHOW_1V1_GIFT = 7;
    public static final int SHOW_DATING_GIFT = 8;
    public static final int SHOW_HOME = 2;
    public static final int SHOW_IM_GIFT = 5;
    public static final int SHOW_LIVE = 3;
    public static final int SHOW_LIVE_GIFT = 4;
    public static final int SHOW_VIDEO_GIFT = 6;
    public static final int SHOW_WALLET = 10;
    @NotNull
    private final com.guochao.faceshow.views.g countdownTimer = new com.guochao.faceshow.views.g(2147483647L) { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDialog$countdownTimer$1
        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            if (isCancel() || FirstRechargeDialog.this.isDetached() || !FirstRechargeDialog.this.isAdded()) {
                return;
            }
            FirstRechargeDialog.this.refreshText();
        }
    };
    private boolean isShow;
    @Nullable
    private ArrayList<Integer> mDescX;
    @Nullable
    private ArrayList<Integer> mDescY;
    private boolean mGoogleEnable;
    private int mType;
    private long rechargeClickTIme;
    private long showTime;
    public DialogFirstRechargeBinding viewBinding;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0002\u0010\u0011JQ\u0010\u000e\u001a\u00020\u000f2\u001a\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0013j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00142\u001a\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0013j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00142\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0002\u0010\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;", "", "()V", "AUTO_SHOW_LIVE", "", "AUTO_SHOW_WALLET", "SHOW_1V1_GIFT", "SHOW_DATING_GIFT", "SHOW_HOME", "SHOW_IM_GIFT", "SHOW_LIVE", "SHOW_LIVE_GIFT", "SHOW_VIDEO_GIFT", "SHOW_WALLET", "showDialog", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;", "type", "(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;", x.f19108w, "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "y", "(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ FirstRechargeDialog showDialog$default(Companion companion, Integer num, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                num = 0;
            }
            return companion.showDialog(num);
        }

        @JvmStatic
        @NotNull
        public final FirstRechargeDialog showDialog(@Nullable Integer num) {
            return showDialog(null, null, num);
        }

        public static /* synthetic */ FirstRechargeDialog showDialog$default(Companion companion, ArrayList arrayList, ArrayList arrayList2, Integer num, int i9, Object obj) {
            if ((i9 & 4) != 0) {
                num = 0;
            }
            return companion.showDialog(arrayList, arrayList2, num);
        }

        @JvmStatic
        @NotNull
        public final FirstRechargeDialog showDialog(@Nullable ArrayList<Integer> arrayList, @Nullable ArrayList<Integer> arrayList2, @Nullable Integer num) {
            FirstRechargeDialog firstRechargeDialog = new FirstRechargeDialog();
            Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
            if (currTopActivity instanceof GCCoreActivity) {
                GCCoreActivity gCCoreActivity = (GCCoreActivity) currTopActivity;
                GCCoreActivity.showLoading$default(gCCoreActivity, null, 1, null);
                Bundle bundle = new Bundle();
                bundle.putInt("type", num != null ? num.intValue() : 0);
                bundle.putIntegerArrayList(x.f19108w, arrayList);
                bundle.putIntegerArrayList("y", arrayList2);
                firstRechargeDialog.setArguments(bundle);
                FragmentManager supportFragmentManager = gCCoreActivity.getSupportFragmentManager();
                Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "currTopActivity.supportFragmentManager");
                firstRechargeDialog.show(supportFragmentManager, FirstRechargeDialog.class.getSimpleName());
            }
            return firstRechargeDialog;
        }
    }

    private final int getScene() {
        switch (this.mType) {
            case 1:
            case 3:
            case 4:
                return 1;
            case 2:
            case 6:
                return 2;
            case 5:
                return 5;
            case 7:
                return 3;
            case 8:
                return 6;
            case 9:
            case 10:
                Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
                if (currTopActivity instanceof MyWalletActivity) {
                    return ((MyWalletActivity) currTopActivity).g0();
                }
                return 0;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getTime(long j10) {
        long j11 = j10 / 1000;
        if (j11 < 30) {
            return 0;
        }
        if (j11 < 60) {
            return 1;
        }
        if (j11 < 300) {
            return 2;
        }
        if (j11 < 600) {
            return 3;
        }
        return j11 < 1800 ? 4 : 5;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSetupResponse$lambda-2  reason: not valid java name */
    public static final void m416onSetupResponse$lambda2(final FirstRechargeDialog this$0, com.android.billingclient.api.e billingResult, final List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.b
            @Override // java.lang.Runnable
            public final void run() {
                FirstRechargeDialog.m417onSetupResponse$lambda2$lambda1(list, this$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSetupResponse$lambda-2$lambda-1  reason: not valid java name */
    public static final void m417onSetupResponse$lambda2$lambda1(List list, FirstRechargeDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list != null) {
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    SkuDetails skuDetails = (SkuDetails) it.next();
                    if (Intrinsics.areEqual("facecast1", skuDetails.f()) && this$0.isShow && !this$0.isDetached() && this$0.isAdded()) {
                        TextView textView = this$0.getViewBinding().tvRechargeBtn;
                        textView.setText(this$0.getString(R.string.charge) + ' ' + skuDetails.d());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshData(Response<FirstRechargeBean> response) {
        List<GiftBean> giftList;
        List<GiftBean> giftList2;
        List<GiftBean> giftList3;
        Integer bonusDiamond;
        List<GiftBean> giftList4;
        List<GiftBean> giftList5;
        FirstRechargeBean data = response.getData();
        if (((data == null || (giftList5 = data.getGiftList()) == null) ? 0 : giftList5.size()) >= 7) {
            getViewBinding().firstRechargeBags.getLayoutParams().height = DensityUtil.dp2px(220.0f);
        }
        FirstRechargeBean data2 = response.getData();
        Integer valueOf = (data2 == null || (giftList4 = data2.getGiftList()) == null) ? null : Integer.valueOf(giftList4.size());
        if (valueOf == null || valueOf.intValue() != 0) {
            if (valueOf != null && valueOf.intValue() == 1) {
                FirstRechargeBean data3 = response.getData();
                if (data3 != null && (giftList3 = data3.getGiftList()) != null) {
                    showOneContent(giftList3);
                }
            } else if (valueOf != null && valueOf.intValue() == 2) {
                FirstRechargeBean data4 = response.getData();
                if (data4 != null && (giftList2 = data4.getGiftList()) != null) {
                    showTwoContent(giftList2);
                }
            } else {
                FirstRechargeBean data5 = response.getData();
                if (data5 != null && (giftList = data5.getGiftList()) != null) {
                    showMoreContent(giftList);
                }
            }
        }
        setCountDownTime();
        FirstRechargeBean data6 = response.getData();
        if (data6 == null || (bonusDiamond = data6.getBonusDiamond()) == null) {
            return;
        }
        getViewBinding().firstRechargeDiamond.setText(String.valueOf(bonusDiamond.intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshText() {
        String valueOf;
        String valueOf2;
        String valueOf3;
        long lastLoginTime = ((86400000 + FirstRechargeDownTimeUtils.INSTANCE.getLastLoginTime()) - System.currentTimeMillis()) - com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff();
        if (lastLoginTime < 0) {
            lastLoginTime = 0;
        }
        long j10 = lastLoginTime / 1000;
        long j11 = j10 / ((long) LocalCache.TIME_HOUR);
        TextView textView = getViewBinding().tvHour;
        if (j11 < 10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('0');
            sb2.append(j11);
            valueOf = sb2.toString();
        } else {
            valueOf = String.valueOf(j11);
        }
        textView.setText(valueOf);
        long j12 = 60;
        long j13 = (j10 / j12) % j12;
        TextView textView2 = getViewBinding().tvMinute;
        if (j13 < 10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append('0');
            sb3.append(j13);
            valueOf2 = sb3.toString();
        } else {
            valueOf2 = String.valueOf(j13);
        }
        textView2.setText(valueOf2);
        long j14 = j10 % j12;
        TextView textView3 = getViewBinding().tvSecond;
        if (j14 < 10) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append('0');
            sb4.append(j14);
            valueOf3 = sb4.toString();
        } else {
            valueOf3 = String.valueOf(j14);
        }
        textView3.setText(valueOf3);
    }

    private final void setCountDownTime() {
        if ((-FirstRechargeDownTimeUtils.INSTANCE.getLastLoginTime()) + System.currentTimeMillis() + com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff() > 86400000) {
            getViewBinding().tvHour.setText("00");
            getViewBinding().tvMinute.setText("00");
            getViewBinding().tvSecond.setText("00");
            return;
        }
        this.countdownTimer.start();
        refreshText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setImageResouse(ImageView imageView, GiftBean giftBean) {
        Integer prizeType = giftBean.getPrizeType();
        if (prizeType != null && prizeType.intValue() == 0) {
            if (imageView != null) {
                imageView.setImageResource(R.mipmap.icon_recharge_exp);
            }
        } else if (prizeType != null && prizeType.intValue() == 1) {
            if (imageView != null) {
                imageView.setImageResource(R.mipmap.icon_game_diamond);
            }
        } else if (prizeType == null || prizeType.intValue() != 2) {
            hc.a.k(imageView, giftBean.getPrizeUrl(), false);
        } else if (imageView != null) {
            imageView.setImageResource(R.mipmap.icon_game_shuijing);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setNumber(TextView textView, GiftBean giftBean) {
        if (textView == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('x');
        Integer prizeNum = giftBean.getPrizeNum();
        sb2.append((prizeNum != null ? prizeNum.intValue() : -1) <= 0 ? 1 : giftBean.getPrizeNum());
        textView.setText(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTextView(TextView textView, GiftBean giftBean) {
        CharSequence trim;
        Integer prizeType = giftBean.getPrizeType();
        if (prizeType != null && prizeType.intValue() == 0) {
            if (textView == null) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getString(R.string.signin_perday_result_fifth));
            sb2.append('x');
            Integer prizeNum = giftBean.getPrizeNum();
            sb2.append((prizeNum != null ? prizeNum.intValue() : -1) <= 0 ? 1 : giftBean.getPrizeNum());
            textView.setText(sb2.toString());
        } else if (prizeType != null && prizeType.intValue() == 1) {
            if (textView == null) {
                return;
            }
            textView.setText(getString(R.string.i_want_to_charge_diamonds));
        } else if (prizeType != null && prizeType.intValue() == 2) {
            if (textView == null) {
                return;
            }
            textView.setText(getString(R.string.recharge_crystal));
        } else if (textView == null) {
        } else {
            trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(giftBean.getPrizeName()));
            textView.setText(trim.toString());
        }
    }

    @JvmStatic
    @NotNull
    public static final FirstRechargeDialog showDialog(@Nullable Integer num) {
        return Companion.showDialog(num);
    }

    @JvmStatic
    @NotNull
    public static final FirstRechargeDialog showDialog(@Nullable ArrayList<Integer> arrayList, @Nullable ArrayList<Integer> arrayList2, @Nullable Integer num) {
        return Companion.showDialog(arrayList, arrayList2, num);
    }

    @NotNull
    public final com.guochao.faceshow.views.g getCountdownTimer() {
        return this.countdownTimer;
    }

    @Nullable
    public final ArrayList<Integer> getMDescX() {
        return this.mDescX;
    }

    @Nullable
    public final ArrayList<Integer> getMDescY() {
        return this.mDescY;
    }

    public final boolean getMGoogleEnable() {
        return this.mGoogleEnable;
    }

    public final int getMType() {
        return this.mType;
    }

    public final long getRechargeClickTIme() {
        return this.rechargeClickTIme;
    }

    public final long getShowTime() {
        return this.showTime;
    }

    @NotNull
    public final DialogFirstRechargeBinding getViewBinding() {
        DialogFirstRechargeBinding dialogFirstRechargeBinding = this.viewBinding;
        if (dialogFirstRechargeBinding != null) {
            return dialogFirstRechargeBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        BuildersKt__Builders_commonKt.launch$default(getLifecycleSupportedScope(), Dispatchers.getMain(), null, new FirstRechargeDialog$initView$1(this, null), 2, null);
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
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        AppCompatDialog createCenterDialog = createCenterDialog();
        Window window = createCenterDialog.getWindow();
        if (window != null) {
            window.setDimAmount(0.6f);
        }
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes != null) {
            attributes.width = -1;
        }
        if (window != null) {
            window.setAttributes(attributes);
        }
        return createCenterDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.countdownTimer.cancel();
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().I0(this);
        SigninManager.INSTANCE.unRegisterRechargeListener(this);
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
        dismissAllowingStateLoss();
        EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
        eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_success, String.valueOf(this.mType));
        eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_success_scene, String.valueOf(getScene()));
        eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_success_time2, String.valueOf(getTime(System.currentTimeMillis() - this.rechargeClickTIme)));
        eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_success_time, String.valueOf(getTime(System.currentTimeMillis() - this.showTime)));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public void onSetupResponse(boolean z10) {
        this.mGoogleEnable = z10;
        if (z10) {
            com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().V(new com.android.billingclient.api.m() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.a
                @Override // com.android.billingclient.api.m
                public final void a(com.android.billingclient.api.e eVar, List list) {
                    FirstRechargeDialog.m416onSetupResponse$lambda2(FirstRechargeDialog.this, eVar, list);
                }
            });
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

    public final void setMDescX(@Nullable ArrayList<Integer> arrayList) {
        this.mDescX = arrayList;
    }

    public final void setMDescY(@Nullable ArrayList<Integer> arrayList) {
        this.mDescY = arrayList;
    }

    public final void setMGoogleEnable(boolean z10) {
        this.mGoogleEnable = z10;
    }

    public final void setMType(int i9) {
        this.mType = i9;
    }

    public final void setRechargeClickTIme(long j10) {
        this.rechargeClickTIme = j10;
    }

    public final void setShow(boolean z10) {
        this.isShow = z10;
    }

    public final void setShowTime(long j10) {
        this.showTime = j10;
    }

    public final void setViewBinding(@NotNull DialogFirstRechargeBinding dialogFirstRechargeBinding) {
        Intrinsics.checkNotNullParameter(dialogFirstRechargeBinding, "<set-?>");
        this.viewBinding = dialogFirstRechargeBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String str) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, str);
        this.isShow = true;
    }

    public final void showMoreContent(@NotNull final List<GiftBean> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        ViewGroup.LayoutParams layoutParams = getViewBinding().firstRechargeBags.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(marginLayoutParams.getMarginStart() - DensityUtil.dp2px(7.5f));
        marginLayoutParams.setMarginEnd(marginLayoutParams.getMarginEnd() - DensityUtil.dp2px(7.5f));
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(getContext()).inflate(R.layout.item_firstrecharge_more, (ViewGroup) getViewBinding().firstRechargeBags, true).findViewById(R.id.recycler_view);
        recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 3, 1, false));
        recyclerView.setAdapter(new RecyclerView.Adapter<BaseViewHolder>() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDialog$showMoreContent$2
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return data.size();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                ViewGroup.LayoutParams layoutParams2 = holder.itemView.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                if (i9 < 3) {
                    marginLayoutParams2.topMargin = 0;
                } else {
                    marginLayoutParams2.topMargin = DensityUtil.dp2px(15.0f);
                }
                holder.itemView.setPadding(DensityUtil.dp2px(7.5f), 0, DensityUtil.dp2px(7.5f), 0);
                FirstRechargeDialog.this.setImageResouse((ImageView) holder.itemView.findViewById(R.id.item_image), data.get(i9));
                FirstRechargeDialog.this.setTextView((TextView) holder.itemView.findViewById(R.id.item_name), data.get(i9));
                FirstRechargeDialog.this.setNumber((TextView) holder.itemView.findViewById(R.id.item_number), data.get(i9));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            @NotNull
            public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_firstrecharge_bag, parent, false));
            }
        });
    }

    public final void showOneContent(@NotNull List<GiftBean> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.item_firstrecharge_one, (ViewGroup) getViewBinding().firstRechargeBags, true);
        setImageResouse((ImageView) inflate.findViewById(R.id.first_image), data.get(0));
        setTextView((TextView) inflate.findViewById(R.id.first_name), data.get(0));
        setNumber((TextView) inflate.findViewById(R.id.first_number), data.get(0));
    }

    public final void showTwoContent(@NotNull List<GiftBean> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.item_firstrecharge_two, (ViewGroup) getViewBinding().firstRechargeBags, true);
        setImageResouse((ImageView) inflate.findViewById(R.id.first_image), data.get(0));
        setTextView((TextView) inflate.findViewById(R.id.first_name), data.get(0));
        setNumber((TextView) inflate.findViewById(R.id.first_number), data.get(0));
        setImageResouse((ImageView) inflate.findViewById(R.id.second_image), data.get(1));
        setTextView((TextView) inflate.findViewById(R.id.second_name), data.get(1));
        setNumber((TextView) inflate.findViewById(R.id.second_number), data.get(1));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* bridge */ /* synthetic */ void startSubscribe() {
        com.guochao.faceshow.aaspring.modulars.googlepay.f.f(this);
    }
}
