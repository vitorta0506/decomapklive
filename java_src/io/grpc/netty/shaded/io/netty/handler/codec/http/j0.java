package io.grpc.netty.shaded.io.netty.handler.codec.http;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import io.jsonwebtoken.JwtParser;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpVersion;
import org.light.utils.IOUtils;
/* loaded from: classes5.dex */
public class j0 implements Comparable<j0> {

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f43959g = Pattern.compile("(\\S+)/(\\d+)\\.(\\d+)");

    /* renamed from: h  reason: collision with root package name */
    public static final j0 f43960h = new j0(HttpVersion.HTTP, 1, 0, false, true);

    /* renamed from: i  reason: collision with root package name */
    public static final j0 f43961i = new j0(HttpVersion.HTTP, 1, 1, true, true);

    /* renamed from: a  reason: collision with root package name */
    private final String f43962a;

    /* renamed from: b  reason: collision with root package name */
    private final int f43963b;

    /* renamed from: c  reason: collision with root package name */
    private final int f43964c;

    /* renamed from: d  reason: collision with root package name */
    private final String f43965d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f43966e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f43967f;

    public j0(String str, boolean z10) {
        String upperCase = io.grpc.netty.shaded.io.netty.util.internal.s.g(str, ViewHierarchyConstants.TEXT_KEY).toUpperCase();
        Matcher matcher = f43959g.matcher(upperCase);
        if (matcher.matches()) {
            String group = matcher.group(1);
            this.f43962a = group;
            int parseInt = Integer.parseInt(matcher.group(2));
            this.f43963b = parseInt;
            int parseInt2 = Integer.parseInt(matcher.group(3));
            this.f43964c = parseInt2;
            this.f43965d = group + IOUtils.DIR_SEPARATOR_UNIX + parseInt + JwtParser.SEPARATOR_CHAR + parseInt2;
            this.f43966e = z10;
            this.f43967f = null;
            return;
        }
        throw new IllegalArgumentException("invalid version format: " + upperCase);
    }

    public static j0 h(String str) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(str, ViewHierarchyConstants.TEXT_KEY);
        String trim = str.trim();
        if (!trim.isEmpty()) {
            j0 i9 = i(trim);
            return i9 == null ? new j0(trim, true) : i9;
        }
        throw new IllegalArgumentException("text is empty (possibly HTTP/0.9)");
    }

    private static j0 i(String str) {
        if ("HTTP/1.1".equals(str)) {
            return f43961i;
        }
        if ("HTTP/1.0".equals(str)) {
            return f43960h;
        }
        return null;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(j0 j0Var) {
        int compareTo = f().compareTo(j0Var.f());
        if (compareTo != 0) {
            return compareTo;
        }
        int d10 = d() - j0Var.d();
        return d10 != 0 ? d10 : e() - j0Var.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(kg.j jVar) {
        byte[] bArr = this.f43967f;
        if (bArr == null) {
            jVar.D2(this.f43965d, io.grpc.netty.shaded.io.netty.util.h.f45018f);
        } else {
            jVar.A2(bArr);
        }
    }

    public boolean c() {
        return this.f43966e;
    }

    public int d() {
        return this.f43963b;
    }

    public int e() {
        return this.f43964c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof j0) {
            j0 j0Var = (j0) obj;
            return e() == j0Var.e() && d() == j0Var.d() && f().equals(j0Var.f());
        }
        return false;
    }

    public String f() {
        return this.f43962a;
    }

    public String g() {
        return this.f43965d;
    }

    public int hashCode() {
        return (((f().hashCode() * 31) + d()) * 31) + e();
    }

    public String toString() {
        return g();
    }

    private j0(String str, int i9, int i10, boolean z10, boolean z11) {
        String upperCase = io.grpc.netty.shaded.io.netty.util.internal.s.g(str, "protocolName").toUpperCase();
        for (int i11 = 0; i11 < upperCase.length(); i11++) {
            if (Character.isISOControl(upperCase.charAt(i11)) || Character.isWhitespace(upperCase.charAt(i11))) {
                throw new IllegalArgumentException("invalid character in protocolName");
            }
        }
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "majorVersion");
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i10, "minorVersion");
        this.f43962a = upperCase;
        this.f43963b = i9;
        this.f43964c = i10;
        String str2 = upperCase + IOUtils.DIR_SEPARATOR_UNIX + i9 + JwtParser.SEPARATOR_CHAR + i10;
        this.f43965d = str2;
        this.f43966e = z10;
        if (z11) {
            this.f43967f = str2.getBytes(io.grpc.netty.shaded.io.netty.util.h.f45018f);
        } else {
            this.f43967f = null;
        }
    }
}
