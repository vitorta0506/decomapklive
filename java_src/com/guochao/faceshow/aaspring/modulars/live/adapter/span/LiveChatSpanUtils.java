package com.guochao.faceshow.aaspring.modulars.live.adapter.span;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.ReplacementSpan;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftResponseModel;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.r;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001!B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH\u0007J(\u0010\u000e\u001a\u00020\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J0\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u0019H\u0002¨\u0006\""}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;", "", "()V", "getGiftIconSpan", "textView", "Landroid/widget/TextView;", "url", "", "getHandyGiftMessageSpan", "", "message", "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;", "isSendToBroadCaster", "", "getLuckyGiftRewardSpan", "messageModel", "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;", "result", "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;", "getLuckyGiftRunwayContentSpan", "context", "Landroid/content/Context;", "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;", "getMvpLevelSpan", "mvpLevel", "", "setGiftSpan", "", "image", "spannableStringBuilder", "Landroid/text/SpannableStringBuilder;", "start", "end", "TypeFaceSpan", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LiveChatSpanUtils {
    @NotNull
    public static final LiveChatSpanUtils INSTANCE = new LiveChatSpanUtils();

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006JR\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J4\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;", "Landroid/text/style/ReplacementSpan;", "textSize", "", "textColor", "", "(FI)V", "draw", "", "canvas", "Landroid/graphics/Canvas;", ViewHierarchyConstants.TEXT_KEY, "", "start", "end", x.f19108w, "top", "y", "bottom", "paint", "Landroid/graphics/Paint;", "getSize", "fm", "Landroid/graphics/Paint$FontMetricsInt;", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    private static final class TypeFaceSpan extends ReplacementSpan {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private static final Typeface typeFace = ResourcesCompat.getFont(BaseApplication.getInstance(), R.font.lucky_gift_runway);
        private final int textColor;
        private final float textSize;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan$Companion;", "", "()V", "typeFace", "Landroid/graphics/Typeface;", "getTypeFace$annotations", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            private static /* synthetic */ void getTypeFace$annotations() {
            }
        }

        public TypeFaceSpan(float f10, int i9) {
            this.textSize = f10;
            this.textColor = i9;
        }

        @Override // android.text.style.ReplacementSpan
        public void draw(@NotNull Canvas canvas, @Nullable CharSequence charSequence, int i9, int i10, float f10, int i11, int i12, int i13, @NotNull Paint paint) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNullParameter(paint, "paint");
            CharSequence subSequence = charSequence != null ? charSequence.subSequence(i9, i10) : null;
            if (subSequence != null) {
                Typeface typeface = paint.getTypeface();
                float textSize = paint.getTextSize();
                int color = paint.getColor();
                paint.setTypeface(typeFace);
                paint.setTextSize(this.textSize);
                paint.setColor(this.textColor);
                Paint.FontMetrics fontMetrics = paint.getFontMetrics();
                float f11 = i12;
                canvas.drawText(subSequence.toString(), f10, f11 - (((((fontMetrics.descent + f11) + f11) + fontMetrics.ascent) / 2) - ((i13 + i11) / 2)), paint);
                paint.setTypeface(typeface);
                paint.setTextSize(textSize);
                paint.setColor(color);
            }
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(@NotNull Paint paint, @Nullable CharSequence charSequence, int i9, int i10, @Nullable Paint.FontMetricsInt fontMetricsInt) {
            Intrinsics.checkNotNullParameter(paint, "paint");
            CharSequence subSequence = charSequence != null ? charSequence.subSequence(i9, i10) : null;
            float textSize = paint.getTextSize();
            paint.setTextSize(this.textSize);
            float measureText = paint.measureText((subSequence == null || (r2 = subSequence.toString()) == null) ? "" : "");
            paint.setTextSize(textSize);
            return (int) measureText;
        }
    }

    private LiveChatSpanUtils() {
    }

    private final Object getGiftIconSpan(TextView textView, String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 4;
        return new IconSpan(new BitmapDrawable(BitmapFactory.decodeResource(BaseApplication.getInstance().getResources(), R.mipmap.ic_launcher, options)), str, textView);
    }

    @JvmStatic
    @NotNull
    public static final CharSequence getHandyGiftMessageSpan(@NotNull GiftLiveMessage message, @NotNull TextView textView, boolean z10) {
        Object toUserNickName;
        int indexOf$default;
        int indexOf$default2;
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(textView, "textView");
        BaseApplication baseApplication = BaseApplication.getInstance();
        int color = baseApplication.getResources().getColor(R.color.live_im_gift_giving_user_name);
        int color2 = baseApplication.getResources().getColor(R.color.live_im_gift_giving);
        String string = baseApplication.getString(R.string.handy_gift_gave);
        Intrinsics.checkNotNullExpressionValue(string, "ctx.getString(R.string.handy_gift_gave)");
        String fromNick = message.getFromUserNickName();
        if (message.getIsGiftAllSend() == 1) {
            toUserNickName = baseApplication.getString(R.string.gift_all_on_the_mic);
        } else if (z10) {
            toUserNickName = Unit.INSTANCE;
        } else {
            toUserNickName = message.getToUserNickName();
        }
        String str = message.giftNum;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(string, Arrays.copyOf(new Object[]{fromNick, "￼", str, toUserNickName}, 4));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(format);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(color2), 0, spannableStringBuilder.length(), 33);
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) format, "￼", 0, false, 6, (Object) null);
        if (indexOf$default >= 0) {
            LiveChatSpanUtils liveChatSpanUtils = INSTANCE;
            String str2 = message.giftImg;
            Intrinsics.checkNotNullExpressionValue(str2, "message.giftImg");
            spannableStringBuilder.setSpan(liveChatSpanUtils.getGiftIconSpan(textView, str2), indexOf$default, indexOf$default + 1, 33);
        }
        Intrinsics.checkNotNullExpressionValue(fromNick, "fromNick");
        indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) format, fromNick, 0, false, 6, (Object) null);
        if (indexOf$default2 >= 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(color), indexOf$default2, fromNick.length() + indexOf$default2, 33);
        }
        return spannableStringBuilder;
    }

    @JvmStatic
    @NotNull
    public static final CharSequence getLuckyGiftRewardSpan(@NotNull LiveMessageModel<GiftLiveMessage> messageModel, @Nullable SendGiftResponseModel.LuckyGiftResult luckyGiftResult, @NotNull TextView textView) {
        int indexOf$default;
        int indexOf$default2;
        Intrinsics.checkNotNullParameter(messageModel, "messageModel");
        Intrinsics.checkNotNullParameter(textView, "textView");
        String nick = messageModel.getData().getFromUserNickName();
        BaseApplication baseApplication = BaseApplication.getInstance();
        Object[] objArr = new Object[3];
        objArr[0] = " ￼ ";
        objArr[1] = luckyGiftResult != null ? Integer.valueOf(luckyGiftResult.getAwardMultiple()) : null;
        objArr[2] = nick;
        String string = baseApplication.getString(R.string.lucky_gift_chat_reward, objArr);
        Intrinsics.checkNotNullExpressionValue(string, "getInstance().getString(…           nick\n        )");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        Intrinsics.checkNotNullExpressionValue(nick, "nick");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, nick, 0, false, 6, (Object) null);
        if (indexOf$default >= 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(BaseApplication.getInstance(), R.color.live_im_gift_giving_user_name)), indexOf$default, nick.length() + indexOf$default, 33);
        }
        indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) string, "￼", 0, false, 6, (Object) null);
        if (indexOf$default2 >= 0) {
            LiveChatSpanUtils liveChatSpanUtils = INSTANCE;
            String str = messageModel.getData().giftImg;
            Intrinsics.checkNotNullExpressionValue(str, "messageModel.data.giftImg");
            liveChatSpanUtils.setGiftSpan(textView, str, spannableStringBuilder, indexOf$default2, indexOf$default2 + 1);
        }
        return spannableStringBuilder;
    }

    @JvmStatic
    @NotNull
    public static final CharSequence getLuckyGiftRunwayContentSpan(@NotNull Context context, @NotNull RunwayMessage.LuckyGiftRunwayMessage message) {
        String sb2;
        String string;
        int indexOf$default;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(message, "message");
        if (message.getDiamonds()) {
            sb2 = " x" + message.getGiftNumbers() + ' ';
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(' ');
            sb3.append(message.getGiftNumbers());
            sb3.append(' ');
            sb2 = sb3.toString();
        }
        if (message.getDiamonds()) {
            string = context.getString(R.string.lucky_gift_chat_reward_runway2, sb2);
        } else {
            string = context.getString(R.string.lucky_gift_chat_reward_runway1, sb2);
        }
        String str = string;
        Intrinsics.checkNotNullExpressionValue(str, "if (message.diamonds) {\n…unway1, reward)\n        }");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, sb2, 0, false, 6, (Object) null);
        if (indexOf$default >= 0) {
            spannableStringBuilder.setSpan(new TypeFaceSpan(DensityUtil.dp2px(16.0f), Color.parseColor("#FFED6A")), indexOf$default, sb2.length() + indexOf$default, 33);
        }
        return spannableStringBuilder;
    }

    @JvmStatic
    @NotNull
    public static final CharSequence getMvpLevelSpan(int i9) {
        Drawable drawable;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        if (i9 == 1) {
            drawable = BaseApplication.getInstance().getDrawable(R.mipmap.icon_mvp_level1);
        } else if (i9 != 2) {
            drawable = BaseApplication.getInstance().getDrawable(R.mipmap.icon_mvp_level3);
        } else {
            drawable = BaseApplication.getInstance().getDrawable(R.mipmap.icon_mvp_level2);
        }
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            spannableStringBuilder.setSpan(new r(drawable), 1, 2, 33);
            return spannableStringBuilder;
        }
        return "";
    }

    private final void setGiftSpan(TextView textView, String str, SpannableStringBuilder spannableStringBuilder, int i9, int i10) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 4;
        spannableStringBuilder.setSpan(new IconSpan(new BitmapDrawable(BitmapFactory.decodeResource(BaseApplication.getInstance().getResources(), R.mipmap.ic_launcher, options)), str, textView), i9, i10, 33);
    }
}
