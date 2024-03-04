package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.HandyGifViewHelper;
import com.guochao.faceshow.aaspring.modulars.gift.model.HandyGiftPathData;
import com.guochao.faceshow.aaspring.modulars.gift.view.HandyAnimView;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.databinding.LayoutHandyGiftAreaBinding;
import com.guochao.faceshow.databinding.ListItemHandyImageViewBinding;
import com.guochao.faceshow.gift.view.NumCheckSendView;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.FileUtils;
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001&B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b$\u0010%J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0014\u0010\f\u001a\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u0006\u0010\r\u001a\u00020\u0002R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0012\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0017\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;", "", "", "refreshGiftDiamondCount", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "itemBean", "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;", "categoryItem", "setCurrentSelected", "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;", "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;", "liveMessageModel", "checkLiveMessageModel", "trackSend", "Landroid/view/ViewStub;", "viewStub", "Landroid/view/ViewStub;", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;", "fragment", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;", "getFragment", "()Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;", "Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;", "", "Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;", "giftPathData", "Ljava/util/List;", "giftItemBean", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "Lcom/guochao/faceshow/gift/view/NumCheckSendView;", "sendButton", "Lcom/guochao/faceshow/gift/view/NumCheckSendView;", "<init>", "(Landroid/view/ViewStub;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V", "GiftPathIconViewHolder", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class HandyGifViewHelper {
    @NotNull
    private final GiftFragment fragment;
    @NotNull
    private final s0.i<Drawable> giftIconListener;
    @Nullable
    private ResourceListItemBean giftItemBean;
    @NotNull
    private final List<HandyGiftPathData> giftPathData;
    @NotNull
    private final NumCheckSendView sendButton;
    @NotNull
    private final LayoutHandyGiftAreaBinding viewBinding;
    @NotNull
    private final ViewStub viewStub;

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* renamed from: com.guochao.faceshow.aaspring.modulars.gift.fragment.HandyGifViewHelper$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends RecyclerView.Adapter<GiftPathIconViewHolder> {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onBindViewHolder$lambda-0  reason: not valid java name */
        public static final void m409onBindViewHolder$lambda0(HandyGifViewHelper this$0, int i9, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
            eventTrackingV2Utils.track(EventTrackingV2Utils.handy_gift_use_template);
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("Graffiti_gift_panel_3000_%s", Arrays.copyOf(new Object[]{((HandyGiftPathData) this$0.giftPathData.get(i9)).getTag()}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            eventTrackingV2Utils.track(format);
            this$0.getViewBinding().handyView.readTemplatePath((HandyGiftPathData) this$0.giftPathData.get(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return HandyGifViewHelper.this.giftPathData.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull GiftPathIconViewHolder holder, final int i9) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.widget.ImageView");
            ImageView imageView = (ImageView) view;
            imageView.setImageResource(((HandyGiftPathData) HandyGifViewHelper.this.giftPathData.get(i9)).getIconId());
            final HandyGifViewHelper handyGifViewHelper = HandyGifViewHelper.this;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    HandyGifViewHelper.AnonymousClass1.m409onBindViewHolder$lambda0(HandyGifViewHelper.this, i9, view2);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public GiftPathIconViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            ListItemHandyImageViewBinding inflate = ListItemHandyImageViewBinding.inflate(LayoutInflater.from(HandyGifViewHelper.this.getFragment().requireContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(\n               …lse\n                    )");
            return new GiftPathIconViewHolder(inflate);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Lcom/guochao/faceshow/databinding/ListItemHandyImageViewBinding;", "(Lcom/guochao/faceshow/databinding/ListItemHandyImageViewBinding;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class GiftPathIconViewHolder extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GiftPathIconViewHolder(@NotNull ListItemHandyImageViewBinding view) {
            super(view.getRoot());
            Intrinsics.checkNotNullParameter(view, "view");
        }
    }

    public HandyGifViewHelper(@NotNull ViewStub viewStub, @NotNull GiftFragment fragment) {
        Intrinsics.checkNotNullParameter(viewStub, "viewStub");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.viewStub = viewStub;
        this.fragment = fragment;
        final LayoutHandyGiftAreaBinding bind = LayoutHandyGiftAreaBinding.bind(viewStub.inflate());
        Intrinsics.checkNotNullExpressionValue(bind, "bind(viewStub.inflate())");
        bind.getRoot().setVisibility(8);
        bind.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HandyGifViewHelper.m406viewBinding$lambda3$lambda0(view);
            }
        });
        bind.close.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HandyGifViewHelper.m407viewBinding$lambda3$lambda1(HandyGifViewHelper.this, view);
            }
        });
        bind.getRoot().measure(0, 0);
        bind.getRoot().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.u
            @Override // java.lang.Runnable
            public final void run() {
                HandyGifViewHelper.m408viewBinding$lambda3$lambda2(LayoutHandyGiftAreaBinding.this);
            }
        });
        this.viewBinding = bind;
        this.giftPathData = HandyGiftPathData.Companion.getGiftPathDataList();
        this.giftIconListener = new s0.i<Drawable>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.HandyGifViewHelper$giftIconListener$1
            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, t0.f fVar) {
                onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
            }

            public void onResourceReady(@NotNull Drawable resource, @Nullable t0.f<? super Drawable> fVar) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                HandyGifViewHelper.this.getViewBinding().handyView.setCurrentDrawable(resource);
            }
        };
        NumCheckSendView numCheckSendView = fragment.mNumCheckSendView;
        Intrinsics.checkNotNullExpressionValue(numCheckSendView, "fragment.mNumCheckSendView");
        this.sendButton = numCheckSendView;
        bind.rv.setAdapter(new AnonymousClass1());
        bind.recovation.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HandyGifViewHelper.m404_init_$lambda4(HandyGifViewHelper.this, view);
            }
        });
        bind.clear.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HandyGifViewHelper.m405_init_$lambda5(HandyGifViewHelper.this, view);
            }
        });
        bind.handyView.setCapturePointsListener(new Function2<HandyAnimView, List<? extends PointF>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.HandyGifViewHelper.4
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: invoke */
            public /* bridge */ /* synthetic */ Unit mo1invoke(HandyAnimView handyAnimView, List<? extends PointF> list) {
                invoke2(handyAnimView, list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull HandyAnimView handyAnimView, @NotNull List<? extends PointF> list) {
                Intrinsics.checkNotNullParameter(handyAnimView, "handyAnimView");
                Intrinsics.checkNotNullParameter(list, "list");
                HandyGifViewHelper.this.refreshGiftDiamondCount();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-4  reason: not valid java name */
    public static final void m404_init_$lambda4(HandyGifViewHelper this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.viewBinding.handyView.revocation()) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.handy_gift_withdraw);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-5  reason: not valid java name */
    public static final void m405_init_$lambda5(HandyGifViewHelper this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.viewBinding.handyView.clearPoints();
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.handy_gift_clear);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshGiftDiamondCount() {
        String price;
        ResourceListItemBean resourceListItemBean = this.giftItemBean;
        int parseInt = (resourceListItemBean == null || (price = resourceListItemBean.getPrice()) == null) ? 0 : Integer.parseInt(price);
        int maxDraw = resourceListItemBean != null ? resourceListItemBean.getMaxDraw() : 0;
        int currentDrawCount = this.viewBinding.handyView.getCurrentDrawCount();
        if (currentDrawCount >= 1) {
            this.viewBinding.close.setVisibility(8);
            this.viewBinding.recovation.setVisibility(0);
            this.viewBinding.clear.setVisibility(0);
            this.viewBinding.guide.setVisibility(8);
        } else {
            this.viewBinding.guide.setVisibility(0);
            this.viewBinding.close.setVisibility(0);
            this.viewBinding.recovation.setVisibility(8);
            this.viewBinding.clear.setVisibility(8);
        }
        if (this.viewBinding.handyView.getAnimating()) {
            this.sendButton.setCurrentHandyGiftDrawCount(-1);
        } else {
            this.sendButton.setCurrentHandyGiftDrawCount(currentDrawCount);
        }
        TextView textView = this.viewBinding.giftCount;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.giftCount");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        SpannableString spannableString = new SpannableString(String.valueOf(currentDrawCount));
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#6365FF")), 0, spannableString.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString);
        spannableStringBuilder.append((CharSequence) FileUtils.RES_PREFIX_STORAGE);
        spannableStringBuilder.append((CharSequence) String.valueOf(maxDraw));
        spannableStringBuilder.append((CharSequence) "(");
        SpannableString spannableString2 = new SpannableString(" ");
        Drawable drawable = textView.getResources().getDrawable(R.drawable.ic_handy_gift_little_diamond);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        spannableString2.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.a(drawable), 0, spannableString2.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString2);
        spannableStringBuilder.append((CharSequence) String.valueOf(currentDrawCount * parseInt));
        spannableStringBuilder.append((CharSequence) ")");
        textView.setText(spannableStringBuilder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: viewBinding$lambda-3$lambda-0  reason: not valid java name */
    public static final void m406viewBinding$lambda3$lambda0(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: viewBinding$lambda-3$lambda-1  reason: not valid java name */
    public static final void m407viewBinding$lambda3$lambda1(HandyGifViewHelper this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.fragment.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: viewBinding$lambda-3$lambda-2  reason: not valid java name */
    public static final void m408viewBinding$lambda3$lambda2(LayoutHandyGiftAreaBinding this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if ((this_apply.getRoot().getMeasuredWidth() * 1.0f) / this_apply.getRoot().getMeasuredHeight() >= 1.0f) {
            this_apply.lottie.playRaw(R.raw.handy_gify_guide_2f);
        } else {
            this_apply.lottie.playRaw(R.raw.handy_gift_guide);
        }
    }

    public final void checkLiveMessageModel(@NotNull LiveMessageModel<GiftLiveMessage> liveMessageModel) {
        Intrinsics.checkNotNullParameter(liveMessageModel, "liveMessageModel");
        GiftLiveMessage data = liveMessageModel.getData();
        data.setDrawWidth(this.viewBinding.handyView.getMeasuredWidth());
        data.setDrawHeight(this.viewBinding.handyView.getMeasuredHeight());
        data.setPointPaths(this.viewBinding.handyView.getCurrentPoints());
    }

    @NotNull
    public final GiftFragment getFragment() {
        return this.fragment;
    }

    @NotNull
    public final LayoutHandyGiftAreaBinding getViewBinding() {
        return this.viewBinding;
    }

    public final void setCurrentSelected(@NotNull ResourceListItemBean itemBean, @NotNull ResourceCategoryItem categoryItem) {
        Intrinsics.checkNotNullParameter(itemBean, "itemBean");
        Intrinsics.checkNotNullParameter(categoryItem, "categoryItem");
        if (itemBean.isHandyGift()) {
            this.sendButton.q();
            this.sendButton.r(false);
            this.viewBinding.getRoot().setVisibility(0);
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.handy_gift_click);
            com.bumptech.glide.h w6 = com.bumptech.glide.c.w(this.fragment);
            w6.g(this.giftIconListener);
            w6.r(itemBean.getImg()).M0(this.giftIconListener);
            this.giftItemBean = itemBean;
            this.viewBinding.handyView.clearPoints();
            this.viewBinding.handyView.setMaxDraw(itemBean.getMaxDraw());
            refreshGiftDiamondCount();
            return;
        }
        this.sendButton.r(true);
        this.viewBinding.getRoot().setVisibility(8);
    }

    public final void trackSend() {
        String price;
        EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
        eventTrackingV2Utils.track(EventTrackingV2Utils.handy_gift_send);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Object[] objArr = new Object[1];
        ResourceListItemBean resourceListItemBean = this.giftItemBean;
        objArr[0] = resourceListItemBean != null ? resourceListItemBean.getPrice() : null;
        String format = String.format("Graffiti_gift_give_Price_3000_%s", Arrays.copyOf(objArr, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        eventTrackingV2Utils.track(format);
        int currentDrawCount = this.viewBinding.handyView.getCurrentDrawCount();
        int i9 = 3;
        String format2 = String.format("Graffiti_gift_give_quantity_3000_%s", Arrays.copyOf(new Object[]{String.valueOf(currentDrawCount < 30 ? 0 : currentDrawCount < 80 ? 1 : currentDrawCount < 120 ? 2 : currentDrawCount < 150 ? 3 : 4)}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
        eventTrackingV2Utils.track(format2);
        ResourceListItemBean resourceListItemBean2 = this.giftItemBean;
        int parseInt = ((resourceListItemBean2 == null || (price = resourceListItemBean2.getPrice()) == null) ? 0 : Integer.parseInt(price)) * currentDrawCount;
        if (parseInt < 50) {
            i9 = 0;
        } else if (parseInt < 100) {
            i9 = 1;
        } else if (parseInt < 200) {
            i9 = 2;
        } else if (parseInt >= 500) {
            i9 = parseInt < 800 ? 4 : parseInt < 1200 ? 5 : parseInt < 2000 ? 6 : 7;
        }
        String format3 = String.format("Graffiti_gift_give_Total_price_3000_%s", Arrays.copyOf(new Object[]{String.valueOf(i9)}, 1));
        Intrinsics.checkNotNullExpressionValue(format3, "format(format, *args)");
        eventTrackingV2Utils.track(format3);
        this.viewBinding.handyView.trackSend();
    }
}
