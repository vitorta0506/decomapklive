package com.google.api.client.http;

import com.google.api.client.util.z;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.light.utils.IOUtils;
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f11017e = Pattern.compile("[\\w!#$&.+\\-\\^_]+|[*]");

    /* renamed from: f  reason: collision with root package name */
    private static final Pattern f11018f = Pattern.compile("[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+");

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f11019g = Pattern.compile("\\s*([^\\s/=;\"]+)/([^\\s/=;\"]+)\\s*(;.*)?", 32);

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f11020h;

    /* renamed from: a  reason: collision with root package name */
    private String f11021a = "application";

    /* renamed from: b  reason: collision with root package name */
    private String f11022b = "octet-stream";

    /* renamed from: c  reason: collision with root package name */
    private final SortedMap<String, String> f11023c = new TreeMap();

    /* renamed from: d  reason: collision with root package name */
    private String f11024d;

    static {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\"([^\"]*)\"");
        sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        sb2.append("[^\\s;\"]*");
        f11020h = Pattern.compile("\\s*;\\s*([^\\s/=;\"]+)=(" + sb2.toString() + ")");
    }

    public l(String str) {
        c(str);
    }

    private l c(String str) {
        Matcher matcher = f11019g.matcher(str);
        z.b(matcher.matches(), "Type must be in the 'maintype/subtype; parameter=value' format");
        n(matcher.group(1));
        m(matcher.group(2));
        String group = matcher.group(3);
        if (group != null) {
            Matcher matcher2 = f11020h.matcher(group);
            while (matcher2.find()) {
                String group2 = matcher2.group(1);
                String group3 = matcher2.group(3);
                if (group3 == null) {
                    group3 = matcher2.group(2);
                }
                l(group2, group3);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h(String str) {
        return f11018f.matcher(str).matches();
    }

    private static String i(String str) {
        String replace = str.replace("\\", "\\\\").replace("\"", "\\\"");
        return "\"" + replace + "\"";
    }

    public String a() {
        String str = this.f11024d;
        if (str != null) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f11021a);
        sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
        sb2.append(this.f11022b);
        SortedMap<String, String> sortedMap = this.f11023c;
        if (sortedMap != null) {
            for (Map.Entry<String, String> entry : sortedMap.entrySet()) {
                String value = entry.getValue();
                sb2.append("; ");
                sb2.append(entry.getKey());
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                if (!h(value)) {
                    value = i(value);
                }
                sb2.append(value);
            }
        }
        String sb3 = sb2.toString();
        this.f11024d = sb3;
        return sb3;
    }

    public boolean b(l lVar) {
        return lVar != null && g().equalsIgnoreCase(lVar.g()) && f().equalsIgnoreCase(lVar.f());
    }

    public Charset d() {
        String e10 = e("charset");
        if (e10 == null) {
            return null;
        }
        return Charset.forName(e10);
    }

    public String e(String str) {
        return this.f11023c.get(str.toLowerCase(Locale.US));
    }

    public boolean equals(Object obj) {
        if (obj instanceof l) {
            l lVar = (l) obj;
            return b(lVar) && this.f11023c.equals(lVar.f11023c);
        }
        return false;
    }

    public String f() {
        return this.f11022b;
    }

    public String g() {
        return this.f11021a;
    }

    public int hashCode() {
        return a().hashCode();
    }

    public l j(String str) {
        this.f11024d = null;
        this.f11023c.remove(str.toLowerCase(Locale.US));
        return this;
    }

    public l k(Charset charset) {
        l("charset", charset == null ? null : charset.name());
        return this;
    }

    public l l(String str, String str2) {
        if (str2 == null) {
            j(str);
            return this;
        }
        z.b(f11018f.matcher(str).matches(), "Name contains reserved characters");
        this.f11024d = null;
        this.f11023c.put(str.toLowerCase(Locale.US), str2);
        return this;
    }

    public l m(String str) {
        z.b(f11017e.matcher(str).matches(), "Subtype contains reserved characters");
        this.f11022b = str;
        this.f11024d = null;
        return this;
    }

    public l n(String str) {
        z.b(f11017e.matcher(str).matches(), "Type contains reserved characters");
        this.f11021a = str;
        this.f11024d = null;
        return this;
    }

    public String toString() {
        return a();
    }
}
