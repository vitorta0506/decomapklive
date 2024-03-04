package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LayoutLiveRoomFocusDialogBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView avatar;
    @NonNull
    public final LinearLayout focusButton;
    @NonNull
    public final TextView nickname;
    @NonNull
    private final CardView rootView;

    private LayoutLiveRoomFocusDialogBinding(@NonNull CardView cardView, @NonNull NormalCircleImageView normalCircleImageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = cardView;
        this.avatar = normalCircleImageView;
        this.focusButton = linearLayout;
        this.nickname = textView;
    }

    @NonNull
    public static LayoutLiveRoomFocusDialogBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (normalCircleImageView != null) {
            i9 = R.id.focus_button;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.focus_button);
            if (linearLayout != null) {
                i9 = R.id.nickname;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
                if (textView != null) {
                    return new LayoutLiveRoomFocusDialogBinding((CardView) view, normalCircleImageView, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutLiveRoomFocusDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLiveRoomFocusDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_live_room_focus_dialog, viewGroup, false);
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
