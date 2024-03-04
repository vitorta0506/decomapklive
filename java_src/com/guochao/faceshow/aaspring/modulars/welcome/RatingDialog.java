package com.guochao.faceshow.aaspring.modulars.welcome;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackQuestionTypeListActivity;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.views.RatingBar;
import com.tencent.ugc.UGCTransitionRules;
/* loaded from: classes3.dex */
public class RatingDialog extends BaseDialogFragment {
    @BindView
    TextView content;
    @BindView
    RatingBar ratingBar;
    @BindView
    TextView tvCancel;
    @BindView
    TextView tvConfirm;

    /* loaded from: classes3.dex */
    class a implements RatingBar.b {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.RatingBar.b
        public void a(float f10) {
            if (f10 < 5.0f) {
                RatingDialog.this.tvConfirm.setText(R.string.setting_problem_of_feedback);
            } else {
                RatingDialog.this.tvConfirm.setText(R.string.rating_confirm);
            }
            RatingDialog.this.tvConfirm.setEnabled(true);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_rating;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.content.setText(getString(R.string.rating_title_tip));
        this.tvConfirm.setText(R.string.rating_confirm);
        this.tvCancel.setText(getString(R.string.rating_cancle));
        this.ratingBar.setOnRatingChangeListener(new a());
        getDialog().getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createCenterDialog();
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.tv_cancel) {
            dismiss();
        } else if (id2 != R.id.tv_confirm) {
        } else {
            dismiss();
            if (this.ratingBar.getStart() < 5.0f) {
                new FeedbackQuestionTypeListActivity().show(getParentFragmentManager(), "feedback");
            } else {
                PackageUtils.goToMarket(getContext(), getContext().getPackageName());
            }
        }
    }
}
