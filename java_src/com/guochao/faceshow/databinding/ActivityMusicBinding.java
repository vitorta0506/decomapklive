package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView;
/* loaded from: classes2.dex */
public final class ActivityMusicBinding implements ViewBinding {
    @NonNull
    public final FrameLayout floatTitleBack;
    @NonNull
    public final ListView mListView;
    @NonNull
    public final SwipeMenuRecyclerView mRecyclerView;
    @NonNull
    public final TwinklingRefreshLayout mrefreshLayout;
    @NonNull
    public final RadioButton musicConllect;
    @NonNull
    public final RadioButton musicMine;
    @NonNull
    public final RadioButton musicOnline;
    @NonNull
    public final RadioGroup radiogroup;
    @NonNull
    public final TwinklingRefreshLayout refreshLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView search;
    @NonNull
    public final EditText searchEt;
    @NonNull
    public final LinearLayout searchEtLayout;
    @NonNull
    public final ListView searchListView;
    @NonNull
    public final TwinklingRefreshLayout searchRefreshLayout;
    @NonNull
    public final TextView title;
    @NonNull
    public final Toolbar toolbar;

    private ActivityMusicBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull ListView listView, @NonNull SwipeMenuRecyclerView swipeMenuRecyclerView, @NonNull TwinklingRefreshLayout twinklingRefreshLayout, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2, @NonNull RadioButton radioButton3, @NonNull RadioGroup radioGroup, @NonNull TwinklingRefreshLayout twinklingRefreshLayout2, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull LinearLayout linearLayout2, @NonNull ListView listView2, @NonNull TwinklingRefreshLayout twinklingRefreshLayout3, @NonNull TextView textView, @NonNull Toolbar toolbar) {
        this.rootView = linearLayout;
        this.floatTitleBack = frameLayout;
        this.mListView = listView;
        this.mRecyclerView = swipeMenuRecyclerView;
        this.mrefreshLayout = twinklingRefreshLayout;
        this.musicConllect = radioButton;
        this.musicMine = radioButton2;
        this.musicOnline = radioButton3;
        this.radiogroup = radioGroup;
        this.refreshLayout = twinklingRefreshLayout2;
        this.search = imageView;
        this.searchEt = editText;
        this.searchEtLayout = linearLayout2;
        this.searchListView = listView2;
        this.searchRefreshLayout = twinklingRefreshLayout3;
        this.title = textView;
        this.toolbar = toolbar;
    }

    @NonNull
    public static ActivityMusicBinding bind(@NonNull View view) {
        int i9 = R.id.float_title_back;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.float_title_back);
        if (frameLayout != null) {
            i9 = R.id.mListView;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.mListView);
            if (listView != null) {
                i9 = R.id.mRecyclerView;
                SwipeMenuRecyclerView swipeMenuRecyclerView = (SwipeMenuRecyclerView) ViewBindings.findChildViewById(view, R.id.mRecyclerView);
                if (swipeMenuRecyclerView != null) {
                    i9 = R.id.mrefreshLayout;
                    TwinklingRefreshLayout twinklingRefreshLayout = (TwinklingRefreshLayout) ViewBindings.findChildViewById(view, R.id.mrefreshLayout);
                    if (twinklingRefreshLayout != null) {
                        i9 = R.id.music_conllect;
                        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.music_conllect);
                        if (radioButton != null) {
                            i9 = R.id.music_mine;
                            RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.music_mine);
                            if (radioButton2 != null) {
                                i9 = R.id.music_online;
                                RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(view, R.id.music_online);
                                if (radioButton3 != null) {
                                    i9 = R.id.radiogroup;
                                    RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, R.id.radiogroup);
                                    if (radioGroup != null) {
                                        i9 = R.id.refreshLayout;
                                        TwinklingRefreshLayout twinklingRefreshLayout2 = (TwinklingRefreshLayout) ViewBindings.findChildViewById(view, R.id.refreshLayout);
                                        if (twinklingRefreshLayout2 != null) {
                                            i9 = R.id.search;
                                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.search);
                                            if (imageView != null) {
                                                i9 = R.id.search_et;
                                                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.search_et);
                                                if (editText != null) {
                                                    i9 = R.id.search_et_layout;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.search_et_layout);
                                                    if (linearLayout != null) {
                                                        i9 = R.id.search_listView;
                                                        ListView listView2 = (ListView) ViewBindings.findChildViewById(view, R.id.search_listView);
                                                        if (listView2 != null) {
                                                            i9 = R.id.search_refreshLayout;
                                                            TwinklingRefreshLayout twinklingRefreshLayout3 = (TwinklingRefreshLayout) ViewBindings.findChildViewById(view, R.id.search_refreshLayout);
                                                            if (twinklingRefreshLayout3 != null) {
                                                                i9 = 16908310;
                                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, 16908310);
                                                                if (textView != null) {
                                                                    i9 = R.id.toolbar;
                                                                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                                                    if (toolbar != null) {
                                                                        return new ActivityMusicBinding((LinearLayout) view, frameLayout, listView, swipeMenuRecyclerView, twinklingRefreshLayout, radioButton, radioButton2, radioButton3, radioGroup, twinklingRefreshLayout2, imageView, editText, linearLayout, listView2, twinklingRefreshLayout3, textView, toolbar);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityMusicBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityMusicBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_music, viewGroup, false);
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
