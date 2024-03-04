package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
/* loaded from: classes3.dex */
public final class FragmentVoliceRoomAsAMemberTipsBinding implements ViewBinding {
    @NonNull
    public final TextView cancelTV;
    @NonNull
    public final TextView contentTV;
    @NonNull
    public final TextView okTV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView titleTV;

    private FragmentVoliceRoomAsAMemberTipsBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.cancelTV = textView;
        this.contentTV = textView2;
        this.okTV = textView3;
        this.titleTV = textView4;
    }

    @NonNull
    public static FragmentVoliceRoomAsAMemberTipsBinding bind(@NonNull View view) {
        int i9 = R$id.cancelTV;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.contentTV;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView2 != null) {
                i9 = R$id.okTV;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView3 != null) {
                    i9 = R$id.titleTV;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView4 != null) {
                        return new FragmentVoliceRoomAsAMemberTipsBinding((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoliceRoomAsAMemberTipsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoliceRoomAsAMemberTipsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_volice_room_as_a_member_tips, viewGroup, false);
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
