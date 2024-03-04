package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes3.dex */
public class FeedbackHistoryDetailActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private FeedbackHistoryDetailActivity f17403c;

    /* renamed from: d  reason: collision with root package name */
    private View f17404d;

    /* renamed from: e  reason: collision with root package name */
    private View f17405e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FeedbackHistoryDetailActivity f17406a;

        a(FeedbackHistoryDetailActivity feedbackHistoryDetailActivity) {
            this.f17406a = feedbackHistoryDetailActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17406a.comment(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FeedbackHistoryDetailActivity f17408a;

        b(FeedbackHistoryDetailActivity feedbackHistoryDetailActivity) {
            this.f17408a = feedbackHistoryDetailActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17408a.reply(view);
        }
    }

    @UiThread
    public FeedbackHistoryDetailActivity_ViewBinding(FeedbackHistoryDetailActivity feedbackHistoryDetailActivity, View view) {
        super(feedbackHistoryDetailActivity, view);
        this.f17403c = feedbackHistoryDetailActivity;
        feedbackHistoryDetailActivity.mSmartRefreshLayout = (SmartRefreshLayout) c.d(view, R.id.refresh_layout, "field 'mSmartRefreshLayout'", SmartRefreshLayout.class);
        feedbackHistoryDetailActivity.mRecyclerView = (RecyclerView) c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        View c10 = c.c(view, R.id.comment, "field 'mCommentBtn' and method 'comment'");
        feedbackHistoryDetailActivity.mCommentBtn = c10;
        this.f17404d = c10;
        c10.setOnClickListener(new a(feedbackHistoryDetailActivity));
        View c11 = c.c(view, R.id.reply, "field 'mReplyBtn' and method 'reply'");
        feedbackHistoryDetailActivity.mReplyBtn = c11;
        this.f17405e = c11;
        c11.setOnClickListener(new b(feedbackHistoryDetailActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        FeedbackHistoryDetailActivity feedbackHistoryDetailActivity = this.f17403c;
        if (feedbackHistoryDetailActivity != null) {
            this.f17403c = null;
            feedbackHistoryDetailActivity.mSmartRefreshLayout = null;
            feedbackHistoryDetailActivity.mRecyclerView = null;
            feedbackHistoryDetailActivity.mCommentBtn = null;
            feedbackHistoryDetailActivity.mReplyBtn = null;
            this.f17404d.setOnClickListener(null);
            this.f17404d = null;
            this.f17405e.setOnClickListener(null);
            this.f17405e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
