package com.guochao.faceshow.aaspring.modulars.live.game.luckynumber;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class LuckyNumberFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LuckyNumberFragment f19567b;

    /* renamed from: c  reason: collision with root package name */
    private View f19568c;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LuckyNumberFragment f19569a;

        a(LuckyNumberFragment luckyNumberFragment) {
            this.f19569a = luckyNumberFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19569a.submitNumber(view);
        }
    }

    @UiThread
    public LuckyNumberFragment_ViewBinding(LuckyNumberFragment luckyNumberFragment, View view) {
        this.f19567b = luckyNumberFragment;
        luckyNumberFragment.mRecyclerView = (LuckyNumberGameView) c.d(view, R.id.recycler_view, "field 'mRecyclerView'", LuckyNumberGameView.class);
        luckyNumberFragment.mFloatInputView = c.c(view, R.id.float_input1, "field 'mFloatInputView'");
        luckyNumberFragment.mFloatInputView2 = c.c(view, R.id.float_input2, "field 'mFloatInputView2'");
        luckyNumberFragment.mViewStartGame = c.c(view, R.id.start_game, "field 'mViewStartGame'");
        luckyNumberFragment.mViewInputArea = c.c(view, R.id.input_area, "field 'mViewInputArea'");
        luckyNumberFragment.mContentView = c.c(view, R.id.content, "field 'mContentView'");
        luckyNumberFragment.mEditText = (EditText) c.d(view, R.id.edit, "field 'mEditText'", EditText.class);
        luckyNumberFragment.mTextViewInputTitle = (TextView) c.d(view, R.id.input_title, "field 'mTextViewInputTitle'", TextView.class);
        luckyNumberFragment.mTextViewUserCount = (TextView) c.d(view, R.id.people_count, "field 'mTextViewUserCount'", TextView.class);
        luckyNumberFragment.mTextDiamondsCount = (TextView) c.d(view, R.id.diamond_count, "field 'mTextDiamondsCount'", TextView.class);
        View c10 = c.c(view, R.id.input_submit, "field 'mTextViewInputSubmit' and method 'submitNumber'");
        luckyNumberFragment.mTextViewInputSubmit = (TextView) c.a(c10, R.id.input_submit, "field 'mTextViewInputSubmit'", TextView.class);
        this.f19568c = c10;
        c10.setOnClickListener(new a(luckyNumberFragment));
        luckyNumberFragment.mViewBg = c.c(view, R.id.f16046bg, "field 'mViewBg'");
        luckyNumberFragment.ivNumberCoin = (ImageView) c.d(view, R.id.iv_number_coin, "field 'ivNumberCoin'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LuckyNumberFragment luckyNumberFragment = this.f19567b;
        if (luckyNumberFragment != null) {
            this.f19567b = null;
            luckyNumberFragment.mRecyclerView = null;
            luckyNumberFragment.mFloatInputView = null;
            luckyNumberFragment.mFloatInputView2 = null;
            luckyNumberFragment.mViewStartGame = null;
            luckyNumberFragment.mViewInputArea = null;
            luckyNumberFragment.mContentView = null;
            luckyNumberFragment.mEditText = null;
            luckyNumberFragment.mTextViewInputTitle = null;
            luckyNumberFragment.mTextViewUserCount = null;
            luckyNumberFragment.mTextDiamondsCount = null;
            luckyNumberFragment.mTextViewInputSubmit = null;
            luckyNumberFragment.mViewBg = null;
            luckyNumberFragment.ivNumberCoin = null;
            this.f19568c.setOnClickListener(null);
            this.f19568c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
