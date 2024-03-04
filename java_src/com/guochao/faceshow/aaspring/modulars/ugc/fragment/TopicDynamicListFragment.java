package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import ba.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.PublishUgcBean;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import java.util.List;
/* loaded from: classes3.dex */
public class TopicDynamicListFragment extends BaseDynamicListFragment implements a.e {

    /* renamed from: a  reason: collision with root package name */
    private UgcTopicBean f22796a;

    /* renamed from: b  reason: collision with root package name */
    private int f22797b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<DynamicBean>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<DynamicBean>> aVar) {
            TopicDynamicListFragment.this.notifyDataLoaded(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<DynamicBean> list, @NonNull FaceCastBaseResponse<List<DynamicBean>> faceCastBaseResponse) {
            if (list != null) {
                TopicDynamicListFragment.this.addDatas(list);
            }
            TopicDynamicListFragment.this.notifyDataLoaded(list != null && list.size() > 0);
        }
    }

    public static TopicDynamicListFragment R1(UgcTopicBean ugcTopicBean, int i9) {
        TopicDynamicListFragment topicDynamicListFragment = new TopicDynamicListFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", ugcTopicBean);
        bundle.putInt("type", i9);
        topicDynamicListFragment.setArguments(bundle);
        return topicDynamicListFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S1() {
        setCurrentPage(1);
        loadData(1);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        post("tokens/search/findRingListByTopicIdOrName").v("currPage", Integer.valueOf(getCurrentPage())).v("pageSize", 20).v("topicId", this.f22796a.getTopicId()).v("topicName", this.f22796a.getTopicName()).v("type", Integer.valueOf(this.f22797b)).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f22796a = (UgcTopicBean) getArguments().getParcelable("data");
            this.f22797b = getArguments().getInt("type", 1);
        }
        ba.a.r().registerOnPublishListener(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ba.a.r().unregisterOnPublishListener(this);
    }

    @Override // ba.a.e
    public void onPublishResponse(PublishUgcBean publishUgcBean) {
        if (getActivity() == null || getActivity().isDestroyed()) {
            return;
        }
        new Handler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.p
            @Override // java.lang.Runnable
            public final void run() {
                TopicDynamicListFragment.this.S1();
            }
        }, 1000L);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseDynamicViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        BaseDynamicViewHolder onCreateViewHolder = super.onCreateViewHolder(viewGroup, i9);
        onCreateViewHolder.K(true);
        return onCreateViewHolder;
    }
}
