package cn.jiguang.ax;

import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import java.io.Serializable;
import java.net.InetAddress;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
/* loaded from: classes.dex */
public class g implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public String f2161a;

    /* renamed from: b  reason: collision with root package name */
    public int f2162b;

    /* renamed from: c  reason: collision with root package name */
    public transient InetAddress f2163c;

    public g(String str, int i9) {
        this.f2161a = str;
        this.f2162b = i9;
    }

    public g(InetAddress inetAddress, int i9) {
        this.f2161a = inetAddress.getHostAddress();
        this.f2162b = i9;
        this.f2163c = inetAddress;
    }

    public static g a(String str) {
        int lastIndexOf;
        String substring;
        if (!TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf(CertificateUtil.DELIMITER)) >= 0) {
            try {
                int intValue = Integer.decode(str.substring(lastIndexOf + 1)).intValue();
                if (lastIndexOf == 0) {
                    substring = "";
                } else {
                    int i9 = str.startsWith("[") ? 1 : 0;
                    if (str.charAt(lastIndexOf - 1) == ']') {
                        lastIndexOf--;
                    }
                    substring = str.substring(i9, lastIndexOf);
                }
                return new g(substring, intValue);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static String a(LinkedHashSet<g> linkedHashSet) {
        if (linkedHashSet == null || linkedHashSet.isEmpty()) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<g> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().toString());
            sb2.append(",");
        }
        sb2.deleteCharAt(sb2.length() - 1);
        return sb2.toString();
    }

    public static LinkedHashSet<g> a(LinkedHashMap<String, Integer> linkedHashMap) {
        LinkedHashSet<g> linkedHashSet = new LinkedHashSet<>();
        for (Map.Entry<String, Integer> entry : linkedHashMap.entrySet()) {
            g gVar = new g(entry.getKey(), entry.getValue().intValue());
            if (gVar.a()) {
                linkedHashSet.add(gVar);
            }
        }
        return linkedHashSet;
    }

    public static boolean a(String str, int i9) {
        return !TextUtils.isEmpty(str) && i9 > 0 && i9 <= 65535;
    }

    public static LinkedHashSet<g> b(String str) {
        LinkedHashSet<g> linkedHashSet = new LinkedHashSet<>();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split(",")) {
                g a10 = a(str2);
                if (a10 != null && a10.a()) {
                    linkedHashSet.add(a10);
                }
            }
        }
        return linkedHashSet;
    }

    public boolean a() {
        int i9;
        return !TextUtils.isEmpty(this.f2161a) && (i9 = this.f2162b) > 0 && i9 <= 65535;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f2162b == gVar.f2162b) {
            String str = this.f2161a;
            String str2 = gVar.f2161a;
            if (str != null) {
                if (str.equals(str2)) {
                    return true;
                }
            } else if (str2 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f2161a;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f2162b;
    }

    public String toString() {
        StringBuilder sb2;
        String str = this.f2161a;
        String str2 = CertificateUtil.DELIMITER;
        if (str.contains(CertificateUtil.DELIMITER)) {
            sb2 = new StringBuilder();
            sb2.append("[");
            sb2.append(this.f2161a);
            str2 = "]:";
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.f2161a);
        }
        sb2.append(str2);
        sb2.append(this.f2162b);
        return sb2.toString();
    }
}
