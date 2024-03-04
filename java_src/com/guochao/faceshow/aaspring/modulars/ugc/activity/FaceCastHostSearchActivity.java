package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import java.util.List;
/* loaded from: classes3.dex */
public class FaceCastHostSearchActivity extends BaseRecyclerViewActivity<UgcTopicBean, BaseViewHolder> {
    @BindView
    TextView tvTips;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<UgcTopicBean>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<UgcTopicBean>> aVar) {
            FaceCastHostSearchActivity.this.getRefreshableLayout().w();
            FaceCastHostSearchActivity.this.getRefreshableLayout().f(false);
            FaceCastHostSearchActivity.this.notifyDataLoaded(false);
            if (FaceCastHostSearchActivity.this.getList().isEmpty()) {
                FaceCastHostSearchActivity.this.tvTips.setVisibility(8);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<UgcTopicBean> list, @NonNull FaceCastBaseResponse<List<UgcTopicBean>> faceCastBaseResponse) {
            FaceCastHostSearchActivity.this.getRefreshableLayout().w();
            FaceCastHostSearchActivity.this.getRefreshableLayout().f(false);
            if (list != null) {
                FaceCastHostSearchActivity.this.addDatas(list);
            }
            FaceCastHostSearchActivity.this.notifyDataLoaded(false);
            if (FaceCastHostSearchActivity.this.getList().isEmpty()) {
                FaceCastHostSearchActivity.this.showEmptyView();
                FaceCastHostSearchActivity.this.tvTips.setVisibility(8);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: b0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, UgcTopicBean ugcTopicBean) {
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_host_search_rank);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.tv_host_search_name);
        if (i9 == 0) {
            textView.setTextSize(16.0f);
            textView.setTextColor(ContextCompat.getColor(this, R.color.hostSearchTopOne));
        } else if (i9 == 1) {
            textView.setTextColor(ContextCompat.getColor(this, R.color.hostSearchTopTwo));
            textView.setTextSize(16.0f);
        } else if (i9 == 2) {
            textView.setTextColor(ContextCompat.getColor(this, R.color.hostSearchTopThree));
            textView.setTextSize(16.0f);
        } else {
            textView.setTextColor(ContextCompat.getColor(this, R.color.text_color2));
            textView.setTextSize(14.0f);
        }
        textView.setText(String.valueOf(i9 + 1));
        textView2.setText(ugcTopicBean.getTopicName());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: d0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, UgcTopicBean ugcTopicBean) {
        TopicHomePageActivity.r0(getActivity(), ugcTopicBean);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).e(true).d(false).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_host_search;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.ugc_facecast_hot_search);
        getRefreshableLayout().q();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post("tokens/search/findRecommendAndHotTopicList").v("recommendCount", 3).v("hotCount", 17).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        BaseViewHolder baseViewHolder = new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_host_search, viewGroup, false));
        FontUtils.setFont((TextView) baseViewHolder.getView(R.id.tv_host_search_rank), 2);
        return baseViewHolder;
    }
}
