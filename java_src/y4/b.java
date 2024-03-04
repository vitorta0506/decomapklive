package y4;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicReference;
@Deprecated
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference f60111a = new AtomicReference(null);

    @NonNull
    @Deprecated
    public static a a(@NonNull Context context) {
        return new d(context, Runtime.getRuntime(), new c(context, context.getPackageManager()), f60111a);
    }
}
