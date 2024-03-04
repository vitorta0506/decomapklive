package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.app.Dialog;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FeedbackQuestionTypeBean;
import com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackQuestionTypeListActivity;
import com.guochao.faceshow.aaspring.views.q;
import java.util.List;
/* loaded from: classes3.dex */
public class FeedbackQuestionTypeListActivity extends BaseRecyclerViewDialogFragment<FeedbackQuestionTypeBean, BaseViewHolder> {
    @BindView
    ImageView ivClose;

    /* loaded from: classes3.dex */
    class a extends c<List<FeedbackQuestionTypeBean>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            FeedbackQuestionTypeListActivity.this.notifyDataLoaded(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<FeedbackQuestionTypeBean>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<FeedbackQuestionTypeBean> list, @NonNull FaceCastBaseResponse<List<FeedbackQuestionTypeBean>> faceCastBaseResponse) {
            FeedbackQuestionTypeListActivity.this.setDatas(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R1(View view) {
        dismiss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.a
    /* renamed from: Q1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, FeedbackQuestionTypeBean feedbackQuestionTypeBean) {
        ((TextView) baseViewHolder.getView(R.id.name)).setText(feedbackQuestionTypeBean.getName());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment
    /* renamed from: S1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, FeedbackQuestionTypeBean feedbackQuestionTypeBean) {
        startActivityForResult(new Intent(getActivity(), FeedbackActivity.class).putExtra("data", feedbackQuestionTypeBean), 1000);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.c
    public boolean canLoadMore() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_feedback_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        q.c(new q.a() { // from class: n8.a
            @Override // com.guochao.faceshow.aaspring.views.q.a
            public final void a(Object obj) {
                FeedbackQuestionTypeListActivity.this.R1((View) obj);
            }
        }, this.ivClose);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.c
    public void loadData(int i9) {
        post("tokens/sysHelp/queryHelpCommonQuestionTypeQueryList").y("limit", "100").y("language", q7.a.e().c()).y("type", "2").M(new a());
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 1000 && i10 == -1) {
            dismiss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(getActivity(), R.style.BottomDialog);
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.requestWindowFeature(1);
        dialog.setCanceledOnTouchOutside(true);
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 80;
        attributes.width = -1;
        window.setAttributes(attributes);
        return dialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_feedback_question_type, viewGroup, false));
    }
}
