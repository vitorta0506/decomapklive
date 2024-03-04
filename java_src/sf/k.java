package sf;

import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import java.util.Collection;
/* loaded from: classes5.dex */
public class k {

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final StringBuilder f57904a;

        /* renamed from: b  reason: collision with root package name */
        private final String f57905b;

        /* renamed from: c  reason: collision with root package name */
        private final String f57906c;

        public a() {
            this(CertificateUtil.DELIMITER, ",");
        }

        public a(String str, String str2) {
            this.f57904a = new StringBuilder();
            this.f57905b = str;
            this.f57906c = str2;
        }

        public a a(String str, Object obj) {
            if (!TextUtils.isEmpty(str)) {
                if (this.f57904a.length() > 0) {
                    this.f57904a.append(this.f57906c);
                }
                StringBuilder sb2 = this.f57904a;
                sb2.append(str);
                sb2.append(this.f57905b);
                sb2.append(obj);
            }
            return this;
        }

        public String toString() {
            return this.f57904a.toString();
        }
    }

    public static int a(String str, int i9) {
        if (TextUtils.isEmpty(str)) {
            return i9;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return i9;
        }
    }

    public static boolean b(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static int c(String str, int i9) {
        return !TextUtils.isEmpty(str) ? ((str.hashCode() / 10) * 10) + i9 : i9;
    }
}
