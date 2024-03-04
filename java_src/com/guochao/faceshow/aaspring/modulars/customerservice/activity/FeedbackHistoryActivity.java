package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FeedbackHistoryBean;
import com.guochao.faceshow.aaspring.beans.FeedbackHistoryDetailBean;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class FeedbackHistoryActivity extends BaseRecyclerViewActivity<FeedbackHistoryBean, FeedbackHistoryBeanHolder> {

    /* loaded from: classes3.dex */
    public static class FeedbackHistoryBeanHolder extends BaseViewHolder {
        public FeedbackHistoryBeanHolder(View view) {
            super(view);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void c(TextView textView, int i9) {
            if (i9 == 1) {
                textView.setBackgroundResource(R.drawable.shape_feedback_to_be_handle);
                textView.setText(R.string.feedback_feedback_pending);
                textView.setTextColor(Color.parseColor("#999999"));
            } else if (i9 != 2 && i9 != 3) {
                textView.setBackgroundResource(R.drawable.shape_feedback_handled);
                textView.setText(R.string.feedback_feedback_handled);
                textView.setTextColor(Color.parseColor("#ffffff"));
            } else {
                textView.setBackgroundResource(R.drawable.shape_feedback_handling);
                textView.setText(R.string.feedback_feedback_handling);
                textView.setTextColor(Color.parseColor("#ffffff"));
            }
        }

        public void d(FeedbackHistoryBean feedbackHistoryBean) {
            c((TextView) getView(R.id.state), feedbackHistoryBean.getStatus());
            TextView textView = (TextView) getView(R.id.content);
            if (feedbackHistoryBean instanceof FeedbackHistoryDetailBean) {
                EditTextUtils.setLinkText(feedbackHistoryBean.getDetail(), textView, false);
            } else {
                textView.setText(feedbackHistoryBean.getDetail());
            }
            ImageView imageView = (ImageView) getView(R.id.new_reply);
            if (imageView != null) {
                imageView.setVisibility(feedbackHistoryBean.getIsNewAnswer() != 1 ? 8 : 0);
            }
            ((TextView) getView(R.id.date)).setText(new SimpleDateFormat("yyyy/MM/dd      HH:mm:ss").format(new Date(feedbackHistoryBean.getCreateTime() * 1000)));
        }
    }

    /* loaded from: classes3.dex */
    class a extends c<List<FeedbackHistoryBean>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<List<FeedbackHistoryBean>> aVar) {
            if (FeedbackHistoryActivity.this.getList().size() == 0) {
                FeedbackHistoryActivity.this.showEmptyView();
            }
            FeedbackHistoryActivity.this.notifyDataLoaded(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<FeedbackHistoryBean> list, @NonNull @NotNull FaceCastBaseResponse<List<FeedbackHistoryBean>> faceCastBaseResponse) {
            if (FeedbackHistoryActivity.this.getCurrentPage() == FeedbackHistoryActivity.this.getDefaultPage()) {
                FeedbackHistoryActivity.this.getList().clear();
            }
            if (list != null) {
                FeedbackHistoryActivity.this.getList().addAll(list);
            }
            if (FeedbackHistoryActivity.this.getList().size() == 0) {
                FeedbackHistoryActivity.this.showEmptyView();
            }
            FeedbackHistoryActivity.this.notifyDataLoaded(list != null && list.size() >= 10);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: b0 */
    public void convertItem(FeedbackHistoryBeanHolder feedbackHistoryBeanHolder, int i9, FeedbackHistoryBean feedbackHistoryBean) {
        feedbackHistoryBeanHolder.d(feedbackHistoryBean);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: d0 */
    public FeedbackHistoryBeanHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new FeedbackHistoryBeanHolder(getLayoutInflater().inflate(R.layout.list_item_feedback_history, viewGroup, false));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: e0 */
    public void onItemClick(FeedbackHistoryBeanHolder feedbackHistoryBeanHolder, int i9, FeedbackHistoryBean feedbackHistoryBean) {
        if (feedbackHistoryBean.getIsNewAnswer() == 1) {
            feedbackHistoryBean.setIsNewAnswer(0);
            if (getRecyclerView() != null && getRecyclerView().getAdapter() != null) {
                getRecyclerView().getAdapter().notifyItemChanged(i9);
            }
        }
        startActivity(new Intent(getActivity(), FeedbackHistoryDetailActivity.class).putExtra("data", feedbackHistoryBean));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.feedback_feedback_history);
        getWindow().setBackgroundDrawable(new ColorDrawable(Color.parseColor("#F8F9FC")));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        get("tokens/sysHelp/queryFeedBackQuestionList").B("limit", 10).B("page", getCurrentPage()).M(new a());
    }
}
