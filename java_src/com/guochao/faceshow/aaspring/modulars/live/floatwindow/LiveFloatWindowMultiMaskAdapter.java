package com.guochao.faceshow.aaspring.modulars.live.floatwindow;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveFloatWindowMultiMaskAdapter extends BaseLiveAdapter {
    public LiveFloatWindowMultiMaskAdapter(MultiLivePlayView multiLivePlayView) {
        super(null, multiLivePlayView);
        w(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: G */
    public BaseLiveRoomHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new LiveFloatWindowMultiMaskHolder(LayoutInflater.from(BaseApplication.getInstance()).inflate(R.layout.layout_float_window_mask, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f18157e.size();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter
    public void z(List<LiveInfoMatchBean> list, long j10) {
        if (list != null && this.f18161i <= j10) {
            i(list, !this.f18160h);
            int i9 = 0;
            while (i9 < list.size()) {
                i9++;
                list.get(i9).setPosition(i9);
            }
            this.f18161i = j10;
            this.f18157e.clear();
            this.f18157e.addAll(list);
            notifyDataSetChanged();
            for (BaseLiveRoomHolder baseLiveRoomHolder : k()) {
                for (LiveInfoMatchBean liveInfoMatchBean : list) {
                    LiveRoomModel liveRoomModel = baseLiveRoomHolder.f19918c;
                    if (liveRoomModel != null && liveRoomModel.getCurrentUserId().equalsIgnoreCase(liveInfoMatchBean.getUserId())) {
                        baseLiveRoomHolder.e(liveInfoMatchBean, j10);
                    }
                }
            }
        }
    }
}
