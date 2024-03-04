package h;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.webkit.ProxyConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class d {

    /* renamed from: c  reason: collision with root package name */
    public static final d f40227c = new d("COMPOSITION");

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f40228a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private e f40229b;

    public d(String... strArr) {
        this.f40228a = Arrays.asList(strArr);
    }

    private boolean b() {
        List<String> list = this.f40228a;
        return list.get(list.size() - 1).equals("**");
    }

    private boolean f(String str) {
        return "__container".equals(str);
    }

    @CheckResult
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public d a(String str) {
        d dVar = new d(this);
        dVar.f40228a.add(str);
        return dVar;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean c(String str, int i9) {
        if (i9 >= this.f40228a.size()) {
            return false;
        }
        boolean z10 = i9 == this.f40228a.size() - 1;
        String str2 = this.f40228a.get(i9);
        if (!str2.equals("**")) {
            return (z10 || (i9 == this.f40228a.size() + (-2) && b())) && (str2.equals(str) || str2.equals(ProxyConfig.MATCH_ALL_SCHEMES));
        }
        if (!z10 && this.f40228a.get(i9 + 1).equals(str)) {
            return i9 == this.f40228a.size() + (-2) || (i9 == this.f40228a.size() + (-3) && b());
        } else if (z10) {
            return true;
        } else {
            int i10 = i9 + 1;
            if (i10 < this.f40228a.size() - 1) {
                return false;
            }
            return this.f40228a.get(i10).equals(str);
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public e d() {
        return this.f40229b;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int e(String str, int i9) {
        if (f(str)) {
            return 0;
        }
        if (this.f40228a.get(i9).equals("**")) {
            return (i9 != this.f40228a.size() - 1 && this.f40228a.get(i9 + 1).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean g(String str, int i9) {
        if (f(str)) {
            return true;
        }
        if (i9 >= this.f40228a.size()) {
            return false;
        }
        return this.f40228a.get(i9).equals(str) || this.f40228a.get(i9).equals("**") || this.f40228a.get(i9).equals(ProxyConfig.MATCH_ALL_SCHEMES);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean h(String str, int i9) {
        return "__container".equals(str) || i9 < this.f40228a.size() - 1 || this.f40228a.get(i9).equals("**");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public d i(e eVar) {
        d dVar = new d(this);
        dVar.f40229b = eVar;
        return dVar;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("KeyPath{keys=");
        sb2.append(this.f40228a);
        sb2.append(",resolved=");
        sb2.append(this.f40229b != null);
        sb2.append('}');
        return sb2.toString();
    }

    private d(d dVar) {
        this.f40228a = new ArrayList(dVar.f40228a);
        this.f40229b = dVar.f40229b;
    }
}
