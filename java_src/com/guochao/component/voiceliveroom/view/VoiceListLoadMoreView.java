package com.guochao.component.voiceliveroom.view;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.loadmore.BaseLoadMoreView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.lib_core.R$id;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0012"}, d2 = {"Lcom/guochao/component/voiceliveroom/view/VoiceListLoadMoreView;", "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;", "paddingFooter", "", "(Z)V", "getPaddingFooter", "()Z", "setPaddingFooter", "getLoadComplete", "Landroid/view/View;", "holder", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "getLoadEndView", "getLoadFailView", "getLoadingView", "getRootView", "parent", "Landroid/view/ViewGroup;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceListLoadMoreView extends BaseLoadMoreView {
    private boolean paddingFooter;

    public VoiceListLoadMoreView(boolean z10) {
        this.paddingFooter = z10;
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    @NotNull
    public View getLoadComplete(@NotNull BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        return holder.getView(R$id.load_done);
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    @NotNull
    public View getLoadEndView(@NotNull BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        return holder.getView(R$id.load_done);
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    @NotNull
    public View getLoadFailView(@NotNull BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        return holder.getView(R$id.load_done);
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    @NotNull
    public View getLoadingView(@NotNull BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        return holder.getView(R$id.loading);
    }

    public final boolean getPaddingFooter() {
        return this.paddingFooter;
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    @NotNull
    public View getRootView(@NotNull ViewGroup parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Context context = parent.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "parent.context");
        VoiceRoomListMoreLayout voiceRoomListMoreLayout = new VoiceRoomListMoreLayout(context);
        voiceRoomListMoreLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        Drawable drawable = ((ImageView) voiceRoomListMoreLayout.findViewById(R$id.loading)).getDrawable();
        Intrinsics.checkNotNull(drawable, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        ((AnimationDrawable) drawable).start();
        return voiceRoomListMoreLayout;
    }

    public final void setPaddingFooter(boolean z10) {
        this.paddingFooter = z10;
    }
}
