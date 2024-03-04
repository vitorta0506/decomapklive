package com.guochao.component.liveroomcommon.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u001dB\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u001f\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\b\b\u0000\u0010\u0011*\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J0\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u0013H\u0014R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001e"}, d2 = {"Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "cache", "Landroid/util/SparseArray;", "Landroid/view/View;", "onLayoutListener", "Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView$OnLayoutListener;", "getOnLayoutListener", "()Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView$OnLayoutListener;", "setOnLayoutListener", "(Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView$OnLayoutListener;)V", "findView", ExifInterface.GPS_DIRECTION_TRUE, "id", "", "(I)Landroid/view/View;", "onLayout", "", "changed", "", ViewHierarchyConstants.DIMENSION_LEFT_KEY, "top", "right", "bottom", "OnLayoutListener", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LiveRoomRootView extends FrameLayout {
    @NotNull
    private final SparseArray<View> cache;
    @Nullable
    private OnLayoutListener onLayoutListener;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH&¨\u0006\rÀ\u0006\u0003"}, d2 = {"Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView$OnLayoutListener;", "", "onLayout", "", "root", "Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;", "changed", "", ViewHierarchyConstants.DIMENSION_LEFT_KEY, "", "top", "right", "bottom", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnLayoutListener {
        void onLayout(@NotNull LiveRoomRootView liveRoomRootView, boolean z10, int i9, int i10, int i11, int i12);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LiveRoomRootView(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ LiveRoomRootView(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    @Nullable
    public final <T extends View> T findView(int i9) {
        SparseArray<View> sparseArray = this.cache;
        View findViewById = findViewById(i9);
        if (findViewById != null) {
            this.cache.put(i9, findViewById);
            Unit unit = Unit.INSTANCE;
        } else {
            findViewById = null;
        }
        View view = sparseArray.get(i9, findViewById);
        if (view instanceof View) {
            return (T) view;
        }
        return null;
    }

    @Nullable
    public final OnLayoutListener getOnLayoutListener() {
        return this.onLayoutListener;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        OnLayoutListener onLayoutListener = this.onLayoutListener;
        if (onLayoutListener != null) {
            onLayoutListener.onLayout(this, z10, i9, i10, i11, i12);
        }
    }

    public final void setOnLayoutListener(@Nullable OnLayoutListener onLayoutListener) {
        this.onLayoutListener = onLayoutListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LiveRoomRootView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.cache = new SparseArray<>();
    }
}
