package com.guochao.faceshow.component.f2fmatch.utils;

import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0006¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;", "", "()V", "buildSpeechTranslateTip", "", "textOrSpeech", "", "followEachOtherTip", "gcUser", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "followUserTip", "self", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fSpanTipsUtils {
    @NotNull
    public static final F2fSpanTipsUtils INSTANCE = new F2fSpanTipsUtils();

    private F2fSpanTipsUtils() {
    }

    @NotNull
    public final CharSequence buildSpeechTranslateTip(boolean z10) {
        int indexOf$default;
        String string = BaseApplication.getInstance().getString(R.string.auto_translate_tips, new Object[]{Locale.getDefault().getDisplayLanguage()});
        Intrinsics.checkNotNullExpressionValue(string, "getInstance().getString(…displayLanguage\n        )");
        if (z10) {
            return string;
        }
        String string2 = BaseApplication.getInstance().getString(R.string.f2f_speech_to_text_and_translate);
        Intrinsics.checkNotNullExpressionValue(string2, "getInstance()\n          …ch_to_text_and_translate)");
        String str = "[icon]   " + string2 + IOUtils.LINE_SEPARATOR_WINDOWS + string;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        Drawable drawable = BaseApplication.getInstance().getDrawable(R.mipmap.icon_f2f_speech);
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        } else {
            drawable = null;
        }
        spannableStringBuilder.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.a(drawable), 0, 6, 33);
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, string2, 0, false, 6, (Object) null);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(BaseApplication.getInstance().getResources().getColor(R.color.color_ugc_app_primary)), indexOf$default, string2.length() + indexOf$default, 33);
        return spannableStringBuilder;
    }

    @NotNull
    public final CharSequence followEachOtherTip(@NotNull F2fMatchModel.F2fMatchRoomInfo gcUser) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        BaseApplication baseApplication = BaseApplication.getInstance();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String string = baseApplication.getString(R.string.f2f_msg_focus_eachother, new Object[]{gcUser.getNickName()});
        Intrinsics.checkNotNullExpressionValue(string, "context.getString(\n     …gcUser.nickName\n        )");
        spannableStringBuilder.append((CharSequence) string);
        String nickName = gcUser.getNickName();
        if (nickName == null) {
            nickName = "";
        }
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, nickName, 0, false, 6, (Object) null);
        if (indexOf$default >= 0) {
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(baseApplication.getResources().getColor(R.color.f2f_nick_name_green));
            String nickName2 = gcUser.getNickName();
            spannableStringBuilder.setSpan(foregroundColorSpan, indexOf$default, (nickName2 != null ? nickName2.length() : 0) + indexOf$default, 33);
        }
        return spannableStringBuilder;
    }

    @NotNull
    public final CharSequence followUserTip(@NotNull F2fMatchModel.F2fMatchRoomInfo gcUser, boolean z10) {
        String string;
        int indexOf$default;
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        BaseApplication baseApplication = BaseApplication.getInstance();
        String nickName = gcUser.getNickName();
        if (nickName == null) {
            nickName = "";
        }
        String str = nickName;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (z10) {
            string = baseApplication.getString(R.string.f2f_msg_you_focus, new Object[]{str});
        } else {
            string = baseApplication.getString(R.string.f2f_msg_focus_you, new Object[]{str});
        }
        String str2 = string;
        Intrinsics.checkNotNullExpressionValue(str2, "if (self) context.getStr…           nick\n        )");
        spannableStringBuilder.append((CharSequence) str2);
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str2, str, 0, false, 6, (Object) null);
        if (indexOf$default >= 0) {
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(baseApplication.getResources().getColor(R.color.f2f_nick_name_green));
            String nickName2 = gcUser.getNickName();
            spannableStringBuilder.setSpan(foregroundColorSpan, indexOf$default, (nickName2 != null ? nickName2.length() : 0) + indexOf$default, 33);
        }
        return spannableStringBuilder;
    }
}
