package com.guochao.faceshow.component.f2fmatch.holder;

import android.view.View;
import com.guochao.faceshow.R;
import com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageSystemHolder;", "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "convert", "", "f2FChatMessageModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMessageSystemHolder extends F2fBaseHolder {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fMessageSystemHolder(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
    }

    @Override // com.guochao.faceshow.component.f2fmatch.holder.F2fBaseHolder
    public void convert(@NotNull F2fChatMessageModel f2FChatMessageModel) {
        Intrinsics.checkNotNullParameter(f2FChatMessageModel, "f2FChatMessageModel");
        super.convert(f2FChatMessageModel);
        int messageType = f2FChatMessageModel.getMessageType();
        if (messageType == 1) {
            getTextView().setTextColor(this.itemView.getContext().getResources().getColor(R.color.color_ugc_app_primary));
            getTextView().setBackgroundResource(R.drawable.shape_f2f_system_tips);
        } else if (messageType == 8) {
            getTextView().setTextColor(-1);
            getTextView().setBackgroundResource(R.drawable.shape_bg_blue_msg);
        } else if (messageType == 9) {
            getTextView().setTextColor(-1);
            getTextView().setBackgroundResource(R.drawable.shape_bg_transparent_msg);
        } else if (messageType == 1000 || messageType == 1001) {
            getTextView().setTextColor(this.itemView.getContext().getResources().getColor(R.color.color_text_special_2));
            getTextView().setBackgroundResource(R.drawable.shape_f2f_system_tips);
        }
    }
}
