package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogRechargeBinding implements ViewBinding {
    @NonNull
    public final View bgView;
    @NonNull
    public final LinearLayout contentArea;
    @NonNull
    public final TextView lessMoney;
    @NonNull
    public final ViewStub rechargeHeader;
    @NonNull
    public final ViewStub rechargeHeaderPage;
    @NonNull
    public final LinearLayout rechargeHeaderTitle;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView startBuy;
    @NonNull
    public final TextView tvDiamond;

    private DialogRechargeBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ViewStub viewStub, @NonNull ViewStub viewStub2, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.bgView = view;
        this.contentArea = linearLayout;
        this.lessMoney = textView;
        this.rechargeHeader = viewStub;
        this.rechargeHeaderPage = viewStub2;
        this.rechargeHeaderTitle = linearLayout2;
        this.recyclerView = recyclerView;
        this.startBuy = textView2;
        this.tvDiamond = textView3;
    }

    @NonNull
    public static DialogRechargeBinding bind(@NonNull View view) {
        int i9 = R.id.bg_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
        if (findChildViewById != null) {
            i9 = R.id.content_area;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_area);
            if (linearLayout != null) {
                i9 = R.id.less_money;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.less_money);
                if (textView != null) {
                    i9 = R.id.recharge_header;
                    ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.recharge_header);
                    if (viewStub != null) {
                        i9 = R.id.recharge_header_page;
                        ViewStub viewStub2 = (ViewStub) ViewBindings.findChildViewById(view, R.id.recharge_header_page);
                        if (viewStub2 != null) {
                            i9 = R.id.recharge_header_title;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.recharge_header_title);
                            if (linearLayout2 != null) {
                                i9 = R.id.recycler_view;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                                if (recyclerView != null) {
                                    i9 = R.id.start_buy;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.start_buy);
                                    if (textView2 != null) {
                                        i9 = R.id.tv_diamond;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_diamond);
                                        if (textView3 != null) {
                                            return new DialogRechargeBinding((FrameLayout) view, findChildViewById, linearLayout, textView, viewStub, viewStub2, linearLayout2, recyclerView, textView2, textView3);
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
    public static DialogRechargeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogRechargeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_recharge, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
