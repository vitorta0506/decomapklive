package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import androidx.webkit.ProxyConfig;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.web.WebViewActivity;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
/* loaded from: classes3.dex */
public class UrlUtils {
    public static String appendInviter(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (str.indexOf("?") < 0) {
            return str + "?inviter=" + qa.a.a(b8.e.g().c().getUserId().getBytes()) + "&gameCode=";
        }
        return str + "&inviter=" + qa.a.a(b8.e.g().c().getUserId().getBytes()) + "&gameCode=";
    }

    public static void checkLink(TextView textView) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(textView.getText().toString());
        Matcher matcher = TopicAndAtTextHelper.WEB_URL.matcher(spannableStringBuilder);
        while (matcher.find()) {
            String group = matcher.group();
            int start = matcher.start();
            setLink(spannableStringBuilder, textView, group, start, group.length() + start);
        }
    }

    public static boolean checkPayoneerCallbackUrl(String str) {
        return str.contains(BaseConfig.URL_PAYONEER_CALL_BACK);
    }

    public static void goPrivacy(Context context) {
        WebViewActivity.createBuilder().e(3).d(true).a(context);
    }

    public static void goTermOfUse(Context context) {
        WebViewActivity.createBuilder().e(5).d(true).a(context);
    }

    public static boolean isUrl(String str) {
        return TopicAndAtTextHelper.WEB_URL.matcher(str).matches();
    }

    public static void setLink(SpannableStringBuilder spannableStringBuilder, TextView textView, String str, int i9, int i10) {
        spannableStringBuilder.setSpan(new com.guochao.faceshow.aaspring.views.j(str, Color.parseColor("#6365FF")), i9, i10, 33);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(spannableStringBuilder);
    }

    public static boolean shouldOpenOutside(Uri uri) {
        String host = uri.getHost();
        if (TextUtils.isEmpty(host)) {
            return false;
        }
        if (ProxyConfig.MATCH_HTTPS.equals(uri.getScheme())) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("pay.facecast.live");
            arrayList.add("pay.facecast.xyz");
            arrayList.add("pay1.facecast.live");
            arrayList.add("pay1.facecast.xyz");
            arrayList.add("pay.buzzcast.info");
            arrayList.add("pay1.buzzcast.info");
            arrayList.add("www.buzzcast.info");
            arrayList.add("buzzcast.info");
            return arrayList.contains(host.toLowerCase());
        }
        return true;
    }

    public static String appendInviter(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(str);
        if (str.indexOf("?") < 0) {
            sb2.append("?");
        } else {
            sb2.append(ContainerUtils.FIELD_DELIMITER);
        }
        return String.format("%sinviter=%s&gameCode=%s", sb2.toString(), qa.a.a(b8.e.g().c().getUserId().getBytes()), str2);
    }
}
