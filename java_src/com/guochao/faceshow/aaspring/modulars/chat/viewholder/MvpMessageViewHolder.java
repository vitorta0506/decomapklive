package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import com.bumptech.glide.c;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.chat.models.SystemNotifyMessage;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u001c\u0010\u0006\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;", "Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "last", "message", "", "onBind", "Landroid/view/View;", ViewHierarchyConstants.VIEW_KEY, "onMessageContentClick", "Landroid/widget/TextView;", "title", "Landroid/widget/TextView;", "getTitle", "()Landroid/widget/TextView;", "setTitle", "(Landroid/widget/TextView;)V", "Landroid/widget/ImageView;", "imageView", "Landroid/widget/ImageView;", "getImageView", "()Landroid/widget/ImageView;", "setImageView", "(Landroid/widget/ImageView;)V", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;Landroid/view/View;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MvpMessageViewHolder extends BaseMessageViewHolder {
    @BindView
    public ImageView imageView;
    @BindView
    public TextView title;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpMessageViewHolder(@NotNull Context context, @NotNull View view) {
        super(context, view);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @NotNull
    public final ImageView getImageView() {
        ImageView imageView = this.imageView;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("imageView");
        return null;
    }

    @NotNull
    public final TextView getTitle() {
        TextView textView = this.title;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("title");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(@Nullable com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, @Nullable com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        SystemNotifyMessage systemNotifyMessage = aVar2 instanceof SystemNotifyMessage ? (SystemNotifyMessage) aVar2 : null;
        TextView title = getTitle();
        Context context = this.mContext;
        Object[] objArr = new Object[1];
        objArr[0] = systemNotifyMessage != null ? Integer.valueOf(systemNotifyMessage.getLevel()).toString() : null;
        title.setText(context.getString(R.string.mvp_im_chat_title, objArr));
        c.v(getImageView()).r(systemNotifyMessage != null ? systemNotifyMessage.getImgUrl() : null).Q0(getImageView());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onMessageContentClick(@Nullable View view, @Nullable com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        super.onMessageContentClick(view, aVar);
        MVPActivity.Companion companion = MVPActivity.Companion;
        Context mContext = this.mContext;
        Intrinsics.checkNotNullExpressionValue(mContext, "mContext");
        MVPActivity.Companion.start$default(companion, mContext, null, "2", 2, null);
    }

    public final void setImageView(@NotNull ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.imageView = imageView;
    }

    public final void setTitle(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.title = textView;
    }
}
