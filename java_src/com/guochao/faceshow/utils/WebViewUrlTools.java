package com.guochao.faceshow.utils;

import android.os.Build;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.Language;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSetting;
import java.util.Locale;
/* loaded from: classes4.dex */
public class WebViewUrlTools {
    public static final int CopyrightStatement = 4;
    public static final int FEED_BACK = 1000;
    public static final int HELLO_STAR = 20;
    public static final int HOUR_RANK = 21;
    public static final int INVITE_FRIEND_MAKE_MONEY = 19;
    public static final int LEVEL = 40;
    public static final int PrivacyPolicy = 3;
    public static final int RECAPTCHA = 18;
    public static final int TermsOfUse = 5;
    public static final int chatShadingMarketTip = 17;
    public static final int dressupMarketTip = 15;
    public static final int enterEffects = 10;
    public static final int exclusiveGift = 9;
    public static final int firstRecharge = 13;
    public static final int inviteDimens = 100;
    public static final int liveTerms = 7;
    public static final int one2onePolicy = 8;
    public static final int pendantMarketTip = 16;
    public static final int rechargeTip = 11;
    public static final int usdtWithDrawGuide = 14;
    public static final int withDrawTip = 12;

    public static String getLocalWebUrl(int i9) {
        if (BaseConfig.isChinese()) {
            return getLocalWebUrlForHello(i9);
        }
        return getLocalWebUrlForFaceCast(i9);
    }

    private static String getLocalWebUrlForFaceCast(int i9) {
        Locale locale;
        if (Build.VERSION.SDK_INT >= 24) {
            locale = ApplicationContextGetter.instance().get().getResources().getConfiguration().getLocales().get(0);
        } else {
            locale = ApplicationContextGetter.instance().get().getResources().getConfiguration().locale;
        }
        String country = locale.getCountry();
        if (country.equalsIgnoreCase(AdvanceSetting.CLEAR_NOTIFICATION)) {
            country = AdvanceSetting.CLEAR_NOTIFICATION;
        }
        if (Language.TRADITIONAL_CHINESE_HK.equals(country)) {
            country = "hk";
        }
        if (i9 == 3) {
            return x6.a.f59632h + "AppProtocol/PrivacyPolicy.html";
        } else if (i9 == 4) {
            return x6.a.f59632h + "AppProtocol/Copyright.html";
        } else if (i9 == 5) {
            return x6.a.f59632h + "AppProtocol/Service.html";
        } else if (i9 == 40) {
            return x6.a.f59632h + "userGrade/index.html";
        } else if (i9 == 100) {
            return x6.a.f59632h + "InviteFriends/invitation.html";
        } else if (i9 != 1000) {
            switch (i9) {
                case 7:
                    return x6.a.f59631g + "faceshow/api/page/zbxy.html?country=" + country;
                case 8:
                    return x6.a.f59631g + "faceshow/api/page/chat.html";
                case 9:
                    return x6.a.f59632h + "article/exclusive.html";
                case 10:
                    return x6.a.f59632h + "article/special.html";
                case 11:
                    return x6.a.f59632h + "AppWebModule/RechargeHelp.html";
                case 12:
                    return x6.a.f59632h + "Withdrawal/presentation.html";
                case 13:
                case 15:
                case 16:
                case 17:
                    return x6.a.f59630f + "rechargeActive/index.html";
                case 14:
                    return x6.a.f59632h + "Withdrawal/usdt_withdraw_guide.html";
                case 18:
                    return x6.a.f59632h + "safeVerifi/safecheck2.html";
                case 19:
                    return x6.a.f59632h + "inviteMoney/#/index";
                case 20:
                    return x6.a.f59632h + "helloStar/rules.html";
                case 21:
                    return x6.a.f59632h + "hoursRank/index.html";
                default:
                    return "";
            }
        } else {
            return x6.a.f59632h + "apphelp/index.html";
        }
    }

    private static String getLocalWebUrlForHello(int i9) {
        if (i9 == 3) {
            if ("en".equals(q7.a.e().g())) {
                return x6.a.f59632h + "ysxy/ysxy_en.html";
            }
            return x6.a.f59632h + "ysxy/ysxy_zh.html";
        } else if (i9 == 4) {
            return x6.a.f59632h + "article/copyright.html";
        } else if (i9 == 5) {
            return x6.a.f59632h + "article/servicesTerms.html";
        } else if (i9 == 19) {
            return x6.a.f59632h + "inviteMoney/#/index";
        } else if (i9 == 20) {
            return x6.a.f59632h + "helloStar/rules.html";
        } else if (i9 == 40) {
            return x6.a.f59632h + "userGrade/index.html";
        } else if (i9 != 100) {
            switch (i9) {
                case 8:
                    return x6.a.f59631g + "faceshow/api/page/chat.html";
                case 9:
                    return x6.a.f59632h + "article/exclusive.html";
                case 10:
                    return x6.a.f59632h + "article/special.html";
                case 11:
                    return x6.a.f59632h + "AppWebModule/RechargeHelp.html";
                case 12:
                    return x6.a.f59632h + "withdrawal/presentation.html";
                case 13:
                    return x6.a.f59630f + "rechargeActive/index.html";
                default:
                    return "";
            }
        } else {
            return x6.a.f59632h + "inviteFriends/index.html";
        }
    }

    public static String getWebTitle(int i9) {
        switch (i9) {
            case 3:
                return BaseApplication.getInstance().getString(R.string.privacy_policy);
            case 4:
                return BaseApplication.getInstance().getString(R.string.setting_copyright_statement);
            case 5:
                return BaseApplication.getInstance().getString(R.string.term_of_use);
            case 6:
            case 8:
            case 13:
            case 18:
            default:
                return "";
            case 7:
                return BaseApplication.getInstance().getString(R.string.liveterms);
            case 9:
                return BaseApplication.getInstance().getString(R.string.exclusive_gift);
            case 10:
                return BaseApplication.getInstance().getString(R.string.enter_effects);
            case 11:
                return BaseApplication.getInstance().getString(R.string.recharge_help);
            case 12:
                return BaseApplication.getInstance().getString(R.string.Withdraw_tips);
            case 14:
                return BaseApplication.getInstance().getString(R.string.withdraw_usdt_guide);
            case 15:
                return BaseApplication.getInstance().getString(R.string.f_dress_roles_tip_car);
            case 16:
                return BaseApplication.getInstance().getString(R.string.f_dress_roles_tip_pendant);
            case 17:
                return BaseApplication.getInstance().getString(R.string.f_dress_roles_tip_chatshading);
            case 19:
                return BaseApplication.getInstance().getString(R.string.invite_friend_make_money);
        }
    }
}
