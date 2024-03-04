package com.guochao.faceshow.aaspring.beans;

import android.content.Context;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.utils.BaseConfig;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SharePlatformBean {
    public static final String FacebookPackage = "com.facebook.katana";
    public static final int IMAGE_TYPE = 2;
    public static final String InstagramPackage = "com.instagram.android";
    public static final String QQ2Package = "com.tencent.mobileqq";
    public static final String QQPackage = "com.tencent.mqq";
    public static final String SnapChatPackage = "com.snapchat.android";
    public static final int TEXT_TYPE = 3;
    public static final String TwitterPackage = "com.twitter.android";
    public static final int VIDEO_TYPE = 1;
    public static final int WEB_TYPE = 0;
    public static final String WechatPackage = "com.tencent.mm";
    public static final String WeiBoPackage = "com.sina.weibo";
    public static final String WhatsAppPackage = "com.whatsapp";
    public static final String YoutubePackage = "com.google.android.youtube";
    private int diplayNameId;
    private int icon;
    private String sharePlatformName;

    /* loaded from: classes3.dex */
    public static class Copy {
        public static String NAME = "Copy";
    }

    /* loaded from: classes3.dex */
    public static class FaceBook {
        public static String NAME = "FaceBook";
    }

    /* loaded from: classes3.dex */
    public static class Friend {
        public static final String NAME = "Friend";
    }

    /* loaded from: classes3.dex */
    public static class Instagram {
        public static String NAME = "Instagram";
    }

    /* loaded from: classes3.dex */
    public static class QZone {
        public static String NAME = "QZone";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ShareType {
    }

    /* loaded from: classes3.dex */
    public static class SinaWeibo {
        public static String NAME = "SinaWeibo";
    }

    /* loaded from: classes3.dex */
    public static class SnapChat {
        public static final String NAME = "SnapChat";
    }

    /* loaded from: classes3.dex */
    public static class Wechat {
        public static String NAME = "Wechat";
    }

    /* loaded from: classes3.dex */
    public static class WechatMoments {
        public static String NAME = "WechatMoments";
    }

    /* loaded from: classes3.dex */
    public static class WhatsApp {
        public static String NAME = "WhatsApp";
    }

    /* loaded from: classes3.dex */
    public static class Youtube {
        public static String NAME = "Youtube";
    }

    public SharePlatformBean(String str, int i9) {
        this.sharePlatformName = str;
        this.icon = i9;
    }

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException: Cannot read field "wordsInUse" because "set" is null
        	at java.base/java.util.BitSet.or(BitSet.java:943)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:732)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:811)
        	at jadx.core.dex.visitors.regions.IfMakerHelper.restructureIf(IfMakerHelper.java:88)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:706)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    public static boolean checkApkExist(java.lang.String r3) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r3)
            r1 = 0
            if (r0 != 0) goto L39
            java.lang.String r0 = "com.tencent.mm"
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L39
            java.lang.String r0 = "com.tencent.mqq"
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L39
            java.lang.String r0 = "com.tencent.mobileqq"
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L39
            java.lang.String r0 = "com.sina.weibo"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L28
            goto L39
        L28:
            com.guochao.faceshow.BaseApplication r0 = com.guochao.faceshow.BaseApplication.getInstance()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L39
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L39
            r2 = 8192(0x2000, float:1.148E-41)
            android.content.pm.ApplicationInfo r3 = r0.getApplicationInfo(r3, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L39
            if (r3 == 0) goto L39
            r1 = 1
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.beans.SharePlatformBean.checkApkExist(java.lang.String):boolean");
    }

    public static List<SharePlatformBean> getDefault() {
        ArrayList arrayList = new ArrayList();
        boolean isChinese = BaseConfig.isChinese();
        if (!isChinese && checkApkExist("com.facebook.katana") && i.u().s().getFbShare() == 1) {
            arrayList.add(new SharePlatformBean(FaceBook.NAME, R.mipmap.icon_video_share_facebook, R.string.facebook));
        }
        if (!isChinese && checkApkExist(InstagramPackage)) {
            arrayList.add(new SharePlatformBean(Instagram.NAME, R.mipmap.icon_video_share_ins, R.string.Instagram));
        }
        if (!isChinese && checkApkExist("com.snapchat.android")) {
            arrayList.add(new SharePlatformBean(SnapChat.NAME, R.mipmap.icon_video_share_snapchat, R.string.SnapChat));
        }
        if (!isChinese && checkApkExist(TwitterPackage)) {
            arrayList.add(new SharePlatformBean(Constants.ThirdPartyLogin.PLATFORM_TWITTER, R.mipmap.icon_video_share_twi, R.string.Twitter));
        }
        if (!isChinese && checkApkExist(WhatsAppPackage)) {
            arrayList.add(new SharePlatformBean(WhatsApp.NAME, R.mipmap.icon_video_share_whatsapp, R.string.WhatsApp));
        }
        arrayList.add(new SharePlatformBean(More.NAME, R.mipmap.more_share, R.string.refuse_live_reason_eighth));
        return arrayList;
    }

    public static List<SharePlatformBean> getTopicDefault(boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (z10) {
            arrayList.add(new SharePlatformBean(Friend.NAME, R.mipmap.icon_share_friend, R.string.friends_text));
        }
        boolean isChinese = BaseConfig.isChinese();
        if (!isChinese && checkApkExist("com.facebook.katana") && i.u().s().getFbShare() == 1) {
            arrayList.add(new SharePlatformBean(FaceBook.NAME, R.mipmap.icon_video_share_facebook, R.string.facebook));
        }
        if (!isChinese && checkApkExist("com.snapchat.android")) {
            arrayList.add(new SharePlatformBean(SnapChat.NAME, R.mipmap.icon_video_share_snapchat, R.string.SnapChat));
        }
        if (!isChinese && checkApkExist(TwitterPackage)) {
            arrayList.add(new SharePlatformBean(Constants.ThirdPartyLogin.PLATFORM_TWITTER, R.mipmap.icon_video_share_twi, R.string.Twitter));
        }
        if (!isChinese && checkApkExist(WhatsAppPackage)) {
            arrayList.add(new SharePlatformBean(WhatsApp.NAME, R.mipmap.icon_video_share_whatsapp, R.string.WhatsApp));
        }
        arrayList.add(new SharePlatformBean(More.NAME, R.mipmap.more_share, R.string.refuse_live_reason_eighth));
        return arrayList;
    }

    public static boolean isWeixinExist(Context context) {
        return false;
    }

    public int getDiplayNameId() {
        return this.diplayNameId;
    }

    public int getIcon() {
        return this.icon;
    }

    public String getSharePlatformName() {
        return this.sharePlatformName;
    }

    public void setDiplayNameId(int i9) {
        this.diplayNameId = i9;
    }

    public void setIcon(int i9) {
        this.icon = i9;
    }

    public void setSharePlatformName(String str) {
        this.sharePlatformName = str;
    }

    public SharePlatformBean(String str, int i9, int i10) {
        this.sharePlatformName = str;
        this.icon = i9;
        this.diplayNameId = i10;
    }
}
