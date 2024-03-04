package com.guochao.component.voiceliveroom.model;

import com.chad.library.adapter.base.entity.MultiItemEntity;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberCategoryModel;", "Lcom/chad/library/adapter/base/entity/MultiItemEntity;", "type", "", "(I)V", "itemType", "getItemType", "()I", "getType", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMemberCategoryModel implements MultiItemEntity {
    private final int type;

    public VoiceRoomMemberCategoryModel(int i9) {
        this.type = i9;
    }

    public static /* synthetic */ VoiceRoomMemberCategoryModel copy$default(VoiceRoomMemberCategoryModel voiceRoomMemberCategoryModel, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = voiceRoomMemberCategoryModel.type;
        }
        return voiceRoomMemberCategoryModel.copy(i9);
    }

    public final int component1() {
        return this.type;
    }

    @NotNull
    public final VoiceRoomMemberCategoryModel copy(int i9) {
        return new VoiceRoomMemberCategoryModel(i9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof VoiceRoomMemberCategoryModel) && this.type == ((VoiceRoomMemberCategoryModel) obj).type;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        return this.type;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return this.type;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomMemberCategoryModel(type=" + this.type + ')';
    }
}
