package com.vk.api.sdk.extensions;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.widget.Toast;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u0002H\u0000¨\u0006\u0007"}, d2 = {"showToast", "", "Landroid/content/Context;", "resId", "", "toActivitySafe", "Landroid/app/Activity;", "core_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ContextExtKt {
    public static final void showToast(@NotNull Context context, int i9) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Toast.makeText(context, i9, 0).show();
    }

    @Nullable
    public static final Activity toActivitySafe(@NotNull Context context) {
        boolean z10;
        Intrinsics.checkNotNullParameter(context, "<this>");
        while (true) {
            z10 = context instanceof Activity;
            if (z10 || !(context instanceof ContextWrapper)) {
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
            Intrinsics.checkNotNullExpressionValue(context, "context.baseContext");
        }
        if (z10) {
            return (Activity) context;
        }
        return null;
    }
}
