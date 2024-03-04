package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityUserReportDetailBinding implements ViewBinding {
    @NonNull
    public final CheckBox cbChildren;
    @NonNull
    public final CheckBox cbEight;
    @NonNull
    public final CheckBox cbEleven;
    @NonNull
    public final CheckBox cbFifth;
    @NonNull
    public final CheckBox cbFirst;
    @NonNull
    public final CheckBox cbForth;
    @NonNull
    public final CheckBox cbNinth;
    @NonNull
    public final CheckBox cbSecond;
    @NonNull
    public final CheckBox cbSeventh;
    @NonNull
    public final CheckBox cbSixth;
    @NonNull
    public final CheckBox cbTenth;
    @NonNull
    public final CheckBox cbThird;
    @NonNull
    public final EditText etReportContent;
    @NonNull
    public final RecyclerView gridImg;
    @NonNull
    public final LinearLayout rootView;
    @NonNull
    private final LinearLayout rootView_;

    private ActivityUserReportDetailBinding(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull CheckBox checkBox2, @NonNull CheckBox checkBox3, @NonNull CheckBox checkBox4, @NonNull CheckBox checkBox5, @NonNull CheckBox checkBox6, @NonNull CheckBox checkBox7, @NonNull CheckBox checkBox8, @NonNull CheckBox checkBox9, @NonNull CheckBox checkBox10, @NonNull CheckBox checkBox11, @NonNull CheckBox checkBox12, @NonNull EditText editText, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout2) {
        this.rootView_ = linearLayout;
        this.cbChildren = checkBox;
        this.cbEight = checkBox2;
        this.cbEleven = checkBox3;
        this.cbFifth = checkBox4;
        this.cbFirst = checkBox5;
        this.cbForth = checkBox6;
        this.cbNinth = checkBox7;
        this.cbSecond = checkBox8;
        this.cbSeventh = checkBox9;
        this.cbSixth = checkBox10;
        this.cbTenth = checkBox11;
        this.cbThird = checkBox12;
        this.etReportContent = editText;
        this.gridImg = recyclerView;
        this.rootView = linearLayout2;
    }

    @NonNull
    public static ActivityUserReportDetailBinding bind(@NonNull View view) {
        int i9 = R.id.cb_children;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.cb_children);
        if (checkBox != null) {
            i9 = R.id.cbEight;
            CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cbEight);
            if (checkBox2 != null) {
                i9 = R.id.cbEleven;
                CheckBox checkBox3 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cbEleven);
                if (checkBox3 != null) {
                    i9 = R.id.cbFifth;
                    CheckBox checkBox4 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cbFifth);
                    if (checkBox4 != null) {
                        i9 = R.id.cbFirst;
                        CheckBox checkBox5 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cbFirst);
                        if (checkBox5 != null) {
                            i9 = R.id.cbForth;
                            CheckBox checkBox6 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cbForth);
                            if (checkBox6 != null) {
                                i9 = R.id.cbNinth;
                                CheckBox checkBox7 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cbNinth);
                                if (checkBox7 != null) {
                                    i9 = R.id.cbSecond;
                                    CheckBox checkBox8 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cbSecond);
                                    if (checkBox8 != null) {
                                        i9 = R.id.cbSeventh;
                                        CheckBox checkBox9 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cbSeventh);
                                        if (checkBox9 != null) {
                                            i9 = R.id.cbSixth;
                                            CheckBox checkBox10 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cbSixth);
                                            if (checkBox10 != null) {
                                                i9 = R.id.cbTenth;
                                                CheckBox checkBox11 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cbTenth);
                                                if (checkBox11 != null) {
                                                    i9 = R.id.cbThird;
                                                    CheckBox checkBox12 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cbThird);
                                                    if (checkBox12 != null) {
                                                        i9 = R.id.etReportContent;
                                                        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.etReportContent);
                                                        if (editText != null) {
                                                            i9 = R.id.grid_img;
                                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.grid_img);
                                                            if (recyclerView != null) {
                                                                i9 = R.id.root_view;
                                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.root_view);
                                                                if (linearLayout != null) {
                                                                    return new ActivityUserReportDetailBinding((LinearLayout) view, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, checkBox11, checkBox12, editText, recyclerView, linearLayout);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityUserReportDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUserReportDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_user_report_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView_;
    }
}
