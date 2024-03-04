package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ShortVideoViewModel;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.activity.PersonVideoActivity;
import com.guochao.faceshow.activity.VideoPlayListActivity;
import com.guochao.faceshow.bean.MusicTypeTopicList;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.Tool;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* loaded from: classes3.dex */
public class VideoTopicFragment extends BaseRecyclerViewFragment<VideoItem, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private String f22859a;

    /* renamed from: b  reason: collision with root package name */
    private int f22860b;

    /* renamed from: c  reason: collision with root package name */
    private String f22861c;

    /* loaded from: classes3.dex */
    class a extends RecyclerView.ItemDecoration {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            super.getItemOffsets(rect, view, recyclerView, state);
            rect.set(DensityUtil.dp2px(1.0f), DensityUtil.dp2px(1.0f), DensityUtil.dp2px(1.0f), 0);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Function1<Response<MusicTypeTopicList.Page>, Unit> {
        b() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Response<MusicTypeTopicList.Page> response) {
            if (response != null && response.getData() != null && response.isSuccessful()) {
                if (VideoTopicFragment.this.getCurrentPage() == 1) {
                    VideoTopicFragment.this.getList().clear();
                }
                VideoTopicFragment.this.getList().addAll(response.getData().list);
                VideoTopicFragment.this.showEmptyView();
                VideoTopicFragment.this.notifyDataLoaded(true);
            } else {
                VideoTopicFragment.this.notifyDataLoaded(false);
                VideoTopicFragment.this.showEmptyView();
            }
            return Unit.INSTANCE;
        }
    }

    public static VideoTopicFragment Q1(int i9, String str, String str2) {
        VideoTopicFragment videoTopicFragment = new VideoTopicFragment();
        Bundle bundle = new Bundle();
        bundle.putString("topicId", str);
        bundle.putString("typeId", str);
        bundle.putInt("type", i9);
        videoTopicFragment.setArguments(bundle);
        return videoTopicFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        getRecyclerView().setPaddingRelative(DensityUtil.dp2px(4.5f), 0, DensityUtil.dp2px(4.5f), 0);
        getRecyclerView().addItemDecoration(new a());
        setFooterView(4);
        View emptyView = getEmptyView();
        if (emptyView instanceof LinearLayout) {
            ((LinearLayout) emptyView).setGravity(49);
        }
        emptyView.setPadding(0, ScreenTools.dip2px(60.0f), 0, 0);
        emptyView.findViewById(R.id.empty_text).setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        ShortVideoViewModel shortVideoViewModel = (ShortVideoViewModel) new ViewModelProvider(this).get(ShortVideoViewModel.class);
        String str = Contants.findVideoRelevantNew_v2;
        String str2 = SpUtils.getStr(getActivity(), Contants.CURRENT_COUNTRY_CODING);
        shortVideoViewModel.findVideoRelevantNew(str, "", str2, "", this.f22860b + "", getCurrentPage(), 12, this.f22859a, new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f22860b = (getArguments().getInt("type") + 1) % 3;
            this.f22859a = getArguments().getString("topicId");
            this.f22861c = getArguments().getString("typeId");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView) {
        return new GridLayoutManager(getActivity(), 3);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void convertItem(BaseViewHolder baseViewHolder, int i9, VideoItem videoItem) {
        TextView textView = (TextView) baseViewHolder.getView(R.id.video_official_flag);
        if (videoItem.getIsOfficial() == 1) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(4);
        }
        hc.a.l(videoItem.getVideoImg(), (ImageView) baseViewHolder.getView(R.id.lift_iv), R.mipmap.default_goods, getActivity());
        baseViewHolder.setText(R.id.hint_count, videoItem.getVideoCollectionNum() + "");
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.sort_tv);
        if (this.f22860b == 0) {
            baseViewHolder.setText(R.id.sort_tv, "");
            textView2.setVisibility(8);
        } else if (i9 == 0) {
            textView2.setVisibility(0);
            baseViewHolder.setText(R.id.sort_tv, "NO.1");
            textView2.setBackgroundResource(R.drawable.bg_video_no1);
        } else if (i9 == 1) {
            textView2.setVisibility(0);
            baseViewHolder.setText(R.id.sort_tv, "NO.2");
            textView2.setBackgroundResource(R.drawable.bg_video_no2);
        } else if (i9 == 2) {
            textView2.setVisibility(0);
            baseViewHolder.setText(R.id.sort_tv, "NO.3");
            textView2.setBackgroundResource(R.drawable.bg_video_no3);
        } else {
            baseViewHolder.setText(R.id.sort_tv, "");
            textView2.setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(LayoutInflater.from(getActivity()).inflate(R.layout.item_video_info, viewGroup, false));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, VideoItem videoItem) {
        Tool.mDataList = getList();
        Intent intent = new Intent(getActivity(), VideoPlayListActivity.class);
        intent.putExtra("position", i9);
        intent.putExtra("currPage", getCurrentPage());
        intent.putExtra("type", this.f22860b);
        intent.putExtra("type_id", this.f22861c);
        intent.putExtra("topic_id", this.f22859a);
        PersonVideoActivity.VideoUrlConfig videoUrlConfig = new PersonVideoActivity.VideoUrlConfig();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("page", getCurrentPage() + "");
        hashMap.put("limit", "12");
        hashMap.put("topicId", this.f22859a);
        hashMap.put(UserDataStore.COUNTRY, SpUtils.getStr(getActivity(), Contants.CURRENT_COUNTRY_CODING));
        hashMap.put("type", String.valueOf(this.f22860b));
        videoUrlConfig.e(Contants.findVideoRelevantNew_v2);
        videoUrlConfig.c(getCurrentPage());
        videoUrlConfig.d(hashMap);
        intent.putExtra("config", videoUrlConfig);
        startActivity(intent);
    }
}
