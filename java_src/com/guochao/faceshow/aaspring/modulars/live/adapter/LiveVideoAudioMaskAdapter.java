package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.VideoAudioMaskHolder;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
/* loaded from: classes3.dex */
public class LiveVideoAudioMaskAdapter extends LivePlayMaskAdapter {
    public LiveVideoAudioMaskAdapter(BaseLiveRoomFragment baseLiveRoomFragment, MultiLivePlayView multiLivePlayView) {
        super(baseLiveRoomFragment, multiLivePlayView);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.LivePlayMaskAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: G */
    public BaseLiveRoomHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        BaseLiveRoomFragment baseLiveRoomFragment = this.f18156d;
        return new VideoAudioMaskHolder(baseLiveRoomFragment, baseLiveRoomFragment.getLayoutInflater().inflate(R.layout.layout_broadcast_video_audio_mask, viewGroup, false));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.LivePlayMaskAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f18157e.size();
    }
}
