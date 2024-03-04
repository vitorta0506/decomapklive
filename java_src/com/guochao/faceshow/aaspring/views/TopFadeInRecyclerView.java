package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0014J\b\u0010\t\u001a\u00020\bH\u0014¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/views/TopFadeInRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "getBottomFadingEdgeStrength", "", "getTopFadingEdgeStrength", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TopFadeInRecyclerView extends RecyclerView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TopFadeInRecyclerView(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ TopFadeInRecyclerView(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        return 0.0f;
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        return super.getTopFadingEdgeStrength() * 0.8f;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TopFadeInRecyclerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
