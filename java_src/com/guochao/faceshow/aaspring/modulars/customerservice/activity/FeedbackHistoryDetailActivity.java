package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.app.Dialog;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.net.Uri;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FeedbackFileInfo;
import com.guochao.faceshow.aaspring.beans.FeedbackHistoryBean;
import com.guochao.faceshow.aaspring.beans.FeedbackHistoryDetailBean;
import com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackHistoryActivity;
import com.guochao.faceshow.aaspring.modulars.customerservice.adapter.FeedbackDetailAdapter;
import com.guochao.faceshow.aaspring.modulars.customerservice.fragment.FeedbackReplyFragment;
import com.guochao.faceshow.aaspring.modulars.customerservice.fragment.FeedbackScoreFragment;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.views.ExpandTextView;
import com.guochao.faceshow.aaspring.views.RatioHeightImageView;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.views.e;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import wd.j;
/* loaded from: classes3.dex */
public class FeedbackHistoryDetailActivity extends BaseActivity implements FeedbackReplyFragment.b, FeedbackScoreFragment.d {

    /* renamed from: a  reason: collision with root package name */
    FeedbackHistoryBean f17373a;

    /* renamed from: b  reason: collision with root package name */
    FeedbackDetailAdapter f17374b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private FeedbackHistoryDetailBean f17375c;
    @BindView
    View mCommentBtn;
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    View mReplyBtn;
    @BindView
    SmartRefreshLayout mSmartRefreshLayout;

    /* loaded from: classes3.dex */
    public static class DetailHeaderHolder extends FeedbackHistoryActivity.FeedbackHistoryBeanHolder {

        /* renamed from: a  reason: collision with root package name */
        FeedbackHistoryDetailBean f17376a;

        /* renamed from: b  reason: collision with root package name */
        boolean f17377b;

