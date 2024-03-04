package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.modulars.login.bean.RegisterBean;
import com.guochao.faceshow.aaspring.modulars.login.bean.ThirdPartyLoginPlatform;
/* loaded from: classes3.dex */
public class j {

    /* renamed from: d  reason: collision with root package name */
    private static j f20566d;

    /* renamed from: a  reason: collision with root package name */
    private Context f20567a;

    /* renamed from: b  reason: collision with root package name */
    private RegisterBean f20568b = new RegisterBean();

    /* renamed from: c  reason: collision with root package name */
    private ThirdPartyLoginPlatform f20569c;

    private j(Context context) {
        this.f20567a = context.getApplicationContext();
    }

    public static j e() {
        if (f20566d == null) {
            f20566d = new j(BaseApplication.getInstance());
        }
        return f20566d;
    }

    public void A(String str, String str2) {
        this.f20568b.setUserId(str);
        this.f20568b.setUnionId(str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0060, code lost:
        if (r4.startsWith("new-game-facecast-") == false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(android.content.Context r4) {
        /*
            r3 = this;
            java.lang.String r0 = "clipboard"
            java.lang.Object r4 = r4.getSystemService(r0)
            android.content.ClipboardManager r4 = (android.content.ClipboardManager) r4
            android.content.ClipData r4 = r4.getPrimaryClip()
            r0 = 0
            if (r4 == 0) goto L75
            r1 = 0
            android.content.ClipData$Item r2 = r4.getItemAt(r1)
            if (r2 == 0) goto L75
            android.content.ClipData$Item r2 = r4.getItemAt(r1)
            java.lang.CharSequence r2 = r2.getText()
            if (r2 == 0) goto L75
            android.content.ClipData$Item r4 = r4.getItemAt(r1)
            java.lang.CharSequence r4 = r4.getText()
            java.lang.String r4 = r4.toString()
            boolean r1 = android.text.TextUtils.isEmpty(r4)
            if (r1 == 0) goto L33
            return r0
        L33:
            boolean r1 = com.guochao.faceshow.utils.BaseConfig.isChinese()
            if (r1 == 0) goto L4a
            java.lang.String r1 = "hello-"
            boolean r1 = r4.startsWith(r1)
            if (r1 != 0) goto L49
            java.lang.String r1 = "game-hello-"
            boolean r1 = r4.startsWith(r1)
            if (r1 == 0) goto L63
        L49:
            return r4
        L4a:
            java.lang.String r1 = "facecast-"
            boolean r1 = r4.startsWith(r1)
            if (r1 != 0) goto L74
            java.lang.String r1 = "game-facecast-"
            boolean r1 = r4.startsWith(r1)
            if (r1 != 0) goto L74
            java.lang.String r1 = "new-game-facecast-"
            boolean r1 = r4.startsWith(r1)
            if (r1 == 0) goto L63
            goto L74
        L63:
            java.lang.String r1 = "contact-"
            boolean r1 = r4.startsWith(r1)
            if (r1 == 0) goto L75
            com.guochao.faceshow.aaspring.utils.EventTrackingUtils r0 = com.guochao.faceshow.aaspring.utils.EventTrackingUtils.getInstance()
            java.lang.String r1 = "sharepage_times"
            r0.track(r1)
        L74:
            return r4
        L75:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.login.utils.j.a(android.content.Context):java.lang.String");
    }

    public String b() {
        return this.f20568b.getAvatar();
    }

    public String c() {
        return this.f20568b.getBirthday();
    }

    public String d() {
        return this.f20568b.getmCountry_num();
    }

    public String f() {
        return this.f20568b.getEmail();
    }

    public int g() {
        return this.f20568b.getGender();
    }

    public String h(Context context) {
        ClipData primaryClip = ((ClipboardManager) context.getSystemService("clipboard")).getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemAt(0) != null && primaryClip.getItemAt(0).getText() != null) {
            String charSequence = primaryClip.getItemAt(0).getText().toString();
            if (!TextUtils.isEmpty(charSequence) && charSequence.startsWith("BuzzCast-invitecode-")) {
                return charSequence.replace("BuzzCast-invitecode-", "");
            }
        }
        return null;
    }

    public String i() {
        return this.f20568b.getmLogo();
    }

    public String j() {
        return this.f20568b.getMobile();
    }

    public String k() {
        return this.f20568b.getNickName();
    }

    public String l() {
        return this.f20568b.getPassword();
    }

    public ThirdPartyLoginPlatform m() {
        return this.f20569c;
    }

    public String n() {
        return this.f20568b.getUnionId();
    }

    public String o() {
        return this.f20568b.getUserId();
    }

    public void p() {
        this.f20567a = null;
        this.f20568b = new RegisterBean();
        f20566d = null;
    }

    public void q(String str) {
        this.f20568b.setAvatar(str);
    }

    public void r(String str) {
        this.f20568b.setBirthday(str);
    }

    public void s(String str) {
        this.f20568b.setmCountry_num(str);
        this.f20568b.setCountry(str);
    }

    public void t(String str) {
        this.f20568b.setEmail(str);
    }

    public void u(int i9) {
        this.f20568b.setGender(i9);
    }

    public void v(String str) {
        this.f20568b.setmLogo(str);
    }

    public void w(String str) {
        this.f20568b.setMobile(str);
    }

    public void x(String str) {
        this.f20568b.setNickName(str);
    }

    public void y(String str) {
        this.f20568b.setPassword(str);
    }

    public void z(ThirdPartyLoginPlatform thirdPartyLoginPlatform) {
        this.f20569c = thirdPartyLoginPlatform;
    }
}
