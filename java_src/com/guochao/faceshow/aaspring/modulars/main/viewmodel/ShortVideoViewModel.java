package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.ViewModelKt;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.PageComment;
import com.guochao.faceshow.aaspring.modulars.main.model.AddVideoCommentModel;
import com.guochao.faceshow.aaspring.modulars.main.repository.ShortVideoRepository;
import com.guochao.faceshow.bean.FirstSixBean;
import com.guochao.faceshow.bean.MusicTypeTopicList;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J<\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\u001a\u0010\f\u001a\u0016\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e\u0012\u0004\u0012\u00020\u00070\rJ\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tJ2\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u001a\u0010\f\u001a\u0016\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000e\u0012\u0004\u0012\u00020\u00070\rJf\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\t2\u001a\u0010\f\u001a\u0016\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u000e\u0012\u0004\u0012\u00020\u00070\rJ4\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010\n\u001a\u00020\t2\u0014\u0010\f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010!\u0012\u0004\u0012\u00020\u00070\rJ6\u0010\"\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010 \u001a\u00020\u001b2\u0006\u0010\n\u001a\u00020\t2\u0014\u0010\f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010!\u0012\u0004\u0012\u00020\u00070\rJ\u000e\u0010#\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tJ*\u0010$\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\t2\u001a\u0010\f\u001a\u0016\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u000e\u0012\u0004\u0012\u00020\u00070\rJ*\u0010&\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\t2\u001a\u0010\f\u001a\u0016\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u000e\u0012\u0004\u0012\u00020\u00070\rJ \u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "repository", "Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository;", "addVideoComment", "", "commentJson", "", "videoId", "parentCommentId", NotificationCompat.CATEGORY_CALL, "Lkotlin/Function1;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;", "cancelVideoCollection", "deleteCommentById", NotifyType.SOUND, "", "findVideoRelevantNew", "url", "musicId", UserDataStore.COUNTRY, "is_private", "type", "page", "", "limit", "topicId", "Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;", "getBarrageList", "size", "Lcom/guochao/faceshow/aaspring/beans/PageComment;", "getCommentList", "insertVideoCollection", "intoMusic", "Lcom/guochao/faceshow/bean/FirstSixBean;", "intoVideoTopic", "topic_id", "log", Contants.USER_ID, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ShortVideoViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private final ShortVideoRepository repository = new ShortVideoRepository();

    public static /* synthetic */ void getCommentList$default(ShortVideoViewModel shortVideoViewModel, int i9, int i10, String str, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 10;
        }
        shortVideoViewModel.getCommentList(i9, i10, str, function1);
    }

    public final void addVideoComment(@NotNull String commentJson, @NotNull String videoId, @Nullable String str, @NotNull Function1<? super Response<AddVideoCommentModel>, Unit> call) {
        Intrinsics.checkNotNullParameter(commentJson, "commentJson");
        Intrinsics.checkNotNullParameter(videoId, "videoId");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ShortVideoViewModel$addVideoComment$1(call, this, commentJson, videoId, str, null), 2, null);
    }

    public final void cancelVideoCollection(@NotNull String videoId) {
        Intrinsics.checkNotNullParameter(videoId, "videoId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ShortVideoViewModel$cancelVideoCollection$1(this, videoId, null), 2, null);
    }

    public final void deleteCommentById(@NotNull String s10, @NotNull String videoId, @NotNull Function1<? super Response<Object>, Unit> call) {
        Intrinsics.checkNotNullParameter(s10, "s");
        Intrinsics.checkNotNullParameter(videoId, "videoId");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ShortVideoViewModel$deleteCommentById$1(call, this, s10, videoId, null), 2, null);
    }

    public final void findVideoRelevantNew(@NotNull String url, @NotNull String musicId, @Nullable String str, @Nullable String str2, @NotNull String type, int i9, int i10, @NotNull String topicId, @NotNull Function1<? super Response<MusicTypeTopicList.Page>, Unit> call) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(musicId, "musicId");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(topicId, "topicId");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ShortVideoViewModel$findVideoRelevantNew$1(call, this, url, musicId, str, str2, type, i9, i10, topicId, null), 2, null);
    }

    public final void getBarrageList(int i9, int i10, @NotNull String videoId, @NotNull Function1<? super PageComment, Unit> call) {
        Intrinsics.checkNotNullParameter(videoId, "videoId");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ShortVideoViewModel$getBarrageList$1(call, this, i9, i10, videoId, null), 2, null);
    }

    public final void getCommentList(int i9, int i10, @NotNull String videoId, @NotNull Function1<? super PageComment, Unit> call) {
        Intrinsics.checkNotNullParameter(videoId, "videoId");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ShortVideoViewModel$getCommentList$1(call, this, i9, i10, videoId, null), 2, null);
    }

    public final void insertVideoCollection(@NotNull String videoId) {
        Intrinsics.checkNotNullParameter(videoId, "videoId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ShortVideoViewModel$insertVideoCollection$1(this, videoId, null), 2, null);
    }

    public final void intoMusic(@NotNull String musicId, @NotNull Function1<? super Response<FirstSixBean>, Unit> call) {
        Intrinsics.checkNotNullParameter(musicId, "musicId");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ShortVideoViewModel$intoMusic$1(call, this, musicId, null), 2, null);
    }

    public final void intoVideoTopic(@NotNull String topic_id, @NotNull Function1<? super Response<FirstSixBean>, Unit> call) {
        Intrinsics.checkNotNullParameter(topic_id, "topic_id");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ShortVideoViewModel$intoVideoTopic$1(call, this, topic_id, null), 2, null);
    }

    public final void log(@NotNull String userId, @NotNull String videoId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(videoId, "videoId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ShortVideoViewModel$log$1(this, userId, videoId, str, null), 2, null);
    }
}
