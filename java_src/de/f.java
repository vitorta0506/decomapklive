package de;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class f<T> {
    @SerializedName("retry_count")
    @Expose

    /* renamed from: a  reason: collision with root package name */
    private int f38066a;
    @SerializedName("event")
    @Expose

    /* renamed from: b  reason: collision with root package name */
    private T f38067b;

    public f(T t10) {
        this(t10, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f38066a++;
    }

    public final int b() {
        return this.f38066a;
    }

    public final T c() {
        return this.f38067b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            return Objects.equals(Integer.valueOf(this.f38066a), Integer.valueOf(fVar.f38066a)) && Objects.equals(this.f38067b, fVar.f38067b);
        }
        return false;
    }

    public f(T t10, int i9) {
        this.f38066a = i9;
        this.f38067b = t10;
    }
}
