package n1;

import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.datatransport.Priority;
import n1.d;
/* loaded from: classes.dex */
public abstract class o {

    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract o a();

        public abstract a b(String str);

        public abstract a c(@Nullable byte[] bArr);

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public abstract a d(Priority priority);
    }

    public static a a() {
        return new d.b().d(Priority.DEFAULT);
    }

    public abstract String b();

    @Nullable
    public abstract byte[] c();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public abstract Priority d();

    public boolean e() {
        return c() != null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public o f(Priority priority) {
        return a().b(b()).d(priority).c(c()).a();
    }

    public final String toString() {
        Object[] objArr = new Object[3];
        objArr[0] = b();
        objArr[1] = d();
        objArr[2] = c() == null ? "" : Base64.encodeToString(c(), 2);
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }
}
