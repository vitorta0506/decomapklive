package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class FragmentPkSelectFriendsBinding implements ViewBinding {
    @NonNull
    public final LinearLayout content;
    @NonNull
    public final ImageView deleteEdit;
    @NonNull
    public final ImageView emptyView;
    @NonNull
    public final EditText etSearch;
    @NonNull
    public final SVGAImageView loadingAnim;
    @NonNull
    public final RecyclerView rcvList;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvPkFriendToMatch;

    private FragmentPkSelectFriendsBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull EditText editText, @NonNull SVGAImageView sVGAImageView, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.content = linearLayout2;
        this.deleteEdit = imageView;
        this.emptyView = imageView2;
        this.etSearch = editText;
        this.loadingAnim = sVGAImageView;
        this.rcvList = recyclerView;
        this.tvPkFriendToMatch = textView;
    }

    @NonNull
    public static FragmentPkSelectFriendsBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R.id.delete_edit;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.delete_edit);
        if (imageView != null) {
            i9 = R.id.empty_view;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.empty_view);
            if (imageView2 != null) {
                i9 = R.id.et_search;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_search);
                if (editText != null) {
                    i9 = R.id.loading_anim;
                    SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.loading_anim);
                    if (sVGAImageView != null) {
                        i9 = R.id.rcv_list;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rcv_list);
                        if (recyclerView != null) {
                            i9 = R.id.tv_pk_friend_to_match;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_pk_friend_to_match);
                            if (textView != null) {
                                return new FragmentPkSelectFriendsBinding(linearLayout, linearLayout, imageView, imageView2, editText, sVGAImageView, recyclerView, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentPkSelectFriendsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentPkSelectFriendsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_pk_select_friends, viewGroup, false);
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
