package com.guochao.faceshow.utils;

import android.text.TextUtils;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.bean.UserBean;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u001c\u001dB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bH\u0002J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\r2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000bJ\u0016\u0010\u0015\u001a\u00020\r2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000bJ\u0016\u0010\u0016\u001a\u00020\r2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000bJ\u001e\u0010\u0017\u001a\u00020\r2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\u0010\u0010\u0019\u001a\u00020\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/utils/AppContentFilter;", "", "()V", "dyList", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "liveList", "videoList", "buildString", "list", "", "doNotWantToSee", "", "dynamicBean", "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;", "liveRoom", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "videoItem", "Lcom/guochao/faceshow/aaspring/beans/VideoItem;", "filterList", "filterLiveList", "filterVideoList", "getList", "key", "setCurrentUser", "userBean", "Lcom/guochao/faceshow/bean/UserBean;", "EventBusRoomItemData", "EventBusVideoItem", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppContentFilter {
    @NotNull
    public static final AppContentFilter INSTANCE = new AppContentFilter();
    @NotNull
    private static final ArrayList<String> dyList = new ArrayList<>();
    @NotNull
    private static final ArrayList<String> videoList = new ArrayList<>();
    @NotNull
    private static final ArrayList<String> liveList = new ArrayList<>();

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/utils/AppContentFilter$EventBusRoomItemData;", "", "roomItemData", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V", "getRoomItemData", "()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class EventBusRoomItemData {
        @NotNull
        private final RoomItemData roomItemData;

        public EventBusRoomItemData(@NotNull RoomItemData roomItemData) {
            Intrinsics.checkNotNullParameter(roomItemData, "roomItemData");
            this.roomItemData = roomItemData;
        }

        public static /* synthetic */ EventBusRoomItemData copy$default(EventBusRoomItemData eventBusRoomItemData, RoomItemData roomItemData, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                roomItemData = eventBusRoomItemData.roomItemData;
            }
            return eventBusRoomItemData.copy(roomItemData);
        }

        @NotNull
        public final RoomItemData component1() {
            return this.roomItemData;
        }

        @NotNull
        public final EventBusRoomItemData copy(@NotNull RoomItemData roomItemData) {
            Intrinsics.checkNotNullParameter(roomItemData, "roomItemData");
            return new EventBusRoomItemData(roomItemData);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EventBusRoomItemData) && Intrinsics.areEqual(this.roomItemData, ((EventBusRoomItemData) obj).roomItemData);
        }

        @NotNull
        public final RoomItemData getRoomItemData() {
            return this.roomItemData;
        }

        public int hashCode() {
            return this.roomItemData.hashCode();
        }

        @NotNull
        public String toString() {
            return "EventBusRoomItemData(roomItemData=" + this.roomItemData + ')';
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/utils/AppContentFilter$EventBusVideoItem;", "", "videoItem", "Lcom/guochao/faceshow/aaspring/beans/VideoItem;", "(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V", "getVideoItem", "()Lcom/guochao/faceshow/aaspring/beans/VideoItem;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class EventBusVideoItem {
        @NotNull
        private final VideoItem videoItem;

        public EventBusVideoItem(@NotNull VideoItem videoItem) {
            Intrinsics.checkNotNullParameter(videoItem, "videoItem");
            this.videoItem = videoItem;
        }

        public static /* synthetic */ EventBusVideoItem copy$default(EventBusVideoItem eventBusVideoItem, VideoItem videoItem, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                videoItem = eventBusVideoItem.videoItem;
            }
            return eventBusVideoItem.copy(videoItem);
        }

        @NotNull
        public final VideoItem component1() {
            return this.videoItem;
        }

        @NotNull
        public final EventBusVideoItem copy(@NotNull VideoItem videoItem) {
            Intrinsics.checkNotNullParameter(videoItem, "videoItem");
            return new EventBusVideoItem(videoItem);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EventBusVideoItem) && Intrinsics.areEqual(this.videoItem, ((EventBusVideoItem) obj).videoItem);
        }

        @NotNull
        public final VideoItem getVideoItem() {
            return this.videoItem;
        }

        public int hashCode() {
            return this.videoItem.hashCode();
        }

        @NotNull
        public String toString() {
            return "EventBusVideoItem(videoItem=" + this.videoItem + ')';
        }
    }

    private AppContentFilter() {
    }

    private final String buildString(List<String> list) {
        StringBuilder sb2 = new StringBuilder();
        for (String str : list) {
            sb2.append(str);
            sb2.append("_");
        }
        String substring = sb2.substring(0, sb2.length() - 1);
        Intrinsics.checkNotNullExpressionValue(substring, "list.let {\n            v…der.length - 1)\n        }");
        return substring;
    }

    private final void getList(List<String> list, String str) {
        List split$default;
        list.clear();
        String str2 = SpUtils.getSelfString(str);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(str2, "str");
        split$default = StringsKt__StringsKt.split$default((CharSequence) str2, new String[]{"_"}, false, 0, 6, (Object) null);
        if (!split$default.isEmpty()) {
            list.addAll(split$default);
        }
    }

    public final void doNotWantToSee(@NotNull DynamicBean dynamicBean) {
        Intrinsics.checkNotNullParameter(dynamicBean, "dynamicBean");
        ArrayList<String> arrayList = dyList;
        arrayList.add(String.valueOf(dynamicBean.getFriendId()));
        SpUtils.setSelfString("dy_list_" + b8.e.g().c().getUserId(), buildString(arrayList));
    }

    public final void filterList(@Nullable List<DynamicBean> list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : dyList) {
            for (DynamicBean dynamicBean : list) {
                if (Intrinsics.areEqual(str, String.valueOf(dynamicBean.getFriendId()))) {
                    arrayList.add(dynamicBean);
                }
            }
        }
        list.removeAll(arrayList);
    }

    public final void filterLiveList(@Nullable List<RoomItemData> list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : liveList) {
            for (RoomItemData roomItemData : list) {
                if (Intrinsics.areEqual(str, roomItemData.getLiveId())) {
                    arrayList.add(roomItemData);
                }
            }
        }
        list.removeAll(arrayList);
    }

    public final void filterVideoList(@Nullable List<VideoItem> list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : videoList) {
            for (VideoItem videoItem : list) {
                if (Intrinsics.areEqual(str, videoItem.getVideoId())) {
                    arrayList.add(videoItem);
                }
            }
        }
        list.removeAll(arrayList);
    }

    public final void setCurrentUser(@Nullable UserBean userBean) {
        if (userBean == null) {
            videoList.clear();
            dyList.clear();
            liveList.clear();
            return;
        }
        ArrayList<String> arrayList = videoList;
        getList(arrayList, "video_list_" + userBean.getUserId());
        ArrayList<String> arrayList2 = dyList;
        getList(arrayList2, "dy_list_" + userBean.getUserId());
        ArrayList<String> arrayList3 = liveList;
        getList(arrayList3, "live_list_" + userBean.getUserId());
    }

    public final void doNotWantToSee(@NotNull VideoItem videoItem) {
        Intrinsics.checkNotNullParameter(videoItem, "videoItem");
        ArrayList<String> arrayList = videoList;
        arrayList.add(videoItem.getVideoId());
        SpUtils.setSelfString("video_list_" + b8.e.g().c().getUserId(), buildString(arrayList));
        EventBus.getDefault().post(new EventBusVideoItem(videoItem));
    }

    public final void doNotWantToSee(@NotNull RoomItemData liveRoom) {
        Intrinsics.checkNotNullParameter(liveRoom, "liveRoom");
        ArrayList<String> arrayList = liveList;
        arrayList.add(liveRoom.getLiveId());
        SpUtils.setSelfString("live_list_" + b8.e.g().c().getUserId(), buildString(arrayList));
        EventBus.getDefault().post(new EventBusRoomItemData(liveRoom));
    }
}
