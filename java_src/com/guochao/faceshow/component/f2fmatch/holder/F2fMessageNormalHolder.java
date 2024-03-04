package com.guochao.faceshow.component.f2fmatch.holder;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import b8.e;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel;
import com.guochao.faceshow.databinding.ItemF2fMsgNormalBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageNormalHolder;", "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;", "itemView", "Landroid/view/View;", "gcUser", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V", "viewBinding", "Lcom/guochao/faceshow/databinding/ItemF2fMsgNormalBinding;", "convert", "", "f2FChatMessageModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMessageNormalHolder extends F2fBaseHolder {
    @NotNull
    private final GCUser gcUser;
    @NotNull
    private final ItemF2fMsgNormalBinding viewBinding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fMessageNormalHolder(@NotNull View itemView, @NotNull GCUser gcUser) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        this.gcUser = gcUser;
        ItemF2fMsgNormalBinding bind = ItemF2fMsgNormalBinding.bind(itemView);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(itemView)");
        this.viewBinding = bind;
    }

    @Override // com.guochao.faceshow.component.f2fmatch.holder.F2fBaseHolder
    public void convert(@NotNull F2fChatMessageModel f2FChatMessageModel) {
        Intrinsics.checkNotNullParameter(f2FChatMessageModel, "f2FChatMessageModel");
        boolean z10 = false;
        if (f2FChatMessageModel.getTranslatedMsg() == null) {
            this.viewBinding.transltedTv.setVisibility(8);
            super.convert(f2FChatMessageModel);
        } else {
            this.viewBinding.transltedTv.setVisibility(0);
            getTextView().setText(String.valueOf(f2FChatMessageModel.getMsg()));
            this.viewBinding.transltedTv.setText(String.valueOf(f2FChatMessageModel.getTranslatedMsg()));
        }
        ViewGroup.LayoutParams layoutParams = this.viewBinding.textArea.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        layoutParams2.width = -2;
        layoutParams2.weight = 0.0f;
        ImageView imageView = (ImageView) getView(R.id.avatar);
        com.guochao.faceshow.aaspring.modulars.chat.models.a imMessage = f2FChatMessageModel.getImMessage();
        if (imMessage != null && imMessage.isSelf()) {
            z10 = true;
        }
        if (z10) {
            hc.a.d(imageView, e.g().b());
        } else {
            hc.a.d(imageView, this.gcUser.getSmallAvatarUrl());
        }
    }
}