        /* loaded from: classes3.dex */
        class a extends RecyclerView.ItemDecoration {
            a() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(@NonNull @NotNull Rect rect, @NonNull @NotNull View view, @NonNull @NotNull RecyclerView recyclerView, @NonNull @NotNull RecyclerView.State state) {
                int viewAdapterPosition = ((RecyclerView.LayoutParams) view.getLayoutParams()).getViewAdapterPosition() % 3;
                if (viewAdapterPosition == 0) {
                    rect.right = DensityUtil.dp2px(4.0f);
                } else if (viewAdapterPosition == 1) {
                    rect.right = DensityUtil.dp2px(2.0f);
                    rect.left = DensityUtil.dp2px(2.0f);
                } else if (viewAdapterPosition == 2) {
                    rect.left = DensityUtil.dp2px(4.0f);
                }
                rect.bottom = DensityUtil.dp2px(8.0f);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements ExpandTextView.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ View f17379a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ TextView f17380b;

            b(View view, TextView textView) {
                this.f17379a = view;
                this.f17380b = textView;
            }

            @Override // com.guochao.faceshow.aaspring.views.ExpandTextView.a
            public void a() {
                DetailHeaderHolder.this.f17377b = false;
                this.f17379a.setVisibility(0);
                this.f17380b.setText(R.string.ugc_expand);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ FeedbackHistoryDetailBean f17382a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ View f17383b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ TextView f17384c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ ImageView f17385d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ ExpandTextView f17386e;

            c(FeedbackHistoryDetailBean feedbackHistoryDetailBean, View view, TextView textView, ImageView imageView, ExpandTextView expandTextView) {
                this.f17382a = feedbackHistoryDetailBean;
                this.f17383b = view;
                this.f17384c = textView;
                this.f17385d = imageView;
                this.f17386e = expandTextView;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DetailHeaderHolder detailHeaderHolder = DetailHeaderHolder.this;
                boolean z10 = !detailHeaderHolder.f17377b;
                detailHeaderHolder.f17377b = z10;
                if (z10) {
                    if (!this.f17382a.getFileList().isEmpty()) {
                        this.f17383b.setVisibility(0);
                    }
                    this.f17384c.setText(R.string.feedback_pack);
                    this.f17385d.setRotation(180.0f);
                    this.f17386e.setExpandText(EditTextUtils.getLinkedText(DetailHeaderHolder.this.f17376a.getDetail(), false));
                    return;
                }
                this.f17386e.setForceExpand(false);
                this.f17383b.setVisibility(8);
                this.f17384c.setText(R.string.ugc_expand);
                this.f17385d.setRotation(0.0f);
                this.f17386e.setPackedText(EditTextUtils.getLinkedText(DetailHeaderHolder.this.f17376a.getDetail(), false));
            }
        }

        public DetailHeaderHolder(View view) {
            super(view);
            this.f17377b = false;
            ((RecyclerView) view.findViewById(R.id.recycler_view)).addItemDecoration(new a());
        }

        public void e(FeedbackHistoryDetailBean feedbackHistoryDetailBean) {
            if (this.f17376a == feedbackHistoryDetailBean) {
                c((TextView) getView(R.id.state), feedbackHistoryDetailBean.getStatus());
                return;
            }
            this.f17376a = feedbackHistoryDetailBean;
            ((TextView) getView(R.id.question_title)).setText(this.f17376a.getTypeName());
            FeedbackHistoryDetailActivity.m0((RecyclerView) getView(R.id.recycler_view), feedbackHistoryDetailBean.getFileList(), true);
            TextView textView = (TextView) getView(R.id.expand);
            ImageView imageView = (ImageView) getView(R.id.expand_icon);
            ExpandTextView expandTextView = (ExpandTextView) getView(R.id.content);
            View view = getView(R.id.recycler_view_area);
            View view2 = getView(R.id.expand_area);
            if (feedbackHistoryDetailBean.getFileList() != null && !feedbackHistoryDetailBean.getFileList().isEmpty()) {
                view2.setVisibility(0);
            }
            if (feedbackHistoryDetailBean.getStatus() == 4 && feedbackHistoryDetailBean.getEvaluateStore() > 0) {
                expandTextView.setForceExpand(true);
                if (!feedbackHistoryDetailBean.getFileList().isEmpty()) {
                    view.setVisibility(0);
                }
                textView.setText(R.string.feedback_pack);
                imageView.setRotation(180.0f);
                view2.setVisibility(0);
                this.f17377b = true;
            } else {
                expandTextView.setForceExpand(false);
                this.f17377b = false;
            }
            expandTextView.setOnShowExpand(new b(view2, textView));
            textView.setOnClickListener(new c(feedbackHistoryDetailBean, view, textView, imageView, expandTextView));
            super.d(feedbackHistoryDetailBean);
        }
    }

    /* loaded from: classes3.dex */
    public static class ReplyHolder extends BaseViewHolder {

        /* loaded from: classes3.dex */
        class a extends RecyclerView.ItemDecoration {
            a() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(@NonNull @NotNull Rect rect, @NonNull @NotNull View view, @NonNull @NotNull RecyclerView recyclerView, @NonNull @NotNull RecyclerView.State state) {
                int viewAdapterPosition = ((RecyclerView.LayoutParams) view.getLayoutParams()).getViewAdapterPosition() % 3;
                if (viewAdapterPosition == 0) {
                    rect.right = DensityUtil.dp2px(6.0f);
                } else if (viewAdapterPosition == 1) {
                    rect.right = DensityUtil.dp2px(3.0f);
                    rect.left = DensityUtil.dp2px(3.0f);
                } else if (viewAdapterPosition == 2) {
                    rect.left = DensityUtil.dp2px(6.0f);
                }
                rect.bottom = DensityUtil.dp2px(11.5f);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ FeedbackHistoryDetailActivity f17389a;

            b(FeedbackHistoryDetailActivity feedbackHistoryDetailActivity) {
                this.f17389a = feedbackHistoryDetailActivity;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f17389a.n0(false);
            }
        }

        public ReplyHolder(View view) {
            super(view);
            ((RecyclerView) view.findViewById(R.id.recycler_view)).addItemDecoration(new a());
        }

