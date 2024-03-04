package com.guochao.faceshow.aaspring.modulars.customerservice.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.FeedbackHistoryDetailBean;
import com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackHistoryDetailActivity;
import com.guochao.faceshow.aaspring.modulars.customerservice.fragment.FeedbackReplyFragment;
import com.guochao.faceshow.aaspring.views.RatingBar;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class FeedbackDetailAdapter extends RecyclerView.Adapter<BaseViewHolder> implements FeedbackReplyFragment.b {

    /* renamed from: a  reason: collision with root package name */
    final List<FeedbackHistoryDetailActivity.f> f17448a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    FeedbackHistoryDetailBean f17449b;

    /* renamed from: c  reason: collision with root package name */
    private FeedbackHistoryDetailActivity f17450c;

    public FeedbackDetailAdapter(FeedbackHistoryDetailActivity feedbackHistoryDetailActivity) {
        this.f17450c = feedbackHistoryDetailActivity;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.customerservice.fragment.FeedbackReplyFragment.b
    public void B(FeedbackHistoryDetailBean.FeedbackQuestionDetailBean feedbackQuestionDetailBean) {
        this.f17449b.getFeedBackQuestionDetails().add(0, feedbackQuestionDetailBean);
        this.f17448a.add(1, feedbackQuestionDetailBean);
        notifyDataSetChanged();
    }

    public void a(FeedbackHistoryDetailBean feedbackHistoryDetailBean) {
        this.f17449b = feedbackHistoryDetailBean;
        this.f17448a.clear();
        this.f17448a.add(feedbackHistoryDetailBean);
        boolean z10 = feedbackHistoryDetailBean.getStatus() == 4 && feedbackHistoryDetailBean.getEvaluateStore() <= 0;
        if (feedbackHistoryDetailBean.getFeedBackQuestionDetails() != null) {
            int size = feedbackHistoryDetailBean.getFeedBackQuestionDetails().size();
            if (size >= 1) {
                this.f17448a.addAll(feedbackHistoryDetailBean.getFeedBackQuestionDetails().subList(0, size - 1));
            }
            for (int i9 = 0; i9 < feedbackHistoryDetailBean.getFeedBackQuestionDetails().size(); i9++) {
                if (z10) {
                    boolean z11 = feedbackHistoryDetailBean.getFeedBackQuestionDetails().get(i9).getCreateUserType() == 1;
                    feedbackHistoryDetailBean.getFeedBackQuestionDetails().get(i9).setShowScore(z11);
                    if (z11) {
                        break;
                    }
                } else {
                    feedbackHistoryDetailBean.getFeedBackQuestionDetails().get(i9).setShowScore(false);
                }
            }
        }
        FeedbackHistoryDetailActivity.TobeHandled tobeHandled = new FeedbackHistoryDetailActivity.TobeHandled();
        tobeHandled.setCreateTime(this.f17449b.getCreateTime());
        this.f17448a.add(tobeHandled);
        if (feedbackHistoryDetailBean.getStatus() == 4 && feedbackHistoryDetailBean.getEvaluateStore() > 0) {
            FeedbackHistoryDetailActivity.g gVar = new FeedbackHistoryDetailActivity.g();
            gVar.f17401a = feedbackHistoryDetailBean.getEvaluate();
            gVar.f17402b = feedbackHistoryDetailBean.getEvaluateStore();
            this.f17448a.add(gVar);
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f17448a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        return this.f17448a.get(i9).getItemViewType(i9);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull @NotNull BaseViewHolder baseViewHolder, int i9) {
        if (baseViewHolder instanceof FeedbackHistoryDetailActivity.DetailHeaderHolder) {
            ((FeedbackHistoryDetailActivity.DetailHeaderHolder) baseViewHolder).e(this.f17449b);
        } else if (baseViewHolder.getItemViewType() == 100) {
            FeedbackHistoryDetailActivity.g gVar = (FeedbackHistoryDetailActivity.g) this.f17448a.get(i9);
            baseViewHolder.setText(R.id.content, gVar.f17401a);
            RatingBar ratingBar = (RatingBar) baseViewHolder.getView(R.id.rating_bar);
            ratingBar.setStar(gVar.f17402b);
            ratingBar.setClickable(false);
        } else if (baseViewHolder.getItemViewType() != 2 && baseViewHolder.getItemViewType() != 3) {
            if (baseViewHolder.getItemViewType() == 10) {
                ((FeedbackHistoryDetailActivity.TobeHandlerHolder) baseViewHolder).c((FeedbackHistoryDetailActivity.TobeHandled) this.f17448a.get(i9));
            }
        } else {
            ((FeedbackHistoryDetailActivity.ReplyHolder) baseViewHolder).c(this.f17450c, this.f17449b, (FeedbackHistoryDetailBean.FeedbackQuestionDetailBean) this.f17448a.get(i9));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NonNull @NotNull ViewGroup viewGroup, int i9) {
        if (i9 != 0) {
            if (i9 != 10) {
                if (i9 != 100) {
                    return new FeedbackHistoryDetailActivity.ReplyHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_feedback_history_detail, viewGroup, false));
                }
                return new BaseViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_footer_feedback_score, viewGroup, false));
            }
            return new FeedbackHistoryDetailActivity.TobeHandlerHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_feedback_history_to_be_handled, viewGroup, false));
        }
        return new FeedbackHistoryDetailActivity.DetailHeaderHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_feedback_history_header, viewGroup, false));
    }
}
