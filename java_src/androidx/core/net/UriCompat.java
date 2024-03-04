package androidx.core.net;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
/* loaded from: classes.dex */
public final class UriCompat {
    private UriCompat() {
    }

    @NonNull
    public static String toSafeString(@NonNull Uri uri) {
        String scheme = uri.getScheme();
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        if (scheme != null) {
            if (!scheme.equalsIgnoreCase("tel") && !scheme.equalsIgnoreCase("sip") && !scheme.equalsIgnoreCase("sms") && !scheme.equalsIgnoreCase("smsto") && !scheme.equalsIgnoreCase("mailto") && !scheme.equalsIgnoreCase("nfc")) {
                if (scheme.equalsIgnoreCase("http") || scheme.equalsIgnoreCase(ProxyConfig.MATCH_HTTPS) || scheme.equalsIgnoreCase("ftp") || scheme.equalsIgnoreCase("rtsp")) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("//");
                    sb2.append(uri.getHost() != null ? uri.getHost() : "");
                    sb2.append(uri.getPort() != -1 ? CertificateUtil.DELIMITER + uri.getPort() : "");
                    sb2.append("/...");
                    schemeSpecificPart = sb2.toString();
                }
            } else {
                StringBuilder sb3 = new StringBuilder(64);
                sb3.append(scheme);
                sb3.append(':');
                if (schemeSpecificPart != null) {
                    for (int i9 = 0; i9 < schemeSpecificPart.length(); i9++) {
                        char charAt = schemeSpecificPart.charAt(i9);
                        if (charAt != '-' && charAt != '@' && charAt != '.') {
                            sb3.append('x');
                        } else {
                            sb3.append(charAt);
                        }
                    }
                }
                return sb3.toString();
            }
        }
        StringBuilder sb4 = new StringBuilder(64);
        if (scheme != null) {
            sb4.append(scheme);
            sb4.append(':');
        }
        if (schemeSpecificPart != null) {
            sb4.append(schemeSpecificPart);
        }
        return sb4.toString();
    }
}
