package com.guochao.faceshow.utils;

import android.os.Build;
import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import java.util.Locale;
/* loaded from: classes4.dex */
public class LanguageGetUtils {
    public static boolean isLanguageChinese() {
        Locale locale;
        String str = SpUtils.getStr(BaseApplication.getInstance(), "language");
        if (TextUtils.isEmpty(str)) {
            if (Build.VERSION.SDK_INT >= 24) {
                locale = BaseApplication.getInstance().getResources().getConfiguration().getLocales().get(0);
            } else {
                locale = BaseApplication.getInstance().getResources().getConfiguration().locale;
            }
            str = locale.getLanguage();
        }
        str.hashCode();
        return str.equals(Language.TRADITIONAL_CHINESE_HK) || str.equals(Language.SIMPLE_CHINESE);
    }
}
