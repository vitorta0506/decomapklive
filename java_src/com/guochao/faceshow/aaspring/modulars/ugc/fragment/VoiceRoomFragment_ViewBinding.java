package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes3.dex */
public class VoiceRoomFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private VoiceRoomFragment f22881b;

    @UiThread
    public VoiceRoomFragment_ViewBinding(VoiceRoomFragment voiceRoomFragment, View view) {
        this.f22881b = voiceRoomFragment;
        voiceRoomFragment.rcvRecommended = (RecyclerView) butterknife.internal.c.d(view, R.id.rcv_recommended, "field 'rcvRecommended'", RecyclerView.class);
        voiceRoomFragment.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        voiceRoomFragment.MusicLayout = butterknife.internal.c.c(view, R.id.rcv_music_list, "field 'MusicLayout'");
        voiceRoomFragment.refreshLayout = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.refresh_layout, "field 'refreshLayout'", SmartRefreshLayout.class);
        voiceRoomFragment.srlRefresh = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.srl_refresh, "field 'srlRefresh'", SmartRefreshLayout.class);
        voiceRoomFragment.emptyView = butterknife.internal.c.c(view, R.id.empty_view, "field 'emptyView'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        VoiceRoomFragment voiceRoomFragment = this.f22881b;
        if (voiceRoomFragment != null) {
            this.f22881b = null;
            voiceRoomFragment.rcvRecommended = null;
            voiceRoomFragment.recyclerView = null;
            voiceRoomFragment.MusicLayout = null;
            voiceRoomFragment.refreshLayout = null;
            voiceRoomFragment.srlRefresh = null;
            voiceRoomFragment.emptyView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
