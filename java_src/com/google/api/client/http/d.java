package com.google.api.client.http;

import com.google.api.client.util.GenericData;
import com.google.api.client.util.z;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.text.Typography;
import org.light.utils.IOUtils;
/* loaded from: classes2.dex */
public class d extends GenericData {

    /* renamed from: j  reason: collision with root package name */
    private static final j5.b f10987j = new j5.c("=&-_.!~*'()@:$,;/?:");

    /* renamed from: c  reason: collision with root package name */
    private String f10988c;

    /* renamed from: d  reason: collision with root package name */
    private String f10989d;

    /* renamed from: e  reason: collision with root package name */
    private String f10990e;

    /* renamed from: f  reason: collision with root package name */
    private int f10991f;

    /* renamed from: g  reason: collision with root package name */
    private List<String> f10992g;

    /* renamed from: h  reason: collision with root package name */
    private String f10993h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f10994i;

    public d() {
        this.f10991f = -1;
    }

    static void f(Set<Map.Entry<String, Object>> set, StringBuilder sb2, boolean z10) {
        String e10;
        boolean z11 = true;
        for (Map.Entry<String, Object> entry : set) {
            Object value = entry.getValue();
            if (value != null) {
                if (z10) {
                    e10 = entry.getKey();
                } else {
                    e10 = j5.a.e(entry.getKey());
                }
                if (value instanceof Collection) {
                    for (Object obj : (Collection) value) {
                        z11 = g(z11, sb2, e10, obj, z10);
                    }
                } else {
                    z11 = g(z11, sb2, e10, value, z10);
                }
            }
        }
    }

    private static boolean g(boolean z10, StringBuilder sb2, String str, Object obj, boolean z11) {
        if (z10) {
            z10 = false;
            sb2.append('?');
        } else {
            sb2.append(Typography.amp);
        }
        sb2.append(str);
        String obj2 = z11 ? obj.toString() : j5.a.e(obj.toString());
        if (obj2.length() != 0) {
            sb2.append('=');
            sb2.append(obj2);
        }
        return z10;
    }

    private void h(StringBuilder sb2) {
        int size = this.f10992g.size();
        for (int i9 = 0; i9 < size; i9++) {
            String str = this.f10992g.get(i9);
            if (i9 != 0) {
                sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
            }
            if (str.length() != 0) {
                if (!this.f10994i) {
                    str = j5.a.d(str);
                }
                sb2.append(str);
            }
        }
    }

    private static URL o(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static List<String> q(String str, boolean z10) {
        String substring;
        if (str == null || str.length() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        boolean z11 = true;
        int i9 = 0;
        while (z11) {
            int indexOf = str.indexOf(47, i9);
            boolean z12 = indexOf != -1;
            if (z12) {
                substring = str.substring(i9, indexOf);
            } else {
                substring = str.substring(i9);
            }
            if (!z10) {
                substring = j5.a.b(substring);
            }
            arrayList.add(substring);
            i9 = indexOf + 1;
            z11 = z12;
        }
        return arrayList;
    }

    private static URI s(String str) {
        try {
            return new URI(str);
        } catch (URISyntaxException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj) && (obj instanceof d)) {
            return i().equals(((d) obj).i());
        }
        return false;
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return i().hashCode();
    }

    public final String i() {
        return j() + k();
    }

    public final String j() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((String) z.d(this.f10988c));
        sb2.append("://");
        String str = this.f10990e;
        if (str != null) {
            if (!this.f10994i) {
                str = j5.a.f(str);
            }
            sb2.append(str);
            sb2.append('@');
        }
        sb2.append((String) z.d(this.f10989d));
        int i9 = this.f10991f;
        if (i9 != -1) {
            sb2.append(':');
            sb2.append(i9);
        }
        return sb2.toString();
    }

    public final String k() {
        StringBuilder sb2 = new StringBuilder();
        if (this.f10992g != null) {
            h(sb2);
        }
        f(entrySet(), sb2, this.f10994i);
        String str = this.f10993h;
        if (str != null) {
            sb2.append('#');
            if (!this.f10994i) {
                str = f10987j.a(str);
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    /* renamed from: l */
    public d clone() {
        d dVar = (d) super.clone();
        if (this.f10992g != null) {
            dVar.f10992g = new ArrayList(this.f10992g);
        }
        return dVar;
    }

    public String m() {
        return this.f10989d;
    }

    public String n() {
        if (this.f10992g == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        h(sb2);
        return sb2.toString();
    }

    @Override // com.google.api.client.util.GenericData
    /* renamed from: p */
    public d e(String str, Object obj) {
        return (d) super.e(str, obj);
    }

    public final URI r() {
        return s(i());
    }

    public final URL t() {
        return o(i());
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public String toString() {
        return i();
    }

    public final URL u(String str) {
        try {
            return new URL(t(), str);
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public d(String str) {
        this(str, false);
    }

    public d(String str, boolean z10) {
        this(o(str), z10);
    }

    public d(URI uri) {
        this(uri, false);
    }

    public d(URI uri, boolean z10) {
        this(uri.getScheme(), uri.getHost(), uri.getPort(), uri.getRawPath(), uri.getRawFragment(), uri.getRawQuery(), uri.getRawUserInfo(), z10);
    }

    public d(URL url, boolean z10) {
        this(url.getProtocol(), url.getHost(), url.getPort(), url.getPath(), url.getRef(), url.getQuery(), url.getUserInfo(), z10);
    }

    private d(String str, String str2, int i9, String str3, String str4, String str5, String str6, boolean z10) {
        this.f10991f = -1;
        this.f10988c = str.toLowerCase(Locale.US);
        this.f10989d = str2;
        this.f10991f = i9;
        this.f10992g = q(str3, z10);
        this.f10994i = z10;
        if (z10) {
            this.f10993h = str4;
            if (str5 != null) {
                y.d(str5, this, false);
            }
            this.f10990e = str6;
            return;
        }
        this.f10993h = str4 != null ? j5.a.a(str4) : null;
        if (str5 != null) {
            y.c(str5, this);
        }
        this.f10990e = str6 != null ? j5.a.a(str6) : null;
    }
}
