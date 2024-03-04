package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.watcher.SubBroadCasterInfoMaskViewHolder;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import java.util.List;
/* loaded from: classes3.dex */
public class LivePlayMaskAdapter extends BaseLiveAdapter {
    public LivePlayMaskAdapter(BaseLiveRoomFragment baseLiveRoomFragment, MultiLivePlayView multiLivePlayView) {
        super(baseLiveRoomFragment, multiLivePlayView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: G */
    public BaseLiveRoomHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        BaseLiveRoomFragment baseLiveRoomFragment = this.f18156d;
        return new SubBroadCasterInfoMaskViewHolder(baseLiveRoomFragment, baseLiveRoomFragment.getLayoutInflater().inflate(R.layout.layout_broadcaster_info, viewGroup, false));
    }

    public void H(List<LiveInfoMatchBean> list) {
        z(list, this.f18161i + 50);
    }

    public void I(List<LiveInfoMatchBean> list) {
        for (BaseLiveRoomHolder baseLiveRoomHolder : k()) {
            for (LiveInfoMatchBean liveInfoMatchBean : list) {
                LiveRoomModel liveRoomModel = baseLiveRoomHolder.f19918c;
                if (liveRoomModel != null && liveRoomModel.getCurrentUserId().equalsIgnoreCase(liveInfoMatchBean.getUserId())) {
                    baseLiveRoomHolder.l(liveInfoMatchBean);
                }
            }
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f18157e.size();
    }

    public List<LiveRoomModel> getList() {
        return this.f18157e;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter
    public void z(List<LiveInfoMatchBean> list, long j10) {
        if (list != null && this.f18161i <= j10) {
            this.f18159g.clear();
            this.f18159g.addAll(list);
            int i9 = 0;
            i(list, (!n() || l().isBroadCaster() || this.f18165m || this.f18160h) ? false : true);
            while (i9 < list.size()) {
                i9++;
                list.get(i9).setPosition(i9);
            }
            this.f18161i = j10;
            this.f18157e.clear();
            this.f18157e.addAll(list);
            if (this.f18157e.isEmpty()) {
                this.f18157e.add(l());
            }
            for (BaseLiveRoomHolder baseLiveRoomHolder : k()) {
                for (LiveInfoMatchBean liveInfoMatchBean : list) {
                    LiveRoomModel liveRoomModel = baseLiveRoomHolder.f19918c;
                    if (liveRoomModel != null && liveRoomModel.getCurrentUserId().equalsIgnoreCase(liveInfoMatchBean.getUserId())) {
                        baseLiveRoomHolder.e(liveInfoMatchBean, j10);
                    }
                }
            }
            notifyDataSetChanged();
        }
    }
}
