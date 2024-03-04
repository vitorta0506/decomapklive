package com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.live.adapter.span.LiveChatSpanUtils;
import com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage;
import com.guochao.faceshow.aaspring.views.AutoHorizontalScrollView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.databinding.ListItemLuckyGiftRunwayHolderBinding;
import com.guochao.faceshow.gift.controller.GiftRunwayScrollEndEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "viewBinding", "Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;", "(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V", "handler", "Landroid/os/Handler;", "bindToMessage", "", "message", "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LuckyGiftRunwayHolder extends BaseViewHolder {
    @NotNull
    private final Handler handler;
    @NotNull
    private final ListItemLuckyGiftRunwayHolderBinding viewBinding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LuckyGiftRunwayHolder(@NotNull ListItemLuckyGiftRunwayHolderBinding viewBinding) {
        super(viewBinding.getRoot());
        Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
        this.viewBinding = viewBinding;
        this.handler = new Handler(Looper.getMainLooper());
        viewBinding.svga.setResizeScale(2.0f);
        viewBinding.svga.playRaw(R.raw.lucky_gift_runway_bg);
        viewBinding.userName.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.LuckyGiftRunwayHolder.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@Nullable View view) {
                ViewGroup.LayoutParams layoutParams = view != null ? view.getLayoutParams() : null;
                LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
                if (layoutParams2 != null) {
                    layoutParams2.weight = 1.0f;
                    view.requestLayout();
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@Nullable View view) {
                ViewGroup.LayoutParams layoutParams = view != null ? view.getLayoutParams() : null;
                LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
                if (layoutParams2 != null) {
                    layoutParams2.weight = 0.0f;
                    view.requestLayout();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindToMessage$lambda-4$lambda-3  reason: not valid java name */
    public static final void m448bindToMessage$lambda4$lambda3(final ListItemLuckyGiftRunwayHolderBinding this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        AutoHorizontalScrollView scrollView = this_apply.scrollView;
        Intrinsics.checkNotNullExpressionValue(scrollView, "scrollView");
        if (ViewCompat.isLaidOut(scrollView) && !scrollView.isLayoutRequested()) {
            if (this_apply.scrollView.startAutoScroll()) {
                return;
            }
            this_apply.scrollView.postDelayed(LuckyGiftRunwayHolder$bindToMessage$1$3$1$1.INSTANCE, 6000L);
            return;
        }
        scrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.LuckyGiftRunwayHolder$bindToMessage$lambda-4$lambda-3$$inlined$doOnLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(@NotNull View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
                Intrinsics.checkNotNullParameter(view, "view");
                view.removeOnLayoutChangeListener(this);
                if (ListItemLuckyGiftRunwayHolderBinding.this.scrollView.startAutoScroll()) {
                    return;
                }
                ListItemLuckyGiftRunwayHolderBinding.this.scrollView.postDelayed(LuckyGiftRunwayHolder$bindToMessage$1$3$1$1.INSTANCE, 6000L);
            }
        });
    }

    public final void bindToMessage(@NotNull RunwayMessage.LuckyGiftRunwayMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.handler.removeCallbacksAndMessages(null);
        final ListItemLuckyGiftRunwayHolderBinding listItemLuckyGiftRunwayHolderBinding = this.viewBinding;
        TextView textView = listItemLuckyGiftRunwayHolderBinding.content;
        Context context = this.itemView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "itemView.context");
        textView.setText(LiveChatSpanUtils.getLuckyGiftRunwayContentSpan(context, message));
        listItemLuckyGiftRunwayHolderBinding.userName.setText(message.getFromUserNickName());
        hc.a.d(listItemLuckyGiftRunwayHolderBinding.avatar, message.getFromUserAvatar());
        hc.a.j(listItemLuckyGiftRunwayHolderBinding.giftIcon, message.getGiftPicture());
        VipIndicatorView vipIndicatorView = listItemLuckyGiftRunwayHolderBinding.vipIndicator;
        UserVipData userVipMsg = message.getUserVipMsg();
        vipIndicatorView.setVipLevel(userVipMsg != null ? userVipMsg.getVipLevel() : 0);
        listItemLuckyGiftRunwayHolderBinding.levelView.setLevel(message.getLevelId());
        listItemLuckyGiftRunwayHolderBinding.scrollView.setScrollEndListener(new AutoHorizontalScrollView.ScrollEndListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.LuckyGiftRunwayHolder$bindToMessage$1$1
            @Override // com.guochao.faceshow.aaspring.views.AutoHorizontalScrollView.ScrollEndListener
            public void onScrollEnd(@NotNull AutoHorizontalScrollView view) {
                Intrinsics.checkNotNullParameter(view, "view");
                EventBus.getDefault().post(new GiftRunwayScrollEndEvent());
            }
        });
        AutoHorizontalScrollView scrollView = listItemLuckyGiftRunwayHolderBinding.scrollView;
        Intrinsics.checkNotNullExpressionValue(scrollView, "scrollView");
        scrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.LuckyGiftRunwayHolder$bindToMessage$lambda-4$$inlined$doOnNextLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(@NotNull View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
                Intrinsics.checkNotNullParameter(view, "view");
                view.removeOnLayoutChangeListener(this);
                ListItemLuckyGiftRunwayHolderBinding.this.scrollView.scrollToEnd();
            }
        });
        this.handler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.a
            @Override // java.lang.Runnable
            public final void run() {
                LuckyGiftRunwayHolder.m448bindToMessage$lambda4$lambda3(ListItemLuckyGiftRunwayHolderBinding.this);
            }
        }, 2000L);
    }
}
