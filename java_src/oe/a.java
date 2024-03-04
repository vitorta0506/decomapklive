package oe;

import androidx.annotation.Nullable;
import java.io.File;
/* loaded from: classes4.dex */
public abstract class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f55619a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f55620b;

    @Nullable
    public String a() {
        return this.f55619a;
    }

    @Nullable
    public String b() {
        return this.f55620b;
    }

    public abstract String c();

    public abstract String d();

    @Nullable
    public abstract File e();

    @Nullable
    public ne.d f() {
        return null;
    }

    public void g(@Nullable String str) {
        this.f55619a = str;
    }

    public void h(@Nullable String str) {
        this.f55620b = str;
    }
}
