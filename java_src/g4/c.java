package g4;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static c f39954b = new c();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private b f39955a = null;

    @NonNull
    public static b a(@NonNull Context context) {
        return f39954b.b(context);
    }

    @NonNull
    public final synchronized b b(@NonNull Context context) {
        if (this.f39955a == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f39955a = new b(context);
        }
        return this.f39955a;
    }
}
