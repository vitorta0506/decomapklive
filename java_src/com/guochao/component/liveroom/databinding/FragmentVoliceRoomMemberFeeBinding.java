package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
/* loaded from: classes3.dex */
public final class FragmentVoliceRoomMemberFeeBinding implements ViewBinding {
    @NonNull
    public final ImageView closeIV;
    @NonNull
    public final TextView feeConfTV;
    @NonNull
    public final EditText feeET;
    @NonNull
    public final TextView okTV;
    @NonNull
    private final LinearLayout rootView;

    private FragmentVoliceRoomMemberFeeBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull EditText editText, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.closeIV = imageView;
        this.feeConfTV = textView;
        this.feeET = editText;
        this.okTV = textView2;
    }

    @NonNull
    public static FragmentVoliceRoomMemberFeeBinding bind(@NonNull View view) {
        int i9 = R$id.closeIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.feeConfTV;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                i9 = R$id.feeET;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, i9);
                if (editText != null) {
                    i9 = R$id.okTV;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView2 != null) {
                        return new FragmentVoliceRoomMemberFeeBinding((LinearLayout) view, imageView, textView, editText, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoliceRoomMemberFeeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoliceRoomMemberFeeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_volice_room_member_fee, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
