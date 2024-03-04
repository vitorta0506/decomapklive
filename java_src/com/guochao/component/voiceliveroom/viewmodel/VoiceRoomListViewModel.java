package com.guochao.component.voiceliveroom.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.guochao.component.voiceliveroom.model.VoiceRoomInviteListModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel;
import com.guochao.component.voiceliveroom.repository.VoiceRoomListRepository;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\bJ\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\bJ\u0006\u0010\u001d\u001a\u00020\u0019R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\r¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\r¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\r¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000f¨\u0006\u001e"}, d2 = {"Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "_inviteList", "Landroidx/lifecycle/MutableLiveData;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel;", "_myRoomCount", "", "_myRoomList", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;", "_roomList", "inviteList", "Landroidx/lifecycle/LiveData;", "getInviteList", "()Landroidx/lifecycle/LiveData;", "myRoomCount", "getMyRoomCount", "myRoomList", "getMyRoomList", "repository", "Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;", "roomList", "getRoomList", "loadInviteList", "", "loadMyRoomList", "page", "loadRoomList", "minusMyRoom", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomListViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private final MutableLiveData<VoiceRoomInviteListModel> _inviteList;
    @NotNull
    private final MutableLiveData<Integer> _myRoomCount;
    @NotNull
    private final MutableLiveData<VoiceRoomMyRoomListModel> _myRoomList;
    @NotNull
    private final MutableLiveData<VoiceRoomMyRoomListModel> _roomList;
    @NotNull
    private final LiveData<VoiceRoomInviteListModel> inviteList;
    @NotNull
    private final LiveData<Integer> myRoomCount;
    @NotNull
    private final LiveData<VoiceRoomMyRoomListModel> myRoomList;
    @NotNull
    private final VoiceRoomListRepository repository = new VoiceRoomListRepository();
    @NotNull
    private final LiveData<VoiceRoomMyRoomListModel> roomList;

    public VoiceRoomListViewModel() {
        MutableLiveData<VoiceRoomMyRoomListModel> mutableLiveData = new MutableLiveData<>();
        this._roomList = mutableLiveData;
        this.roomList = mutableLiveData;
        MutableLiveData<VoiceRoomMyRoomListModel> mutableLiveData2 = new MutableLiveData<>();
        this._myRoomList = mutableLiveData2;
        this.myRoomList = mutableLiveData2;
        MutableLiveData<Integer> mutableLiveData3 = new MutableLiveData<>();
        this._myRoomCount = mutableLiveData3;
        this.myRoomCount = mutableLiveData3;
        MutableLiveData<VoiceRoomInviteListModel> mutableLiveData4 = new MutableLiveData<>();
        this._inviteList = mutableLiveData4;
        this.inviteList = mutableLiveData4;
    }

    @NotNull
    public final LiveData<VoiceRoomInviteListModel> getInviteList() {
        return this.inviteList;
    }

    @NotNull
    public final LiveData<Integer> getMyRoomCount() {
        return this.myRoomCount;
    }

    @NotNull
    public final LiveData<VoiceRoomMyRoomListModel> getMyRoomList() {
        return this.myRoomList;
    }

    @NotNull
    public final LiveData<VoiceRoomMyRoomListModel> getRoomList() {
        return this.roomList;
    }

    public final void loadInviteList() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomListViewModel$loadInviteList$1(this, null), 2, null);
    }

    public final void loadMyRoomList(int i9) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomListViewModel$loadMyRoomList$1(this, i9, null), 2, null);
    }

    public final void loadRoomList(int i9) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomListViewModel$loadRoomList$1(this, i9, null), 2, null);
    }

    public final void minusMyRoom() {
        Integer value = this._myRoomCount.getValue();
        if (value == null) {
            value = 0;
        }
        if (value.intValue() > 0) {
            MutableLiveData<Integer> mutableLiveData = this._myRoomCount;
            Integer value2 = mutableLiveData.getValue();
            mutableLiveData.setValue(value2 != null ? Integer.valueOf(value2.intValue() - 1) : null);
        }
    }
}
