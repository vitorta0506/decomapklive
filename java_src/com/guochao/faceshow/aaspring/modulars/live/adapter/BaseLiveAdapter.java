package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import b8.e;
import com.facebook.internal.AnalyticsEvents;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyResult;
import com.guochao.faceshow.aaspring.modulars.live.model.VolumeMessage;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.player.base.ILivePlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public abstract class BaseLiveAdapter extends RecyclerView.Adapter<BaseLiveRoomHolder> implements Foreground.OnForegroundStateChangedListener {

    /* renamed from: c  reason: collision with root package name */
    private LiveRoomModel f18155c;

    /* renamed from: d  reason: collision with root package name */
    protected BaseLiveRoomFragment f18156d;

    /* renamed from: f  reason: collision with root package name */
    protected MultiLivePlayView f18158f;

    /* renamed from: i  reason: collision with root package name */
    protected long f18161i;

    /* renamed from: a  reason: collision with root package name */
    protected boolean f18153a = false;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f18154b = false;

    /* renamed from: e  reason: collision with root package name */
    public List<LiveRoomModel> f18157e = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    protected List<LiveRoomModel> f18159g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    public boolean f18160h = true;

    /* renamed from: j  reason: collision with root package name */
    private boolean f18162j = false;

    /* renamed from: k  reason: collision with root package name */
    private HashMap<String, Long> f18163k = new HashMap<>();

    /* renamed from: l  reason: collision with root package name */
    private List<ILivePlayer.StreamInfo> f18164l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    protected boolean f18165m = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveRoomModel f18166a;

        a(LiveRoomModel liveRoomModel) {
            this.f18166a = liveRoomModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BaseLiveAdapter.this.f18156d.getCurrentLiveRoom().isMultiLiveRoom()) {
                int i9 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= BaseLiveAdapter.this.f18157e.size()) {
                        break;
                    } else if (BaseLiveAdapter.this.f18157e.get(i10).getCurrentUserId().equals(this.f18166a.getCurrentUserId())) {
                        i9 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i9 < 0) {
                    return;
                }
                if (BaseLiveAdapter.this.f18156d.getCurrentLiveRoom().isBroadCaster()) {
                    if (!this.f18166a.getCurrentUserId().equals(BaseLiveAdapter.this.f18156d.getCurrentLiveRoom().getBroadCasterUserId())) {
                        BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveAdapter.this.f18156d;
                        baseLiveRoomFragment.K3(baseLiveRoomFragment.getChildFragmentManager(), BaseLiveAdapter.this.f18155c, BaseLiveAdapter.this.f18157e.get(i9), i9);
                        return;
                    }
                    c9.a.i().f();
                } else if (BaseLiveAdapter.this.f18156d.K2()) {
                    if (BaseLiveAdapter.this.f18157e.get(i9).getCurrentUserId().equals(BaseLiveAdapter.this.f18156d.getCurrentUser().getCurrentUserId())) {
                        BaseLiveRoomFragment baseLiveRoomFragment2 = BaseLiveAdapter.this.f18156d;
                        baseLiveRoomFragment2.K3(baseLiveRoomFragment2.getChildFragmentManager(), BaseLiveAdapter.this.f18155c, BaseLiveAdapter.this.f18157e.get(i9), i9);
                        return;
                    }
                    BaseLiveAdapter.this.f18156d.Y2(i9);
                    c9.a.i().f();
                } else {
                    BaseLiveAdapter.this.f18156d.Y2(i9);
                    c9.a.i().f();
                }
            }
        }
    }

    public BaseLiveAdapter(BaseLiveRoomFragment baseLiveRoomFragment, MultiLivePlayView multiLivePlayView) {
        this.f18156d = baseLiveRoomFragment;
        this.f18158f = multiLivePlayView;
        if (baseLiveRoomFragment != null) {
            this.f18155c = baseLiveRoomFragment.f18506l;
            u(false);
        }
    }

    private void d(List<LiveInfoMatchBean> list) {
        LiveRoomModel l10 = l();
        ArrayList arrayList = new ArrayList();
        arrayList.add(l10);
        for (int i9 = 0; i9 < list.size(); i9++) {
            if (!list.get(i9).getUserId().equals(l10.getBroadCasterUserId())) {
                arrayList.add(list.get(i9));
            }
        }
        this.f18157e.clear();
        this.f18157e.addAll(arrayList);
    }

    private boolean f(List<ILivePlayer.StreamInfo> list) {
        if (this.f18164l.size() != list.size()) {
            return false;
        }
        for (int i9 = 0; i9 < this.f18164l.size(); i9++) {
            if (!Objects.equals(this.f18164l.get(i9).getStreamId(), list.get(i9).getStreamId())) {
                return false;
            }
        }
        return true;
    }

    private void q(@NonNull BaseLiveRoomHolder baseLiveRoomHolder, LiveRoomModel liveRoomModel, int i9) {
        BaseLiveRoomFragment baseLiveRoomFragment = this.f18156d;
        if (baseLiveRoomFragment != null) {
            if (baseLiveRoomFragment.getCurrentLiveRoom() == null || this.f18156d.getCurrentLiveRoom().isMultiLiveRoom()) {
                baseLiveRoomHolder.itemView.setOnClickListener(new a(liveRoomModel));
            }
        }
    }

    public void A(boolean z10, String str, long j10, boolean z11) {
        String str2 = str + "audio";
        Long l10 = this.f18163k.get(str2);
        if (l10 == null) {
            l10 = 0L;
        }
        if (j10 < l10.longValue()) {
            return;
        }
        this.f18163k.put(str2, Long.valueOf(j10));
        BaseLiveRoomHolder j11 = j(str);
        for (LiveRoomModel liveRoomModel : this.f18157e) {
            if (str.equals(liveRoomModel.getCurrentUserId())) {
                liveRoomModel.setVoiceStatus(z10 ? "2" : "1");
                if (z10 && z11) {
                    liveRoomModel.setAnchorForceVoiceStatus(true);
                }
            }
        }
        if (j11 != null) {
            j11.k(z10, j10, z11);
        }
    }

    public void C(LinkMicInfoMessage linkMicInfoMessage) {
        if (linkMicInfoMessage == null || linkMicInfoMessage.getMatchList() == null || this.f18161i > linkMicInfoMessage.getServerTime()) {
            return;
        }
        ArrayList arrayList = new ArrayList(linkMicInfoMessage.getMatchList());
        i(arrayList, false);
        int i9 = 0;
        while (i9 < arrayList.size()) {
            i9++;
            arrayList.get(i9).setPosition(i9);
        }
        this.f18161i = linkMicInfoMessage.getServerTime();
        this.f18157e.clear();
        this.f18157e.addAll(arrayList);
        for (BaseLiveRoomHolder baseLiveRoomHolder : k()) {
            boolean z10 = false;
            for (LiveInfoMatchBean liveInfoMatchBean : arrayList) {
                LiveRoomModel liveRoomModel = baseLiveRoomHolder.f19918c;
                if (liveRoomModel != null && liveRoomModel.getCurrentUserId().equalsIgnoreCase(liveInfoMatchBean.getUserId())) {
                    baseLiveRoomHolder.f19918c.setMatchType(liveInfoMatchBean.getMatchType());
                    baseLiveRoomHolder.f19918c.setVoiceStatus(liveInfoMatchBean.getVoiceStatus());
                    baseLiveRoomHolder.i(liveInfoMatchBean);
                    z10 = true;
                }
            }
            if (!z10) {
                baseLiveRoomHolder.g();
            }
        }
        notifyDataSetChanged();
    }

    public void D(LiveInfoMatchBean liveInfoMatchBean, String str) {
        for (LiveRoomModel liveRoomModel : this.f18157e) {
            if (liveRoomModel.getCurrentUserId() != null && liveRoomModel.getCurrentUserId().equals(liveInfoMatchBean.getCurrentUserId())) {
                liveRoomModel.setMatchType(str);
            }
        }
    }

    public void E(boolean z10, String str, long j10, boolean z11) {
        String str2 = str + AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO;
        Long l10 = this.f18163k.get(str2);
        if (l10 == null) {
            l10 = 0L;
        }
        if (j10 < l10.longValue()) {
            return;
        }
        this.f18163k.put(str2, Long.valueOf(j10));
        BaseLiveRoomHolder j11 = j(str);
        for (LiveRoomModel liveRoomModel : this.f18157e) {
            if (str.equals(liveRoomModel.getCurrentUserId())) {
                liveRoomModel.setMatchType(z10 ? "2" : "1");
                if (!z10 && z11) {
                    liveRoomModel.setAnchorForceMatchType(true);
                }
            }
        }
        if (j11 != null) {
            j11.m(z10, j10, z11);
        }
    }

    public void F(VolumeMessage volumeMessage) {
        BaseLiveRoomHolder j10;
        String fromUserId = volumeMessage.getFromUserId();
        if (TextUtils.isEmpty(fromUserId) || (j10 = j(fromUserId)) == null) {
            return;
        }
        j10.n(volumeMessage);
    }

    public void b(LiveMicApplyResult liveMicApplyResult) {
        if (liveMicApplyResult != null && this.f18156d.getCurrentLiveRoom().isMultiLiveRoom()) {
            for (LiveRoomModel liveRoomModel : this.f18157e) {
                if (liveRoomModel.getCurrentUserId().equals(e.g().c().getUserId())) {
                    return;
                }
            }
            BroadCasterLiveModel broadCasterLiveModel = new BroadCasterLiveModel(e.g().c());
            broadCasterLiveModel.setStreamUrl(liveMicApplyResult.getPushUrl());
            broadCasterLiveModel.setVoiceStatus("1");
            broadCasterLiveModel.setAnchorForceMatchType(false);
            broadCasterLiveModel.setMatchType("2");
            broadCasterLiveModel.setAnchorForceVoiceStatus(false);
            broadCasterLiveModel.setLinkMicStreamId(liveMicApplyResult.getStreamId());
            this.f18157e.add(broadCasterLiveModel);
            this.f18154b = true;
            notifyDataSetChanged();
        }
    }

    public void c(LiveInfoMatchBean liveInfoMatchBean, long j10) {
        if (!this.f18156d.getCurrentLiveRoom().isMultiLiveRoom() || liveInfoMatchBean == null || TextUtils.isEmpty(liveInfoMatchBean.getUserId())) {
            return;
        }
        boolean z10 = false;
        for (int i9 = 0; i9 < this.f18157e.size(); i9++) {
            if (this.f18157e.get(i9).getCurrentUserId().equals(liveInfoMatchBean.getUserId())) {
                this.f18157e.set(i9, liveInfoMatchBean);
                this.f18161i = j10;
                notifyDataSetChanged();
                return;
            }
        }
        this.f18157e.add(liveInfoMatchBean);
        this.f18154b = (this.f18155c.isBroadCaster() || this.f18157e.size() > 1) ? true : true;
        notifyDataSetChanged();
        this.f18161i = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(List<LiveInfoMatchBean> list) {
        if (this.f18157e.size() != list.size()) {
            return false;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            if (!list.get(i9).getCurrentUserId().equals(this.f18157e.get(i9).getCurrentUserId())) {
                return false;
            }
        }
        return true;
    }

    public void g(boolean z10) {
        for (BaseLiveRoomHolder baseLiveRoomHolder : k()) {
            baseLiveRoomHolder.f(z10);
        }
    }

    public List<LiveInfoMatchBean> h(List<LiveInfoMatchBean> list) {
        return i(list, !this.f18160h);
    }

    public List<LiveInfoMatchBean> i(List<LiveInfoMatchBean> list, boolean z10) {
        Iterator<LiveInfoMatchBean> it = list.iterator();
        if (!z10) {
            while (it.hasNext()) {
                if (it.next().getIsOnLine() != 1) {
                    it.remove();
                }
            }
        } else if (this.f18164l.isEmpty()) {
            return list;
        } else {
            while (it.hasNext()) {
                LiveInfoMatchBean next = it.next();
                boolean z11 = false;
                for (int i9 = 0; i9 < this.f18164l.size(); i9++) {
                    if (Objects.equals(this.f18164l.get(i9).getStreamId(), next.getStreamId())) {
                        z11 = true;
                    }
                }
                if (!z11) {
                    it.remove();
                }
            }
        }
        return list;
    }

    protected BaseLiveRoomHolder j(String str) {
        for (BaseLiveRoomHolder baseLiveRoomHolder : k()) {
            LiveRoomModel liveRoomModel = baseLiveRoomHolder.f19918c;
            if (liveRoomModel != null && liveRoomModel.getCurrentUserId().equalsIgnoreCase(str)) {
                return baseLiveRoomHolder;
            }
        }
        return null;
    }

    public List<BaseLiveRoomHolder> k() {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < getItemCount(); i9++) {
            RecyclerView.ViewHolder b10 = this.f18158f.b(i9);
            if (b10 instanceof BaseLiveRoomHolder) {
                arrayList.add((BaseLiveRoomHolder) b10);
            }
        }
        return arrayList;
    }

    public LiveRoomModel l() {
        return this.f18155c;
    }

    protected LiveRoomModel m(int i9) {
        return this.f18157e.get(i9);
    }

    public boolean n() {
        return this.f18153a;
    }

    public void o() {
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterBackground() {
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterForeground() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void onBindViewHolder(@NonNull BaseLiveRoomHolder baseLiveRoomHolder, int i9) {
        LiveRoomModel m10 = m(i9);
        baseLiveRoomHolder.j(this.f18153a);
        baseLiveRoomHolder.d(m10);
        baseLiveRoomHolder.h(i9);
        q(baseLiveRoomHolder, m10, i9);
    }

    public void r(String str, List<ILivePlayer.StreamInfo> list) {
        if (!f(list)) {
            if (this.f18162j) {
                int i9 = 0;
                while (true) {
                    if (i9 >= list.size()) {
                        break;
                    } else if (Objects.equals(list.get(i9).getStreamId(), com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18993c)) {
                        list.remove(i9);
                        break;
                    } else {
                        i9++;
                    }
                }
            }
            this.f18164l.clear();
            this.f18164l.addAll(list);
            List<LiveRoomModel> list2 = this.f18159g;
            if (list2 != null && !list2.isEmpty()) {
                z(new ArrayList(this.f18159g), this.f18161i + 50);
            } else {
                notifyDataSetChanged();
            }
        }
        this.f18160h = false;
    }

    public void s(String str) {
        BaseLiveRoomFragment baseLiveRoomFragment = this.f18156d;
        if (!(baseLiveRoomFragment instanceof WatcherLiveRoomFragment) || baseLiveRoomFragment.Q) {
            int i9 = 0;
            r1 = false;
            boolean z10 = false;
            if (Objects.equals(str, e.g().getUserId())) {
                while (true) {
                    if (i9 >= this.f18157e.size()) {
                        break;
                    } else if (Objects.equals(str, this.f18157e.get(i9).getCurrentUserId())) {
                        this.f18157e.remove(i9);
                        break;
                    } else {
                        i9++;
                    }
                }
                this.f18162j = true;
                this.f18161i += 10000;
                notifyDataSetChanged();
                return;
            }
            for (int i10 = 0; i10 < this.f18157e.size(); i10++) {
                if (this.f18157e.get(i10).getCurrentUserId().equals(str)) {
                    this.f18157e.remove(i10);
                    ArrayList arrayList = new ArrayList(this.f18157e);
                    boolean z11 = false;
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        if (((LiveRoomModel) arrayList.get(i11)).getCurrentUserId().equals(e.g().getUserId())) {
                            z11 = true;
                        }
                    }
                    if (this.f18157e.size() > 1 && z11) {
                        z10 = true;
                    }
                    this.f18156d.Q = z10;
                    this.f18158f.g(i10);
                    if (this.f18154b != z10) {
                        this.f18154b = z10;
                        notifyDataSetChanged();
                        return;
                    }
                    return;
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: t */
    public void onViewRecycled(@NonNull BaseLiveRoomHolder baseLiveRoomHolder) {
        super.onViewRecycled(baseLiveRoomHolder);
        baseLiveRoomHolder.g();
    }

    protected void u(boolean z10) {
        this.f18153a = this.f18155c.isMultiLiveRoom();
        this.f18157e.clear();
        this.f18157e.add(this.f18155c);
        if (this.f18155c.getMultiLiveRoom() != null) {
            this.f18157e.addAll(this.f18155c.getMultiLiveRoom());
        }
        if (z10) {
            notifyDataSetChanged();
        }
        if (this.f18156d.getCurrentLiveRoom().isBroadCaster()) {
            this.f18154b = true;
        }
    }

    public void v(List<LiveInfoMatchBean> list) {
        d(list);
        notifyDataSetChanged();
    }

    public void w(boolean z10) {
        this.f18153a = z10;
        for (BaseLiveRoomHolder baseLiveRoomHolder : k()) {
            baseLiveRoomHolder.j(this.f18153a);
        }
    }

    public void x(boolean z10) {
        if (this.f18154b == z10) {
            return;
        }
        this.f18154b = z10;
        if (!z10) {
            this.f18162j = false;
        }
        if (z10) {
            return;
        }
        notifyDataSetChanged();
    }

    public void y(boolean z10) {
        this.f18165m = z10;
    }

    public void z(List<LiveInfoMatchBean> list, long j10) {
    }
}
