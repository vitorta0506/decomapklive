package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class PictureEditViewBinding implements ViewBinding {
    @NonNull
    public final RecyclerView pictureDragRecycleView;
    @NonNull
    public final TextView pictureDragTipBottomText;
    @NonNull
    public final LinearLayout pictureIll;
    @NonNull
    private final View rootView;

    private PictureEditViewBinding(@NonNull View view, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull LinearLayout linearLayout) {
        this.rootView = view;
        this.pictureDragRecycleView = recyclerView;
        this.pictureDragTipBottomText = textView;
        this.pictureIll = linearLayout;
    }

    @NonNull
    public static PictureEditViewBinding bind(@NonNull View view) {
        int i9 = R.id.picture_drag_recycleView;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.picture_drag_recycleView);
        if (recyclerView != null) {
            i9 = R.id.picture_drag_tip_bottom_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.picture_drag_tip_bottom_text);
            if (textView != null) {
                i9 = R.id.picture_ill;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.picture_ill);
                if (linearLayout != null) {
                    return new PictureEditViewBinding(view, recyclerView, textView, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PictureEditViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.picture_edit_view, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
