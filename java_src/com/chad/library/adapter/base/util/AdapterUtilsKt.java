package com.chad.library.adapter.base.util;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"getItemView", "Landroid/view/View;", "Landroid/view/ViewGroup;", "layoutResId", "", "com.github.CymChad.brvah"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AdapterUtilsKt {
    @NotNull
    public static final View getItemView(@NotNull ViewGroup viewGroup, @LayoutRes int i9) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i9, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(this.context).infla…layoutResId, this, false)");
        return inflate;
    }
}
