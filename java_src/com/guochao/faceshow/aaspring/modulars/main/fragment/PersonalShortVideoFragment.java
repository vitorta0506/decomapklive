package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.lifecycle.ViewModelProvider;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ShortVideoViewModel;
import com.guochao.faceshow.activity.PersonVideoActivity;
import com.guochao.faceshow.bean.MusicTypeTopicList;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* loaded from: classes3.dex */
public class PersonalShortVideoFragment extends BaseShortVideoFragment {
    int L;
    List<VideoItem> M;
    int N;
    PersonVideoActivity.VideoUrlConfig O;
    private Runnable P = new a();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PersonalShortVideoFragment.this.isDetached() || PersonalShortVideoFragment.this.getActivity() == null) {
                return;
            }
            PersonalShortVideoFragment.this.H2("");
            PersonalShortVideoFragment.this.L = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Function1<Response<MusicTypeTopicList.Page>, Unit> {
        b() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Response<MusicTypeTopicList.Page> response) {
            if (response != null && response.getData() != null) {
                MusicTypeTopicList.Page data = response.getData();
                ArrayList<VideoItem> arrayList = data.list;
                if (arrayList != null && arrayList.size() != 0) {
                    int currentItem = PersonalShortVideoFragment.this.mViewPager2.getCurrentItem();
                    int size = PersonalShortVideoFragment.this.getList().size();
                    if (PersonalShortVideoFragment.this.getCurrentPage() == PersonalShortVideoFragment.this.getDefaultPage()) {
                        PersonalShortVideoFragment.this.getRecyclerView().scrollToPosition(0);
                        PersonalShortVideoFragment.this.getList().clear();
                        PersonalShortVideoFragment.this.getRefreshableLayout().w();
                        PersonalShortVideoFragment.this.getList().addAll(data.list);
                        PersonalShortVideoFragment.this.getRecyclerView().getAdapter().notifyDataSetChanged();
                    } else {
                        PersonalShortVideoFragment.this.getList().addAll(data.list);
                        PersonalShortVideoFragment.this.getRecyclerView().getAdapter().notifyItemRangeInserted(size, data.list.size());
                        PersonalShortVideoFragment.this.getRecyclerView().getAdapter().notifyItemRangeChanged(size, data.list.size());
                    }
                    if (PersonalShortVideoFragment.this.getCurrentPage() != PersonalShortVideoFragment.this.getDefaultPage()) {
                        PersonalShortVideoFragment.this.Q2(currentItem);
                    }
                    if (PersonalShortVideoFragment.this.getActivity() != null && !PersonalShortVideoFragment.this.isDetached()) {
                        PersonalShortVideoFragment.this.V2();
                    }
                    return Unit.INSTANCE;
                }
                PersonalShortVideoFragment.this.getRefreshableLayout().w();
                PersonalShortVideoFragment.this.getRefreshableLayout().v();
                if (PersonalShortVideoFragment.this.getActivity() != null && !PersonalShortVideoFragment.this.isDetached()) {
                    PersonalShortVideoFragment.this.V2();
                }
                return Unit.INSTANCE;
            }
            return Unit.INSTANCE;
        }
    }

    public static PersonalShortVideoFragment S2(int i9, int i10, List<VideoItem> list) {
        PersonalShortVideoFragment personalShortVideoFragment = new PersonalShortVideoFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i9);
        bundle.putInt("position", i10);
        bundle.putParcelableArrayList("data", (ArrayList) list);
        personalShortVideoFragment.setArguments(bundle);
        return personalShortVideoFragment;
    }

    public static PersonalShortVideoFragment T2(int i9, int i10, List<VideoItem> list, PersonVideoActivity.VideoUrlConfig videoUrlConfig) {
        PersonalShortVideoFragment personalShortVideoFragment = new PersonalShortVideoFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i9);
        bundle.putInt("position", i10);
        bundle.putParcelableArrayList("data", (ArrayList) list);
        bundle.putParcelable("config", videoUrlConfig);
        personalShortVideoFragment.setArguments(bundle);
        return personalShortVideoFragment;
    }

    private void U2(int i9) {
        this.mViewPager2.setCurrentItem(i9, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V2() {
        getRecyclerView().removeCallbacks(this.P);
        getRecyclerView().post(this.P);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment
    public void D2() {
        super.D2();
        if (this.O == null) {
            return;
        }
        setCurrentPage(getCurrentPage() + 1);
        loadData(getCurrentPage());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().c(false).d(false).a();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_layout_short_video_viewpager2;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.modulars.main.FloatingViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        super.loadData(i9);
        List<VideoItem> list = this.M;
        if (list != null) {
            if (this.O == null) {
                addDatas(list);
                notifyDataLoaded();
                U2(this.L);
                return;
            }
            ShortVideoViewHolder shortVideoViewHolder = this.f20656q;
            if (shortVideoViewHolder != null) {
                shortVideoViewHolder.R();
                this.f20656q = null;
            }
            if (i9 == getDefaultPage()) {
                addDatas(this.M);
                notifyDataLoaded();
                setCurrentPage(this.O.a());
                U2(this.L);
                V2();
                return;
            }
            ShortVideoViewModel shortVideoViewModel = (ShortVideoViewModel) new ViewModelProvider(this).get(ShortVideoViewModel.class);
            ArrayMap arrayMap = new ArrayMap();
            arrayMap.putAll(this.O.b());
            String str = arrayMap.get("musicId") == 0 ? "" : (String) arrayMap.get("musicId");
            String str2 = arrayMap.get("topicId") == 0 ? "" : (String) arrayMap.get("topicId");
            shortVideoViewModel.findVideoRelevantNew(this.O.getUrl(), str, "", arrayMap.get("is_private") == 0 ? "" : (String) arrayMap.get("is_private"), arrayMap.get("type") == 0 ? "" : (String) arrayMap.get("type"), getCurrentPage(), 12, str2, new b());
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.modulars.main.FloatingViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        if (getArguments() != null) {
            this.L = getArguments().getInt("position");
            this.M = getArguments().getParcelableArrayList("data");
            this.N = getArguments().getInt("type");
            this.O = (PersonVideoActivity.VideoUrlConfig) getArguments().getParcelable("config");
        }
        super.onCreate(bundle);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.l
    public void onDelete() {
        super.onDelete();
        if (getActivity() != null) {
            getActivity().setResult(-1);
            if (getList().isEmpty()) {
                getActivity().finish();
            }
        }
        int position = this.f20656q.getPosition();
        ShortVideoViewHolder shortVideoViewHolder = (ShortVideoViewHolder) getRecyclerView().findViewHolderForAdapterPosition(position);
        ShortVideoViewHolder shortVideoViewHolder2 = this.f20656q;
        if (shortVideoViewHolder2 != null) {
            shortVideoViewHolder2.R();
        }
        if (shortVideoViewHolder == null || getList() == null) {
            return;
        }
        M2(shortVideoViewHolder, position, getList().get(position));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        ShortVideoViewHolder shortVideoViewHolder = this.f20656q;
        if (shortVideoViewHolder != null) {
            shortVideoViewHolder.R();
        }
        getRecyclerView().removeCallbacks(this.P);
        getList().clear();
        notifyDataLoaded();
        super.onDestroy();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment
    public boolean x2() {
        return this.N != 1;
    }
}
