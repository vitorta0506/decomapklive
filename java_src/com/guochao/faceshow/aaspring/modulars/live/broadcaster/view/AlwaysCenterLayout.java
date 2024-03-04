package com.guochao.faceshow.aaspring.modulars.live.broadcaster.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewGroupKt;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J6\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\bH\u0002J6\u0010\u0017\u001a\u00020\u000f2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\bH\u0002J\b\u0010\u0019\u001a\u00020\u000fH\u0014J0\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020\bH\u0014R$\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006!"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "value", "", "currentIndex", "getCurrentIndex", "()I", "setCurrentIndex", "(I)V", "layoutNext", "", "next", "", "Landroid/view/View;", "w", "h", NotifyType.LIGHTS, "t", "layoutPrev", "prev", "onFinishInflate", "onLayout", "changed", "", ViewHierarchyConstants.DIMENSION_LEFT_KEY, "top", "right", "bottom", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AlwaysCenterLayout extends FrameLayout {
    private int currentIndex;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AlwaysCenterLayout(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ AlwaysCenterLayout(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    private final void layoutNext(List<? extends View> list, int i9, int i10, int i11, int i12) {
        int i13 = i11 + i9;
        for (View view : list) {
            int measuredWidth = view.getMeasuredWidth() + i13;
            view.layout(i13, i12, measuredWidth, view.getMeasuredHeight() + i12);
            i13 = measuredWidth;
        }
    }

    private final void layoutPrev(List<? extends View> list, int i9, int i10, int i11, int i12) {
        for (View view : list) {
            int measuredWidth = i11 - view.getMeasuredWidth();
            view.layout(measuredWidth, i12, i11, view.getMeasuredHeight() + i12);
            i11 = measuredWidth;
        }
    }

    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        FeatureKt.requireFeature(Feature.VOICE_ROOM_SWITCH, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.view.AlwaysCenterLayout$onFinishInflate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
                final AlwaysCenterLayout alwaysCenterLayout = AlwaysCenterLayout.this;
                FeatureKt.onAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.view.AlwaysCenterLayout$onFinishInflate$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                        invoke2(feature);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Feature onAvailable) {
                        Intrinsics.checkNotNullParameter(onAvailable, "$this$onAvailable");
                        AlwaysCenterLayout.this.getChildAt(2).setVisibility(0);
                    }
                });
                final AlwaysCenterLayout alwaysCenterLayout2 = AlwaysCenterLayout.this;
                FeatureKt.onUnAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.view.AlwaysCenterLayout$onFinishInflate$1.2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                        invoke2(feature);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Feature onUnAvailable) {
                        Intrinsics.checkNotNullParameter(onUnAvailable, "$this$onUnAvailable");
                        AlwaysCenterLayout.this.getChildAt(2).setVisibility(8);
                    }
                });
            }
        });
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        List list;
        List<? extends View> reversed;
        if (this.currentIndex >= 0) {
            int childCount = getChildCount();
            int i13 = this.currentIndex;
            if (childCount > i13) {
                View childAt = getChildAt(i13);
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int measuredWidth2 = (getMeasuredWidth() - measuredWidth) / 2;
                int measuredHeight2 = (getMeasuredHeight() - measuredHeight) / 2;
                childAt.layout(measuredWidth2, measuredHeight2, measuredWidth2 + measuredWidth, measuredHeight2 + measuredHeight);
                list = SequencesKt___SequencesKt.toList(ViewGroupKt.getChildren(this));
                reversed = CollectionsKt___CollectionsKt.reversed(list.subList(0, this.currentIndex));
                layoutPrev(reversed, measuredWidth, measuredHeight, measuredWidth2, measuredHeight2);
                layoutNext(list.subList(this.currentIndex + 1, list.size()), measuredWidth, measuredHeight, measuredWidth2, measuredHeight2);
                return;
            }
        }
        super.onLayout(z10, i9, i10, i11, i12);
    }

    public final void setCurrentIndex(int i9) {
        if (this.currentIndex != i9) {
            this.currentIndex = i9;
            requestLayout();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AlwaysCenterLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
