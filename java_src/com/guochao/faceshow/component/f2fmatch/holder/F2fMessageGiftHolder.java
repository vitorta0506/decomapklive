package com.guochao.faceshow.component.f2fmatch.holder;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.TextView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.aaspring.modulars.chat.models.GiftMessage;
import com.guochao.faceshow.aaspring.modulars.live.adapter.span.IconSpan;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageGiftHolder;", "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;", "itemView", "Landroid/view/View;", "gcUser", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V", "buildGiftMessage", "", "giftMessage", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;", "textView", "Landroid/widget/TextView;", "convert", "", "f2FChatMessageModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMessageGiftHolder extends F2fBaseHolder {
    @NotNull
    private final GCUser gcUser;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fMessageGiftHolder(@NotNull View itemView, @NotNull GCUser gcUser) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        this.gcUser = gcUser;
    }

    private final CharSequence buildGiftMessage(GiftMessage giftMessage, TextView textView) {
        String str;
        int indexOf$default;
        boolean isSelf = giftMessage.isSelf();
        String nickName = this.gcUser.getNickName();
        if (nickName == null) {
            nickName = "";
        }
        String str2 = " x" + giftMessage.getGiftInfo().counts;
        if (isSelf) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.itemView.getResources().getString(R.string.f2f_msg_you_send, ' ' + nickName));
            sb2.append(' ');
            sb2.append("[gift_icon]");
            sb2.append(' ');
            sb2.append(str2);
            str = sb2.toString();
        } else {
            str = this.itemView.getResources().getString(R.string.f2f_msg_send_you, nickName) + " [gift_icon] " + str2;
        }
        String str3 = str;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str3);
        SpanColorUtils.setColorSpan(this.itemView.getResources().getColor(R.color.live_im_gift_giving), spannableStringBuilder, str3);
        SpanColorUtils.setColorSpan(this.itemView.getResources().getColor(R.color.f2f_nick_name_green), spannableStringBuilder, nickName);
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str3, "[gift_icon]", 0, false, 6, (Object) null);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 4;
        BitmapDrawable bitmapDrawable = new BitmapDrawable(BitmapFactory.decodeResource(BaseApplication.getInstance().getResources(), R.mipmap.ic_launcher, options));
        String str4 = giftMessage.getGiftInfo().img;
        Intrinsics.checkNotNullExpressionValue(str4, "giftMessage.giftInfo.img");
        spannableStringBuilder.setSpan(new IconSpan(bitmapDrawable, str4, textView), indexOf$default, indexOf$default + 11, 33);
        return spannableStringBuilder;
    }

    @Override // com.guochao.faceshow.component.f2fmatch.holder.F2fBaseHolder
    public void convert(@NotNull F2fChatMessageModel f2FChatMessageModel) {
        Intrinsics.checkNotNullParameter(f2FChatMessageModel, "f2FChatMessageModel");
        super.convert(f2FChatMessageModel);
        TextView textView = getTextView();
        com.guochao.faceshow.aaspring.modulars.chat.models.a imMessage = f2FChatMessageModel.getImMessage();
        Intrinsics.checkNotNull(imMessage, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.chat.models.GiftMessage");
        textView.setText(buildGiftMessage((GiftMessage) imMessage, getTextView()));
    }
}
