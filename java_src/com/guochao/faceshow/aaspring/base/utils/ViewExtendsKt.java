package com.guochao.faceshow.aaspring.base.utils;

import android.view.View;
import com.guochao.lib_core.R$id;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"onClick", "", "Landroid/view/View;", "doubleClickInterval", "", "onClickListener", "Landroid/view/View$OnClickListener;", "lib_core_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ViewExtendsKt {
    public static final void onClick(@NotNull final View view, final long j10, @Nullable final View.OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (onClickListener == null) {
            view.setOnClickListener(null);
        } else if (j10 <= 0) {
            view.setOnClickListener(onClickListener);
        } else {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.base.utils.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ViewExtendsKt.m340onClick$lambda0(view, j10, onClickListener, view2);
                }
            });
        }
    }

    public static /* synthetic */ void onClick$default(View view, long j10, View.OnClickListener onClickListener, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            j10 = 1000;
        }
        onClick(view, j10, onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onClick$lambda-0  reason: not valid java name */
    public static final void m340onClick$lambda0(View this_onClick, long j10, View.OnClickListener onClickListener, View view) {
        Intrinsics.checkNotNullParameter(this_onClick, "$this_onClick");
        int i9 = R$id.no_double_click;
        Object tag = this_onClick.getTag(i9);
        Long l10 = tag instanceof Long ? (Long) tag : null;
        if (System.currentTimeMillis() - (l10 != null ? l10.longValue() : 0L) <= j10) {
            return;
        }
        this_onClick.setTag(i9, Long.valueOf(System.currentTimeMillis()));
        onClickListener.onClick(view);
    }
}
