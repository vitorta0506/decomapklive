package com.guochao.component.voiceliveroom.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003J3\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0006HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;", "", "iconId", "", "strId", "extraText", "", "selectState", "", "(IILjava/lang/String;Z)V", "getExtraText", "()Ljava/lang/String;", "getIconId", "()I", "getSelectState", "()Z", "setSelectState", "(Z)V", "getStrId", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMoreModel {
    @Nullable
    private final String extraText;
    private final int iconId;
    private boolean selectState;
    private final int strId;

    public VoiceRoomMoreModel(int i9, int i10, @Nullable String str, boolean z10) {
        this.iconId = i9;
        this.strId = i10;
        this.extraText = str;
        this.selectState = z10;
    }

    public static /* synthetic */ VoiceRoomMoreModel copy$default(VoiceRoomMoreModel voiceRoomMoreModel, int i9, int i10, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = voiceRoomMoreModel.iconId;
        }
        if ((i11 & 2) != 0) {
            i10 = voiceRoomMoreModel.strId;
        }
        if ((i11 & 4) != 0) {
            str = voiceRoomMoreModel.extraText;
        }
        if ((i11 & 8) != 0) {
            z10 = voiceRoomMoreModel.selectState;
        }
        return voiceRoomMoreModel.copy(i9, i10, str, z10);
    }

    public final int component1() {
        return this.iconId;
    }

    public final int component2() {
        return this.strId;
    }

    @Nullable
    public final String component3() {
        return this.extraText;
    }

    public final boolean component4() {
        return this.selectState;
    }

    @NotNull
    public final VoiceRoomMoreModel copy(int i9, int i10, @Nullable String str, boolean z10) {
        return new VoiceRoomMoreModel(i9, i10, str, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomMoreModel) {
            VoiceRoomMoreModel voiceRoomMoreModel = (VoiceRoomMoreModel) obj;
            return this.iconId == voiceRoomMoreModel.iconId && this.strId == voiceRoomMoreModel.strId && Intrinsics.areEqual(this.extraText, voiceRoomMoreModel.extraText) && this.selectState == voiceRoomMoreModel.selectState;
        }
        return false;
    }

    @Nullable
    public final String getExtraText() {
        return this.extraText;
    }

    public final int getIconId() {
        return this.iconId;
    }

    public final boolean getSelectState() {
        return this.selectState;
    }

    public final int getStrId() {
        return this.strId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int i9 = ((this.iconId * 31) + this.strId) * 31;
        String str = this.extraText;
        int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
        boolean z10 = this.selectState;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        return hashCode + i10;
    }

    public final void setSelectState(boolean z10) {
        this.selectState = z10;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomMoreModel(iconId=" + this.iconId + ", strId=" + this.strId + ", extraText=" + this.extraText + ", selectState=" + this.selectState + ')';
    }

    public /* synthetic */ VoiceRoomMoreModel(int i9, int i10, String str, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? false : z10);
    }
}
