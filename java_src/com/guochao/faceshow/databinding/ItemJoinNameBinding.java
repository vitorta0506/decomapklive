package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemJoinNameBinding implements ViewBinding {
    @NonNull
    public final TextView liveJoinUserNickname;
    @NonNull
    private final LinearLayout rootView;

    private ItemJoinNameBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.liveJoinUserNickname = textView;
    }

    @NonNull
    public static ItemJoinNameBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.live_join_user_nickname);
        if (textView != null) {
            return new ItemJoinNameBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.live_join_user_nickname)));
    }

    @NonNull
    public static ItemJoinNameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemJoinNameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_join_name, viewGroup, false);
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
