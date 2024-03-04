package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.content.Intent;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.chat.models.TipsMessage;
import com.guochao.faceshow.activity.LevelActivity;
/* loaded from: classes3.dex */
public class TipsMessageViewHolder extends BaseMessageViewHolder {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ClickableSpan {
        a() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            TipsMessageViewHolder.this.mAdapter.i().q2(3);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(TipsMessageViewHolder.this.mContext.getResources().getColor(R.color.color_app_primary));
            textPaint.setUnderlineText(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends ClickableSpan {
        b() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            TipsMessageViewHolder.this.mContext.startActivity(new Intent(TipsMessageViewHolder.this.mContext, LevelActivity.class));
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(TipsMessageViewHolder.this.mContext.getResources().getColor(R.color.color_app_primary));
            textPaint.setUnderlineText(false);
        }
    }

    public TipsMessageViewHolder(Context context, View view) {
        super(context, view);
    }

    public CharSequence c(TipsMessage tipsMessage, int i9) {
        if (i9 == 1) {
            if (tipsMessage.isSelf()) {
                String string = this.mContext.getString(R.string.send_gift_to_follow);
                String string2 = this.mContext.getString(R.string.send_a_gift);
                int lastIndexOf = string.lastIndexOf(string2);
                if (lastIndexOf < 0) {
                    return string;
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                spannableStringBuilder.setSpan(new a(), lastIndexOf, string2.length() + lastIndexOf, 33);
                return spannableStringBuilder;
            }
            return this.mContext.getResources().getString(R.string.privacy_prompt);
        } else if (i9 != 2) {
            if (i9 != 3) {
                if (i9 != 5) {
                    if (i9 != 2001) {
                        return null;
                    }
                    return this.mContext.getResources().getString(R.string.can_not_has_url);
                }
                String string3 = this.mContext.getString(R.string.How_to_level_up_to_chat);
                String string4 = this.mContext.getString(R.string.How_to_upgrade);
                int lastIndexOf2 = string3.lastIndexOf(string4);
                if (lastIndexOf2 < 0) {
                    return string3;
                }
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(string3);
                spannableStringBuilder2.setSpan(new b(), lastIndexOf2, string4.length() + lastIndexOf2, 33);
                return spannableStringBuilder2;
            }
            return this.mContext.getString(R.string.You_have_blocked_this_user);
        } else {
            return this.mContext.getString(R.string.Little_Black_House);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        TipsMessage tipsMessage = (TipsMessage) aVar2;
        CharSequence c10 = c(tipsMessage, tipsMessage.getMessageType());
        TextView textView = (TextView) getView(R.id.tv_msg_content);
        if (c10 != null) {
            textView.setText(c10);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            return;
        }
        textView.setText(tipsMessage.getMessageText());
    }
}
