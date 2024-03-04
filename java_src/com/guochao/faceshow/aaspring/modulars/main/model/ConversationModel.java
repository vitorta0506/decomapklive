package com.guochao.faceshow.aaspring.modulars.main.model;

import android.os.Parcel;
import android.os.Parcelable;
import b7.b;
import b8.f;
import b8.g;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p7.a;
import p7.d;
import p7.h;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0005\b\t\n\u000b\f¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "ConversationListModel", "Online", "OnlineStatusModel", "TopOnlineUserListModel", "TopOnlineUserModel", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class ConversationModel extends BaseModel {

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0006HÆ\u0003J%\u0010\u000e\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;", "list", "", "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;", "unread", "", "(Ljava/util/List;I)V", "getList", "()Ljava/util/List;", "getUnread", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ConversationListModel extends ConversationModel {
        @Nullable
        private final List<ConversationInfo> list;
        private final int unread;

        public /* synthetic */ ConversationListModel(List list, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i10 & 2) != 0 ? 0 : i9);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ConversationListModel copy$default(ConversationListModel conversationListModel, List list, int i9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                list = conversationListModel.list;
            }
            if ((i10 & 2) != 0) {
                i9 = conversationListModel.unread;
            }
            return conversationListModel.copy(list, i9);
        }

        @Nullable
        public final List<ConversationInfo> component1() {
            return this.list;
        }

        public final int component2() {
            return this.unread;
        }

        @NotNull
        public final ConversationListModel copy(@Nullable List<ConversationInfo> list, int i9) {
            return new ConversationListModel(list, i9);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ConversationListModel) {
                ConversationListModel conversationListModel = (ConversationListModel) obj;
                return Intrinsics.areEqual(this.list, conversationListModel.list) && this.unread == conversationListModel.unread;
            }
            return false;
        }

        @Nullable
        public final List<ConversationInfo> getList() {
            return this.list;
        }

        public final int getUnread() {
            return this.unread;
        }

        public int hashCode() {
            List<ConversationInfo> list = this.list;
            return ((list == null ? 0 : list.hashCode()) * 31) + this.unread;
        }

        @NotNull
        public String toString() {
            return "ConversationListModel(list=" + this.list + ", unread=" + this.unread + ')';
        }

        public ConversationListModel(@Nullable List<ConversationInfo> list, int i9) {
            super(null);
            this.list = list;
            this.unread = i9;
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006¢\u0006\u0002\u0010\u0007J)\u0010\n\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006HÆ\u0003J3\u0010\u000b\u001a\u00020\u00002(\b\u0002\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0004HÖ\u0001R1\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;", "onlineMap", "Ljava/util/LinkedHashMap;", "", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;", "Lkotlin/collections/LinkedHashMap;", "(Ljava/util/LinkedHashMap;)V", "getOnlineMap", "()Ljava/util/LinkedHashMap;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class OnlineStatusModel extends ConversationModel {
        @Nullable
        private final LinkedHashMap<String, Online> onlineMap;

        public OnlineStatusModel(@Nullable LinkedHashMap<String, Online> linkedHashMap) {
            super(null);
            this.onlineMap = linkedHashMap;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ OnlineStatusModel copy$default(OnlineStatusModel onlineStatusModel, LinkedHashMap linkedHashMap, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                linkedHashMap = onlineStatusModel.onlineMap;
            }
            return onlineStatusModel.copy(linkedHashMap);
        }

        @Nullable
        public final LinkedHashMap<String, Online> component1() {
            return this.onlineMap;
        }

        @NotNull
        public final OnlineStatusModel copy(@Nullable LinkedHashMap<String, Online> linkedHashMap) {
            return new OnlineStatusModel(linkedHashMap);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnlineStatusModel) && Intrinsics.areEqual(this.onlineMap, ((OnlineStatusModel) obj).onlineMap);
        }

        @Nullable
        public final LinkedHashMap<String, Online> getOnlineMap() {
            return this.onlineMap;
        }

        public int hashCode() {
            LinkedHashMap<String, Online> linkedHashMap = this.onlineMap;
            if (linkedHashMap == null) {
                return 0;
            }
            return linkedHashMap.hashCode();
        }

        @NotNull
        public String toString() {
            return "OnlineStatusModel(onlineMap=" + this.onlineMap + ')';
        }
    }

    @Parcelize
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0002\u0010\u0006J\u0011\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004HÆ\u0003J\u001b\u0010\n\u001a\u00020\u00002\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004HÆ\u0001J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\fHÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\fHÖ\u0001R\u0019\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;", "Landroid/os/Parcelable;", "list", "", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;", "(Ljava/util/List;)V", "getList", "()Ljava/util/List;", "component1", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class TopOnlineUserListModel extends ConversationModel implements Parcelable {
        @NotNull
        public static final Parcelable.Creator<TopOnlineUserListModel> CREATOR = new Creator();
        @Nullable
        private final List<TopOnlineUserModel> list;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<TopOnlineUserListModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final TopOnlineUserListModel createFromParcel(@NotNull Parcel parcel) {
                ArrayList arrayList;
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                if (parcel.readInt() == 0) {
                    arrayList = null;
                } else {
                    int readInt = parcel.readInt();
                    ArrayList arrayList2 = new ArrayList(readInt);
                    for (int i9 = 0; i9 != readInt; i9++) {
                        arrayList2.add(TopOnlineUserModel.CREATOR.createFromParcel(parcel));
                    }
                    arrayList = arrayList2;
                }
                return new TopOnlineUserListModel(arrayList);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final TopOnlineUserListModel[] newArray(int i9) {
                return new TopOnlineUserListModel[i9];
            }
        }

        public TopOnlineUserListModel(@Nullable List<TopOnlineUserModel> list) {
            super(null);
            this.list = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ TopOnlineUserListModel copy$default(TopOnlineUserListModel topOnlineUserListModel, List list, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                list = topOnlineUserListModel.list;
            }
            return topOnlineUserListModel.copy(list);
        }

        @Nullable
        public final List<TopOnlineUserModel> component1() {
            return this.list;
        }

        @NotNull
        public final TopOnlineUserListModel copy(@Nullable List<TopOnlineUserModel> list) {
            return new TopOnlineUserListModel(list);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TopOnlineUserListModel) && Intrinsics.areEqual(this.list, ((TopOnlineUserListModel) obj).list);
        }

        @Nullable
        public final List<TopOnlineUserModel> getList() {
            return this.list;
        }

        public int hashCode() {
            List<TopOnlineUserModel> list = this.list;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "TopOnlineUserListModel(list=" + this.list + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            List<TopOnlineUserModel> list = this.list;
            if (list == null) {
                out.writeInt(0);
                return;
            }
            out.writeInt(1);
            out.writeInt(list.size());
            for (TopOnlineUserModel topOnlineUserModel : list) {
                topOnlineUserModel.writeToParcel(out, i9);
            }
        }
    }

    @Parcelize
    @Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0017\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004Bc\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u001d\u001a\u00020\b\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\bA\u0010BJ\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\n\u001a\u00020\u0006H\u0016J\b\u0010\u000b\u001a\u00020\u0006H\u0016J\b\u0010\f\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\u0006H\u0016J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u0013\u001a\u00020\bHÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0006HÆ\u0003Js\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u001d\u001a\u00020\b2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0001J\t\u0010\"\u001a\u00020\u0006HÖ\u0001J\t\u0010#\u001a\u00020\bHÖ\u0001J\u0013\u0010'\u001a\u00020&2\b\u0010%\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010(\u001a\u00020\bHÖ\u0001J\u0019\u0010-\u001a\u00020,2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\bHÖ\u0001R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0018\u0010.\u001a\u0004\b/\u00100R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0019\u0010.\u001a\u0004\b1\u00100R\u0019\u0010\u001a\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u001a\u0010.\u001a\u0004\b2\u00100R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u001b\u0010.\u001a\u0004\b3\u00100R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u001c\u0010.\u001a\u0004\b4\u00100R\u0017\u0010\u001d\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u001d\u00105\u001a\u0004\b6\u00107R\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u001e\u0010.\u001a\u0004\b8\u00100R$\u0010\u001f\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R$\u0010 \u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b \u0010.\u001a\u0004\b>\u00100\"\u0004\b?\u0010@¨\u0006C"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;", "Landroid/os/Parcelable;", "Lp7/h;", "Lb8/g;", "getVipInfo", "", "getAvatarUrl", "", "getGender", "getPendantUrl", "getCountryFlag", "getCurrentUserId", "getHostCertificationUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "Lcom/guochao/faceshow/aaspring/beans/UserVipData;", "component8", "component9", Contants.USER_ID, "img", "nickName", "dressHead", "countryLogo", "liveStatus", "liveId", "userVipData", "_hostCertificationUrl", "copy", "toString", "hashCode", "", "other", "", "equals", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "", "writeToParcel", "Ljava/lang/String;", "getUserId", "()Ljava/lang/String;", "getImg", "getNickName", "getDressHead", "getCountryLogo", "I", "getLiveStatus", "()I", "getLiveId", "Lcom/guochao/faceshow/aaspring/beans/UserVipData;", "getUserVipData", "()Lcom/guochao/faceshow/aaspring/beans/UserVipData;", "setUserVipData", "(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V", "get_hostCertificationUrl", "set_hostCertificationUrl", "(Ljava/lang/String;)V", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class TopOnlineUserModel extends ConversationModel implements Parcelable, h, g {
        @NotNull
        public static final Parcelable.Creator<TopOnlineUserModel> CREATOR = new Creator();
        @SerializedName("hostCertificationUrl")
        @Nullable
        private String _hostCertificationUrl;
        @Nullable
        private final String countryLogo;
        @Nullable
        private final String dressHead;
        @Nullable
        private final String img;
        @Nullable
        private final String liveId;
        private final int liveStatus;
        @Nullable
        private final String nickName;
        @Nullable
        private final String userId;
        @Nullable
        private UserVipData userVipData;

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Creator implements Parcelable.Creator<TopOnlineUserModel> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final TopOnlineUserModel createFromParcel(@NotNull Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new TopOnlineUserModel(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), (UserVipData) parcel.readParcelable(TopOnlineUserModel.class.getClassLoader()), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public final TopOnlineUserModel[] newArray(int i9) {
                return new TopOnlineUserModel[i9];
            }
        }

        public /* synthetic */ TopOnlineUserModel(String str, String str2, String str3, String str4, String str5, int i9, String str6, UserVipData userVipData, String str7, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, str4, str5, i9, str6, (i10 & 128) != 0 ? null : userVipData, (i10 & 256) != 0 ? null : str7);
        }

        @Nullable
        public final String component1() {
            return this.userId;
        }

        @Nullable
        public final String component2() {
            return this.img;
        }

        @Nullable
        public final String component3() {
            return this.nickName;
        }

        @Nullable
        public final String component4() {
            return this.dressHead;
        }

        @Nullable
        public final String component5() {
            return this.countryLogo;
        }

        public final int component6() {
            return this.liveStatus;
        }

        @Nullable
        public final String component7() {
            return this.liveId;
        }

        @Nullable
        public final UserVipData component8() {
            return this.userVipData;
        }

        @Nullable
        public final String component9() {
            return this._hostCertificationUrl;
        }

        @NotNull
        public final TopOnlineUserModel copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i9, @Nullable String str6, @Nullable UserVipData userVipData, @Nullable String str7) {
            return new TopOnlineUserModel(str, str2, str3, str4, str5, i9, str6, userVipData, str7);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TopOnlineUserModel) {
                TopOnlineUserModel topOnlineUserModel = (TopOnlineUserModel) obj;
                return Intrinsics.areEqual(this.userId, topOnlineUserModel.userId) && Intrinsics.areEqual(this.img, topOnlineUserModel.img) && Intrinsics.areEqual(this.nickName, topOnlineUserModel.nickName) && Intrinsics.areEqual(this.dressHead, topOnlineUserModel.dressHead) && Intrinsics.areEqual(this.countryLogo, topOnlineUserModel.countryLogo) && this.liveStatus == topOnlineUserModel.liveStatus && Intrinsics.areEqual(this.liveId, topOnlineUserModel.liveId) && Intrinsics.areEqual(this.userVipData, topOnlineUserModel.userVipData) && Intrinsics.areEqual(this._hostCertificationUrl, topOnlineUserModel._hostCertificationUrl);
            }
            return false;
        }

        @Override // p7.b
        public /* bridge */ /* synthetic */ int getAge() {
            return a.a(this);
        }

        @Override // p7.h, p7.c
        @NotNull
        public String getAvatarUrl() {
            String str = this.img;
            return str == null ? "" : str;
        }

        @Override // p7.h
        @NotNull
        public String getCountryFlag() {
            String str = this.countryLogo;
            return str == null ? "" : str;
        }

        @Nullable
        public final String getCountryLogo() {
            return this.countryLogo;
        }

        @Override // p7.h
        @NotNull
        public String getCurrentUserId() {
            String str = this.userId;
            return str == null ? "" : str;
        }

        @Nullable
        public final String getDressHead() {
            return this.dressHead;
        }

        @Override // p7.h, p7.c
        public int getGender() {
            return 0;
        }

        @Override // b8.g
        @NotNull
        public String getHostCertificationUrl() {
            String str = this._hostCertificationUrl;
            return str == null ? "" : str;
        }

        @Nullable
        public final String getImg() {
            return this.img;
        }

        @Override // p7.e
        public /* bridge */ /* synthetic */ int getLevel() {
            return d.a(this);
        }

        @Nullable
        public final String getLiveId() {
            return this.liveId;
        }

        public final int getLiveStatus() {
            return this.liveStatus;
        }

        @Override // p7.h
        public /* bridge */ /* synthetic */ String getMVPUrl() {
            return p7.g.a(this);
        }

        @Nullable
        public final String getNickName() {
            return this.nickName;
        }

        @Override // p7.h
        @NotNull
        public String getPendantUrl() {
            String str = this.dressHead;
            return str == null ? "" : str;
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ int getSended() {
            return f.b(this);
        }

        @Nullable
        public final String getUserId() {
            return this.userId;
        }

        @Override // p7.h
        public /* bridge */ /* synthetic */ String getUserName() {
            return p7.g.b(this);
        }

        @Nullable
        public final UserVipData getUserVipData() {
            return this.userVipData;
        }

        public /* bridge */ /* synthetic */ String getVipAvatarPendentId() {
            return f.c(this);
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ int getVipAvatarPendentType() {
            return f.d(this);
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ String getVipAvatarPendentUrl() {
            return f.e(this);
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ String getVipDressCarId() {
            return f.f(this);
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ String getVipDressCarUrl() {
            return f.g(this);
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ String getVipDressCarUrlV2() {
            return f.h(this);
        }

        public /* bridge */ /* synthetic */ String getVipDressChatUrl() {
            return f.i(this);
        }

        @Override // p7.h
        @Nullable
        public g getVipInfo() {
            return this.userVipData;
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ int getVipLevel() {
            return f.j(this);
        }

        @Nullable
        public final String get_hostCertificationUrl() {
            return this._hostCertificationUrl;
        }

        public int hashCode() {
            String str = this.userId;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.img;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.nickName;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.dressHead;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.countryLogo;
            int hashCode5 = (((hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.liveStatus) * 31;
            String str6 = this.liveId;
            int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
            UserVipData userVipData = this.userVipData;
            int hashCode7 = (hashCode6 + (userVipData == null ? 0 : userVipData.hashCode())) * 31;
            String str7 = this._hostCertificationUrl;
            return hashCode7 + (str7 != null ? str7.hashCode() : 0);
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ boolean isVip() {
            return f.k(this);
        }

        public final void setUserVipData(@Nullable UserVipData userVipData) {
            this.userVipData = userVipData;
        }

        public final void set_hostCertificationUrl(@Nullable String str) {
            this._hostCertificationUrl = str;
        }

        @NotNull
        public String toString() {
            return "TopOnlineUserModel(userId=" + this.userId + ", img=" + this.img + ", nickName=" + this.nickName + ", dressHead=" + this.dressHead + ", countryLogo=" + this.countryLogo + ", liveStatus=" + this.liveStatus + ", liveId=" + this.liveId + ", userVipData=" + this.userVipData + ", _hostCertificationUrl=" + this._hostCertificationUrl + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i9) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeString(this.userId);
            out.writeString(this.img);
            out.writeString(this.nickName);
            out.writeString(this.dressHead);
            out.writeString(this.countryLogo);
            out.writeInt(this.liveStatus);
            out.writeString(this.liveId);
            out.writeParcelable(this.userVipData, i9);
            out.writeString(this._hostCertificationUrl);
        }

        public TopOnlineUserModel(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i9, @Nullable String str6, @Nullable UserVipData userVipData, @Nullable String str7) {
            super(null);
            this.userId = str;
            this.img = str2;
            this.nickName = str3;
            this.dressHead = str4;
            this.countryLogo = str5;
            this.liveStatus = i9;
            this.liveId = str6;
            this.userVipData = userVipData;
            this._hostCertificationUrl = str7;
        }
    }

    private ConversationModel() {
    }

    public /* synthetic */ ConversationModel(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\t\"\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;", "onlineTimestamp", "", "userOnlineEnum", "", "requestTime", "(JLjava/lang/String;J)V", "getOnlineTimestamp", "()J", "getRequestTime", "setRequestTime", "(J)V", "getUserOnlineEnum", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Online extends ConversationModel {
        private final long onlineTimestamp;
        private long requestTime;
        @Nullable
        private final String userOnlineEnum;

        public /* synthetic */ Online(long j10, String str, long j11, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(j10, str, (i9 & 4) != 0 ? System.currentTimeMillis() : j11);
        }

        public static /* synthetic */ Online copy$default(Online online, long j10, String str, long j11, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                j10 = online.onlineTimestamp;
            }
            long j12 = j10;
            if ((i9 & 2) != 0) {
                str = online.userOnlineEnum;
            }
            String str2 = str;
            if ((i9 & 4) != 0) {
                j11 = online.requestTime;
            }
            return online.copy(j12, str2, j11);
        }

        public final long component1() {
            return this.onlineTimestamp;
        }

        @Nullable
        public final String component2() {
            return this.userOnlineEnum;
        }

        public final long component3() {
            return this.requestTime;
        }

        @NotNull
        public final Online copy(long j10, @Nullable String str, long j11) {
            return new Online(j10, str, j11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Online) {
                Online online = (Online) obj;
                return this.onlineTimestamp == online.onlineTimestamp && Intrinsics.areEqual(this.userOnlineEnum, online.userOnlineEnum) && this.requestTime == online.requestTime;
            }
            return false;
        }

        public final long getOnlineTimestamp() {
            return this.onlineTimestamp;
        }

        public final long getRequestTime() {
            return this.requestTime;
        }

        @Nullable
        public final String getUserOnlineEnum() {
            return this.userOnlineEnum;
        }

        public int hashCode() {
            int a10 = b.a(this.onlineTimestamp) * 31;
            String str = this.userOnlineEnum;
            return ((a10 + (str == null ? 0 : str.hashCode())) * 31) + b.a(this.requestTime);
        }

        public final void setRequestTime(long j10) {
            this.requestTime = j10;
        }

        @NotNull
        public String toString() {
            return "Online(onlineTimestamp=" + this.onlineTimestamp + ", userOnlineEnum=" + this.userOnlineEnum + ", requestTime=" + this.requestTime + ')';
        }

        public Online(long j10, @Nullable String str, long j11) {
            super(null);
            this.onlineTimestamp = j10;
            this.userOnlineEnum = str;
            this.requestTime = j11;
        }
    }
}
