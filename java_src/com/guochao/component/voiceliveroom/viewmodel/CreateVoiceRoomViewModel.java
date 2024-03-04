package com.guochao.component.voiceliveroom.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.guochao.component.voiceliveroom.model.VoiceRoomCreateRoomModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.repository.CreateRoomRepository;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u001c\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012J\u0006\u0010\u0014\u001a\u00020\u000eR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "_voiceRoomInfo", "Landroidx/lifecycle/MutableLiveData;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "repository", "Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;", "voiceRoomInfo", "Landroidx/lifecycle/LiveData;", "getVoiceRoomInfo", "()Landroidx/lifecycle/LiveData;", "createRoom", "", "voiceRoomCreateRoomModel", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;", "gcValueCallback", "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;", "", "loadVoiceRoomInfo", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CreateVoiceRoomViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private final MutableLiveData<VoiceRoomInfoModel> _voiceRoomInfo;
    @NotNull
    private final CreateRoomRepository repository = new CreateRoomRepository();
    @NotNull
    private final LiveData<VoiceRoomInfoModel> voiceRoomInfo;

    public CreateVoiceRoomViewModel() {
        MutableLiveData<VoiceRoomInfoModel> mutableLiveData = new MutableLiveData<>();
        this._voiceRoomInfo = mutableLiveData;
        this.voiceRoomInfo = mutableLiveData;
    }

    public final void createRoom(@NotNull VoiceRoomCreateRoomModel voiceRoomCreateRoomModel, @NotNull GCValueCallback<String> gcValueCallback) {
        Intrinsics.checkNotNullParameter(voiceRoomCreateRoomModel, "voiceRoomCreateRoomModel");
        Intrinsics.checkNotNullParameter(gcValueCallback, "gcValueCallback");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new CreateVoiceRoomViewModel$createRoom$1(this, voiceRoomCreateRoomModel, gcValueCallback, null), 2, null);
    }

    @NotNull
    public final LiveData<VoiceRoomInfoModel> getVoiceRoomInfo() {
        return this.voiceRoomInfo;
    }

    public final void loadVoiceRoomInfo() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new CreateVoiceRoomViewModel$loadVoiceRoomInfo$1(this, null), 2, null);
    }
}