        public void c(FeedbackHistoryDetailActivity feedbackHistoryDetailActivity, FeedbackHistoryDetailBean feedbackHistoryDetailBean, FeedbackHistoryDetailBean.FeedbackQuestionDetailBean feedbackQuestionDetailBean) {
            TextView textView = (TextView) getView(R.id.content);
            textView.setText(EditTextUtils.getLinkedText(feedbackQuestionDetailBean.getDetail(), false));
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            ImageView imageView = (ImageView) getView(R.id.icon1);
            if (feedbackHistoryDetailBean.getStatus() != 4) {
                imageView.setImageResource(R.mipmap.selector_notselected);
            } else {
                imageView.setImageResource(R.mipmap.selector_selected);
            }
            TextView textView2 = (TextView) getView(R.id.date);
            TextView textView3 = (TextView) getView(R.id.time);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd");
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("HH:mm");
            textView2.setText(simpleDateFormat.format(new Date(feedbackQuestionDetailBean.getCreateTime() * 1000)));
            if (getItemViewType() == 2) {
                textView2.setTextColor(this.itemView.getResources().getColor(R.color.color_ugc_text_level_1));
            } else {
                textView2.setTextColor(this.itemView.getResources().getColor(R.color.color_ugc_text_level_3));
            }
            textView3.setText(simpleDateFormat2.format(new Date(feedbackQuestionDetailBean.getCreateTime() * 1000)));
            View view = getView(R.id.divider1);
            View view2 = getView(R.id.divider2);
            if (getAdapterPosition() == 1) {
                view.setVisibility(0);
                view2.setVisibility(8);
            } else {
                view.setVisibility(8);
                view2.setVisibility(0);
            }
            FeedbackHistoryDetailActivity.m0((RecyclerView) getView(R.id.recycler_view), feedbackQuestionDetailBean.getFileList(), false);
            TextView textView4 = (TextView) getView(R.id.reply_author_name);
            if (feedbackQuestionDetailBean.getCreateUserType() == 1) {
                textView4.setText(this.itemView.getResources().getString(R.string.feedback_kefu_reply, feedbackQuestionDetailBean.getCreateUserName()));
                textView4.setTextColor(this.itemView.getResources().getColor(R.color.color_ugc_text_level_1));
                textView4.setTypeface(Typeface.DEFAULT, 1);
                textView4.setTextSize(14.0f);
                textView.setTextColor(this.itemView.getResources().getColor(R.color.color_ugc_text_level_2));
            } else {
                textView4.setText(this.itemView.getResources().getText(R.string.feedback_my_reply));
                textView4.setTypeface(Typeface.DEFAULT, 0);
                textView4.setTextColor(this.itemView.getResources().getColor(R.color.color_ugc_text_level_3));
                textView4.setTextSize(12.0f);
                textView.setTextColor(this.itemView.getResources().getColor(R.color.color_ugc_text_level_3));
            }
            View view3 = getView(R.id.comment);
            if (feedbackQuestionDetailBean.getShowScore()) {
                view3.setVisibility(0);
                view3.setOnClickListener(new b(feedbackHistoryDetailActivity));
                return;
            }
            view3.setVisibility(8);
            view3.setOnClickListener(null);
        }
    }

    /* loaded from: classes3.dex */
    public static class TobeHandled extends FeedbackHistoryDetailBean.FeedbackQuestionDetailBean {
        @Override // com.guochao.faceshow.aaspring.beans.FeedbackHistoryDetailBean.FeedbackQuestionDetailBean, com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackHistoryDetailActivity.f
        public int getItemViewType(int i9) {
            return 10;
        }
    }

    /* loaded from: classes3.dex */
    public static class TobeHandlerHolder extends BaseViewHolder {
        public TobeHandlerHolder(View view) {
            super(view);
        }

        public void c(TobeHandled tobeHandled) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd");
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("HH:mm");
            ((TextView) getView(R.id.date)).setText(simpleDateFormat.format(new Date(tobeHandled.getCreateTime() * 1000)));
            ((TextView) getView(R.id.time)).setText(simpleDateFormat2.format(new Date(tobeHandled.getCreateTime() * 1000)));
        }
    }

