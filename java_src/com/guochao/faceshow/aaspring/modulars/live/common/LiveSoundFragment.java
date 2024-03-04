package com.guochao.faceshow.aaspring.modulars.live.common;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.a;
import com.guochao.faceshow.utils.DensityUtil;
import com.tencent.liteav.audio.TXAudioEffectManager;
import com.tencent.trtc.TRTCCloud;
import com.yanzhenjie.recyclerview.swipe.widget.DefaultItemDecoration;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class LiveSoundFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private ResourceCategoryItem f18826a;

    /* renamed from: b  reason: collision with root package name */
    private List<ResourceListItemBean> f18827b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView f18828c;

    /* loaded from: classes3.dex */
    class a extends DefaultItemDecoration {
        a(int i9, int i10, int i11, int... iArr) {
            super(i9, i10, i11, iArr);
        }

        @Override // com.yanzhenjie.recyclerview.swipe.widget.DefaultItemDecoration, androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            super.getItemOffsets(rect, view, recyclerView, state);
            rect.set(DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.Adapter<BaseViewHolder> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.LiveSoundFragment$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class C0179a extends a.j<File> {
                C0179a() {
                }

                @Override // com.guochao.faceshow.aaspring.manager.a.j, com.guochao.faceshow.aaspring.manager.a.k
                /* renamed from: d */
                public void c(@NotNull ResourceCategoryItem resourceCategoryItem, @NotNull ResourceListItemBean resourceListItemBean, @Nullable File file) {
                    BaseLiveRoomFragment R1;
                    super.c(resourceCategoryItem, resourceListItemBean, file);
                    if (file == null || LiveSoundFragment.this.getParentFragment() == null || LiveSoundFragment.this.getActivity() == null) {
                        return;
                    }
                    if (((LiveSoundFragment.this.getParentFragment() instanceof LiveSoundDialogFragment) && ((LiveSoundDialogFragment) LiveSoundFragment.this.getParentFragment()).f18821e) || (R1 = LiveSoundFragment.this.R1()) == null) {
                        return;
                    }
                    String path = file.getPath();
                    if (TextUtils.isEmpty(path)) {
                        return;
                    }
                    if (R1.getCurrentLiveRoom().isVoiceRoom()) {
                        TXAudioEffectManager.AudioMusicParam audioMusicParam = new TXAudioEffectManager.AudioMusicParam(resourceListItemBean.getId(), path);
                        audioMusicParam.isShortFile = false;
                        audioMusicParam.publish = true;
                        TRTCCloud.sharedInstance(LiveSoundFragment.this.getActivity().getApplicationContext()).getAudioEffectManager().startPlayMusic(audioMusicParam);
                    } else {
                        R1.A2().playBGM(path);
                    }
                    LiveSoundFragment.this.post("tokens/source/statisticsClicks").B("soundeffectid", resourceListItemBean.getId()).L();
                }
            }

            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int intValue = ((Integer) view.getTag()).intValue();
                com.guochao.faceshow.aaspring.manager.a.g().l(LiveSoundFragment.this.f18826a, (ResourceListItemBean) LiveSoundFragment.this.f18827b.get(intValue), new C0179a());
            }
        }

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return LiveSoundFragment.this.f18827b.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            TextView textView = (TextView) baseViewHolder.getView(R.id.text);
            hc.a.j((ImageView) baseViewHolder.getView(R.id.icon), ((ResourceListItemBean) LiveSoundFragment.this.f18827b.get(i9)).getImg());
            textView.setText(TextUtils.isEmpty(((ResourceListItemBean) LiveSoundFragment.this.f18827b.get(i9)).getContent()) ? ((ResourceListItemBean) LiveSoundFragment.this.f18827b.get(i9)).getName() : ((ResourceListItemBean) LiveSoundFragment.this.f18827b.get(i9)).getContent());
            baseViewHolder.itemView.setTag(Integer.valueOf(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            View inflate = LiveSoundFragment.this.getLayoutInflater().inflate(R.layout.live_more_item, viewGroup, false);
            inflate.setOnClickListener(new a());
            return new BaseViewHolder(inflate);
        }
    }

    public static LiveSoundFragment S1(List<ResourceListItemBean> list, ResourceCategoryItem resourceCategoryItem) {
        LiveSoundFragment liveSoundFragment = new LiveSoundFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("data", new ArrayList<>(list));
        bundle.putParcelable("resourceCategoryItem", resourceCategoryItem);
        liveSoundFragment.setArguments(bundle);
        return liveSoundFragment;
    }

    public BaseLiveRoomFragment R1() {
        Fragment parentFragment = getParentFragment();
        while (parentFragment != null && !(parentFragment instanceof BaseLiveRoomFragment)) {
            parentFragment = parentFragment.getParentFragment();
        }
        return (BaseLiveRoomFragment) parentFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.layout_recycler_view;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f18828c = (RecyclerView) view;
        if (getArguments() != null) {
            this.f18827b = getArguments().getParcelableArrayList("data");
            this.f18826a = (ResourceCategoryItem) getArguments().getParcelable("resourceCategoryItem");
        }
        if (this.f18827b == null) {
            this.f18827b = new ArrayList();
        }
        this.f18828c.setLayoutManager(new GridLayoutManager((Context) getActivity(), 4, 1, false));
        this.f18828c.addItemDecoration(new a(ContextCompat.getColor(getContext(), R.color.transparent), 10, 10, new int[0]));
        this.f18828c.setItemViewCacheSize(8);
        this.f18828c.setAdapter(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }
}
