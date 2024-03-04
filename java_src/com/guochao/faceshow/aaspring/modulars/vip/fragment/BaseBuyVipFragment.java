package com.guochao.faceshow.aaspring.modulars.vip.fragment;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import butterknife.BindView;
import butterknife.Unbinder;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.modulars.vip.BuyVipPeriodHolder;
import com.guochao.faceshow.aaspring.modulars.vip.activity.BuyVipGuideActivity;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.aaspring.views.WhoSawMeImageView;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.views.ObservableScrollView;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.rd.PageIndicatorView;
import com.rd.draw.data.RtlMode;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public abstract class BaseBuyVipFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    int f23318a;

    /* renamed from: b  reason: collision with root package name */
    int f23319b;
    @BindView
    View btnLay;

    /* renamed from: c  reason: collision with root package name */
    BuyVipPeriodHolder f23320c;

    /* renamed from: d  reason: collision with root package name */
    BuyVipPeriodHolder f23321d;

    /* renamed from: e  reason: collision with root package name */
    BuyVipPeriodHolder f23322e;

    /* renamed from: f  reason: collision with root package name */
    int f23323f;
    @BindView
    View firstItemLay;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    int f23324g;

    /* renamed from: h  reason: collision with root package name */
    RecyclerView f23325h;

    /* renamed from: i  reason: collision with root package name */
    h f23326i;

    /* renamed from: j  reason: collision with root package name */
    Runnable f23327j = new a();

    /* renamed from: k  reason: collision with root package name */
    int f23328k;
    @Nullable
    @BindView
    public View mAnimTop;
    @BindView
    TextView mLevelUpToVVipView;
    @BindView
    PageIndicatorView mPageIndicatorView;
    @BindView
    SVGAImageView mSVGAImageViewNext;
    @Nullable
    @BindView
    ObservableScrollView mScrollView;
    @BindView
    TextView mTextViewNextHint1;
    @BindView
    TextView mTextViewNextHint2;
    @BindView
    ViewGroup mViewGroupMenus;
    @BindView
    View mViewNext;
    @BindView
    TextView mViewNextBtn;
    @BindView
    View mViewNextDisableHint;
    @BindView
    ViewPager2 mViewPager;
    @BindView
    View mVipBg;
    @BindView
    View secondItemLay;
    @BindView
    View thirdItemLay;

    /* loaded from: classes3.dex */
    public static class InfoViewHolder extends BaseViewHolder {
        @BindView
        View mView1;
        @BindView
        View mView2;

        public InfoViewHolder(@NonNull View view) {
            super(view);
            if (view instanceof ViewGroup) {
                ((ViewGroup) view).setClipChildren(false);
            }
        }

        public void c(float f10, boolean z10) {
            if (q7.a.e().j()) {
                z10 = !z10;
            }
            if (z10) {
                this.mView1.setTranslationX(500.0f * f10);
                this.mView2.setTranslationX(f10 * 800.0f);
                return;
            }
            float f11 = -f10;
            this.mView1.setTranslationX(500.0f * f11);
            this.mView2.setTranslationX(f11 * 800.0f);
        }
    }

    /* loaded from: classes3.dex */
    public class InfoViewHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private InfoViewHolder f23329b;

        @UiThread
        public InfoViewHolder_ViewBinding(InfoViewHolder infoViewHolder, View view) {
            this.f23329b = infoViewHolder;
            infoViewHolder.mView1 = butterknife.internal.c.c(view, R.id.tips1, "field 'mView1'");
            infoViewHolder.mView2 = butterknife.internal.c.c(view, R.id.tips2, "field 'mView2'");
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            InfoViewHolder infoViewHolder = this.f23329b;
            if (infoViewHolder != null) {
                this.f23329b = null;
                infoViewHolder.mView1 = null;
                infoViewHolder.mView2 = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int currentItem = BaseBuyVipFragment.this.mViewPager.getCurrentItem() + 1;
            if (BaseBuyVipFragment.this.mViewPager.getAdapter() != null && currentItem >= BaseBuyVipFragment.this.mViewPager.getAdapter().getItemCount()) {
                currentItem = 0;
            }
            BaseBuyVipFragment.this.mViewPager.setCurrentItem(currentItem, true);
            HandlerGetter.getMainHandler().postDelayed(this, 5000L);
        }
    }

    /* loaded from: classes3.dex */
    class b implements SVGAParser.ParseCompletion {
        b() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            BaseBuyVipFragment.this.mSVGAImageViewNext.setVideoItem(sVGAVideoEntity);
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, BaseBuyVipFragment.this.mSVGAImageViewNext, 2.0f);
            BaseBuyVipFragment.this.mSVGAImageViewNext.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseBuyVipFragment.this.mViewPager.setOffscreenPageLimit(1);
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f23333a;

        d(int i9) {
            this.f23333a = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseBuyVipFragment.this.V1(this.f23333a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment parentFragment = BaseBuyVipFragment.this.getParentFragment();
            if (parentFragment instanceof BuyVipGuideParentFragment) {
                ((BuyVipGuideParentFragment) parentFragment).f23345c.getMeasuredHeight();
            }
            if (BaseBuyVipFragment.this.getActivity() instanceof BuyVipGuideActivity) {
                ((BuyVipGuideActivity) BaseBuyVipFragment.this.getActivity()).mVipSwitcherView.getMeasuredHeight();
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) BaseBuyVipFragment.this.mViewPager.getLayoutParams();
            BaseBuyVipFragment baseBuyVipFragment = BaseBuyVipFragment.this;
            if (baseBuyVipFragment.f23324g == 2) {
                marginLayoutParams.height = baseBuyVipFragment.mVipBg.getHeight() - marginLayoutParams.topMargin;
            } else {
                ContextCompat.getDrawable(BaseApplication.getInstance(), R.mipmap.vip_window_bj_short);
                marginLayoutParams.height = BaseBuyVipFragment.this.mVipBg.getHeight() - marginLayoutParams.topMargin;
            }
            BaseBuyVipFragment.this.mViewPager.setLayoutParams(marginLayoutParams);
        }
    }

    /* loaded from: classes3.dex */
    class f extends ViewPager2.OnPageChangeCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f23336a;

        f(g gVar) {
            this.f23336a = gVar;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i9) {
            super.onPageScrollStateChanged(i9);
            BaseBuyVipFragment.this.mPageIndicatorView.onPageScrollStateChanged(i9);
            if (i9 == 0) {
                BaseBuyVipFragment.this.Y1();
            } else if (i9 == 1) {
                BaseBuyVipFragment.this.Z1();
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i9, float f10, int i10) {
            super.onPageScrolled(i9, f10, i10);
            BaseBuyVipFragment.this.mPageIndicatorView.onPageScrolled(i9 % this.f23336a.a(), f10, i10);
            BaseBuyVipFragment.this.T1(i9, f10, i10);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i9) {
            super.onPageSelected(i9);
            BaseBuyVipFragment.this.mPageIndicatorView.onPageSelected(i9 % this.f23336a.a());
        }
    }

    /* loaded from: classes3.dex */
    private static class g extends RecyclerView.Adapter<InfoViewHolder> {

        /* renamed from: a  reason: collision with root package name */
        private List<Integer> f23338a;

        /* renamed from: b  reason: collision with root package name */
        private Context f23339b;

        /* renamed from: c  reason: collision with root package name */
        private int f23340c;

        /* renamed from: d  reason: collision with root package name */
        private int f23341d;

        public g(Context context, int i9, int i10) {
            ArrayList arrayList = new ArrayList();
            this.f23338a = arrayList;
            this.f23339b = context;
            this.f23340c = i9;
            this.f23341d = i10;
            if (i9 == 1) {
                arrayList.add(Integer.valueOf((int) R.layout.layout_buy_vip_banner1));
                this.f23338a.add(Integer.valueOf((int) R.layout.layout_buy_vip_banner_gif));
                this.f23338a.add(Integer.valueOf((int) R.layout.layout_buy_vip_who_saw_me));
                this.f23338a.add(Integer.valueOf((int) R.layout.layout_buy_vip_live));
                this.f23338a.add(Integer.valueOf((int) R.layout.layout_buy_vip_no_kick));
                this.f23338a.add(Integer.valueOf((int) R.layout.layout_buy_vip_customer_service));
                return;
            }
            arrayList.add(Integer.valueOf((int) R.layout.layout_buy_vvip_banner1));
            this.f23338a.add(Integer.valueOf((int) R.layout.layout_buy_vvip_zuoqi));
            this.f23338a.add(Integer.valueOf((int) R.layout.layout_buy_vvip_diwen));
            this.f23338a.add(Integer.valueOf((int) R.layout.layout_buy_vvip_danmu));
            this.f23338a.add(Integer.valueOf((int) R.layout.layout_buy_vvip_kick_other));
            this.f23338a.add(Integer.valueOf((int) R.layout.layout_buy_vvip_customer_service));
        }

        public int a() {
            return this.f23338a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: b */
        public void onBindViewHolder(@NonNull InfoViewHolder infoViewHolder, int i9) {
            SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) infoViewHolder.getView(R.id.gifIV);
            if (svgaImageViewV2 != null) {
                svgaImageViewV2.setVisibility(0);
                svgaImageViewV2.playRaw(R.raw.ic_tobe_vip_vip_gif);
            }
            SvgaImageViewV2 svgaImageViewV22 = (SvgaImageViewV2) infoViewHolder.getView(R.id.seeMeSIV);
            if (svgaImageViewV22 != null) {
                svgaImageViewV22.setVisibility(0);
                svgaImageViewV22.playRaw(R.raw.ic_tobe_vip_vip_see_me);
            }
            SvgaImageViewV2 svgaImageViewV23 = (SvgaImageViewV2) infoViewHolder.getView(R.id.muteSIV);
            if (svgaImageViewV23 != null) {
                svgaImageViewV23.playRaw(R.raw.ic_tobe_vip_vip_taboo);
            }
            SvgaImageViewV2 svgaImageViewV24 = (SvgaImageViewV2) infoViewHolder.getView(R.id.customerServiceSIV);
            if (svgaImageViewV24 != null) {
                svgaImageViewV24.setVisibility(0);
                svgaImageViewV24.playRaw(R.raw.ic_tobe_vip_vip_cs);
            }
            SvgaImageViewV2 svgaImageViewV25 = (SvgaImageViewV2) infoViewHolder.getView(R.id.kickSIV);
            if (svgaImageViewV25 != null) {
                svgaImageViewV25.setVisibility(0);
                svgaImageViewV25.playRaw(R.raw.ic_tobe_vip_vvip_kick);
            }
            SvgaImageViewV2 svgaImageViewV26 = (SvgaImageViewV2) infoViewHolder.getView(R.id.vvCustomerServiceSIV);
            if (svgaImageViewV26 != null) {
                svgaImageViewV26.setVisibility(0);
                svgaImageViewV26.playRaw(R.raw.ic_tobe_vip_vvip_cs);
            }
            VipIndicatorView vipIndicatorView = (VipIndicatorView) infoViewHolder.getView(R.id.vip_indicator_view);
            if (vipIndicatorView != null) {
                vipIndicatorView.setVipLevel(this.f23340c);
            }
            HeadPortraitView headPortraitView = (HeadPortraitView) infoViewHolder.getView(R.id.head_img);
            if (headPortraitView != null) {
                headPortraitView.k(b8.e.g().c(), this.f23340c, false);
            }
            ImageView imageView = (ImageView) infoViewHolder.getView(R.id.img1);
            if (imageView != null) {
                ic.a.b(BaseApplication.getInstance()).r(b8.e.g().c().getAvatarUrl()).l(R.mipmap.default_head).b0(R.mipmap.default_head).Q0(imageView);
                if (this.f23340c == 2 && (imageView instanceof WhoSawMeImageView)) {
                    ((WhoSawMeImageView) imageView).c(Color.parseColor("#FFDF6D"), Color.parseColor("#D09A12"));
                }
                if (this.f23340c == 1 && "tag".equals(imageView.getTag()) && (imageView instanceof WhoSawMeImageView)) {
                    ((WhoSawMeImageView) imageView).setDrawEnabled(false);
                }
            }
            TextView textView = (TextView) infoViewHolder.getView(R.id.nickname_1);
            if (textView != null) {
                TextViewUtils.setMaxEcplise(textView, 18, b8.e.g().c().getUserName());
            }
            TextView textView2 = (TextView) infoViewHolder.getView(R.id.nickname_2);
            if (textView2 != null) {
                TextViewUtils.setMaxEcplise(textView2, 8, b8.e.g().c().getUserName());
            }
            View view = infoViewHolder.getView(R.id.bottom_tip);
            if (this.f23341d == 2) {
                if (view != null) {
                    ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin = DensityUtil.dp2px(60.0f);
                    return;
                }
                return;
            }
            if (view != null) {
                ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin = DensityUtil.dp2px(60.0f);
            }
            View view2 = infoViewHolder.getView(R.id.zuoqi_area);
            if (view2 != null) {
                ((ViewGroup.MarginLayoutParams) view2.getLayoutParams()).setMarginStart(DensityUtil.dp2px(13.0f));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: c */
        public InfoViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            LayoutInflater from = LayoutInflater.from(this.f23339b);
            List<Integer> list = this.f23338a;
            return new InfoViewHolder(from.inflate(list.get(i9 % list.size()).intValue(), viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f23338a.size() * 100;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i9) {
            return i9 % this.f23338a.size();
        }
    }

    /* loaded from: classes3.dex */
    public interface h {
        void B1(String str, String str2);

        void b(View view, String str, int i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T1(int i9, float f10, int i10) {
        InfoViewHolder infoViewHolder = (InfoViewHolder) this.f23325h.findViewHolderForAdapterPosition(i9);
        if (infoViewHolder != null) {
            infoViewHolder.c(f10, false);
        }
        InfoViewHolder infoViewHolder2 = (InfoViewHolder) this.f23325h.findViewHolderForAdapterPosition(i9 + 1);
        if (infoViewHolder2 != null) {
            infoViewHolder2.c(1.0f - f10, true);
        }
        InfoViewHolder infoViewHolder3 = (InfoViewHolder) this.f23325h.findViewHolderForAdapterPosition(i9 - 1);
        if (infoViewHolder3 != null) {
            infoViewHolder3.c(1.0f - f10, true);
        }
    }

    private void U1() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mViewNext, "scaleY", 1.0f, 0.9f);
        ofFloat.setDuration(1000L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ofFloat.start();
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mViewNext, "scaleX", 1.0f, 0.9f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1(int i9) {
        if (i9 < 2) {
            i9 = 1 - i9;
        }
        this.f23328k = i9;
        BuyVipPeriodHolder buyVipPeriodHolder = this.f23320c;
        if (buyVipPeriodHolder != null && this.f23321d != null && this.f23322e != null) {
            buyVipPeriodHolder.c(1, i9, this.f23323f);
            this.f23321d.c(0, this.f23328k, this.f23323f);
            this.f23322e.c(2, this.f23328k, this.f23323f);
        }
        int vipLevel = b8.e.g().c().getVipLevel();
        if ((vipLevel > 0 && this.f23323f == 1) || (vipLevel > 1 && this.f23323f == 2)) {
            X1(false, getString(vipLevel == 1 ? R.string.vip_mall_has_been_opend : R.string.vip_mall_has_been_opend_vvip), getString(R.string.period_of_validity, EditTextUtils.convertNormalNumberToArabicNumber(new SimpleDateFormat("M/d/yyyy", Locale.US).format(new Date(b8.e.g().c().getUserVipMsg().getThirdEndTime())))));
            return;
        }
        X1(true, null, null);
    }

    private void X1(boolean z10, String str, String str2) {
        this.mViewNext.setEnabled(z10);
        if (!z10) {
            this.mViewNextDisableHint.setVisibility(0);
            this.mViewNextBtn.setVisibility(8);
        } else {
            this.mViewNextDisableHint.setVisibility(8);
            this.mViewNextBtn.setVisibility(0);
            if (b8.e.g().c().getVipLevel() == 0) {
                this.mViewNextBtn.setText(getString(R.string.setting_payment_password_next));
            } else {
                this.mViewNextBtn.setText(getString(R.string.vip_mall_level_up_to_vvip));
            }
        }
        this.mTextViewNextHint1.setText(str);
        this.mTextViewNextHint2.setText(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1() {
        Z1();
        HandlerGetter.getMainHandler().postDelayed(this.f23327j, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1() {
        HandlerGetter.getMainHandler().removeCallbacks(this.f23327j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void W1(boolean z10) {
        if (z10) {
            this.btnLay.setVisibility(0);
            int vipLevel = b8.e.g().c().getVipLevel();
            if ((vipLevel > 0 && this.f23323f == 1) || (vipLevel > 1 && this.f23323f == 2)) {
                X1(false, getString(vipLevel == 1 ? R.string.vip_mall_has_been_opend : R.string.vip_mall_has_been_opend_vvip), getString(R.string.period_of_validity, EditTextUtils.convertNormalNumberToArabicNumber(new SimpleDateFormat("M/d/yyyy", Locale.US).format(new Date(b8.e.g().c().getUserVipMsg().getThirdEndTime())))));
            } else {
                X1(true, null, null);
            }
            if (vipLevel == 1 && this.f23323f == 1) {
                this.mLevelUpToVVipView.setVisibility(0);
                return;
            } else {
                this.mLevelUpToVVipView.setVisibility(8);
                return;
            }
        }
        this.btnLay.setVisibility(4);
        this.mLevelUpToVVipView.setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return this.f23324g == 2 ? R.layout.fragment_buy_vip : R.layout.fragment_buy_vip_float_mode;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        this.mLevelUpToVVipView.getPaint().setUnderlineText(true);
        if (this.f23324g == 2) {
            this.mSVGAImageViewNext.setVisibility(8);
            b bVar = new b();
            if (this.f23323f == 1) {
                SvgaImageViewUtils.decodeRaw(R.raw.vip_buy_btn_blue, "vip_blue", bVar);
            } else {
                SvgaImageViewUtils.decodeRaw(R.raw.vip_buy_btn_yellow, "vip_yellow", bVar);
            }
        } else {
            this.mSVGAImageViewNext.setVisibility(8);
        }
        U1();
        if (this.f23323f != 1) {
            if (this.f23324g == 1) {
                this.mVipBg.getLayoutParams().height = DensityUtil.dp2px(280.0f);
            } else {
                this.mVipBg.getLayoutParams().height = DensityUtil.dp2px(303.0f);
            }
            this.mViewNext.setBackgroundResource(R.drawable.bg_buy_vvip);
        } else {
            if (this.f23324g == 1) {
                this.mVipBg.getLayoutParams().height = DensityUtil.dp2px(280.0f);
            } else {
                this.mVipBg.getLayoutParams().height = DensityUtil.dp2px(303.0f);
            }
            this.mViewNext.setBackgroundResource(R.drawable.btn_common_bg);
        }
        g gVar = new g(getContext(), this.f23323f, this.f23324g);
        this.mViewPager.setAdapter(gVar);
        this.mViewPager.setOffscreenPageLimit(10);
        this.mViewPager.postDelayed(new c(), 1000L);
        int i9 = this.f23318a;
        if (i9 == 1 && this.f23323f == 1) {
            this.mViewPager.setCurrentItem((gVar.getItemCount() / 2) + 2, false);
        } else if (i9 == 3 && this.f23323f == 2) {
            this.mViewPager.setCurrentItem((gVar.getItemCount() / 2) + 3, false);
        } else {
            this.mViewPager.setCurrentItem(gVar.getItemCount() / 2, false);
        }
        this.mPageIndicatorView.setCount(gVar.a());
        this.f23325h = (RecyclerView) this.mViewPager.getChildAt(0);
        int childCount = this.mViewGroupMenus.getChildCount();
        int i10 = 0;
        while (i10 < childCount) {
            View childAt = this.mViewGroupMenus.getChildAt(i10);
            if (this.f23323f == 2) {
                childAt.setBackgroundResource(R.drawable.buy_vvip_bg);
            } else {
                childAt.setBackgroundResource(R.drawable.buy_vip_bg);
            }
            childAt.setSelected(i10 == 1);
            childAt.setOnClickListener(new d(i10));
            i10++;
        }
        this.mVipBg.post(new e());
        this.mPageIndicatorView.setRtlMode(q7.a.e().j() ? RtlMode.On : RtlMode.Off);
        this.mViewPager.registerOnPageChangeCallback(new f(gVar));
        V1(1);
        this.f23320c = new BuyVipPeriodHolder(this.firstItemLay);
        this.f23321d = new BuyVipPeriodHolder(this.secondItemLay);
        this.f23322e = new BuyVipPeriodHolder(this.thirdItemLay);
        this.f23320c.b(1, this.f23328k, this.f23323f);
        this.f23321d.b(0, this.f23328k, this.f23323f);
        this.f23322e.b(2, this.f23328k, this.f23323f);
        W1(false);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (getParentFragment() instanceof h) {
            this.f23326i = (h) getParentFragment();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f23323f = getArguments().getInt("key");
            this.f23324g = getArguments().getInt("mode");
            this.f23319b = getArguments().getInt("pos");
            this.f23318a = getArguments().getInt("from");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        Z1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Y1();
    }
}
