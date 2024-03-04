package com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder;

import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.views.r;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftTipsHolder;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "itemView", "Landroid/view/View;", "liveChatFragment", "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;", "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LuckyGiftTipsHolder extends BaseViewHolder {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LuckyGiftTipsHolder(@NotNull View itemView, @NotNull final LiveChatFragment liveChatFragment) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(liveChatFragment, "liveChatFragment");
        TextView textView = (TextView) itemView.findViewById(R.id.content);
        CharSequence text = itemView.getResources().getText(R.string.lucky_gift_chat_tips);
        Intrinsics.checkNotNullExpressionValue(text, "itemView.resources.getTe…ing.lucky_gift_chat_tips)");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
        SpannableString spannableString = new SpannableString(" ");
        Drawable drawable = ContextCompat.getDrawable(itemView.getContext(), R.drawable.ic_im_icon_view);
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        } else {
            drawable = null;
        }
        spannableString.setSpan(new r(drawable), 0, spannableString.length(), 33);
        spannableStringBuilder.append((CharSequence) "  ");
        spannableStringBuilder.append((CharSequence) spannableString);
        textView.setText(spannableStringBuilder);
        itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LuckyGiftTipsHolder.m449_init_$lambda1(LiveChatFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-1  reason: not valid java name */
    public static final void m449_init_$lambda1(LiveChatFragment liveChatFragment, View view) {
        Intrinsics.checkNotNullParameter(liveChatFragment, "$liveChatFragment");
        liveChatFragment.giftOnclick(0);
    }
}
