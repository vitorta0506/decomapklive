package com.guochao.faceshow.aaspring.modulars.main.repository;

import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.PageComment;
import com.guochao.faceshow.aaspring.modulars.main.model.AddVideoCommentModel;
import com.guochao.faceshow.bean.FirstSixBean;
import com.guochao.faceshow.bean.MusicTypeTopicList;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 (2\u00020\u0001:\u0001(B\u0005¢\u0006\u0002\u0010\u0002J3\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\nJ\u0019\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\rJ)\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00042\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J]\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00042\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001cJ3\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u00042\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001f\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010 J1\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u00042\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010 J\u0019\u0010\"\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\rJ!\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u00042\u0006\u0010\u0014\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\rJ!\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u00042\u0006\u0010\u001b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\rJ+\u0010&\u001a\u00020\f2\u0006\u0010'\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006)"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository;", "", "()V", "addVideoComment", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;", "commentJson", "", "videoId", "parentCommentId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelVideoCollection", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteComment", "commentId", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "findVideoRelevantNew", "Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;", "url", "musicId", UserDataStore.COUNTRY, "isPrivate", "type", "page", "", "limit", "topicId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getVideoBarrageList", "Lcom/guochao/faceshow/aaspring/beans/PageComment;", "size", "(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getVideoCommentList", "insertVideoCollection", "intoMusic", "Lcom/guochao/faceshow/bean/FirstSixBean;", "intoVideoTopic", "log", Contants.USER_ID, "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ShortVideoRepository {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String URL_BARRAGE_LIST = "api/token/social/video/findBarrageCommentByVideoId";
    @NotNull
    private static final String URL_CANCEL_VIDEO_COLLECTION = "api/token/social/video/cancelLikeVideo";
    @NotNull
    private static final String URL_INSERT_VIDEO_COLLECTION = "api/token/social/video/likeVideo";
    @NotNull
    private static final String URL_PLAY_LOG = "api/token/social/video/play";

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/repository/ShortVideoRepository$Companion;", "", "()V", "URL_BARRAGE_LIST", "", "URL_CANCEL_VIDEO_COLLECTION", "URL_INSERT_VIDEO_COLLECTION", "URL_PLAY_LOG", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ Object getVideoBarrageList$default(ShortVideoRepository shortVideoRepository, int i9, int i10, String str, Continuation continuation, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 20;
        }
        return shortVideoRepository.getVideoBarrageList(i9, i10, str, continuation);
    }

    @Nullable
    public final Object addVideoComment(@NotNull String str, @NotNull String str2, @Nullable String str3, @NotNull Continuation<? super Response<AddVideoCommentModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ShortVideoRepository$addVideoComment$2(str2, str, str3, null), continuation);
    }

    @Nullable
    public final Object cancelVideoCollection(@NotNull String str, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new ShortVideoRepository$cancelVideoCollection$2(str, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return withContext == coroutine_suspended ? withContext : Unit.INSTANCE;
    }

    @Nullable
    public final Object deleteComment(@NotNull String str, @NotNull String str2, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ShortVideoRepository$deleteComment$2(str2, str, null), continuation);
    }

    @Nullable
    public final Object findVideoRelevantNew(@NotNull String str, @NotNull String str2, @Nullable String str3, @Nullable String str4, @NotNull String str5, int i9, int i10, @NotNull String str6, @NotNull Continuation<? super Response<MusicTypeTopicList.Page>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ShortVideoRepository$findVideoRelevantNew$2(str, str2, str3, str5, i9, i10, str4, str6, null), continuation);
    }

    @Nullable
    public final Object getVideoBarrageList(int i9, int i10, @NotNull String str, @NotNull Continuation<? super Response<PageComment>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ShortVideoRepository$getVideoBarrageList$2(i9, i10, str, null), continuation);
    }

    @Nullable
    public final Object getVideoCommentList(int i9, int i10, @NotNull String str, @NotNull Continuation<? super Response<PageComment>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ShortVideoRepository$getVideoCommentList$2(i9, i10, str, null), continuation);
    }

    @Nullable
    public final Object insertVideoCollection(@NotNull String str, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new ShortVideoRepository$insertVideoCollection$2(str, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return withContext == coroutine_suspended ? withContext : Unit.INSTANCE;
    }

    @Nullable
    public final Object intoMusic(@NotNull String str, @NotNull Continuation<? super Response<FirstSixBean>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ShortVideoRepository$intoMusic$2(str, null), continuation);
    }

    @Nullable
    public final Object intoVideoTopic(@NotNull String str, @NotNull Continuation<? super Response<FirstSixBean>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ShortVideoRepository$intoVideoTopic$2(str, null), continuation);
    }

    @Nullable
    public final Object log(@NotNull String str, @NotNull String str2, @Nullable String str3, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new ShortVideoRepository$log$2(str, str2, str3, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return withContext == coroutine_suspended ? withContext : Unit.INSTANCE;
    }
}
