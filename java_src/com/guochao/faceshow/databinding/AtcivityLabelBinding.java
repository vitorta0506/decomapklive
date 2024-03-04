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
import com.google.android.material.chip.ChipGroup;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.NewCircleImageView;
/* loaded from: classes2.dex */
public final class AtcivityLabelBinding implements ViewBinding {
    @NonNull
    public final NewCircleImageView avatar;
    @NonNull

    /* renamed from: cg  reason: collision with root package name */
    public final ChipGroup f25202cg;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvDistance;
    @NonNull
    public final TextView tvTime;
    @NonNull
    public final TextView tvUserName;
    @NonNull
    public final TextView tvUserSignature;

    private AtcivityLabelBinding(@NonNull LinearLayout linearLayout, @NonNull NewCircleImageView newCircleImageView, @NonNull ChipGroup chipGroup, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.avatar = newCircleImageView;
        this.f25202cg = chipGroup;
        this.tvDistance = textView;
        this.tvTime = textView2;
        this.tvUserName = textView3;
        this.tvUserSignature = textView4;
    }

    @NonNull
    public static AtcivityLabelBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        NewCircleImageView newCircleImageView = (NewCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (newCircleImageView != null) {
            i9 = R.id.f16047cg;
            ChipGroup chipGroup = (ChipGroup) ViewBindings.findChildViewById(view, R.id.f16047cg);
            if (chipGroup != null) {
                i9 = R.id.tv_distance;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_distance);
                if (textView != null) {
                    i9 = R.id.tv_time;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                    if (textView2 != null) {
                        i9 = R.id.tv_user_name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_name);
                        if (textView3 != null) {
                            i9 = R.id.tv_user_signature;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_signature);
                            if (textView4 != null) {
                                return new AtcivityLabelBinding((LinearLayout) view, newCircleImageView, chipGroup, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static AtcivityLabelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AtcivityLabelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.atcivity_label, viewGroup, false);
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
