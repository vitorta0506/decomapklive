package com.vk.sdk.api.owner.dto;

import com.facebook.internal.ServerProtocol;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0014B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/owner/dto/OwnerState;", "", ServerProtocol.DIALOG_PARAM_STATE, "Lcom/vk/sdk/api/owner/dto/OwnerState$State;", "description", "", "(Lcom/vk/sdk/api/owner/dto/OwnerState$State;Ljava/lang/String;)V", "getDescription", "()Ljava/lang/String;", "getState", "()Lcom/vk/sdk/api/owner/dto/OwnerState$State;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "State", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class OwnerState {
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName(ServerProtocol.DIALOG_PARAM_STATE)
    @Nullable
    private final State state;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/vk/sdk/api/owner/dto/OwnerState$State;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "BANNED", "ADULT", "HIDDEN", "DELETED", "BLACKLISTED", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum State {
        BANNED(1),
        ADULT(2),
        HIDDEN(3),
        DELETED(4),
        BLACKLISTED(5);
        
        private final int value;

        State(int i9) {
            this.value = i9;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public OwnerState() {
        this(null, null, 3, null);
    }

    public OwnerState(@Nullable State state, @Nullable String str) {
        this.state = state;
        this.description = str;
    }

    public static /* synthetic */ OwnerState copy$default(OwnerState ownerState, State state, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            state = ownerState.state;
        }
        if ((i9 & 2) != 0) {
            str = ownerState.description;
        }
        return ownerState.copy(state, str);
    }

    @Nullable
    public final State component1() {
        return this.state;
    }

    @Nullable
    public final String component2() {
        return this.description;
    }

    @NotNull
    public final OwnerState copy(@Nullable State state, @Nullable String str) {
        return new OwnerState(state, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OwnerState) {
            OwnerState ownerState = (OwnerState) obj;
            return this.state == ownerState.state && Intrinsics.areEqual(this.description, ownerState.description);
        }
        return false;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final State getState() {
        return this.state;
    }

    public int hashCode() {
        State state = this.state;
        int hashCode = (state == null ? 0 : state.hashCode()) * 31;
        String str = this.description;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        State state = this.state;
        String str = this.description;
        return "OwnerState(state=" + state + ", description=" + str + ")";
    }

    public /* synthetic */ OwnerState(State state, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : state, (i9 & 2) != 0 ? null : str);
    }
}
