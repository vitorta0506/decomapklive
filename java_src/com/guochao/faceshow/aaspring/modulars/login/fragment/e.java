package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import androidx.core.os.ConfigurationCompat;
import com.guochao.faceshow.aaspring.modulars.login.bean.ThirdPartyLoginPlatform;
import com.guochao.faceshow.aaspring.utils.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public class e {
    private static List<ThirdPartyLoginPlatform> a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Constants.ThirdPartyLogin.FACEBOOK);
        arrayList.add(Constants.ThirdPartyLogin.EMAIL);
        return arrayList;
    }

    public static List<ThirdPartyLoginPlatform> b(Context context) {
        String country;
        if (Build.VERSION.SDK_INT >= 24) {
            country = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration()).get(0).getCountry();
        } else {
            country = Locale.getDefault().getCountry();
        }
        if ("CN".equalsIgnoreCase(country)) {
            return a(context);
        }
        if ("RU".equalsIgnoreCase(country)) {
            return e(context);
        }
        return c(context);
    }

    private static List<ThirdPartyLoginPlatform> c(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Constants.ThirdPartyLogin.TWITTER);
        arrayList.add(Constants.ThirdPartyLogin.INSTAGRAM);
        arrayList.add(Constants.ThirdPartyLogin.LINE);
        arrayList.add(Constants.ThirdPartyLogin.FACEBOOK);
        arrayList.add(Constants.ThirdPartyLogin.EMAIL);
        return arrayList;
    }

    public static List<ThirdPartyLoginPlatform> d(Context context, int i9) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Constants.ThirdPartyLogin.GOOGLE_OTHER);
        arrayList.add(Constants.ThirdPartyLogin.FACEBOOK_OTHER);
        if (i9 == 3) {
            arrayList.add(Constants.ThirdPartyLogin.EMAIL_OTHER);
        } else {
            arrayList.add(Constants.ThirdPartyLogin.PHONE_OTHER);
        }
        return arrayList;
    }

    private static List<ThirdPartyLoginPlatform> e(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Constants.ThirdPartyLogin.VK);
        arrayList.add(Constants.ThirdPartyLogin.TWITTER);
        arrayList.add(Constants.ThirdPartyLogin.INSTAGRAM);
        arrayList.add(Constants.ThirdPartyLogin.FACEBOOK);
        arrayList.add(Constants.ThirdPartyLogin.EMAIL);
        return arrayList;
    }
}
