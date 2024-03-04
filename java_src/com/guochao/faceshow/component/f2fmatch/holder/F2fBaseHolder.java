package com.guochao.faceshow.component.f2fmatch.holder;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "textView", "Landroid/widget/TextView;", "getTextView", "()Landroid/widget/TextView;", "convert", "", "f2FChatMessageModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public class F2fBaseHolder extends BaseViewHolder {
    @NotNull
    private final TextView textView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fBaseHolder(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        View view = getView(R.id.text_view);
        Intrinsics.checkNotNullExpressionValue(view, "getView(R.id.text_view)");
        this.textView = (TextView) view;
    }

    public void convert(@NotNull F2fChatMessageModel f2FChatMessageModel) {
        Intrinsics.checkNotNullParameter(f2FChatMessageModel, "f2FChatMessageModel");
        if (TextUtils.isEmpty(f2FChatMessageModel.getMsg())) {
            return;
        }
        this.textView.setText(f2FChatMessageModel.getMsg());
    }

    @NotNull
    public final TextView getTextView() {
        return this.textView;
    }
}
