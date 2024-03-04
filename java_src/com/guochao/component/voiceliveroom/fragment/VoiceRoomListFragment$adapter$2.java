package com.guochao.component.voiceliveroom.fragment;

import com.guochao.component.voiceliveroom.adapter.VoiceRoomListAdapter;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomListViewModel;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomListFragment$adapter$2 extends Lambda implements Function0<VoiceRoomListAdapter> {
    final /* synthetic */ VoiceRoomListFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomListFragment$adapter$2(VoiceRoomListFragment voiceRoomListFragment) {
        super(0);
        this.this$0 = voiceRoomListFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-1$lambda-0  reason: not valid java name */
    public static final void m277invoke$lambda1$lambda0(VoiceRoomListFragment this$0) {
        VoiceRoomListViewModel viewModel;
        int i9;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        viewModel = this$0.getViewModel();
        i9 = this$0.page;
        viewModel.loadRoomList(i9);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final VoiceRoomListAdapter invoke() {
        VoiceRoomListAdapter voiceRoomListAdapter = new VoiceRoomListAdapter(new ArrayList());
        final VoiceRoomListFragment voiceRoomListFragment = this.this$0;
        voiceRoomListAdapter.getLoadMoreModule().setOnLoadMoreListener(new x0.j() { // from class: com.guochao.component.voiceliveroom.fragment.o
            @Override // x0.j
            public final void onLoadMore() {
                VoiceRoomListFragment$adapter$2.m277invoke$lambda1$lambda0(VoiceRoomListFragment.this);
            }
        });
        return voiceRoomListAdapter;
    }
}