    /* loaded from: classes3.dex */
    class a implements zd.e {
        a() {
        }

        @Override // zd.d
        public void a(@NonNull @NotNull j jVar) {
            FeedbackHistoryDetailActivity.this.loadData();
        }

        @Override // zd.b
        public void b(@NonNull @NotNull j jVar) {
        }
    }

    /* loaded from: classes3.dex */
    class b implements v.e {

        /* loaded from: classes3.dex */
        class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    dialog.dismiss();
                    FeedbackHistoryDetailActivity.this.k0();
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        b() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            if (FeedbackHistoryDetailActivity.this.f17375c == null || FeedbackHistoryDetailActivity.this.f17375c.getStatus() != 4) {
                FeedbackHistoryDetailActivity feedbackHistoryDetailActivity = FeedbackHistoryDetailActivity.this;
                feedbackHistoryDetailActivity.alert(null, feedbackHistoryDetailActivity.getString(R.string.feedback_alert_close), new a(), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<Boolean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable @org.jetbrains.annotations.Nullable Boolean bool, @NonNull @NotNull FaceCastBaseResponse<Boolean> faceCastBaseResponse) {
            if (bool != null && bool.booleanValue()) {
                FeedbackHistoryDetailActivity.this.n0(true);
            } else {
                onFailure(new g7.a<>());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            FeedbackHistoryDetailActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<Boolean> aVar) {
            FeedbackHistoryDetailActivity.this.showToast(aVar.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<FeedbackHistoryDetailBean> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable FeedbackHistoryDetailBean feedbackHistoryDetailBean, @NonNull FaceCastBaseResponse<FeedbackHistoryDetailBean> faceCastBaseResponse) {
            FeedbackHistoryDetailActivity.this.f17375c = feedbackHistoryDetailBean;
            FeedbackHistoryDetailActivity.this.f17374b.a(feedbackHistoryDetailBean);
            FeedbackHistoryDetailActivity.this.mSmartRefreshLayout.w();
            FeedbackHistoryDetailActivity.this.l0();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<FeedbackHistoryDetailBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends RecyclerView.Adapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f17396a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f17397b;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ RecyclerView.ViewHolder f17398a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f17399b;

            a(RecyclerView.ViewHolder viewHolder, int i9) {
                this.f17398a = viewHolder;
                this.f17399b = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f17398a.getItemViewType() == 1) {
                    view.getContext().startActivity(new Intent(view.getContext(), FeedbackVideoPreviewActivity.class).putExtra(TCConstants.VIDEO_RECORD_VIDEPATH, Uri.parse(((FeedbackFileInfo) e.this.f17397b.get(this.f17399b)).getUrl())));
                } else {
                    FeedbackImagePreviewActivity.l0(view.getContext(), e.this.f17397b, this.f17399b);
                }
            }
        }

        e(boolean z10, List list) {
            this.f17396a = z10;
            this.f17397b = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List list = this.f17397b;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i9) {
            return ((FeedbackFileInfo) this.f17397b.get(i9)).getFileType();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull @NotNull RecyclerView.ViewHolder viewHolder, int i9) {
            ImageView imageView = (ImageView) viewHolder.itemView.findViewById(R.id.img);
            hc.a.h(imageView, ((FeedbackFileInfo) this.f17397b.get(i9)).getSmallUrl(), R.drawable.shape_placeholder);
            imageView.setOnClickListener(new a(viewHolder, i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull @NotNull ViewGroup viewGroup, int i9) {
            FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
            RatioHeightImageView ratioHeightImageView = new RatioHeightImageView(viewGroup.getContext());
            ratioHeightImageView.setId(R.id.img);
            ratioHeightImageView.setRatio(this.f17396a ? 1.0f : 1.7777778f);
            frameLayout.addView(ratioHeightImageView, new FrameLayout.LayoutParams(-1, -2));
            frameLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            if (i9 == 1) {
                ImageView imageView = new ImageView(viewGroup.getContext());
                imageView.setImageResource(R.mipmap.icon_btn_viedio);
                frameLayout.addView(imageView, new FrameLayout.LayoutParams(-2, -2, 17));
            }
            return new BaseViewHolder(frameLayout);
        }
    }

    /* loaded from: classes3.dex */
    public interface f {
        int getItemViewType(int i9);
    }

    /* loaded from: classes3.dex */
    public static class g implements f {

        /* renamed from: a  reason: collision with root package name */
        public String f17401a;

        /* renamed from: b  reason: collision with root package name */
        public int f17402b;

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackHistoryDetailActivity.f
        public int getItemViewType(int i9) {
            return 100;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0() {
        showProgressDialog("");
        post("tokens/sysHelp/closeFeedBackQuestion").y("feedQuestionId", Integer.valueOf(this.f17373a.getFeedQuestionId())).M(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0() {
        FeedbackHistoryDetailBean feedbackHistoryDetailBean = this.f17375c;
        if (feedbackHistoryDetailBean != null && feedbackHistoryDetailBean.getStatus() == 4) {
            if (this.f17375c.getEvaluateStore() > 0) {
                this.mCommentBtn.setVisibility(8);
            } else {
                this.mCommentBtn.setVisibility(0);
            }
            this.mReplyBtn.setVisibility(8);
            return;
        }
        this.mCommentBtn.setVisibility(8);
        this.mReplyBtn.setVisibility(0);
    }

    public static void m0(RecyclerView recyclerView, List<FeedbackFileInfo> list, boolean z10) {
        recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), 3));
        recyclerView.setAdapter(new e(z10, list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0(boolean z10) {
        if (this.f17375c != null && z10) {
            setEndText("", R.color.transparent);
            this.f17375c.setStatus(4);
            l0();
            this.f17374b.a(this.f17375c);
        }
        FeedbackScoreFragment.P1(String.valueOf(this.f17373a.getFeedQuestionId())).show(getSupportFragmentManager(), "score");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.customerservice.fragment.FeedbackReplyFragment.b
    public void B(FeedbackHistoryDetailBean.FeedbackQuestionDetailBean feedbackQuestionDetailBean) {
        this.f17374b.B(feedbackQuestionDetailBean);
    }

    @OnClick
    public void comment(View view) {
        n0(false);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_feedback_history_detail;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.feedback_history_detail);
        FeedbackHistoryBean feedbackHistoryBean = (FeedbackHistoryBean) getIntent().getParcelableExtra("data");
        this.f17373a = feedbackHistoryBean;
        if (feedbackHistoryBean == null) {
            finish();
            return;
        }
        this.mSmartRefreshLayout.L(false);
        this.mSmartRefreshLayout.U(new a());
        this.mSmartRefreshLayout.p(0, 60, 1.0f, true);
        RecyclerView recyclerView = this.mRecyclerView;
        FeedbackDetailAdapter feedbackDetailAdapter = new FeedbackDetailAdapter(this);
        this.f17374b = feedbackDetailAdapter;
        recyclerView.setAdapter(feedbackDetailAdapter);
        if (this.f17373a.getStatus() != 4) {
            setEndText(getString(R.string.feedback_close), R.color.color_text_special_2);
            this.mTitleBarHelper.setOnRightTextClickListener(new b());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        if (this.f17373a == null) {
            return;
        }
        post("tokens/sysHelp/queryFeedBackQuestionDetail").y("feedQuestionId", Integer.valueOf(this.f17373a.getFeedQuestionId())).y("language", q7.a.e().c()).M(new d());
    }

    @OnClick
    public void reply(View view) {
        FeedbackReplyFragment.P1(String.valueOf(this.f17373a.getFeedQuestionId())).show(getSupportFragmentManager(), "reply_dialog");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.customerservice.fragment.FeedbackScoreFragment.d
    public void y(int i9, String str) {
        FeedbackHistoryDetailBean feedbackHistoryDetailBean = this.f17375c;
        if (feedbackHistoryDetailBean != null) {
            feedbackHistoryDetailBean.setEvaluateStore(i9);
            this.f17375c.setEvaluate(str);
            this.f17374b.a(this.f17375c);
            l0();
        }
    }
}
