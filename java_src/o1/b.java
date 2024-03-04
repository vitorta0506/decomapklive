package o1;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Objects;
/* loaded from: classes.dex */
final class b extends f {

    /* renamed from: a  reason: collision with root package name */
    private final Context f55472a;

    /* renamed from: b  reason: collision with root package name */
    private final y1.a f55473b;

    /* renamed from: c  reason: collision with root package name */
    private final y1.a f55474c;

    /* renamed from: d  reason: collision with root package name */
    private final String f55475d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, y1.a aVar, y1.a aVar2, String str) {
        Objects.requireNonNull(context, "Null applicationContext");
        this.f55472a = context;
        Objects.requireNonNull(aVar, "Null wallClock");
        this.f55473b = aVar;
        Objects.requireNonNull(aVar2, "Null monotonicClock");
        this.f55474c = aVar2;
        Objects.requireNonNull(str, "Null backendName");
        this.f55475d = str;
    }

    @Override // o1.f
    public Context b() {
        return this.f55472a;
    }

    @Override // o1.f
    @NonNull
    public String c() {
        return this.f55475d;
    }

    @Override // o1.f
    public y1.a d() {
        return this.f55474c;
    }

    @Override // o1.f
    public y1.a e() {
        return this.f55473b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            return this.f55472a.equals(fVar.b()) && this.f55473b.equals(fVar.e()) && this.f55474c.equals(fVar.d()) && this.f55475d.equals(fVar.c());
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.f55472a.hashCode() ^ 1000003) * 1000003) ^ this.f55473b.hashCode()) * 1000003) ^ this.f55474c.hashCode()) * 1000003) ^ this.f55475d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f55472a + ", wallClock=" + this.f55473b + ", monotonicClock=" + this.f55474c + ", backendName=" + this.f55475d + "}";
    }
}
