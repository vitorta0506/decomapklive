package cn.jiguang.net;

import android.text.TextUtils;
import cn.jiguang.as.d;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
/* loaded from: classes.dex */
public class DefaultHostVerifier implements HostnameVerifier {

    /* renamed from: a  reason: collision with root package name */
    public String f2656a;

    public DefaultHostVerifier(String str) {
        this.f2656a = str;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        d.c("DefaultHostVerifier", "host:" + str + ",checkHost:" + this.f2656a);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return TextUtils.equals(this.f2656a, str);
    }
}
