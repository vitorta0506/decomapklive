package ie;

import android.net.Uri;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import okhttp3.CertificatePinner;
/* loaded from: classes4.dex */
final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f41058a = Arrays.asList("sha256/1XUWswVGCeFUaI5FKrhY7R+dIrDXIzTtDy/WDGcjAoY=", "sha256/8ca6Zwz8iOTfUpc8rkIPCgid1HQUT+WAbEIAZOFZEik=", "sha256/uUwZgwDOxcBXrQcntwu+kYFpkiVkOaezL0WYEZ3anJc=", "sha256/I/Lt/z7ekCWanjD0Cvj5EqXls2lOaThEA0H2Bg4BT/o=", "sha256/Wd8xe/qfTwq3ylFNd3IpaqLHZbh2ZNCLluVzmeNkcpw=", "sha256/O4rGMvpV1NfGyWRRTZ6v92jubDQNBdwlK+E35oZJ9qo=", "sha256/i7WTqTvh0OioIruIfFR4kMPnBqrS2rdiVPl/s2uC/CY=", "sha256/WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18=", "sha256/r/mIkG3eEpVdm+u/ko/cwxzOMo1bk4TyHIlByibiA5E=", "sha256/Fe7TOVlLME+M+Ee0dzcdjW/sYfTbKwGvWJ58U7Ncrkw=");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized CertificatePinner a() {
        synchronized (l.class) {
            CertificatePinner.Builder builder = new CertificatePinner.Builder();
            try {
                String host = Uri.parse("https://api.snapkit.com").getHost();
                if (TextUtils.isEmpty(host)) {
                    return builder.build();
                }
                Iterator<String> it = f41058a.iterator();
                while (it.hasNext()) {
                    builder.add(host, it.next());
                }
                return builder.build();
            } catch (NullPointerException unused) {
                return builder.build();
            }
        }
    }
}
