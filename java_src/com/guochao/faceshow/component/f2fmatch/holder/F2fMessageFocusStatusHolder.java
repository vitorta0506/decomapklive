package com.guochao.faceshow.component.f2fmatch.holder;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0004R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusStatusHolder;", "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "message", "", "position", "", "convert", "getLayoutId", "Lcom/guochao/faceshow/views/NormalCircleImageView;", "userAvatar", "Lcom/guochao/faceshow/views/NormalCircleImageView;", "getUserAvatar", "()Lcom/guochao/faceshow/views/NormalCircleImageView;", "setUserAvatar", "(Lcom/guochao/faceshow/views/NormalCircleImageView;)V", "Landroid/view/View;", "itemView", "<init>", "(Landroid/view/View;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class F2fMessageFocusStatusHolder extends F2fBaseHolder {
    @Nullable
    private NormalCircleImageView userAvatar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fMessageFocusStatusHolder(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        this.userAvatar = (NormalCircleImageView) getViewKt(R.id.avatar);
        View viewKt = getViewKt(R.id.icon_focus);
        if (viewKt != null) {
            viewKt.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.holder.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    F2fMessageFocusStatusHolder.m635_init_$lambda0(view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m635_init_$lambda0(View view) {
    }

    public final void convert(@NotNull com.guochao.faceshow.aaspring.modulars.chat.models.a message, int i9) {
        Intrinsics.checkNotNullParameter(message, "message");
        TextView textView = getTextView();
        if (textView != null) {
            Context context = this.itemView.getContext();
            textView.setText(context != null ? context.getString(R.string.user_guide_focus_immedi) : null);
        }
        hc.a.s(this.userAvatar, "", R.mipmap.default_head);
    }

    public final int getLayoutId() {
        return R.layout.item_f2f_msg_system;
    }

    @Nullable
    public final NormalCircleImageView getUserAvatar() {
        return this.userAvatar;
    }

    public final void setUserAvatar(@Nullable NormalCircleImageView normalCircleImageView) {
        this.userAvatar = normalCircleImageView;
    }
}
