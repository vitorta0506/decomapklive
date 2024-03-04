package h;

import androidx.annotation.RestrictTo;
import j.j;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final List<j> f40221a;

    /* renamed from: b  reason: collision with root package name */
    private final char f40222b;

    /* renamed from: c  reason: collision with root package name */
    private final double f40223c;

    /* renamed from: d  reason: collision with root package name */
    private final double f40224d;

    /* renamed from: e  reason: collision with root package name */
    private final String f40225e;

    /* renamed from: f  reason: collision with root package name */
    private final String f40226f;

    public c(List<j> list, char c10, double d10, double d11, String str, String str2) {
        this.f40221a = list;
        this.f40222b = c10;
        this.f40223c = d10;
        this.f40224d = d11;
        this.f40225e = str;
        this.f40226f = str2;
    }

    public static int c(char c10, String str, String str2) {
        return ((((0 + c10) * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public List<j> a() {
        return this.f40221a;
    }

    public double b() {
        return this.f40224d;
    }

    public int hashCode() {
        return c(this.f40222b, this.f40226f, this.f40225e);
    }
}
