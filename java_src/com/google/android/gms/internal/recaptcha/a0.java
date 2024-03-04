package com.google.android.gms.internal.recaptcha;

import android.os.LocaleList;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.internal.recaptcha.dg;
import com.google.android.gms.recaptcha.HttpStatusException;
import com.google.android.gms.recaptcha.RecaptchaNetworkException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes2.dex */
public final class a0<ResponseT extends dg<ResponseT, ?>> {

    /* renamed from: a  reason: collision with root package name */
    private final String f8481a;

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f8482b;

    /* renamed from: c  reason: collision with root package name */
    private final ResponseT f8483c;

    public a0(String str, ExecutorService executorService, ResponseT responset) {
        this.f8481a = str;
        this.f8482b = executorService;
        this.f8483c = responset;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ HttpURLConnection c(a0 a0Var) throws IOException {
        if (!URLUtil.isHttpsUrl(a0Var.f8481a) && !URLUtil.isHttpUrl(a0Var.f8481a)) {
            throw new MalformedURLException("Recaptcha server url only allows using Http or Https.");
        }
        if (URLUtil.isHttpUrl(a0Var.f8481a)) {
            return (HttpURLConnection) new URL(a0Var.f8481a).openConnection();
        }
        return (HttpsURLConnection) new URL(a0Var.f8481a).openConnection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public final <RequestT extends dg> ResponseT b(RequestT requestt) throws RecaptchaNetworkException, HttpStatusException {
        String sb2;
        try {
            int K = requestt.K();
            byte[] bArr = new byte[K];
            hf n9 = hf.n(bArr);
            requestt.a(n9);
            n9.p();
            try {
                ja a10 = j3.a();
                HttpURLConnection b10 = a10.b(new z(this), 21504, -1);
                b10.setConnectTimeout(60000);
                b10.setReadTimeout(60000);
                b10.setRequestProperty("Content-type", "application/x-protobuffer");
                b10.setRequestProperty("Content-Length", Integer.toString(K));
                if (e4.m.g()) {
                    sb2 = LocaleList.getDefault().toLanguageTags();
                } else {
                    Locale locale = Locale.getDefault();
                    if (e4.m.f()) {
                        sb2 = locale.toLanguageTag();
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(locale.getLanguage());
                        if (TextUtils.isEmpty(sb3.toString())) {
                            sb2 = "und";
                        } else {
                            String country = locale.getCountry();
                            if (!TextUtils.isEmpty(country)) {
                                sb3.append("-");
                                sb3.append(country);
                            }
                            String variant = locale.getVariant();
                            if (!TextUtils.isEmpty(variant)) {
                                sb3.append("-");
                                sb3.append(variant);
                            }
                            sb2 = sb3.toString();
                        }
                    }
                }
                b10.setRequestProperty("Accept-Language", sb2);
                b10.setRequestMethod("POST");
                b10.setDoOutput(true);
                b10.connect();
                OutputStream outputStream = b10.getOutputStream();
                outputStream.write(bArr);
                outputStream.close();
                int responseCode = b10.getResponseCode();
                if (responseCode == 200) {
                    Object b11 = this.f8483c.M().b(b10.getInputStream());
                    a10.close();
                    return (ResponseT) b11;
                }
                throw new HttpStatusException("Failed to fetch response", responseCode);
            } catch (IOException e10) {
                j.a("RecaptchaNetworkMgr", e10);
                if (e10 instanceof MalformedURLException) {
                    throw new RecaptchaNetworkException(String.valueOf(e10.getMessage()), e10);
                }
                throw new RecaptchaNetworkException("Failed to connect to server", e10);
            }
        } catch (IOException e11) {
            String name = requestt.getClass().getName();
            StringBuilder sb4 = new StringBuilder(name.length() + 72);
            sb4.append("Serializing ");
            sb4.append(name);
            sb4.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb4.toString(), e11);
        }
    }

    public final <RequestT extends dg> nd<ResponseT> a(final RequestT requestt) {
        return ud.a(this.f8482b).c(new Callable() { // from class: com.google.android.gms.internal.recaptcha.y
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return a0.this.b(requestt);
            }
        });
    }
}
