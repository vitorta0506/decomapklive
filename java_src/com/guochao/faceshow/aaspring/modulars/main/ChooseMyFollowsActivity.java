package com.guochao.faceshow.aaspring.modulars.main;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.bean.FollowBean;
import com.guochao.faceshow.bean.FollowBeanLsit;
/* loaded from: classes3.dex */
public class ChooseMyFollowsActivity extends BaseRecyclerViewActivity<FollowBean, BaseViewHolder> {

    /* loaded from: classes3.dex */
    class a extends c<FollowBeanLsit.Result> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(FollowBeanLsit.Result result, @NonNull FaceCastBaseResponse<FollowBeanLsit.Result> faceCastBaseResponse) {
            ChooseMyFollowsActivity.this.addDatas(result.list);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<FollowBeanLsit.Result> aVar) {
            ChooseMyFollowsActivity.this.notifyDataLoaded();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: b0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, FollowBean followBean) {
        hc.a.e((ImageView) baseViewHolder.getView(R.id.avatar), followBean.getImg(), followBean.getSex());
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.flag);
        ((TextView) baseViewHolder.getView(R.id.user_name)).setText(followBean.getNick_name());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: d0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, FollowBean followBean) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_choose_my_follows;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(getString(R.string.focus));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        PostRequest post = post("user/attention/listAttention");
        post.D("currPage", getCurrentPage() + "").D("types", "0").D("pageSize", "1000").M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_choose_my_follow, viewGroup, false));
    }
}
