package com.google.android.gms.internal.recaptcha;

import android.accounts.Account;
import com.facebook.internal.security.CertificateUtil;
/* loaded from: classes2.dex */
public final class q2 {

    /* renamed from: a  reason: collision with root package name */
    public static final Account f8996a = new Account("shared", "mobstore");

    public static Account a(String str) {
        if ("shared".equals(str)) {
            return f8996a;
        }
        int indexOf = str.indexOf(58);
        m3.a(indexOf >= 0, "Malformed account", new Object[0]);
        return new Account(str.substring(indexOf + 1), str.substring(0, indexOf));
    }

    public static String b(Account account) {
        m3.a(account.type.indexOf(58) == -1, "Account type contains ':'.", new Object[0]);
        m3.a(account.type.indexOf(47) == -1, "Account type contains '/'.", new Object[0]);
        m3.a(account.name.indexOf(47) == -1, "Account name contains '/'.", new Object[0]);
        if (f8996a.equals(account)) {
            return "shared";
        }
        String str = account.type;
        String str2 = account.name;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb2.append(str);
        sb2.append(CertificateUtil.DELIMITER);
        sb2.append(str2);
        return sb2.toString();
    }
}
