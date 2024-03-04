package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.GiftLuckDetailBean;
import com.guochao.faceshow.aaspring.beans.GiftNumInfo;
import com.guochao.faceshow.aaspring.beans.PrizeInfo;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.gift.viewmodel.GiftLuckDetailViewModel;
import com.guochao.faceshow.databinding.FragmentComboGiftDetailBinding;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 F2\u00020\u0001:\u0001FB\u0007¢\u0006\u0004\bE\u0010>J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\u0012\u0010\r\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u0012\u0010\u0010\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007J\u0006\u0010\u0011\u001a\u00020\u0004J\b\u0010\u0012\u001a\u00020\u0004H\u0016J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u001a\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u000e2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014J\b\u0010\u0017\u001a\u00020\u0004H\u0016J\u0012\u0010\u001a\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0007R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R*\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R$\u00101\u001a\u0012\u0012\u0004\u0012\u00020$0/j\b\u0012\u0004\u0012\u00020$`08\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00104\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R(\u00107\u001a\u0002068\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b7\u00108\u0012\u0004\b=\u0010>\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u0014\u0010@\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0014\u0010C\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006G"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;", "it", "", "showTimes", "formatExample", "setTextSwitcher", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "onDestroy", "Landroid/app/Dialog;", "onCreateDialog", "Landroid/view/View;", ViewHierarchyConstants.VIEW_KEY, "initView", "preView", "onDestroyView", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "root", "onStart", "Ly7/f;", "giftEvent", "handleEvent", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "mGift", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;", "viewModel", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "I", "", "Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;", "prizeInfoList", "Ljava/util/List;", "getPrizeInfoList", "()Ljava/util/List;", "setPrizeInfoList", "(Ljava/util/List;)V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "numList", "Ljava/util/ArrayList;", "", "isShowGiftFragment", "Z", "Lcom/guochao/faceshow/databinding/FragmentComboGiftDetailBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentComboGiftDetailBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentComboGiftDetailBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentComboGiftDetailBinding;)V", "getViewBinding$annotations", "()V", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "Ljava/lang/Runnable;", "runnable", "Ljava/lang/Runnable;", "<init>", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GiftLuckyDetailFragment extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private int count;
    @NotNull
    private final Handler handler;
    private boolean isShowGiftFragment;
    @Nullable
    private ResourceListItemBean mGift;
    @NotNull
    private final ArrayList<Integer> numList;
    @Nullable
    private List<PrizeInfo> prizeInfoList;
    @NotNull
    private final Runnable runnable;
    public FragmentComboGiftDetailBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;", "gift", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final GiftLuckyDetailFragment newInstance(@Nullable ResourceListItemBean resourceListItemBean) {
            Bundle bundle = new Bundle();
            GiftLuckyDetailFragment giftLuckyDetailFragment = new GiftLuckyDetailFragment();
            bundle.putParcelable("gift", resourceListItemBean);
            giftLuckyDetailFragment.setArguments(bundle);
            return giftLuckyDetailFragment;
        }
    }

    public GiftLuckyDetailFragment() {
        Lazy lazy;
        ArrayList<Integer> arrayListOf;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<GiftLuckDetailViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftLuckyDetailFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GiftLuckDetailViewModel invoke() {
                FragmentActivity requireActivity = GiftLuckyDetailFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (GiftLuckDetailViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(GiftLuckDetailViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
        this.prizeInfoList = new ArrayList();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf((int) R.mipmap.lucky_gift_detail_num_0), Integer.valueOf((int) R.mipmap.lucky_gift_detail_num_1), Integer.valueOf((int) R.mipmap.lucky_gift_detail_num_2), Integer.valueOf((int) R.mipmap.lucky_gift_detail_num_3), Integer.valueOf((int) R.mipmap.lucky_gift_detail_num_4), Integer.valueOf((int) R.mipmap.lucky_gift_detail_num_5), Integer.valueOf((int) R.mipmap.lucky_gift_detail_num_6), Integer.valueOf((int) R.mipmap.lucky_gift_detail_num_7), Integer.valueOf((int) R.mipmap.lucky_gift_detail_num_8), Integer.valueOf((int) R.mipmap.lucky_gift_detail_num_9));
        this.numList = arrayListOf;
        this.isShowGiftFragment = true;
        this.handler = new Handler(Looper.getMainLooper());
        this.runnable = new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftLuckyDetailFragment$runnable$1
            /* JADX WARN: Code restructure failed: missing block: B:23:0x0057, code lost:
                if (r0 != null) goto L21;
             */
            /* JADX WARN: Removed duplicated region for block: B:33:0x00c1  */
            /* JADX WARN: Removed duplicated region for block: B:34:0x00d7  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 261
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftLuckyDetailFragment$runnable$1.run():void");
            }
        };
    }

    private final void formatExample(GiftLuckDetailBean giftLuckDetailBean) {
        FragmentComboGiftDetailBinding viewBinding = getViewBinding();
        String valueOf = String.valueOf(giftLuckDetailBean != null ? Integer.valueOf(giftLuckDetailBean.getExampleMultiple1()) : null);
        viewBinding.example1LL.removeAllViews();
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(R.mipmap.lucky_gift_detail_num_x);
        viewBinding.example1LL.addView(imageView);
        for (int i9 = 0; i9 < valueOf.length(); i9++) {
            char charAt = valueOf.charAt(i9);
            ImageView imageView2 = new ImageView(getContext());
            Integer num = this.numList.get(Integer.parseInt(String.valueOf(charAt)));
            Intrinsics.checkNotNullExpressionValue(num, "numList[it.toString().toInt()]");
            imageView2.setImageResource(num.intValue());
            viewBinding.example1LL.addView(imageView2);
        }
        String valueOf2 = String.valueOf(giftLuckDetailBean != null ? Integer.valueOf(giftLuckDetailBean.getExampleMultiple2()) : null);
        viewBinding.example2LL.removeAllViews();
        ImageView imageView3 = new ImageView(getContext());
        imageView3.setImageResource(R.mipmap.lucky_gift_detail_num_x);
        viewBinding.example2LL.addView(imageView3);
        for (int i10 = 0; i10 < valueOf2.length(); i10++) {
            char charAt2 = valueOf2.charAt(i10);
            ImageView imageView4 = new ImageView(getContext());
            Integer num2 = this.numList.get(Integer.parseInt(String.valueOf(charAt2)));
            Intrinsics.checkNotNullExpressionValue(num2, "numList[it.toString().toInt()]");
            imageView4.setImageResource(num2.intValue());
            viewBinding.example2LL.addView(imageView4);
        }
        String valueOf3 = String.valueOf(giftLuckDetailBean != null ? Integer.valueOf(giftLuckDetailBean.getExampleMultiple3()) : null);
        viewBinding.example3LL.removeAllViews();
        ImageView imageView5 = new ImageView(getContext());
        imageView5.setImageResource(R.mipmap.lucky_gift_detail_num_x);
        viewBinding.example3LL.addView(imageView5);
        for (int i11 = 0; i11 < valueOf3.length(); i11++) {
            char charAt3 = valueOf3.charAt(i11);
            ImageView imageView6 = new ImageView(getContext());
            Integer num3 = this.numList.get(Integer.parseInt(String.valueOf(charAt3)));
            Intrinsics.checkNotNullExpressionValue(num3, "numList[it.toString().toInt()]");
            imageView6.setImageResource(num3.intValue());
            viewBinding.example3LL.addView(imageView6);
        }
        String valueOf4 = String.valueOf(giftLuckDetailBean != null ? Integer.valueOf(giftLuckDetailBean.getExampleMultiple4()) : null);
        viewBinding.example4LL.removeAllViews();
        ImageView imageView7 = new ImageView(getContext());
        imageView7.setImageResource(R.mipmap.lucky_gift_detail_num_x);
        viewBinding.example4LL.addView(imageView7);
        for (int i12 = 0; i12 < valueOf4.length(); i12++) {
            char charAt4 = valueOf4.charAt(i12);
            ImageView imageView8 = new ImageView(getContext());
            Integer num4 = this.numList.get(Integer.parseInt(String.valueOf(charAt4)));
            Intrinsics.checkNotNullExpressionValue(num4, "numList[it.toString().toInt()]");
            imageView8.setImageResource(num4.intValue());
            viewBinding.example4LL.addView(imageView8);
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final GiftLuckDetailViewModel getViewModel() {
        return (GiftLuckDetailViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-0  reason: not valid java name */
    public static final void m395initView$lambda4$lambda0(GiftLuckyDetailFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-1  reason: not valid java name */
    public static final void m396initView$lambda4$lambda1(GiftLuckyDetailFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ComboLuckyGiftRulesFragment newInstance = ComboLuckyGiftRulesFragment.Companion.newInstance(this$0.mGift);
        FragmentManager parentFragmentManager = this$0.getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
        newInstance.show(parentFragmentManager, "rules");
        this$0.isShowGiftFragment = false;
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-2  reason: not valid java name */
    public static final void m397initView$lambda4$lambda2(GiftLuckyDetailFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GiftLuckyRecordFragment newInstance = GiftLuckyRecordFragment.Companion.newInstance(this$0.mGift);
        FragmentManager parentFragmentManager = this$0.getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
        newInstance.show(parentFragmentManager, "record");
        this$0.isShowGiftFragment = false;
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-3  reason: not valid java name */
    public static final void m398initView$lambda4$lambda3(GiftLuckyDetailFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-6  reason: not valid java name */
    public static final void m399initView$lambda6(GiftLuckyDetailFragment this$0, GiftLuckDetailBean giftLuckDetailBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (giftLuckDetailBean != null) {
            this$0.showTimes(giftLuckDetailBean);
            this$0.formatExample(giftLuckDetailBean);
            TextView textView = this$0.getViewBinding().rule1;
            if (textView != null) {
                textView.setText(this$0.getString(R.string.lucky_gift_header_tips, Integer.valueOf(giftLuckDetailBean.getMaxTimes())));
            }
            this$0.getViewBinding().rule1.setVisibility(0);
            this$0.prizeInfoList = giftLuckDetailBean.getPrizeInfoList();
            return;
        }
        this$0.getViewBinding().giftInfoListLL.setVisibility(4);
    }

    @JvmStatic
    @NotNull
    public static final GiftLuckyDetailFragment newInstance(@Nullable ResourceListItemBean resourceListItemBean) {
        return Companion.newInstance(resourceListItemBean);
    }

    private final void setTextSwitcher() {
        getViewBinding().countTV.setFactory(new ViewSwitcher.ViewFactory() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.l
            @Override // android.widget.ViewSwitcher.ViewFactory
            public final View makeView() {
                View m400setTextSwitcher$lambda15;
                m400setTextSwitcher$lambda15 = GiftLuckyDetailFragment.m400setTextSwitcher$lambda15(GiftLuckyDetailFragment.this);
                return m400setTextSwitcher$lambda15;
            }
        });
        this.handler.post(this.runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setTextSwitcher$lambda-15  reason: not valid java name */
    public static final View m400setTextSwitcher$lambda15(GiftLuckyDetailFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AppCompatEditText appCompatEditText = new AppCompatEditText(this$0.requireContext());
        appCompatEditText.setEnabled(false);
        appCompatEditText.setFocusable(false);
        appCompatEditText.setBackground(appCompatEditText.getResources().getDrawable(R.drawable.transparent_));
        appCompatEditText.setTextSize(13.0f);
        appCompatEditText.setTextColor(Color.parseColor("#FED238"));
        return appCompatEditText;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0024, code lost:
        r7 = kotlin.collections.CollectionsKt___CollectionsKt.reversed(r7);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void showTimes(com.guochao.faceshow.aaspring.beans.GiftLuckDetailBean r7) {
        /*
            r6 = this;
            com.guochao.faceshow.databinding.FragmentComboGiftDetailBinding r0 = r6.getViewBinding()
            android.widget.LinearLayout r0 = r0.giftInfoListLL
            int r0 = r0.getChildCount()
            com.guochao.faceshow.databinding.FragmentComboGiftDetailBinding r1 = r6.getViewBinding()
            android.widget.LinearLayout r1 = r1.giftInfoListLL
            r2 = 1
            int r0 = r0 - r2
            r1.removeViews(r2, r0)
            com.guochao.faceshow.databinding.FragmentComboGiftDetailBinding r0 = r6.getViewBinding()
            android.widget.LinearLayout r0 = r0.giftInfoListLL
            r0.getChildCount()
            java.util.List r7 = r7.getGiftNumInfoList()
            if (r7 == 0) goto L95
            java.util.List r7 = kotlin.collections.CollectionsKt.reversed(r7)
            if (r7 == 0) goto L95
            java.util.Iterator r7 = r7.iterator()
        L2e:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto L95
            java.lang.Object r0 = r7.next()
            com.guochao.faceshow.aaspring.beans.GiftNumInfo r0 = (com.guochao.faceshow.aaspring.beans.GiftNumInfo) r0
            android.content.Context r1 = r6.getContext()
            android.view.LayoutInflater r1 = android.view.LayoutInflater.from(r1)
            r2 = 2131559528(0x7f0d0468, float:1.8744403E38)
            r3 = 0
            android.view.View r1 = r1.inflate(r2, r3)
            android.widget.LinearLayout$LayoutParams r2 = new android.widget.LinearLayout$LayoutParams
            r3 = 0
            r4 = -1
            r5 = 1065353216(0x3f800000, float:1.0)
            r2.<init>(r3, r4, r5)
            r1.setLayoutParams(r2)
            r2 = 2131362410(0x7f0a026a, float:1.83446E38)
            android.view.View r2 = r1.findViewById(r2)
            android.widget.TextView r2 = (android.widget.TextView) r2
            int r3 = r0.getNum()
            java.lang.String r3 = java.lang.String.valueOf(r3)
            r2.setText(r3)
            r2 = 2131362531(0x7f0a02e3, float:1.8344845E38)
            android.view.View r2 = r1.findViewById(r2)
            android.widget.TextView r2 = (android.widget.TextView) r2
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r4 = 88
            r3.append(r4)
            int r0 = r0.getTimes()
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r2.setText(r0)
            com.guochao.faceshow.databinding.FragmentComboGiftDetailBinding r0 = r6.getViewBinding()
            android.widget.LinearLayout r0 = r0.giftInfoListLL
            r0.addView(r1)
            goto L2e
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftLuckyDetailFragment.showTimes(com.guochao.faceshow.aaspring.beans.GiftLuckDetailBean):void");
    }

    @Nullable
    public final List<PrizeInfo> getPrizeInfoList() {
        return this.prizeInfoList;
    }

    @NotNull
    public final FragmentComboGiftDetailBinding getViewBinding() {
        FragmentComboGiftDetailBinding fragmentComboGiftDetailBinding = this.viewBinding;
        if (fragmentComboGiftDetailBinding != null) {
            return fragmentComboGiftDetailBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void handleEvent(@Nullable y7.f fVar) {
        if (isAdded()) {
            this.isShowGiftFragment = true;
            dismiss();
        }
    }

    public final void initView(@Nullable View view) {
        Bundle arguments = getArguments();
        this.mGift = arguments != null ? (ResourceListItemBean) arguments.getParcelable("gift") : null;
        preView();
        FragmentComboGiftDetailBinding viewBinding = getViewBinding();
        viewBinding.backIV.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GiftLuckyDetailFragment.m395initView$lambda4$lambda0(GiftLuckyDetailFragment.this, view2);
            }
        });
        viewBinding.tipsIV.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GiftLuckyDetailFragment.m396initView$lambda4$lambda1(GiftLuckyDetailFragment.this, view2);
            }
        });
        viewBinding.recordIV.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GiftLuckyDetailFragment.m397initView$lambda4$lambda2(GiftLuckyDetailFragment.this, view2);
            }
        });
        TextView textView = viewBinding.giftTV;
        ResourceListItemBean resourceListItemBean = this.mGift;
        textView.setText(resourceListItemBean != null ? resourceListItemBean.getName() : null);
        ImageView imageView = viewBinding.giftIV;
        ResourceListItemBean resourceListItemBean2 = this.mGift;
        hc.a.j(imageView, resourceListItemBean2 != null ? resourceListItemBean2.getImg() : null);
        viewBinding.gotoGiftTV.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GiftLuckyDetailFragment.m398initView$lambda4$lambda3(GiftLuckyDetailFragment.this, view2);
            }
        });
        setTextSwitcher();
        ResourceListItemBean resourceListItemBean3 = this.mGift;
        if (resourceListItemBean3 != null) {
            getViewModel().getConfig(resourceListItemBean3.getId());
        }
        getViewModel().bind(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.m
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                GiftLuckyDetailFragment.m399initView$lambda6(GiftLuckyDetailFragment.this, (GiftLuckDetailBean) obj);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
        EventBus.getDefault().register(this);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog(R.style.BottomDialog_FullScreen);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.handler.removeCallbacksAndMessages(null);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        if (this.isShowGiftFragment) {
            EventBus.getDefault().post(new y7.g(true));
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Dialog dialog;
        Window window;
        WindowManager.LayoutParams attributes;
        Window window2;
        super.onStart();
        if (getDialog() == null || (dialog = getDialog()) == null || (window = dialog.getWindow()) == null || (attributes = window.getAttributes()) == null) {
            return;
        }
        int i9 = attributes.height;
        Dialog dialog2 = getDialog();
        if (dialog2 == null || (window2 = dialog2.getWindow()) == null) {
            return;
        }
        window2.setLayout(BaseApplication.getInstance().getResources().getDisplayMetrics().widthPixels, i9);
    }

    public final void preView() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new GiftNumInfo(999, 10000));
        arrayList.add(new GiftNumInfo(188, 3000));
        arrayList.add(new GiftNumInfo(99, 1000));
        arrayList.add(new GiftNumInfo(10, 500));
        arrayList.add(new GiftNumInfo(1, 100));
        GiftLuckDetailBean giftLuckDetailBean = new GiftLuckDetailBean(0, 0, 0, 0, arrayList, 0, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65519, null);
        formatExample(giftLuckDetailBean);
        showTimes(giftLuckDetailBean);
    }

    public final void setPrizeInfoList(@Nullable List<PrizeInfo> list) {
        this.prizeInfoList = list;
    }

    public final void setViewBinding(@NotNull FragmentComboGiftDetailBinding fragmentComboGiftDetailBinding) {
        Intrinsics.checkNotNullParameter(fragmentComboGiftDetailBinding, "<set-?>");
        this.viewBinding = fragmentComboGiftDetailBinding;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        initView(root);
    }
}
