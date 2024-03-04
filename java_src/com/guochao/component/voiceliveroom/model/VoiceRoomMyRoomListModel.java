package com.guochao.component.voiceliveroom.model;

import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0002\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003JC\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0016\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000e¨\u0006%"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;", "", "page", "", "size", AnimatedPasterJsonConfig.CONFIG_COUNT, "total", "list", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "(IIIILjava/util/List;)V", "getCount", "()I", "setCount", "(I)V", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "getPage", "setPage", "getSize", "setSize", "getTotal", "setTotal", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMyRoomListModel {
    private int count;
    @Nullable
    private List<VoiceRoomInfoModel> list;
    private int page;
    private int size;
    private int total;

    public VoiceRoomMyRoomListModel(int i9, int i10, int i11, int i12, @Nullable List<VoiceRoomInfoModel> list) {
        this.page = i9;
        this.size = i10;
        this.count = i11;
        this.total = i12;
        this.list = list;
    }

    public static /* synthetic */ VoiceRoomMyRoomListModel copy$default(VoiceRoomMyRoomListModel voiceRoomMyRoomListModel, int i9, int i10, int i11, int i12, List list, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i9 = voiceRoomMyRoomListModel.page;
        }
        if ((i13 & 2) != 0) {
            i10 = voiceRoomMyRoomListModel.size;
        }
        int i14 = i10;
        if ((i13 & 4) != 0) {
            i11 = voiceRoomMyRoomListModel.count;
        }
        int i15 = i11;
        if ((i13 & 8) != 0) {
            i12 = voiceRoomMyRoomListModel.total;
        }
        int i16 = i12;
        List<VoiceRoomInfoModel> list2 = list;
        if ((i13 & 16) != 0) {
            list2 = voiceRoomMyRoomListModel.list;
        }
        return voiceRoomMyRoomListModel.copy(i9, i14, i15, i16, list2);
    }

    public final int component1() {
        return this.page;
    }

    public final int component2() {
        return this.size;
    }

    public final int component3() {
        return this.count;
    }

    public final int component4() {
        return this.total;
    }

    @Nullable
    public final List<VoiceRoomInfoModel> component5() {
        return this.list;
    }

    @NotNull
    public final VoiceRoomMyRoomListModel copy(int i9, int i10, int i11, int i12, @Nullable List<VoiceRoomInfoModel> list) {
        return new VoiceRoomMyRoomListModel(i9, i10, i11, i12, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomMyRoomListModel) {
            VoiceRoomMyRoomListModel voiceRoomMyRoomListModel = (VoiceRoomMyRoomListModel) obj;
            return this.page == voiceRoomMyRoomListModel.page && this.size == voiceRoomMyRoomListModel.size && this.count == voiceRoomMyRoomListModel.count && this.total == voiceRoomMyRoomListModel.total && Intrinsics.areEqual(this.list, voiceRoomMyRoomListModel.list);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final List<VoiceRoomInfoModel> getList() {
        return this.list;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getSize() {
        return this.size;
    }

    public final int getTotal() {
        return this.total;
    }

    public int hashCode() {
        int i9 = ((((((this.page * 31) + this.size) * 31) + this.count) * 31) + this.total) * 31;
        List<VoiceRoomInfoModel> list = this.list;
        return i9 + (list == null ? 0 : list.hashCode());
    }

    public final void setCount(int i9) {
        this.count = i9;
    }

    public final void setList(@Nullable List<VoiceRoomInfoModel> list) {
        this.list = list;
    }

    public final void setPage(int i9) {
        this.page = i9;
    }

    public final void setSize(int i9) {
        this.size = i9;
    }

    public final void setTotal(int i9) {
        this.total = i9;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomMyRoomListModel(page=" + this.page + ", size=" + this.size + ", count=" + this.count + ", total=" + this.total + ", list=" + this.list + ')';
    }
}
