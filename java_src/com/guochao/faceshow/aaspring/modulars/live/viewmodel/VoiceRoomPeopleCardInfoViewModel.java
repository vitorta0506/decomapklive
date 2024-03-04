package com.guochao.faceshow.aaspring.modulars.live.viewmodel;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.ViewModelKt;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.modulars.live.model.VoiceRoomPeopleInfoModel;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003JD\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\t2\"\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\fø\u0001\u0000¢\u0006\u0002\u0010\u0010J\\\u0010\u0011\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\r2\"\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\fø\u0001\u0000¢\u0006\u0002\u0010\u0014J\\\u0010\u0015\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\r2\"\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\fø\u0001\u0000¢\u0006\u0002\u0010\u0014JD\u0010\u0016\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2$\u0010\u0017\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\fø\u0001\u0000¢\u0006\u0002\u0010\u0010JD\u0010\u0019\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\t2\"\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\fø\u0001\u0000¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "repository", "Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardRepository;", "forbiddenTalk", "", "roomId", "", Contants.USER_ID, "callback", "Lkotlin/Function2;", "", "Lkotlin/coroutines/Continuation;", "", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V", "freeKick", "id", "index", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V", "kick", "loadUserInfo", NotificationCompat.CATEGORY_CALL, "Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;", "unforbiddenTalk", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomPeopleCardInfoViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private final VoiceRoomPeopleCardRepository repository = new VoiceRoomPeopleCardRepository();

    public final void forbiddenTalk(@NotNull String roomId, @Nullable String str, @NotNull Function2<? super Integer, ? super Continuation<? super Unit>, ? extends Object> callback) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomPeopleCardInfoViewModel$forbiddenTalk$1(this, roomId, str, callback, null), 2, null);
    }

    public final void freeKick(@NotNull String roomId, @Nullable String str, @Nullable String str2, @Nullable Integer num, @NotNull Function2<? super Integer, ? super Continuation<? super Unit>, ? extends Object> callback) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomPeopleCardInfoViewModel$freeKick$1(this, roomId, str, callback, null), 2, null);
    }

    public final void kick(@NotNull String roomId, @Nullable String str, @Nullable String str2, @Nullable Integer num, @NotNull Function2<? super Integer, ? super Continuation<? super Unit>, ? extends Object> callback) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomPeopleCardInfoViewModel$kick$1(this, roomId, str, str2, num, callback, null), 2, null);
    }

    public final void loadUserInfo(@NotNull String roomId, @NotNull String userId, @NotNull Function2<? super VoiceRoomPeopleInfoModel, ? super Continuation<? super Unit>, ? extends Object> call) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomPeopleCardInfoViewModel$loadUserInfo$1(this, roomId, userId, call, null), 2, null);
    }

    public final void unforbiddenTalk(@NotNull String roomId, @Nullable String str, @NotNull Function2<? super Integer, ? super Continuation<? super Unit>, ? extends Object> callback) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VoiceRoomPeopleCardInfoViewModel$unforbiddenTalk$1(this, roomId, str, callback, null), 2, null);
    }
}
