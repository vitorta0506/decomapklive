package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes3.dex */
public final class DialogSavingBinding implements ViewBinding {
    @NonNull
    public final TextView info;
    @NonNull
    public final SvgaImageViewV2 loading;
    @NonNull
    private final CardView rootView;

    private DialogSavingBinding(@NonNull CardView cardView, @NonNull TextView textView, @NonNull SvgaImageViewV2 svgaImageViewV2) {
        this.rootView = cardView;
        this.info = textView;
        this.loading = svgaImageViewV2;
    }

    @NonNull
    public static DialogSavingBinding bind(@NonNull View view) {
        int i9 = R$id.info;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.loading;
            SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, i9);
            if (svgaImageViewV2 != null) {
                return new DialogSavingBinding((CardView) view, textView, svgaImageViewV2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogSavingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogSavingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.dialog_saving, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public CardView getRoot() {
        return this.rootView;
    }
}
