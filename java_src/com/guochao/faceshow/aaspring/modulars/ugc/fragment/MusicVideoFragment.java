package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.lifecycle.ViewModelProvider;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ShortVideoViewModel;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.activity.PersonVideoActivity;
import com.guochao.faceshow.activity.VideoPlayListActivity;
import com.guochao.faceshow.bean.MusicTypeTopicList;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Tool;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* loaded from: classes3.dex */
public class MusicVideoFragment extends VideoTopicFragment {

    /* renamed from: d  reason: collision with root package name */
    int f22743d;

    /* renamed from: e  reason: collision with root package name */
    String f22744e;

    /* renamed from: f  reason: collision with root package name */
    String f22745f;

    /* loaded from: classes3.dex */
    class a implements Function1<Response<MusicTypeTopicList.Page>, Unit> {
        a() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Response<MusicTypeTopicList.Page> response) {
            if (response != null && response.getData() != null && response.isSuccessful()) {
                if (MusicVideoFragment.this.getCurrentPage() == 1) {
                    MusicVideoFragment.this.getList().clear();
                }
                MusicVideoFragment.this.getList().addAll(response.getData().list);
                MusicVideoFragment.this.showEmptyView();
                MusicVideoFragment.this.notifyDataLoaded(true);
            } else {
                MusicVideoFragment.this.notifyDataLoaded(false);
                MusicVideoFragment.this.showEmptyView();
            }
            return Unit.INSTANCE;
        }
    }

    public static MusicVideoFragment R1(int i9, String str, String str2) {
        MusicVideoFragment musicVideoFragment = new MusicVideoFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i9);
        bundle.putString("musicId", str);
        bundle.putString("musicName", str2);
        musicVideoFragment.setArguments(bundle);
        return musicVideoFragment;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.VideoTopicFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        ShortVideoViewModel shortVideoViewModel = (ShortVideoViewModel) new ViewModelProvider(this).get(ShortVideoViewModel.class);
        String str = Contants.findVideoRelevantNew_v2;
        String str2 = this.f22744e;
        String str3 = SpUtils.getStr(getActivity(), Contants.CURRENT_COUNTRY_CODING);
        shortVideoViewModel.findVideoRelevantNew(str, str2, str3, "", this.f22743d + "", getCurrentPage(), 12, "", new a());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.VideoTopicFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f22743d = (getArguments().getInt("type") + 1) % 3;
            this.f22744e = getArguments().getString("musicId");
            this.f22745f = getArguments().getString("musicName");
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.VideoTopicFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, VideoItem videoItem) {
        Tool.mDataList = getList();
        View view = baseViewHolder.itemView;
        ActivityOptionsCompat makeScaleUpAnimation = ActivityOptionsCompat.makeScaleUpAnimation(view, view.getWidth() / 2, view.getHeight() / 2, 0, 0);
        Intent intent = new Intent(getActivity(), VideoPlayListActivity.class);
        PersonVideoActivity.VideoUrlConfig videoUrlConfig = new PersonVideoActivity.VideoUrlConfig();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("musicId", this.f22744e);
        hashMap.put(UserDataStore.COUNTRY, SpUtils.getStr(getActivity(), Contants.CURRENT_COUNTRY_CODING));
        hashMap.put("type", this.f22743d + "");
        hashMap.put("limit", "12");
        videoUrlConfig.c(getCurrentPage());
        videoUrlConfig.e(Contants.findVideoRelevantNew_v2);
        videoUrlConfig.d(hashMap);
        intent.putExtra("config", videoUrlConfig);
        intent.putExtra("position", i9);
        intent.putExtra("currPage", getCurrentPage());
        intent.putExtra("type", this.f22743d);
        intent.putExtra("musicId", this.f22744e);
        intent.putExtra("musicName", this.f22745f);
        intent.putExtra("config", videoUrlConfig);
        startActivity(intent, makeScaleUpAnimation.toBundle());
    }
}
