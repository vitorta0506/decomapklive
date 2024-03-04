package com.guochao.faceshow.mine.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.SimpleItemAnimator;
import butterknife.BindView;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.TextDrawableUtil;
import com.guochao.faceshow.mine.model.LiveHistoryBean;
import com.guochao.faceshow.mine.model.LiveHistoryListBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.ScreenTools;
import java.util.ArrayList;
@Route(name = "我的直播详情", path = RouterPath.ROUTER_APP_MY_LIVE_VIDEO_ACTIVITY)
/* loaded from: classes4.dex */
public class MyLiveVideoActivity extends BaseRecyclerViewActivity<LiveHistoryBean, BaseViewHolder> {
    @BindView
    View recyclerContentArea;

    /* loaded from: classes4.dex */
    class a extends c<LiveHistoryListBean.Page> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveHistoryListBean.Page page, @NonNull FaceCastBaseResponse<LiveHistoryListBean.Page> faceCastBaseResponse) {
            if (MyLiveVideoActivity.this.getActivity() == null || MyLiveVideoActivity.this.getActivity().isFinishing() || MyLiveVideoActivity.this.getActivity().isDestroyed() || page == null) {
                return;
            }
            if (page.totalPage == null) {
                page.totalPage = 0;
            }
            if (MyLiveVideoActivity.this.getCurrentPage() == MyLiveVideoActivity.this.getDefaultPage()) {
                MyLiveVideoActivity.this.getList().clear();
            }
            if (page.list == null) {
                page.list = new ArrayList<>();
            }
            MyLiveVideoActivity.this.addDatas(page.list);
            MyLiveVideoActivity.this.notifyDataLoaded(!page.list.isEmpty());
            MyLiveVideoActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveHistoryListBean.Page> aVar) {
            if (MyLiveVideoActivity.this.getItemCount() == 0) {
                MyLiveVideoActivity.this.showEmptyView();
            } else {
                MyLiveVideoActivity.this.notifyDataLoaded(true);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: b0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, LiveHistoryBean liveHistoryBean) {
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.imgs);
        TextView textView = (TextView) baseViewHolder.getView(R.id.live_duration);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.live_time);
        TextView textView3 = (TextView) baseViewHolder.getView(R.id.live_type);
        if (liveHistoryBean.getIsPublic() == 1) {
            TextDrawableUtil.clearDrawable(textView3);
        } else {
            TextDrawableUtil.addDrawableStart(textView3, R.mipmap.live_type_mult);
        }
        textView3.setText(getString(liveHistoryBean.getLiveType() == 1 ? R.string.live_launch_normal : R.string.Friend_Party));
        TextView textView4 = (TextView) baseViewHolder.getView(R.id.fansAdd);
        TextView textView5 = (TextView) baseViewHolder.getView(R.id.earnings);
        ((TextView) baseViewHolder.getView(R.id.totalCount)).setText(liveHistoryBean.getOnline_num() + "");
        if (liveHistoryBean.getAddFansVideo() < 0) {
            textView4.setText("-" + liveHistoryBean.getAddFansVideo() + "");
        } else if (liveHistoryBean.getAddFansVideo() == 0) {
            textView4.setText(liveHistoryBean.getAddFansVideo() + "");
        } else {
            textView4.setText("+" + liveHistoryBean.getAddFansVideo() + "");
        }
        if (liveHistoryBean.getAddPrice() < 0) {
            textView5.setText("-" + liveHistoryBean.getAddPrice() + "");
        } else if (liveHistoryBean.getAddPrice() == 0) {
            textView5.setText(liveHistoryBean.getAddPrice() + "");
        } else {
            textView5.setText("+" + liveHistoryBean.getAddPrice() + "");
        }
        textView.setText(liveHistoryBean.getIntervals());
        textView2.setText(liveHistoryBean.getStart_time());
        hc.a.r(imageView, liveHistoryBean.getLive_img(), R.drawable.default_image, 8);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: d0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, LiveHistoryBean liveHistoryBean) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_find_you_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.my_live_broadcast);
        getRecyclerView().setLayoutManager(new LinearLayoutManager(this));
        View emptyView = getEmptyView();
        emptyView.setBackgroundColor(ContextCompat.getColor(this, R.color.white));
        emptyView.setPadding(0, 0, 0, ScreenTools.dip2px(150.0f));
        emptyView.findViewById(R.id.empty_text).setVisibility(8);
        if (getRecyclerView().getItemAnimator() instanceof SimpleItemAnimator) {
            ((SimpleItemAnimator) getRecyclerView().getItemAnimator()).setSupportsChangeAnimations(false);
        }
        getRecyclerView().setBackgroundColor(ContextCompat.getColor(this, R.color.color_ugc_divider));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        PostRequest post = post(Contants.MINE_LIVE_HISTORY);
        post.D("page", i9 + "").D("limit", ThirdPushHelper.TYPE_HUAWEI).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(LayoutInflater.from(this).inflate(R.layout.item_live_broadcast, viewGroup, false));
    }
}
