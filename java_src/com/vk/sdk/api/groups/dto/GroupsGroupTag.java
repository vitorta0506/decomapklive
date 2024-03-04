package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001eB)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J8\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGroupTag;", "", "id", "", "name", "", "color", "Lcom/vk/sdk/api/groups/dto/GroupsGroupTag$Color;", "uses", "(ILjava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupTag$Color;Ljava/lang/Integer;)V", "getColor", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupTag$Color;", "getId", "()I", "getName", "()Ljava/lang/String;", "getUses", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "copy", "(ILjava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupTag$Color;Ljava/lang/Integer;)Lcom/vk/sdk/api/groups/dto/GroupsGroupTag;", "equals", "", "other", "hashCode", "toString", "Color", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsGroupTag {
    @SerializedName("color")
    @NotNull
    private final Color color;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35835id;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("uses")
    @Nullable
    private final Integer uses;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001a¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGroupTag$Color;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "FORTY_FIVE_4647", "FORTY_FIVE_678F", "FOUR_BB34B", "FIFTY_ONE_81B8", "FIFTY_THREE_9B9C", "FIVE_C9CE6", "SIXTY_THREE_B9BA", "SIX_BC76B", "SEVENTY_SIX_787A", "SEVENTY_NINE_2EC0", "SEVEN_A6C4F", "SEVEN_ECECF", "NINE_E8D6B", "A162DE", "AAAEB3", "BBAA84", "E64646", "FF5C5C", "FFA000", "FFC107", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Color {
        FORTY_FIVE_4647("454647"),
        FORTY_FIVE_678F("45678f"),
        FOUR_BB34B("4bb34b"),
        FIFTY_ONE_81B8("5181b8"),
        FIFTY_THREE_9B9C("539b9c"),
        FIVE_C9CE6("5c9ce6"),
        SIXTY_THREE_B9BA("63b9ba"),
        SIX_BC76B("6bc76b"),
        SEVENTY_SIX_787A("76787a"),
        SEVENTY_NINE_2EC0("792ec0"),
        SEVEN_A6C4F("7a6c4f"),
        SEVEN_ECECF("7ececf"),
        NINE_E8D6B("9e8d6b"),
        A162DE("a162de"),
        AAAEB3("aaaeb3"),
        BBAA84("bbaa84"),
        E64646("e64646"),
        FF5C5C("ff5c5c"),
        FFA000("ffa000"),
        FFC107("ffc107");
        
        @NotNull
        private final String value;

        Color(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public GroupsGroupTag(int i9, @NotNull String name, @NotNull Color color, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(color, "color");
        this.f35835id = i9;
        this.name = name;
        this.color = color;
        this.uses = num;
    }

    public static /* synthetic */ GroupsGroupTag copy$default(GroupsGroupTag groupsGroupTag, int i9, String str, Color color, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = groupsGroupTag.f35835id;
        }
        if ((i10 & 2) != 0) {
            str = groupsGroupTag.name;
        }
        if ((i10 & 4) != 0) {
            color = groupsGroupTag.color;
        }
        if ((i10 & 8) != 0) {
            num = groupsGroupTag.uses;
        }
        return groupsGroupTag.copy(i9, str, color, num);
    }

    public final int component1() {
        return this.f35835id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final Color component3() {
        return this.color;
    }

    @Nullable
    public final Integer component4() {
        return this.uses;
    }

    @NotNull
    public final GroupsGroupTag copy(int i9, @NotNull String name, @NotNull Color color, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(color, "color");
        return new GroupsGroupTag(i9, name, color, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsGroupTag) {
            GroupsGroupTag groupsGroupTag = (GroupsGroupTag) obj;
            return this.f35835id == groupsGroupTag.f35835id && Intrinsics.areEqual(this.name, groupsGroupTag.name) && this.color == groupsGroupTag.color && Intrinsics.areEqual(this.uses, groupsGroupTag.uses);
        }
        return false;
    }

    @NotNull
    public final Color getColor() {
        return this.color;
    }

    public final int getId() {
        return this.f35835id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Integer getUses() {
        return this.uses;
    }

    public int hashCode() {
        int hashCode = ((((this.f35835id * 31) + this.name.hashCode()) * 31) + this.color.hashCode()) * 31;
        Integer num = this.uses;
        return hashCode + (num == null ? 0 : num.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.f35835id;
        String str = this.name;
        Color color = this.color;
        Integer num = this.uses;
        return "GroupsGroupTag(id=" + i9 + ", name=" + str + ", color=" + color + ", uses=" + num + ")";
    }

    public /* synthetic */ GroupsGroupTag(int i9, String str, Color color, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, color, (i10 & 8) != 0 ? null : num);
    }
}
