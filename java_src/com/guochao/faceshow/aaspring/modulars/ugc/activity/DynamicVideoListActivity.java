package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentTransaction;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment;
import com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.DynamicShortVideoViewHolder;
import com.guochao.faceshow.aaspring.modulars.videomatch.OnListener;
import com.guochao.faceshow.aaspring.modulars.videomatch.VideoMatchHolder;
import com.guochao.faceshow.aaspring.utils.AppSettings;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.SystemUtil;
import com.guochao.faceshow.utils.Tool;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.tencent.rtmp.TXVodPlayConfig;
import java.util.List;
import java.util.Objects;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class DynamicVideoListActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    DynamicVideoFragment f22206a;

    /* loaded from: classes3.dex */
    public static class DynamicVideoFragment extends BaseShortVideoFragment {
        float L;
        int M;
        boolean N;
        View O;

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<VideoItem>> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<List<VideoItem>> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<VideoItem> list, @NonNull FaceCastBaseResponse<List<VideoItem>> faceCastBaseResponse) {
                if (list == null) {
                    return;
                }
                for (int i9 = 0; i9 < DynamicVideoFragment.this.getList().size(); i9++) {
                    if (!TextUtils.isEmpty(DynamicVideoFragment.this.getList().get(i9).getVideoId())) {
                        int i10 = 0;
                        while (true) {
                            if (i10 >= list.size()) {
                                break;
                            }
                            ShortVideoViewHolder shortVideoViewHolder = DynamicVideoFragment.this.f20656q;
                            if (shortVideoViewHolder != null && shortVideoViewHolder.x() != null && Objects.equals(DynamicVideoFragment.this.f20656q.x().getVideoId(), list.get(i10).getVideoId())) {
                                DynamicVideoFragment dynamicVideoFragment = DynamicVideoFragment.this;
                                ShortVideoViewHolder shortVideoViewHolder2 = dynamicVideoFragment.f20656q;
                                dynamicVideoFragment.convertItem(shortVideoViewHolder2, shortVideoViewHolder2.getAdapterPosition(), list.get(i10));
                            }
                            if (Objects.equals(DynamicVideoFragment.this.getList().get(i9).getVideoId(), list.get(i10).getVideoId())) {
                                DynamicVideoFragment.this.getList().set(i9, list.get(i10));
                                break;
                            }
                            i10++;
                        }
                    }
                }
            }
        }

        /* loaded from: classes3.dex */
        class b implements SVGAParser.ParseCompletion {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SVGAImageView f22208a;

            b(SVGAImageView sVGAImageView) {
                this.f22208a = sVGAImageView;
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
                this.f22208a.setVideoItem(sVGAVideoEntity);
                SvgaImageViewUtils.fitImageView(sVGAVideoEntity, this.f22208a);
                this.f22208a.startAnimation();
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onError() {
            }
        }

        /* loaded from: classes3.dex */
        class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DynamicVideoFragment.this.O.setVisibility(8);
                ja.a.b().e("KEY_SLIDE_TO_SEE_MORE_UGC_VIDEO");
            }
        }

        private boolean S2() {
            return !SystemUtil.supportVideoTransition();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
        @NonNull
        /* renamed from: B2 */
        public ShortVideoViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            if (S2()) {
                ShortVideoViewHolder onCreateViewHolder = super.onCreateViewHolder(viewGroup, i9);
                TXVodPlayConfig tXVodPlayConfig = new TXVodPlayConfig();
                tXVodPlayConfig.setCacheFolderPath(FilePathProvider.getCachePath("ugc_video"));
                tXVodPlayConfig.setMaxCacheItems(10);
                onCreateViewHolder.f20830f.setConfig(tXVodPlayConfig);
                return onCreateViewHolder;
            }
            return new DynamicShortVideoViewHolder(getActivity(), this, getLayoutInflater().inflate(BaseConfig.isChinese() ? R.layout.video_list_hello_play_video : R.layout.video_list_self, viewGroup, false), false);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment
        public void M2(ShortVideoViewHolder shortVideoViewHolder, int i9, VideoItem videoItem) {
            View findViewById;
            LogUtils.i("ShortVideoFragment", "shouldPlay: " + i9);
            if (shortVideoViewHolder == null) {
                return;
            }
            ShortVideoViewHolder shortVideoViewHolder2 = this.f20656q;
            if (shortVideoViewHolder2 != null && shortVideoViewHolder2.getAdapterPosition() != shortVideoViewHolder.getAdapterPosition() && (findViewById = this.f20656q.itemView.findViewById(R.id.gudie_slide_up)) != null) {
                ((ViewGroup) this.f20656q.itemView).removeView(findViewById);
                ja.a.b().e("KEY_SLIDE_TO_SEE_MORE_UGC_VIDEO");
            }
            ShortVideoViewHolder shortVideoViewHolder3 = this.f20656q;
            if (shortVideoViewHolder3 == null || shortVideoViewHolder3.getAdapterPosition() != shortVideoViewHolder.getAdapterPosition()) {
                this.f20656q = shortVideoViewHolder;
                if (S2()) {
                    shortVideoViewHolder.O(videoItem, i9);
                    shortVideoViewHolder.getView(R.id.video_cover).setVisibility(8);
                    shortVideoViewHolder.f20832h.setVisibility(0);
                } else {
                    shortVideoViewHolder.P(videoItem, i9, this.L);
                }
                this.L = -1.0f;
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment
        public void N2(ShortVideoViewHolder shortVideoViewHolder, int i9, VideoItem videoItem) {
            if (this.M == i9) {
                shortVideoViewHolder.D = false;
                if (getList().size() > 1 && this.M < getList().size() - 1 && shortVideoViewHolder.getView(R.id.gudie_slide_up) == null && ja.a.b().f("KEY_SLIDE_TO_SEE_MORE_UGC_VIDEO")) {
                    ViewGroup viewGroup = (ViewGroup) shortVideoViewHolder.itemView;
                    View inflate = getLayoutInflater().inflate(R.layout.layout_user_guide_slide_to_see_liveroom, viewGroup, false);
                    this.O = inflate;
                    viewGroup.addView(inflate);
                    this.O.setVisibility(0);
                    SVGAImageView sVGAImageView = (SVGAImageView) this.O.findViewById(R.id.svga);
                    sVGAImageView.setId(R.id.svg_guid);
                    SvgaImageViewUtils.getParser().decodeFromInputStream(getResources().openRawResource(R.raw.user_guide_slide_to_see_more_live_room), "slide_to_see_more", new b(sVGAImageView), true);
                    ((TextView) this.O.findViewById(R.id.text)).setText(R.string.user_guide_slide_to_see_more);
                    this.O.setVisibility(0);
                    this.O.setOnClickListener(new c());
                }
            }
            super.N2(shortVideoViewHolder, i9, videoItem);
            if (i9 == this.M && this.N) {
                ImageView imageView = (ImageView) shortVideoViewHolder.getView(R.id.video_cover);
                imageView.setAlpha(1.0f);
                imageView.setVisibility(8);
            }
        }

        public void R2() {
            if (this.f20656q == null) {
                return;
            }
            getList().remove(this.f20656q.getAdapterPosition());
            notifyDataLoaded(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
        public boolean canLoadMore() {
            return false;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
        public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
            return new e.a().d(false).c(false).a();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
        public int getLayoutId() {
            return R.layout.fragment_dynamic_video_list;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.modulars.main.FloatingViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
        public void loadData(int i9) {
            super.loadData(i9);
            getList().clear();
            getList().addAll(Tool.mDataList);
            notifyDataLoaded(false);
            if (this.M > 0) {
                getRecyclerView().scrollToPosition(this.M);
            }
            getRefreshableLayout().L(false);
            getRefreshableLayout().b(false);
            JSONArray jSONArray = new JSONArray();
            for (int i10 = 0; i10 < Tool.mDataList.size(); i10++) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("videoId", Tool.mDataList.get(i10).getVideoId());
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
                jSONArray.put(jSONObject);
            }
            getRefreshableLayout().L(false);
            getRefreshableLayout().b(false);
            post("tokens/userVideo/getVideoInfo").D(RemoteMessageConst.MessageBody.PARAM, jSONArray.toString()).M(new a());
        }

        @Override // androidx.fragment.app.Fragment
        public void onAttach(@NonNull Activity activity) {
            super.onAttach(activity);
            this.L = activity.getIntent().getFloatExtra("current", 0.0f);
            this.M = activity.getIntent().getIntExtra("position", 0);
            this.N = activity.getIntent().getBooleanExtra("playing", false);
            boolean setting = AppSettings.getSetting("first_Main_ugc", true);
            if (setting) {
                this.f20658s = false;
            } else {
                this.f20658s = true;
            }
            this.f20659t = setting;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
        public void onDestroy() {
            super.onDestroy();
            ShortVideoViewHolder shortVideoViewHolder = this.f20656q;
            if (shortVideoViewHolder != null) {
                shortVideoViewHolder.F();
            }
        }
    }

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.ugc.activity.DynamicVideoListActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0221a implements OnListener {
            C0221a() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.videomatch.OnListener
            public void onDelete() {
                DynamicVideoListActivity.this.f22206a.R2();
            }

            @Override // com.guochao.faceshow.aaspring.modulars.videomatch.OnListener
            public void onPrivateAndPublic() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.videomatch.OnListener
            public void onSendDynamic() {
            }
        }

        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoMatchHolder videoMatchHolder;
            DynamicShortVideoViewHolder dynamicShortVideoViewHolder = (DynamicShortVideoViewHolder) DynamicVideoListActivity.this.f22206a.f20656q;
            if (dynamicShortVideoViewHolder == null || (videoMatchHolder = dynamicShortVideoViewHolder.J) == null) {
                return;
            }
            videoMatchHolder.share(new C0221a());
        }
    }

    @OnClick
    public void back(View view) {
        view.setVisibility(8);
        onBackPressed();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        if (this.f22206a != null) {
            Intent intent = new Intent();
            DynamicVideoFragment dynamicVideoFragment = this.f22206a;
            ShortVideoViewHolder shortVideoViewHolder = dynamicVideoFragment.f20656q;
            if (shortVideoViewHolder != null) {
                intent.putExtra("resume", dynamicVideoFragment.M == shortVideoViewHolder.getAdapterPosition());
                intent.putExtra("pause", this.f22206a.f20656q.C);
            }
            setResult(-1, intent);
        }
        super.finish();
        overridePendingTransition(R.anim.do_nothing, R.anim.dialog_frag_alpha_out_0);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_base_title_with_fragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        DynamicVideoFragment dynamicVideoFragment = new DynamicVideoFragment();
        this.f22206a = dynamicVideoFragment;
        beginTransaction.replace(R.id.fragment_container, dynamicVideoFragment).commitAllowingStateLoss();
        if (BaseConfig.isChinese()) {
            View findViewById = findViewById(R.id.more_button);
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new a());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean shouldShowLiveFloatWindow() {
        return false;
    }
}
