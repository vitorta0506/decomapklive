package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes2.dex */
public final class FragmentRecordBinding implements ViewBinding {
    @NonNull
    public final ImageView ivDateImg;
    @NonNull
    public final ImageView ivEmptyImg;
    @NonNull
    public final LinearLayout llRootLayout;
    @NonNull
    public final RecyclerView lvTransactionRecord;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    public final TwinklingRefreshLayout refreshLayout;
    @NonNull
    public final RelativeLayout rlEmptyViewLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final View spaceWeight;
    @NonNull
    public final TextView tvIncome;
    @NonNull
    public final TextView tvSpending;
    @NonNull
    public final TextView tvTime;

    private FragmentRecordBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2, @NonNull TwinklingRefreshLayout twinklingRefreshLayout, @NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.ivDateImg = imageView;
        this.ivEmptyImg = imageView2;
        this.llRootLayout = linearLayout2;
        this.lvTransactionRecord = recyclerView;
        this.recyclerView = recyclerView2;
        this.refreshLayout = twinklingRefreshLayout;
        this.rlEmptyViewLayout = relativeLayout;
        this.spaceWeight = view;
        this.tvIncome = textView;
        this.tvSpending = textView2;
        this.tvTime = textView3;
    }

    @NonNull
    public static FragmentRecordBinding bind(@NonNull View view) {
        int i9 = R.id.ivDateImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivDateImg);
        if (imageView != null) {
            i9 = R.id.ivEmptyImg;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivEmptyImg);
            if (imageView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i9 = R.id.lvTransactionRecord;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.lvTransactionRecord);
                if (recyclerView != null) {
                    i9 = R.id.recyclerView;
                    RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                    if (recyclerView2 != null) {
                        i9 = R.id.refreshLayout;
                        TwinklingRefreshLayout twinklingRefreshLayout = (TwinklingRefreshLayout) ViewBindings.findChildViewById(view, R.id.refreshLayout);
                        if (twinklingRefreshLayout != null) {
                            i9 = R.id.rlEmptyViewLayout;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlEmptyViewLayout);
                            if (relativeLayout != null) {
                                i9 = R.id.space_weight;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.space_weight);
                                if (findChildViewById != null) {
                                    i9 = R.id.tvIncome;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvIncome);
                                    if (textView != null) {
                                        i9 = R.id.tvSpending;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvSpending);
                                        if (textView2 != null) {
                                            i9 = R.id.tvTime;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTime);
                                            if (textView3 != null) {
                                                return new FragmentRecordBinding(linearLayout, imageView, imageView2, linearLayout, recyclerView, recyclerView2, twinklingRefreshLayout, relativeLayout, findChildViewById, textView, textView2, textView3);
                                            }
                                        }
                                    }
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
    public static FragmentRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_record, viewGroup, false);
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
