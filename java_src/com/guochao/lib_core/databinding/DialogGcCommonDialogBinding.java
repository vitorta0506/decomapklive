package com.guochao.lib_core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.lib_core.R$id;
import com.guochao.lib_core.R$layout;
/* loaded from: classes4.dex */
public final class DialogGcCommonDialogBinding implements ViewBinding {
    @NonNull
    public final TextView cancel;
    @NonNull
    public final TextView content;
    @NonNull
    public final ImageView divider;
    @NonNull

    /* renamed from: ok  reason: collision with root package name */
    public final TextView f27139ok;
    @NonNull
    private final CardView rootView;
    @NonNull
    public final TextView title;

    private DialogGcCommonDialogBinding(@NonNull CardView cardView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = cardView;
        this.cancel = textView;
        this.content = textView2;
        this.divider = imageView;
        this.f27139ok = textView3;
        this.title = textView4;
    }

    @NonNull
    public static DialogGcCommonDialogBinding bind(@NonNull View view) {
        int i9 = R$id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.content;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView2 != null) {
                i9 = R$id.divider;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
                if (imageView != null) {
                    i9 = R$id.f27138ok;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView3 != null) {
                        i9 = R$id.title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView4 != null) {
                            return new DialogGcCommonDialogBinding((CardView) view, textView, textView2, imageView, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogGcCommonDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogGcCommonDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.dialog_gc_common_dialog, viewGroup, false);
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
