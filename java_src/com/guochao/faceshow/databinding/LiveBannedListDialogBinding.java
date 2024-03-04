package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LiveBannedListDialogBinding implements ViewBinding {
    @NonNull
    public final LinearLayout lltitle;
    @NonNull
    public final ListView lvOptions;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tvEmpty;
    @NonNull
    public final TextView tvMute;
    @NonNull
    public final TextView tvRemove;
    @NonNull
    public final View tvmuteline;
    @NonNull
    public final View tvremoveline;

    private LiveBannedListDialogBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view, @NonNull View view2) {
        this.rootView = relativeLayout;
        this.lltitle = linearLayout;
        this.lvOptions = listView;
        this.tvEmpty = textView;
        this.tvMute = textView2;
        this.tvRemove = textView3;
        this.tvmuteline = view;
        this.tvremoveline = view2;
    }

    @NonNull
    public static LiveBannedListDialogBinding bind(@NonNull View view) {
        int i9 = R.id.lltitle;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lltitle);
        if (linearLayout != null) {
            i9 = R.id.lvOptions;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.lvOptions);
            if (listView != null) {
                i9 = R.id.tvEmpty;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvEmpty);
                if (textView != null) {
                    i9 = R.id.tvMute;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvMute);
                    if (textView2 != null) {
                        i9 = R.id.tvRemove;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvRemove);
                        if (textView3 != null) {
                            i9 = R.id.tvmuteline;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.tvmuteline);
                            if (findChildViewById != null) {
                                i9 = R.id.tvremoveline;
                                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.tvremoveline);
                                if (findChildViewById2 != null) {
                                    return new LiveBannedListDialogBinding((RelativeLayout) view, linearLayout, listView, textView, textView2, textView3, findChildViewById, findChildViewById2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveBannedListDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveBannedListDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_banned_list_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
