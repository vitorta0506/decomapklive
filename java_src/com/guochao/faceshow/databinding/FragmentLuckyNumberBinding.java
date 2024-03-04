package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.LuckyNumberGameView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class FragmentLuckyNumberBinding implements ViewBinding {
    @NonNull

    /* renamed from: bg  reason: collision with root package name */
    public final LinearLayout f25204bg;
    @NonNull
    public final LinearLayout content;
    @NonNull
    public final TextView diamondCount;
    @NonNull
    public final LayoutPollNumberBinding firstNumber;
    @NonNull
    public final ImageView invite;
    @NonNull
    public final ImageView ivNumberCoin;
    @NonNull
    public final ImageView miniGame;
    @NonNull
    public final ImageView normalPollNumber;
    @NonNull
    public final FrameLayout parent;
    @NonNull
    public final TextView peopleCount;
    @NonNull
    public final ImageView record;
    @NonNull
    public final LuckyNumberGameView recyclerView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView rule;
    @NonNull
    public final LayoutPollNumberBinding secondNumber;
    @NonNull
    public final ImageView startGame;
    @NonNull
    public final SVGAImageView svgaPollNumber;
    @NonNull
    public final ImageView top;

    private FragmentLuckyNumberBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull LayoutPollNumberBinding layoutPollNumberBinding, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull FrameLayout frameLayout2, @NonNull TextView textView2, @NonNull ImageView imageView5, @NonNull LuckyNumberGameView luckyNumberGameView, @NonNull ImageView imageView6, @NonNull LayoutPollNumberBinding layoutPollNumberBinding2, @NonNull ImageView imageView7, @NonNull SVGAImageView sVGAImageView, @NonNull ImageView imageView8) {
        this.rootView = frameLayout;
        this.f25204bg = linearLayout;
        this.content = linearLayout2;
        this.diamondCount = textView;
        this.firstNumber = layoutPollNumberBinding;
        this.invite = imageView;
        this.ivNumberCoin = imageView2;
        this.miniGame = imageView3;
        this.normalPollNumber = imageView4;
        this.parent = frameLayout2;
        this.peopleCount = textView2;
        this.record = imageView5;
        this.recyclerView = luckyNumberGameView;
        this.rule = imageView6;
        this.secondNumber = layoutPollNumberBinding2;
        this.startGame = imageView7;
        this.svgaPollNumber = sVGAImageView;
        this.top = imageView8;
    }

    @NonNull
    public static FragmentLuckyNumberBinding bind(@NonNull View view) {
        int i9 = R.id.f16046bg;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.f16046bg);
        if (linearLayout != null) {
            i9 = R.id.content;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content);
            if (linearLayout2 != null) {
                i9 = R.id.diamond_count;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.diamond_count);
                if (textView != null) {
                    i9 = R.id.first_number;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.first_number);
                    if (findChildViewById != null) {
                        LayoutPollNumberBinding bind = LayoutPollNumberBinding.bind(findChildViewById);
                        i9 = R.id.invite;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.invite);
                        if (imageView != null) {
                            i9 = R.id.iv_number_coin;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_number_coin);
                            if (imageView2 != null) {
                                i9 = R.id.mini_game;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.mini_game);
                                if (imageView3 != null) {
                                    i9 = R.id.normal_poll_number;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.normal_poll_number);
                                    if (imageView4 != null) {
                                        FrameLayout frameLayout = (FrameLayout) view;
                                        i9 = R.id.people_count;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.people_count);
                                        if (textView2 != null) {
                                            i9 = R.id.record;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.record);
                                            if (imageView5 != null) {
                                                i9 = R.id.recycler_view;
                                                LuckyNumberGameView luckyNumberGameView = (LuckyNumberGameView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                                                if (luckyNumberGameView != null) {
                                                    i9 = R.id.rule;
                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.rule);
                                                    if (imageView6 != null) {
                                                        i9 = R.id.second_number;
                                                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.second_number);
                                                        if (findChildViewById2 != null) {
                                                            LayoutPollNumberBinding bind2 = LayoutPollNumberBinding.bind(findChildViewById2);
                                                            i9 = R.id.start_game;
                                                            ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.start_game);
                                                            if (imageView7 != null) {
                                                                i9 = R.id.svga_poll_number;
                                                                SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.svga_poll_number);
                                                                if (sVGAImageView != null) {
                                                                    i9 = R.id.top;
                                                                    ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.top);
                                                                    if (imageView8 != null) {
                                                                        return new FragmentLuckyNumberBinding(frameLayout, linearLayout, linearLayout2, textView, bind, imageView, imageView2, imageView3, imageView4, frameLayout, textView2, imageView5, luckyNumberGameView, imageView6, bind2, imageView7, sVGAImageView, imageView8);
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
    public static FragmentLuckyNumberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLuckyNumberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_lucky_number, viewGroup, false);
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
