package com.guochao.faceshow.aaspring.modulars.customerservice.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.customerservice.helper.UploadFeedImageHelper;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.RatingBar;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class FeedbackScoreFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    String f17467a;

    /* renamed from: b  reason: collision with root package name */
    d f17468b;
    @BindView
    EditText mEditText;
    @BindView
    RatingBar mRatingBar;
    @BindView
    TextView mTextView;
    @BindView
    TextView mTextViewCount;

    /* loaded from: classes3.dex */
    class a implements RatingBar.b {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.RatingBar.b
        public void a(float f10) {
            int i9 = (int) f10;
            if (i9 == 1) {
                FeedbackScoreFragment.this.mTextView.setText(R.string.feedback_rating_1);
            } else if (i9 == 2) {
                FeedbackScoreFragment.this.mTextView.setText(R.string.feedback_rating_2);
            } else if (i9 == 3) {
                FeedbackScoreFragment.this.mTextView.setText(R.string.feedback_rating_3);
            } else if (i9 != 4) {
                FeedbackScoreFragment.this.mTextView.setText(R.string.feedback_rating_5);
            } else {
                FeedbackScoreFragment.this.mTextView.setText(R.string.feedback_rating_4);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            UploadFeedImageHelper.j(FeedbackScoreFragment.this.mTextViewCount, 1000, TextViewUtils.length(editable.toString()));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    class c extends com.guochao.faceshow.aaspring.base.http.callback.c<Boolean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Boolean bool, @NonNull @NotNull FaceCastBaseResponse<Boolean> faceCastBaseResponse) {
            FeedbackScoreFragment.this.dismissProgressDialog();
            FeedbackScoreFragment.this.showToast(R.string.feedback_feedback_success);
            if (bool != null && bool.booleanValue()) {
                FeedbackScoreFragment feedbackScoreFragment = FeedbackScoreFragment.this;
                d dVar = feedbackScoreFragment.f17468b;
                if (dVar != null) {
                    dVar.y((int) feedbackScoreFragment.mRatingBar.getStart(), FeedbackScoreFragment.this.mEditText.getText().toString());
                }
                FeedbackScoreFragment.this.dismissAllowingStateLoss();
                return;
            }
            onFailure(new g7.a<>());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<Boolean> aVar) {
            FeedbackScoreFragment.this.dismissProgressDialog();
            if (TextUtils.isEmpty(aVar.b())) {
                return;
            }
            FeedbackScoreFragment.this.showToast(aVar.b());
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void y(int i9, String str);
    }

    public static FeedbackScoreFragment P1(String str) {
        FeedbackScoreFragment feedbackScoreFragment = new FeedbackScoreFragment();
        Bundle bundle = new Bundle();
        bundle.putString("id", str);
        feedbackScoreFragment.setArguments(bundle);
        return feedbackScoreFragment;
    }

    @OnClick
    public void close(View view) {
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_feedback_score;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.mRatingBar.setStar(5.0f);
        this.mRatingBar.setOnRatingChangeListener(new a());
        this.mEditText.setHint(R.string.feedback_tell_me);
        this.mEditText.addTextChangedListener(new b());
        UploadFeedImageHelper.j(this.mTextViewCount, 1000, 0);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getDialog() != null) {
            getDialog().getWindow().setDimAmount(0.3f);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull @NotNull Context context) {
        super.onAttach(context);
        this.f17468b = (d) context;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f17467a = getArguments().getString("id");
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        return createBottomDialog();
    }

    @OnClick
    public void submit(View view) {
        post("tokens/sysHelp/evaluateFeedBackQuestion").y("feedQuestionId", this.f17467a).y("evaluate", this.mEditText.getText().toString()).y("evaluateStore", Float.valueOf(this.mRatingBar.getStart())).M(new c());
    }
}
