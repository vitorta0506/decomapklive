package org.threeten.bp.format;

import io.jsonwebtoken.JwtParser;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes7.dex */
public final class g {

    /* renamed from: e  reason: collision with root package name */
    public static final g f56620e = new g('0', '+', '-', JwtParser.SEPARATOR_CHAR);

    /* renamed from: f  reason: collision with root package name */
    private static final ConcurrentMap<Locale, g> f56621f = new ConcurrentHashMap(16, 0.75f, 2);

    /* renamed from: a  reason: collision with root package name */
    private final char f56622a;

    /* renamed from: b  reason: collision with root package name */
    private final char f56623b;

    /* renamed from: c  reason: collision with root package name */
    private final char f56624c;

    /* renamed from: d  reason: collision with root package name */
    private final char f56625d;

    private g(char c10, char c11, char c12, char c13) {
        this.f56622a = c10;
        this.f56623b = c11;
        this.f56624c = c12;
        this.f56625d = c13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str) {
        char c10 = this.f56622a;
        if (c10 == '0') {
            return str;
        }
        int i9 = c10 - '0';
        char[] charArray = str.toCharArray();
        for (int i10 = 0; i10 < charArray.length; i10++) {
            charArray[i10] = (char) (charArray[i10] + i9);
        }
        return new String(charArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(char c10) {
        int i9 = c10 - this.f56622a;
        if (i9 < 0 || i9 > 9) {
            return -1;
        }
        return i9;
    }

    public char c() {
        return this.f56625d;
    }

    public char d() {
        return this.f56624c;
    }

    public char e() {
        return this.f56623b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            return this.f56622a == gVar.f56622a && this.f56623b == gVar.f56623b && this.f56624c == gVar.f56624c && this.f56625d == gVar.f56625d;
        }
        return false;
    }

    public char f() {
        return this.f56622a;
    }

    public int hashCode() {
        return this.f56622a + this.f56623b + this.f56624c + this.f56625d;
    }

    public String toString() {
        return "DecimalStyle[" + this.f56622a + this.f56623b + this.f56624c + this.f56625d + "]";
    }
}
