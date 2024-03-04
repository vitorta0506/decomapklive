package com.guochao.faceshow.aaspring.modulars.live.viewholder;

import android.view.View;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.AudienceInformation;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.views.AvatarGroupView;
import com.guochao.faceshow.aaspring.views.ParallaxImageView;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u0006H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\b\"\u0004\b\u001c\u0010\n¨\u0006\""}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;", "Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "height", "", "getHeight", "()I", "setHeight", "(I)V", "imageView", "Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;", "getImageView", "()Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;", "setImageView", "(Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;)V", "textViewCount", "Landroid/widget/TextView;", "getTextViewCount", "()Landroid/widget/TextView;", "setTextViewCount", "(Landroid/widget/TextView;)V", "textViewInfo", "getTextViewInfo", "setTextViewInfo", "width", "getWidth", "setWidth", "bindValue", "", "roomItemData", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "position", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MultiLiveTopViewHolder extends BaseLiveItemViewHolder {
    private int height;
    @Nullable
    private ParallaxImageView imageView;
    @Nullable
    private TextView textViewCount;
    @Nullable
    private TextView textViewInfo;
    private int width;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiLiveTopViewHolder(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        this.imageView = (ParallaxImageView) itemView.findViewById(R.id.image);
        this.textViewInfo = (TextView) itemView.findViewById(R.id.tvInfo);
        TextView textView = (TextView) itemView.findViewById(R.id.tvOnlineCount);
        this.textViewCount = textView;
        FontUtils.setFont(textView, 3);
        int i9 = (int) ((getContext().getResources().getDisplayMetrics().widthPixels * 780.0f) / 1080);
        this.width = i9;
        this.height = (int) ((i9 * 381.0f) / 780);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.BaseLiveItemViewHolder
    public void bindValue(@Nullable RoomItemData roomItemData, int i9) {
        List<AudienceInformation> audienceList;
        super.bindValue(roomItemData, i9);
        ParallaxImageView parallaxImageView = this.imageView;
        if (parallaxImageView != null) {
            Intrinsics.checkNotNull(roomItemData);
            String backgroundImg = roomItemData.getBackgroundImg();
            Intrinsics.checkNotNullExpressionValue(backgroundImg, "roomItemData!!.backgroundImg");
            parallaxImageView.loadUrl(backgroundImg);
        }
        View view = getView(R.id.avatar_group_view);
        if (roomItemData == null || (audienceList = roomItemData.getAudienceList()) == null) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(audienceList, "audienceList");
        AvatarGroupView avatarGroupView = (AvatarGroupView) view;
        if (avatarGroupView != null) {
            avatarGroupView.setAvatarList(audienceList);
        }
    }

    public final int getHeight() {
        return this.height;
    }

    @Nullable
    public final ParallaxImageView getImageView() {
        return this.imageView;
    }

    @Nullable
    public final TextView getTextViewCount() {
        return this.textViewCount;
    }

    @Nullable
    public final TextView getTextViewInfo() {
        return this.textViewInfo;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setHeight(int i9) {
        this.height = i9;
    }

    public final void setImageView(@Nullable ParallaxImageView parallaxImageView) {
        this.imageView = parallaxImageView;
    }

    public final void setTextViewCount(@Nullable TextView textView) {
        this.textViewCount = textView;
    }

    public final void setTextViewInfo(@Nullable TextView textView) {
        this.textViewInfo = textView;
    }

    public final void setWidth(int i9) {
        this.width = i9;
    }
}
