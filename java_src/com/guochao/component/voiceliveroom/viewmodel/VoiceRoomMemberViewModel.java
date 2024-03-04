package com.guochao.component.voiceliveroom.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberListItemModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomVisitorListModel;
import com.guochao.component.voiceliveroom.repository.VoiceRoomMemberRepository;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J4\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\u0016\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\r0%j\b\u0012\u0004\u0012\u00020\r`&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\t0(J4\u0010)\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\u0016\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\r0%j\b\u0012\u0004\u0012\u00020\r`&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\t0(J\u001c\u0010*\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\t0(J \u0010+\u001a\u00020\"2\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\u000b2\b\b\u0002\u0010.\u001a\u00020\u000bJ\"\u0010/\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\b\b\u0002\u00100\u001a\u00020\t2\b\b\u0002\u0010.\u001a\u00020\u000bJ4\u00101\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\u0016\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\r0%j\b\u0012\u0004\u0012\u00020\r`&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\t0(J\u0010\u00102\u001a\u00020\"2\b\u00103\u001a\u0004\u0018\u00010\u0011R\u001c\u0010\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u001f\u0010\u0012\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0017\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0015R\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015R\u000e\u0010 \u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "_memberList", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;", "_memberListHasMore", "", "_memberNum", "", "_titles", "", "_visitorList", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;", "mSeatControllerViewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "memberList", "Landroidx/lifecycle/LiveData;", "getMemberList", "()Landroidx/lifecycle/LiveData;", "memberListHasMore", "getMemberListHasMore", "memberNum", "getMemberNum", "repository", "Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;", "title", "getTitle", "visitorList", "getVisitorList", "visitorPage", "adminAdd", "", "roomId", "removeUserIds", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "gcValueCallback", "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;", "adminRemove", "joinRoom", "loadMemberList", "voiceRoomId", "page", "size", "loadVisitorList", "refresh", "memberRemove", "setVoiceRoomSeatControllerViewModel", "viewmodel", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMemberViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private final MutableLiveData<List<VoiceRoomMemberListItemModel>> _memberList;
    @NotNull
    private final MutableLiveData<Boolean> _memberListHasMore;
    @NotNull
    private final MutableLiveData<Integer> _memberNum;
    @NotNull
    private final MutableLiveData<String> _titles;
    @NotNull
    private final MutableLiveData<VoiceRoomVisitorListModel> _visitorList;
    @Nullable
    private VoiceRoomSeatControllerViewModel mSeatControllerViewModel;
    @NotNull
    private final LiveData<List<VoiceRoomMemberListItemModel>> memberList;
    @NotNull
    private final LiveData<Boolean> memberListHasMore;
    @NotNull
    private final LiveData<Integer> memberNum;
    @NotNull
    private final VoiceRoomMemberRepository repository = new VoiceRoomMemberRepository();
    @NotNull
    private final LiveData<String> title;
    @NotNull
    private final LiveData<VoiceRoomVisitorListModel> visitorList;
    private int visitorPage;

    public VoiceRoomMemberViewModel() {
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>();
        this._titles = mutableLiveData;
        this.title = mutableLiveData;
        MutableLiveData<Integer> mutableLiveData2 = new MutableLiveData<>();
        this._memberNum = mutableLiveData2;
        this.memberNum = mutableLiveData2;
        MutableLiveData<Boolean> mutableLiveData3 = new MutableLiveData<>();
        this._memberListHasMore = mutableLiveData3;
        this.memberListHasMore = mutableLiveData3;
        MutableLiveData<List<VoiceRoomMemberListItemModel>> mutableLiveData4 = new MutableLiveData<>();
        this._memberList = mutableLiveData4;
        this.memberList = mutableLiveData4;
        MutableLiveData<VoiceRoomVisitorListModel> mutableLiveData5 = new MutableLiveData<>();
        this._visitorList = mutableLiveData5;
        this.visitorPage = 1;
        this.visitorList = mutableLiveData5;
    }

    public static /* synthetic */ void loadMemberList$default(VoiceRoomMemberViewModel voiceRoomMemberViewModel, String str, int i9, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = 20;
        }
        voiceRoomMemberViewModel.loadMemberList(str, i9, i10);
    }

    public static /* synthetic */ void loadVisitorList$default(VoiceRoomMemberViewModel voiceRoomMemberViewModel, String str, boolean z10, int i9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        if ((i10 & 4) != 0) {
            i9 = 40;
        }
        voiceRoomMemberViewModel.loadVisitorList(str, z10, i9);
    }

    public final void adminAdd(@NotNull String roomId, @NotNull ArrayList<String> removeUserIds, @NotNull GCValueCallback<Boolean> gcValueCallback) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(removeUserIds, "removeUserIds");
        Intrinsics.checkNotNullParameter(gcValueCallback, "gcValueCallback");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomMemberViewModel$adminAdd$1(this, roomId, removeUserIds, gcValueCallback, null), 2, null);
    }

    public final void adminRemove(@NotNull String roomId, @NotNull ArrayList<String> removeUserIds, @NotNull GCValueCallback<Boolean> gcValueCallback) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(removeUserIds, "removeUserIds");
        Intrinsics.checkNotNullParameter(gcValueCallback, "gcValueCallback");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomMemberViewModel$adminRemove$1(this, roomId, removeUserIds, gcValueCallback, null), 2, null);
    }

    @NotNull
    public final LiveData<List<VoiceRoomMemberListItemModel>> getMemberList() {
        return this.memberList;
    }

    @NotNull
    public final LiveData<Boolean> getMemberListHasMore() {
        return this.memberListHasMore;
    }

    @NotNull
    public final LiveData<Integer> getMemberNum() {
        return this.memberNum;
    }

    @NotNull
    public final LiveData<String> getTitle() {
        return this.title;
    }

    @NotNull
    public final LiveData<VoiceRoomVisitorListModel> getVisitorList() {
        return this.visitorList;
    }

    public final void joinRoom(@NotNull String roomId, @NotNull GCValueCallback<Boolean> gcValueCallback) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(gcValueCallback, "gcValueCallback");
        ViewModelKt.getViewModelScope(this);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomMemberViewModel$joinRoom$1(this, roomId, gcValueCallback, null), 2, null);
    }

    public final void loadMemberList(@NotNull String voiceRoomId, int i9, int i10) {
        Intrinsics.checkNotNullParameter(voiceRoomId, "voiceRoomId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomMemberViewModel$loadMemberList$1(i9, this, voiceRoomId, i10, null), 2, null);
    }

    public final void loadVisitorList(@NotNull String roomId, boolean z10, int i9) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomMemberViewModel$loadVisitorList$1(z10, this, roomId, i9, null), 2, null);
    }

    public final void memberRemove(@NotNull String roomId, @NotNull ArrayList<String> removeUserIds, @NotNull GCValueCallback<Boolean> gcValueCallback) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(removeUserIds, "removeUserIds");
        Intrinsics.checkNotNullParameter(gcValueCallback, "gcValueCallback");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomMemberViewModel$memberRemove$1(this, roomId, removeUserIds, gcValueCallback, null), 2, null);
    }

    public final void setVoiceRoomSeatControllerViewModel(@Nullable VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel) {
        this.mSeatControllerViewModel = voiceRoomSeatControllerViewModel;
    }
}
