package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import com.guochao.faceshow.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;", "Landroid/widget/PopupWindow;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ImFocusPopupWindow extends PopupWindow {
    public ImFocusPopupWindow(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        View inflate = LayoutInflater.from(context).inflate(R.layout.popup_im_focus_tip, (ViewGroup) null);
        setTouchable(true);
        setOutsideTouchable(true);
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        setBackgroundDrawable(new ColorDrawable(0));
        inflate.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.views.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImFocusPopupWindow.m599_init_$lambda0(ImFocusPopupWindow.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m599_init_$lambda0(ImFocusPopupWindow this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }
}
