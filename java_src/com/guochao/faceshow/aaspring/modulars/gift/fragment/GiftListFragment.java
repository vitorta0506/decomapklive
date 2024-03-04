package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.animation.Animator;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.timepicker.TimeModel;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.beans.AppResource;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarGiftDialog;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.utils.ColorUtils;
import com.guochao.faceshow.aaspring.utils.DateUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.TextDrawableUtil;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.BagBean;
import com.guochao.faceshow.bean.BagListBean;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.lib_base.R$style;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class GiftListFragment extends BaseRecyclerViewFragment<ResourceListItemBean, BaseViewHolder> {

    /* renamed from: p  reason: collision with root package name */
    static final int[] f17852p = {1, 10, 99, 188, 999};

    /* renamed from: d  reason: collision with root package name */
    private ResourceCategoryItem f17856d;

    /* renamed from: e  reason: collision with root package name */
    private ResourceListItemBean f17857e;

    /* renamed from: f  reason: collision with root package name */
    int f17858f;

    /* renamed from: g  reason: collision with root package name */
    int f17859g;

    /* renamed from: h  reason: collision with root package name */
    boolean f17860h;

    /* renamed from: i  reason: collision with root package name */
    d f17861i;

    /* renamed from: k  reason: collision with root package name */
    private List<ResourceListItemBean> f17863k;

    /* renamed from: l  reason: collision with root package name */
    private int f17864l;

    /* renamed from: m  reason: collision with root package name */
    private Animator f17865m;

    /* renamed from: n  reason: collision with root package name */
    private ImageView f17866n;

    /* renamed from: o  reason: collision with root package name */
    private c f17867o;

    /* renamed from: a  reason: collision with root package name */
    int f17853a = -1;

    /* renamed from: b  reason: collision with root package name */
    int f17854b = 0;

    /* renamed from: c  reason: collision with root package name */
    int f17855c = 1;

    /* renamed from: j  reason: collision with root package name */
    private boolean f17862j = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f17868a;

        /* renamed from: com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftListFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0172a implements Runnable {
            RunnableC0172a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (GiftListFragment.this.isDetached() || !GiftListFragment.this.isAdded() || GiftListFragment.this.f17867o == null || !GiftListFragment.this.f17867o.isShowing()) {
                    return;
                }
                GiftListFragment.this.f17867o.dismiss();
            }
        }

        a(View view) {
            this.f17868a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f17868a.getContext() != null) {
                GiftListFragment.this.f17867o = new c(this.f17868a.getContext());
            }
            if (GiftListFragment.this.f17867o != null) {
                GiftListFragment.this.f17867o.getContentView().measure(0, 0);
                int measuredHeight = GiftListFragment.this.f17867o.getContentView().getMeasuredHeight();
                c cVar = GiftListFragment.this.f17867o;
                View view = this.f17868a;
                cVar.showAsDropDown(view, 0, ((-view.getHeight()) - measuredHeight) + DensityUtil.dp2px(10.0f));
            }
            HandlerGetter.getMainHandler().postDelayed(new RunnableC0172a(), 3000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f17871a;

        b(BaseViewHolder baseViewHolder) {
            this.f17871a = baseViewHolder;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (t8.a.b(GiftListFragment.this.getType())) {
                return;
            }
            this.f17871a.itemView.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class c extends PopupWindow {
        public c(Context context) {
            super(context);
            setBackgroundDrawable(new ColorDrawable(0));
            setTouchable(false);
            setOutsideTouchable(false);
            FrameLayout frameLayout = new FrameLayout(context);
            setContentView(frameLayout);
            TextView textView = new TextView(context);
            textView.setBackground(ColorUtils.tintDrawable(ContextCompat.getDrawable(context, R.drawable.gift_list_qipao), ContextCompat.getColor(context, R.color.color_ugc_app_primary_tint)));
            textView.setTextColor(-1);
            textView.setTextSize(2, 14.0f);
            textView.setText(R.string.signin_task_gift_chips_tip);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.topMargin = DensityUtil.dp2px(2.0f);
            layoutParams.bottomMargin = DensityUtil.dp2px(2.0f);
            frameLayout.addView(textView, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class d extends PopupWindow {
        public d(Context context) {
            super(context);
            setBackgroundDrawable(new ColorDrawable(0));
            setTouchable(false);
            setOutsideTouchable(false);
            FrameLayout frameLayout = new FrameLayout(context);
            setContentView(frameLayout);
            TextView textView = new TextView(context);
            textView.setBackground(ColorUtils.tintDrawable(ContextCompat.getDrawable(context, R.drawable.gift_list_qipao), ContextCompat.getColor(context, R.color.color_ugc_app_primary_tint)));
            textView.setMaxWidth((int) (context.getResources().getDisplayMetrics().widthPixels / 1.3f));
            textView.setTextColor(-1);
            textView.setTextSize(2, 12.0f);
            textView.setText(R.string.user_guide_click_to_change_count);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.topMargin = DensityUtil.dp2px(2.0f);
            layoutParams.bottomMargin = DensityUtil.dp2px(2.0f);
            frameLayout.addView(textView, layoutParams);
        }
    }

    private boolean V1(ResourceListItemBean resourceListItemBean) {
        int id2 = resourceListItemBean.getId();
        HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
        if (id2 != helloStarHelp.getHelloConfigData().getHelloGiftId() || resourceListItemBean.getNumber() > helloStarHelp.getHelloConfigData().getLockNum()) {
            return false;
        }
        long regTime = helloStarHelp.getHelloConfigData().getRegTime();
        if (System.currentTimeMillis() < 172800000 + regTime && System.currentTimeMillis() > regTime + 86400000 && ja.a.b().f("KEY_HELLO_HOUR_SHOW_V2") && helloStarHelp.getHelloConfigSwitch() == 1) {
            ja.a.b().e("KEY_HELLO_HOUR_SHOW_V2");
            EventTrackingUtils.getInstance().track(EventTrackingUtils.HELLO_STAR_HELLO_GIFT_SECEND);
            HelloStarGiftDialog.getInstance(1, helloStarHelp.getHelloConfigData().getFirstNum(), helloStarHelp.getHelloConfigData().getLockNum()).show(getChildFragmentManager(), "HelloStarGiftDialog");
        }
        long j10 = regTime + 86400000;
        if (j10 >= System.currentTimeMillis() && getParentFragment() != null && (getParentFragment().getParentFragment() instanceof GiftFragment)) {
            ((GiftFragment) getParentFragment().getParentFragment()).mNumCheckSendView.setSendEnable(false);
        }
        return j10 >= System.currentTimeMillis();
    }

    public static GiftListFragment Z1(int i9) {
        GiftListFragment giftListFragment = new GiftListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("position", i9);
        giftListFragment.setArguments(bundle);
        return giftListFragment;
    }

    public static boolean a2(ResourceListItemBean resourceListItemBean) {
        return resourceListItemBean.getLevelId() > 0;
    }

    private boolean b2() {
        ResourceCategoryItem currentItem;
        return getParentFragment() != null && (getParentFragment().getParentFragment() instanceof GiftFragment) && (currentItem = ((GiftFragment) getParentFragment().getParentFragment()).getCurrentItem()) != null && "bag".equals(currentItem.getChildCode());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getType() {
        int i9;
        if ((getParentFragment() instanceof GiftViewPagerFragment) && (getParentFragment().getParentFragment() instanceof GiftFragment) && (i9 = ((GiftFragment) getParentFragment().getParentFragment()).mType) > 0) {
            return i9;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h2 */
    public void c2(ResourceListItemBean resourceListItemBean, int i9, int i10) {
        if (getRecyclerView().getAdapter() != null) {
            getRecyclerView().getAdapter().notifyItemChanged(i9);
            if (i10 >= 0) {
                getRecyclerView().getAdapter().notifyItemChanged(i10);
            }
        }
        y7.p pVar = new y7.p();
        pVar.e(this.f17856d);
        pVar.g(resourceListItemBean);
        pVar.f(this.f17855c);
        EventBus.getDefault().post(pVar);
        if (resourceListItemBean.isBagChipsGIft() && getParentFragment() != null && (getParentFragment().getParentFragment() instanceof GiftFragment)) {
            ((GiftFragment) getParentFragment().getParentFragment()).mNumCheckSendView.setSendEnable(false);
        }
    }

    private void k2(View view) {
        if (b2()) {
            c cVar = this.f17867o;
            if ((cVar == null || !cVar.isShowing()) && !SpUtils.getBool(getContext(), "ChipTipPopupWindow", false)) {
                SpUtils.setBool(getContext(), "ChipTipPopupWindow", true);
                view.post(new a(view));
            }
        }
    }

    private void l2(BaseViewHolder baseViewHolder, int i9, ResourceListItemBean resourceListItemBean) {
        d dVar = this.f17861i;
        if (dVar == null || !dVar.isShowing()) {
            baseViewHolder.itemView.post(new b(baseViewHolder));
            if (getActivity() != null) {
                this.f17861i = new d(getActivity());
            }
            int i10 = getResources().getDisplayMetrics().widthPixels;
            if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                d dVar2 = this.f17861i;
                if (dVar2 != null) {
                    dVar2.showAtLocation(getView(), 81, ((i10 / 4) / 2) / 2, (i10 / 2) + DensityUtil.dp2px(105.0f));
                    return;
                }
                return;
            }
            d dVar3 = this.f17861i;
            if (dVar3 != null) {
                dVar3.showAtLocation(getView(), 81, ((-i10) / 4) / 2, (i10 / 2) + DensityUtil.dp2px(105.0f));
            }
        }
    }

    private void n2() {
        Animator animator = this.f17865m;
        if (animator != null) {
            animator.cancel();
            this.f17865m = null;
        }
    }

    private void o2(ResourceListItemBean resourceListItemBean, ResourceListItemBean resourceListItemBean2, int i9) {
        BagListBean t10 = com.guochao.faceshow.aaspring.manager.a.g().t(14);
        if (t10 != null && t10.getList() != null && t10.getList().size() > 0) {
            for (BagBean bagBean : t10.getList()) {
                if (resourceListItemBean2.getId() == bagBean.getGiftId()) {
                    bagBean.setNumber(resourceListItemBean.getNumber());
                }
            }
        }
        for (ResourceCategoryItem resourceCategoryItem : com.guochao.faceshow.aaspring.manager.a.g().v(i9)) {
            if ("bag".equals(resourceCategoryItem.getChildCode()) && resourceCategoryItem.getGifList() != null) {
                for (ResourceListItemBean resourceListItemBean3 : resourceCategoryItem.getGifList()) {
                    if (resourceListItemBean2.getId() == resourceListItemBean3.getId()) {
                        resourceListItemBean3.setNumber(resourceListItemBean.getNumber());
                    }
                }
            }
        }
    }

    public boolean U1(ResourceListItemBean resourceListItemBean) {
        if (!resourceListItemBean.isMVPGift() || getCurrentUser().isMvpGift()) {
            return resourceListItemBean.getIsUse() == 0 || resourceListItemBean.getLevelId() <= 0 || this.f17858f >= resourceListItemBean.getLevelId();
        }
        return false;
    }

    public void W1() {
        if (this.f17853a == -1) {
            return;
        }
        this.f17853a = -1;
        this.f17854b = 0;
        notifyDataLoaded(false);
        if (getParentFragment() == null || !(getParentFragment().getParentFragment() instanceof GiftFragment)) {
            return;
        }
        ((GiftFragment) getParentFragment().getParentFragment()).myCollection.setVisibility(8);
        ((GiftFragment) getParentFragment().getParentFragment()).mNumCheckSendView.setSendEnable(false);
        ja.a.b().e("KEY_GIFT_CLICK_COMBO");
        d dVar = this.f17861i;
        if (dVar != null) {
            dVar.dismiss();
            this.f17861i = null;
        }
        this.f17860h = false;
        t8.a.d(true, getType());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: X1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, ResourceListItemBean resourceListItemBean) {
        int i10;
        int currentTheme;
        if (resourceListItemBean == null) {
            baseViewHolder.itemView.setVisibility(4);
            return;
        }
        baseViewHolder.itemView.setVisibility(0);
        if (this.f17857e != resourceListItemBean && i9 == 1 && this.f17860h) {
            l2(baseViewHolder, i9, resourceListItemBean);
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.faceIV);
        if (GiftLiveMessage.isFaceGift(resourceListItemBean)) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.icon);
        imageView2.setVisibility(0);
        boolean z10 = !(getParentFragment() instanceof u8.c) || ((currentTheme = ((u8.c) getParentFragment()).getCurrentTheme()) != 2131951629 && currentTheme >= 0);
        if (resourceListItemBean.isBagChipsGIft()) {
            if (z10) {
                imageView2.setBackgroundResource(R.mipmap.gift_clip_black);
            } else {
                imageView2.setBackgroundResource(R.mipmap.gift_clip_light);
            }
            imageView2.measure(0, 0);
            int dp2px = DensityUtil.dp2px(2.5f);
            imageView2.setPadding(dp2px, dp2px, dp2px, dp2px);
        } else {
            imageView2.setPadding(0, 0, 0, 0);
        }
        hc.a.j(imageView2, resourceListItemBean.getImg());
        baseViewHolder.setText(R.id.gift_name, resourceListItemBean.getName());
        ImageView imageView3 = (ImageView) baseViewHolder.getView(R.id.lock);
        ImageView imageView4 = (ImageView) baseViewHolder.getView(R.id.lucky);
        if (resourceListItemBean.isLuckyGift()) {
            imageView4.setImageResource(R.drawable.ic_luckgift_tag_luck);
            imageView4.setVisibility(0);
        } else if (resourceListItemBean.isMVPGift()) {
            imageView4.setImageResource(R.mipmap.icon_mvp_gift);
            imageView4.setVisibility(0);
        } else if (resourceListItemBean.isHandyGift()) {
            imageView4.setImageResource(R.drawable.ic_handy_gift_badge);
            imageView4.setVisibility(0);
        } else {
            imageView4.setVisibility(8);
        }
        TextView textView = (TextView) baseViewHolder.getView(R.id.lock_tips);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.count);
        if (resourceListItemBean.getItemType() == 14) {
            TextView textView3 = (TextView) baseViewHolder.getView(R.id.gift_date);
            textView3.setVisibility(0);
            textView3.setText(resourceListItemBean.getDateLimitDay());
            Drawable drawable = ContextCompat.getDrawable(textView3.getContext(), R.mipmap.icon_bag_gift_limit);
            if (!z10) {
                textView3.setTextColor(ContextCompat.getColor(textView3.getContext(), R.color.color_ugc_text_level_1));
            }
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                if (!z10) {
                    drawable.setTintList(ContextCompat.getColorStateList(textView3.getContext(), R.color.color_ugc_text_level_1));
                }
                textView3.setCompoundDrawablesRelative(drawable, null, null, null);
            }
            baseViewHolder.setText(R.id.gift_price, "" + resourceListItemBean.getNumber());
            if (resourceListItemBean.isBagChipsGIft()) {
                baseViewHolder.setText(R.id.gift_name, getString(R.string.signin_task_gift_chips));
            }
            if (V1(resourceListItemBean)) {
                imageView3.setVisibility(0);
                imageView2.setAlpha(0.4f);
            } else {
                imageView3.setVisibility(8);
                imageView2.setAlpha(1.0f);
            }
        } else {
            if (resourceListItemBean.getItemType() == 14) {
                TextDrawableUtil.clearDrawable((TextView) baseViewHolder.getView(R.id.gift_price));
            } else {
                TextDrawableUtil.addDrawableStart((TextView) baseViewHolder.getView(R.id.gift_price), "1".equals(resourceListItemBean.getIsToken()) ? R.mipmap.gift_shuijing : R.mipmap.ic_gift_diamond_small);
            }
            baseViewHolder.setText(R.id.gift_price, resourceListItemBean.getPrice() + "");
            if (a2(resourceListItemBean)) {
                textView.setVisibility(0);
                textView.setText("LV." + resourceListItemBean.getLevelId());
                if (U1(resourceListItemBean)) {
                    imageView3.setVisibility(8);
                    imageView2.setAlpha(1.0f);
                } else {
                    imageView3.setVisibility(0);
                    imageView2.setAlpha(0.4f);
                }
                textView2.setVisibility(4);
                if (this.f17853a == i9) {
                    baseViewHolder.itemView.setBackgroundResource(R.drawable.shape_blue_solid);
                } else {
                    baseViewHolder.itemView.setBackgroundResource(R.color.transparent);
                }
            } else {
                textView.setVisibility(4);
                imageView3.setVisibility(4);
                imageView2.setAlpha(1.0f);
            }
        }
        if (this.f17853a == i9 && !V1(resourceListItemBean)) {
            if (U1(resourceListItemBean)) {
                baseViewHolder.itemView.setBackgroundResource(R.drawable.shape_blue_solid);
                Locale locale = Locale.US;
                textView2.setText(String.format(locale, TimeModel.NUMBER_FORMAT, Integer.valueOf(this.f17855c)));
                textView2.setText(String.format(locale, "X%d", Integer.valueOf(this.f17855c)));
                if (resourceListItemBean.isHandyGift()) {
                    textView2.setVisibility(4);
                } else {
                    textView2.setVisibility(0);
                }
                textView.setVisibility(8);
                imageView3.setVisibility(8);
                imageView2.setAlpha(1.0f);
            }
            n2();
            this.f17865m = com.guochao.faceshow.aaspring.modulars.live.common.u.f(imageView2);
            i10 = 8;
        } else {
            if (a2(resourceListItemBean)) {
                textView.setVisibility(0);
                i10 = 8;
            } else {
                i10 = 8;
                textView.setVisibility(8);
            }
            textView2.setVisibility(4);
            baseViewHolder.itemView.setBackgroundResource(R.color.transparent);
        }
        if (resourceListItemBean.isMVPGift()) {
            if (getCurrentUser().isMvpGift()) {
                imageView3.setVisibility(i10);
                imageView2.setAlpha(1.0f);
                return;
            }
            imageView3.setVisibility(0);
            imageView2.setAlpha(0.4f);
        }
    }

    public void Y1(boolean z10) {
        d dVar = this.f17861i;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        if (!z10) {
            this.f17861i.getContentView().setVisibility(4);
        } else {
            this.f17861i.dismiss();
        }
    }

    public void d2(ResourceListItemBean resourceListItemBean, int i9, AppResource appResource) {
        if (appResource == null || appResource.getBag().isEmpty()) {
            return;
        }
        Iterator<ResourceListItemBean> it = getList().iterator();
        while (it.hasNext()) {
            ResourceListItemBean next = it.next();
            o2(resourceListItemBean, next, i9);
            for (ResourceCategoryItem resourceCategoryItem : com.guochao.faceshow.aaspring.manager.a.g().v(i9)) {
                if ("bag".equals(resourceCategoryItem.getChildCode()) && resourceCategoryItem.getGifList() != null) {
                    for (ResourceListItemBean resourceListItemBean2 : resourceCategoryItem.getGifList()) {
                        if (next.getId() == resourceListItemBean2.getId()) {
                            next.setNumber(resourceListItemBean2.getNumber());
                            if (next.getNumber() <= 0) {
                                it.remove();
                                this.f17853a = -1;
                                y7.p pVar = new y7.p();
                                pVar.e(this.f17856d);
                                pVar.g(null);
                                pVar.f(0);
                                EventBus.getDefault().post(pVar);
                            }
                        }
                    }
                }
            }
        }
        if (getList().size() == 0) {
            this.f17866n.setVisibility(0);
            getRecyclerView().setVisibility(4);
        } else {
            getRecyclerView().setVisibility(0);
        }
        notifyDataLoaded(true);
    }

    public void e2(ResourceListItemBean resourceListItemBean, AppResource appResource, int i9) {
        if (appResource != null) {
            d2(resourceListItemBean, i9, appResource);
            return;
        }
        Iterator<ResourceListItemBean> it = getList().iterator();
        while (it.hasNext()) {
            ResourceListItemBean next = it.next();
            if (next.getId() == resourceListItemBean.getId()) {
                o2(resourceListItemBean, next, i9);
                next.setNumber(resourceListItemBean.getNumber());
                if (next.getNumber() <= 0) {
                    it.remove();
                    this.f17853a = -1;
                    y7.p pVar = new y7.p();
                    pVar.e(this.f17856d);
                    pVar.g(null);
                    pVar.f(0);
                    EventBus.getDefault().post(pVar);
                }
            }
        }
        if (getList().size() == 0) {
            this.f17866n.setVisibility(0);
            getRecyclerView().setVisibility(4);
        } else {
            this.f17866n.setVisibility(8);
            getRecyclerView().setVisibility(0);
        }
        notifyDataLoaded(true);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: f2 */
    public void onItemClick(BaseViewHolder baseViewHolder, final int i9, final ResourceListItemBean resourceListItemBean) {
        if (resourceListItemBean == null) {
            return;
        }
        if ((getParentFragment() instanceof GiftViewPagerFragment) && (getParentFragment().getParentFragment() instanceof GiftFragment)) {
            int i10 = 8;
            if (resourceListItemBean.getItemType() == 14) {
                ((GiftFragment) getParentFragment().getParentFragment()).myCollection.setVisibility(8);
                if (V1(resourceListItemBean)) {
                    HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
                    ToastUtils.showToast(getString(R.string.live_hello_gift_lock_time_tip, Integer.valueOf(helloStarHelp.getHelloConfigData().getLockNum()), DateUtils.longTimeToStringTime(Long.valueOf((helloStarHelp.getHelloConfigData().getRegTime() + 86400000) - System.currentTimeMillis()).longValue())));
                    return;
                } else if (getRecyclerView().getAdapter() != null) {
                    getRecyclerView().getAdapter().notifyItemChanged(i9);
                }
            } else {
                ((GiftFragment) getParentFragment().getParentFragment()).myCollection.setVisibility((resourceListItemBean.getLevelId() <= getCurrentUser().getLevel() || resourceListItemBean.getIsCollect() != 0) ? 0 : 0);
            }
        }
        final int i11 = this.f17853a;
        if (this.f17861i != null && i9 == 1) {
            if (!this.f17862j) {
                this.f17862j = true;
            } else {
                ja.a.b().e("KEY_GIFT_CLICK_COMBO");
                this.f17861i.dismiss();
                this.f17861i = null;
                this.f17860h = false;
                t8.a.d(true, getType());
            }
        }
        if (!U1(resourceListItemBean)) {
            this.f17853a = i9;
            this.f17854b = 0;
            y7.p pVar = new y7.p();
            pVar.e(this.f17856d);
            pVar.h(resourceListItemBean);
            EventBus.getDefault().post(pVar);
            notifyDataLoaded(false);
            if (resourceListItemBean.isMVPGift()) {
                EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
                eventTrackingV2Utils.track(EventTrackingV2Utils.mvp_gift_click_role, "1");
                eventTrackingV2Utils.track(EventTrackingV2Utils.mvp_gift_toast_appear_3000);
                showToast(R.string.mvp_this_month_is_mvp_no);
                MVPActivity.Companion.start(getActivity(), "", "0");
                return;
            }
            showToast(R.string.dont_meet_the_gift);
            return;
        }
        if (resourceListItemBean.isMVPGift()) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_gift_click_role, "0");
        }
        if (this.f17853a == i9) {
            int i12 = this.f17854b + 1;
            this.f17854b = i12;
            int[] iArr = f17852p;
            this.f17855c = iArr[i12 % iArr.length];
            TextView textView = (TextView) baseViewHolder.getView(R.id.count);
            textView.setText(String.format("X%d", Integer.valueOf(this.f17855c)));
            if (resourceListItemBean.isHandyGift()) {
                textView.setVisibility(4);
            } else {
                textView.setVisibility(0);
            }
            y7.p pVar2 = new y7.p();
            pVar2.e(this.f17856d);
            pVar2.g(resourceListItemBean);
            pVar2.f(this.f17855c);
            EventBus.getDefault().post(pVar2);
            if (resourceListItemBean.isBagChipsGIft() && getParentFragment() != null && (getParentFragment().getParentFragment() instanceof GiftFragment)) {
                ((GiftFragment) getParentFragment().getParentFragment()).mNumCheckSendView.setSendEnable(false);
                return;
            }
            return;
        }
        if (resourceListItemBean.isLuckyGift()) {
            this.f17854b = 1;
        } else {
            this.f17854b = 0;
        }
        this.f17853a = i9;
        this.f17857e = resourceListItemBean;
        int[] iArr2 = f17852p;
        this.f17855c = iArr2[this.f17854b % iArr2.length];
        if (getRecyclerView().isComputingLayout()) {
            getRecyclerView().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.g
                @Override // java.lang.Runnable
                public final void run() {
                    GiftListFragment.this.c2(resourceListItemBean, i9, i11);
                }
            });
        } else {
            c2(resourceListItemBean, i9, i11);
        }
    }

    public void g2(boolean z10, List<ResourceListItemBean> list) {
        if (getList() == null) {
            return;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        if (z10) {
            this.f17853a = -1;
            n2();
        }
        getList().clear();
        getList().addAll(list);
        if (getRecyclerView() == null || getRecyclerView().getAdapter() == null) {
            return;
        }
        getRecyclerView().getAdapter().notifyDataSetChanged();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().b(false).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public int getItemViewType(int i9) {
        if (getList() == null || getList().get(i9) == null || getList().get(i9).getItemType() != 14) {
            return super.getItemViewType(i9);
        }
        return 14;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_gift_list;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void hideEveryThingEvent(String str) {
        d dVar;
        if (!"hide_every_thing".equals(str) || (dVar = this.f17861i) == null) {
            return;
        }
        try {
            dVar.dismiss();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void i2() {
        if (getRecyclerView().getAdapter() != null) {
            getRecyclerView().getAdapter().notifyItemChanged(this.f17853a);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        this.f17866n = (ImageView) view.findViewById(R.id.iv_empty);
        if (getParentFragment() instanceof u8.c) {
            int currentTheme = ((u8.c) getParentFragment()).getCurrentTheme();
            if (currentTheme != 2131951629 && currentTheme >= 0) {
                this.f17866n.setImageResource(R.mipmap.icon_bag_gift_empty);
            } else {
                this.f17866n.setImageResource(R.mipmap.kong);
            }
        } else {
            this.f17866n.setImageResource(R.mipmap.icon_bag_gift_empty);
        }
        if (getArguments() != null) {
            addDatas(this.f17863k);
            if (EventBus.getDefault().isRegistered(this)) {
                return;
            }
            EventBus.getDefault().register(this);
        }
    }

    public void j2() {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        if (getList() == null) {
            return;
        }
        int i9 = 0;
        int i10 = 0;
        while (true) {
            if (i10 >= getList().size()) {
                break;
            } else if (getList().get(i10).isBagChipsGIft()) {
                i9 = i10;
                break;
            } else {
                i10++;
            }
        }
        if (getList().get(i9).isBagChipsGIft() && "bag".equals(this.f17856d.getChildCode()) && (findViewHolderForAdapterPosition = getRecyclerView().findViewHolderForAdapterPosition(i9)) != null) {
            k2(findViewHolderForAdapterPosition.itemView);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
    }

    public void m2() {
        d dVar = this.f17861i;
        if (dVar != null) {
            dVar.getContentView().setVisibility(0);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof u8.c) {
            this.f17859g = ((u8.c) parentFragment).getCurrentTheme();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f17864l = getArguments().getInt("position");
            if (getParentFragment() instanceof com.guochao.faceshow.aaspring.modulars.gift.fragment.c) {
                this.f17856d = ((com.guochao.faceshow.aaspring.modulars.gift.fragment.c) getParentFragment()).t0();
            }
            int i9 = -1;
            if (getParentFragment() instanceof GiftViewPagerFragment) {
                List<List<ResourceListItemBean>> X1 = ((GiftViewPagerFragment) getParentFragment()).X1();
                int i10 = this.f17864l;
                if (i10 >= 0 && i10 < X1.size()) {
                    this.f17863k = X1.get(this.f17864l);
                    this.f17856d = ((GiftViewPagerFragment) getParentFragment()).t0();
                }
                i9 = ((GiftViewPagerFragment) getParentFragment()).f17873a;
            }
            if (this.f17864l == 0 && i9 == 0) {
                this.f17860h = ja.a.b().f("KEY_GIFT_CLICK_COMBO") && (getActivity() instanceof BaseLiveActivity);
            }
        }
        if (this.f17863k == null) {
            this.f17863k = new ArrayList();
        }
        this.f17858f = getCurrentUser().getLevel();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView) {
        return new GridLayoutManager(getContext(), 4);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        LayoutInflater from;
        if (this.f17859g > 0) {
            from = LayoutInflater.from(new ContextThemeWrapper(getContext(), this.f17859g));
        } else {
            from = LayoutInflater.from(new ContextThemeWrapper(getContext(), (int) R$style.AppTheme_Light));
        }
        return super.onCreateView(from, viewGroup, bundle);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Y1(true);
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onGiftChange(y7.p pVar) {
        ResourceListItemBean resourceListItemBean;
        ResourceListItemBean c10 = pVar.c();
        ResourceCategoryItem a10 = pVar.a();
        if ((c10 == null && a10.getSourctTypeId() == this.f17856d.getSourctTypeId()) || (resourceListItemBean = this.f17857e) == null || this.f17856d == null) {
            return;
        }
        if (resourceListItemBean.getId() != c10.getId()) {
            this.f17853a = -1;
            this.f17854b = 0;
            n2();
            notifyDataLoaded(false);
            return;
        }
        BaseViewHolder baseViewHolder = (BaseViewHolder) getRecyclerView().findViewHolderForAdapterPosition(this.f17853a);
        if (baseViewHolder != null && (getParentFragment() instanceof GiftViewPagerFragment) && (getParentFragment().getParentFragment() instanceof GiftFragment)) {
            if (this.f17856d.getSourctTypeId() == ((GiftFragment) getParentFragment().getParentFragment()).getCategoryItem(((GiftFragment) getParentFragment().getParentFragment()).mViewPager.getCurrentItem()).getSourctTypeId() && this.f17864l == ((GiftViewPagerFragment) getParentFragment()).f17876d.getCurrentItem()) {
                this.f17855c = pVar.b();
                int i9 = 0;
                while (true) {
                    int[] iArr = f17852p;
                    if (i9 >= iArr.length) {
                        break;
                    }
                    if (this.f17855c == iArr[i9]) {
                        this.f17854b = i9;
                    }
                    i9++;
                }
                TextView textView = (TextView) baseViewHolder.getView(R.id.count);
                textView.setText(String.format(Locale.US, "X%d", Integer.valueOf(this.f17855c)));
                if (c10.isHandyGift()) {
                    textView.setVisibility(4);
                    return;
                } else {
                    textView.setVisibility(0);
                    return;
                }
            }
            this.f17853a = -1;
            this.f17854b = 0;
            n2();
            baseViewHolder.itemView.setBackgroundResource(R.color.transparent);
            baseViewHolder.getView(R.id.count).setVisibility(4);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z10) {
        d dVar;
        super.setUserVisibleHint(z10);
        if (!z10 || (dVar = this.f17861i) == null) {
            return;
        }
        dVar.getContentView().setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        LayoutInflater from;
        if (this.f17859g > 0) {
            from = LayoutInflater.from(new ContextThemeWrapper(getContext(), this.f17859g));
        } else {
            from = LayoutInflater.from(new ContextThemeWrapper(getContext(), (int) R$style.AppTheme_Light));
        }
        if (i9 == 14) {
            return new BaseViewHolder(from.inflate(R.layout.list_item_gift_back_pack, viewGroup, false));
        }
        return new BaseViewHolder(from.inflate(R.layout.list_item_gift, viewGroup, false));
    }
}
