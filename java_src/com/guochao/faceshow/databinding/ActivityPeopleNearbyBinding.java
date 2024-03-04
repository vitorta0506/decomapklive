package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityPeopleNearbyBinding implements ViewBinding {
    @NonNull
    public final LayoutPeopleNearbyEmptyViewBinding emptyView;
    @NonNull
    public final FragmentBaseRecyclerViewBinding include;
    @NonNull
    public final LayoutLocationPermissionBinding layoutLocation;
    @NonNull
    private final LinearLayout rootView;

    private ActivityPeopleNearbyBinding(@NonNull LinearLayout linearLayout, @NonNull LayoutPeopleNearbyEmptyViewBinding layoutPeopleNearbyEmptyViewBinding, @NonNull FragmentBaseRecyclerViewBinding fragmentBaseRecyclerViewBinding, @NonNull LayoutLocationPermissionBinding layoutLocationPermissionBinding) {
        this.rootView = linearLayout;
        this.emptyView = layoutPeopleNearbyEmptyViewBinding;
        this.include = fragmentBaseRecyclerViewBinding;
        this.layoutLocation = layoutLocationPermissionBinding;
    }

    @NonNull
    public static ActivityPeopleNearbyBinding bind(@NonNull View view) {
        int i9 = R.id.empty_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty_view);
        if (findChildViewById != null) {
            LayoutPeopleNearbyEmptyViewBinding bind = LayoutPeopleNearbyEmptyViewBinding.bind(findChildViewById);
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.include);
            if (findChildViewById2 != null) {
                FragmentBaseRecyclerViewBinding bind2 = FragmentBaseRecyclerViewBinding.bind(findChildViewById2);
                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.layout_location);
                if (findChildViewById3 != null) {
                    return new ActivityPeopleNearbyBinding((LinearLayout) view, bind, bind2, LayoutLocationPermissionBinding.bind(findChildViewById3));
                }
                i9 = R.id.layout_location;
            } else {
                i9 = R.id.include;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityPeopleNearbyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPeopleNearbyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_people_nearby, viewGroup, false);
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
