package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import b8.e;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyResult;
import com.guochao.faceshow.aaspring.modulars.live.model.PkUser;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.broadcaster.PkSubViewHolder;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.MainBroadCasterHolder;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.WatcherPlayViewHolder;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.subbroadcaster.SubBroadCasterPusherVideoViewHolder;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.subbroadcaster.SubBroadCasterVideoViewHolder;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.pusher.GCLivePusher;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class LiveLinkMicPlayAdapter extends BaseLiveAdapter {

    /* renamed from: n  reason: collision with root package name */
    private boolean f18181n;

    /* renamed from: o  reason: collision with root package name */
    PkUser f18182o;

    public LiveLinkMicPlayAdapter(BaseLiveRoomFragment baseLiveRoomFragment, MultiLivePlayView multiLivePlayView) {
        super(baseLiveRoomFragment, multiLivePlayView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: G */
    public BaseLiveRoomHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        if (i9 == 1) {
            BaseLiveRoomFragment baseLiveRoomFragment = this.f18156d;
            return new MainBroadCasterHolder(baseLiveRoomFragment, baseLiveRoomFragment.getLayoutInflater().inflate(R.layout.list_item_multi_live_room, viewGroup, false), this.f18156d.A2()).c();
        } else if (i9 == 2) {
            BaseLiveRoomFragment baseLiveRoomFragment2 = this.f18156d;
            return new SubBroadCasterPusherVideoViewHolder(baseLiveRoomFragment2, baseLiveRoomFragment2.getLayoutInflater().inflate(R.layout.list_item_multi_live_room, viewGroup, false), this.f18156d.y2(true)).c();
        } else if (i9 == 3) {
            BaseLiveRoomFragment baseLiveRoomFragment3 = this.f18156d;
            return new SubBroadCasterVideoViewHolder(baseLiveRoomFragment3, baseLiveRoomFragment3.getLayoutInflater().inflate(R.layout.list_item_multi_live_room, viewGroup, false)).c();
        } else if (i9 == 6) {
            BaseLiveRoomFragment baseLiveRoomFragment4 = this.f18156d;
            return new PkSubViewHolder(baseLiveRoomFragment4, baseLiveRoomFragment4.getLayoutInflater().inflate(R.layout.list_item_multi_live_room, viewGroup, false)).c();
        } else {
            BaseLiveRoomFragment baseLiveRoomFragment5 = this.f18156d;
            return new WatcherPlayViewHolder(baseLiveRoomFragment5, baseLiveRoomFragment5.getLayoutInflater().inflate(R.layout.list_item_watcher_play, viewGroup, false), this.f18156d.D0()).c();
        }
    }

    public void H(PkUser pkUser) {
        PkUser pkUser2;
        if (this.f18156d.getCurrentLiveRoom().isBroadCaster()) {
            if ((this.f18181n && (pkUser2 = this.f18182o) != null && pkUser2.getRightAnchorMsg() != null && this.f18182o.getRightAnchorMsg().getUserId().equals(pkUser.getRightAnchorMsg().getUserId())) || pkUser == null || pkUser.getRightAnchorMsg() == null || pkUser.getRightAnchorMsg().getUserId() == null) {
                return;
            }
            this.f18181n = true;
            this.f18158f.setPkMode(true);
            this.f18157e.clear();
            this.f18157e.add(l());
            this.f18157e.add(pkUser.getRightAnchorMsg());
            notifyDataSetChanged();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter
    public void b(LiveMicApplyResult liveMicApplyResult) {
        super.b(liveMicApplyResult);
        GCLivePusher pusher = LivePlayerProvider.pusher();
        pusher.setMute(false);
        pusher.enableAudio(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (!this.f18154b && !l().isBroadCaster()) {
            if (this.f18181n) {
                return this.f18157e.size();
            }
            return 1;
        }
        return this.f18157e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        LiveRoomModel liveRoomModel = this.f18157e.get(i9);
        if (this.f18156d.f18506l == null || liveRoomModel.getCurrentUserId() == null || !liveRoomModel.getCurrentUserId().equals(this.f18156d.f18506l.getBroadCasterUserId()) || !Objects.equals(e.g().c().getUserId(), this.f18156d.f18506l.getBroadCasterUserId())) {
            if (this.f18181n) {
                return 6;
            }
            if (this.f18153a && this.f18154b) {
                return (liveRoomModel.getCurrentUserId() == null || !liveRoomModel.getCurrentUserId().equalsIgnoreCase(e.g().getUserId())) ? 3 : 2;
            }
            return 0;
        }
        return 1;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter
    public void o() {
        super.o();
        if (this.f18156d.getCurrentLiveRoom().isBroadCaster()) {
            this.f18181n = false;
            this.f18158f.setPkMode(false);
            for (BaseLiveRoomHolder baseLiveRoomHolder : k()) {
                if (baseLiveRoomHolder instanceof PkSubViewHolder) {
                    baseLiveRoomHolder.g();
                }
            }
            this.f18157e.clear();
            this.f18157e.add(l());
            notifyDataSetChanged();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter, com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterBackground() {
        for (BaseLiveRoomHolder baseLiveRoomHolder : k()) {
            if (baseLiveRoomHolder instanceof Foreground.OnForegroundStateChangedListener) {
                ((Foreground.OnForegroundStateChangedListener) baseLiveRoomHolder).onEnterBackground();
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter, com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterForeground() {
        for (BaseLiveRoomHolder baseLiveRoomHolder : k()) {
            if (baseLiveRoomHolder instanceof Foreground.OnForegroundStateChangedListener) {
                ((Foreground.OnForegroundStateChangedListener) baseLiveRoomHolder).onEnterForeground();
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void onBindViewHolder(@NonNull BaseLiveRoomHolder baseLiveRoomHolder, int i9) {
        super.onBindViewHolder(baseLiveRoomHolder, i9);
        if ((baseLiveRoomHolder instanceof SubBroadCasterVideoViewHolder) && (this.f18157e.get(i9) instanceof LiveInfoMatchBean)) {
            baseLiveRoomHolder.i((LiveInfoMatchBean) this.f18157e.get(i9));
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter
    public void s(String str) {
        Iterator<BaseLiveRoomHolder> it = k().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            BaseLiveRoomHolder next = it.next();
            LiveRoomModel liveRoomModel = next.f19918c;
            if (liveRoomModel != null && Objects.equals(liveRoomModel.getCurrentUserId(), str) && (next instanceof SubBroadCasterVideoViewHolder)) {
                LivePlayerProvider.player().stopPlay(next.f19920e);
                break;
            }
        }
        super.s(str);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter
    public void z(List<LiveInfoMatchBean> list, long j10) {
        if (list != null && !this.f18156d.Q && this.f18161i <= j10 && l().isMultiLiveRoom()) {
            LogUtils.i("LiveLinkMicPlayAdapter", "普通轮询有几个人: " + list.size());
            h(list);
            this.f18161i = j10;
            if (this.f18157e.size() != list.size()) {
                v(list);
                return;
            }
            if (!e(list)) {
                v(list);
            } else {
                for (BaseLiveRoomHolder baseLiveRoomHolder : k()) {
                    for (LiveInfoMatchBean liveInfoMatchBean : list) {
                        LiveRoomModel liveRoomModel = baseLiveRoomHolder.f19918c;
                        if (liveRoomModel != null && liveRoomModel.getCurrentUserId().equalsIgnoreCase(liveInfoMatchBean.getUserId())) {
                            baseLiveRoomHolder.f19918c.setMatchType(liveInfoMatchBean.getMatchType());
                            baseLiveRoomHolder.f19918c.setVoiceStatus(liveInfoMatchBean.getVoiceStatus());
                            baseLiveRoomHolder.d(liveInfoMatchBean);
                        }
                    }
                }
            }
            notifyDataSetChanged();
        }
    }
}
