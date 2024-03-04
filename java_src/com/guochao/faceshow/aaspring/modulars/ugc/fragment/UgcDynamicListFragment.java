package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class UgcDynamicListFragment extends BaseDynamicListFragment implements aa.g {
    aa.a mGenderProvider;
    PostRequest mLastRequest;
    aa.f mOnDynamicRefreshListener;
    private int mPosition;
    private int mType;
    private List<DynamicBean> mCacheBeans = new ArrayList();
    private int mLastGender = 2;
    private boolean mIsFirstRun = true;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<DynamicBean>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<DynamicBean>> aVar) {
            UgcDynamicListFragment.this.onFailure(aVar);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<DynamicBean> list, @NonNull FaceCastBaseResponse<List<DynamicBean>> faceCastBaseResponse) {
            UgcDynamicListFragment.this.onResponse(list, faceCastBaseResponse);
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_list_success);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends TypeToken<List<DynamicBean>> {
        b() {
        }
    }

    public static UgcDynamicListFragment getInstance(int i9, int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt("type", i9);
        bundle.putInt("position", i10);
        UgcDynamicListFragment ugcDynamicListFragment = new UgcDynamicListFragment();
        ugcDynamicListFragment.setArguments(bundle);
        return ugcDynamicListFragment;
    }

    private void readCaches() {
        List list = (List) com.guochao.faceshow.aaspring.manager.b.a("dynamic", "dynamic" + this.mType, new b().getType());
        if (list == null || list.size() <= 0) {
            return;
        }
        this.mCacheBeans.addAll(list);
    }

    private void writeCaches(List<DynamicBean> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        com.guochao.faceshow.aaspring.manager.b.f("dynamic", "dynamic" + this.mType, list);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        PostRequest postRequest = this.mLastRequest;
        if (postRequest != null) {
            postRequest.cancel();
        }
        if (this.mIsFirstRun) {
            this.mIsFirstRun = false;
            List<DynamicBean> list = this.mCacheBeans;
            if (list != null && !list.isEmpty()) {
                addDatas(this.mCacheBeans);
                notifyDataLoaded();
            }
        }
        if (getCurrentPage() == 1) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_refresh);
        } else {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_load_more);
        }
        aa.a aVar = this.mGenderProvider;
        int k10 = aVar == null ? 2 : aVar.k();
        this.mLastGender = k10;
        this.mLastRequest = post("tokens/friend/list/home_page").v("queryType", Integer.valueOf(this.mType)).v("page", Integer.valueOf(getCurrentPage())).v("limit", 20).v("seeSex", k10 == 2 ? null : Integer.valueOf(k10)).M(new a());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof aa.a) {
            this.mGenderProvider = (aa.a) parentFragment;
        }
        if (parentFragment instanceof aa.f) {
            this.mOnDynamicRefreshListener = (aa.f) parentFragment;
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        boolean z10 = true;
        if (getArguments() != null) {
            this.mType = getArguments().getInt("type", 1);
            this.mPosition = getArguments().getInt("position");
        }
        readCaches();
        List<DynamicBean> list = this.mCacheBeans;
        setShowRefreshOnInit((list == null || !list.isEmpty()) ? false : false);
    }

    public void onFailure(g7.a<List<DynamicBean>> aVar) {
        notifyDataLoaded(false);
        aa.f fVar = this.mOnDynamicRefreshListener;
        if (fVar != null) {
            fVar.g0(this.mPosition, null);
        }
    }

    @Override // aa.g
    public void onGenderChanged(int i9) {
        if (this.mLastGender != i9) {
            reload();
        }
    }

    public /* bridge */ /* synthetic */ void onResponse(Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
        onResponse((List) obj, (FaceCastBaseResponse<List<DynamicBean>>) faceCastBaseResponse);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseDynamicViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        BaseDynamicViewHolder onCreateViewHolder = super.onCreateViewHolder(viewGroup, i9);
        onCreateViewHolder.K(this.mType == 3);
        return onCreateViewHolder;
    }

    public void onResponse(List<DynamicBean> list, @NonNull FaceCastBaseResponse<List<DynamicBean>> faceCastBaseResponse) {
        if (list == null) {
            list = new ArrayList<>();
        }
        if (getCurrentPage() == getDefaultPage()) {
            writeCaches(list);
            if (this.mOnDynamicRefreshListener != null) {
                com.guochao.faceshow.aaspring.manager.i.u().s().setIsFriendNew(0);
                this.mOnDynamicRefreshListener.g0(this.mPosition, list);
            }
            getRecyclerView().scrollToPosition(0);
        }
        addDatas(list);
        notifyDataLoaded(list.size() > 0);
    }
}
