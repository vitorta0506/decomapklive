package com.vk.sdk.api.polls.dto;

import androidx.core.app.FrameMetricsAggregator;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseGradientPoint;
import com.vk.sdk.api.base.dto.BaseImage;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u00010B}\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\n\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010%\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nHÆ\u0003J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\nHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0086\u0001\u0010)\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\u0003HÖ\u0001J\t\u0010/\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0017\u0010\u0013R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0018\u0010\u0013R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0016R\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u001f\u0010\u0013¨\u00061"}, d2 = {"Lcom/vk/sdk/api/polls/dto/PollsBackground;", "", "angle", "", "color", "", "height", "id", "name", "images", "", "Lcom/vk/sdk/api/base/dto/BaseImage;", "points", "Lcom/vk/sdk/api/base/dto/BaseGradientPoint;", "type", "Lcom/vk/sdk/api/polls/dto/PollsBackground$Type;", "width", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/polls/dto/PollsBackground$Type;Ljava/lang/Integer;)V", "getAngle", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getColor", "()Ljava/lang/String;", "getHeight", "getId", "getImages", "()Ljava/util/List;", "getName", "getPoints", "getType", "()Lcom/vk/sdk/api/polls/dto/PollsBackground$Type;", "getWidth", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/polls/dto/PollsBackground$Type;Ljava/lang/Integer;)Lcom/vk/sdk/api/polls/dto/PollsBackground;", "equals", "", "other", "hashCode", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PollsBackground {
    @SerializedName("angle")
    @Nullable
    private final Integer angle;
    @SerializedName("color")
    @Nullable
    private final String color;
    @SerializedName("height")
    @Nullable
    private final Integer height;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36053id;
    @SerializedName("images")
    @Nullable
    private final List<BaseImage> images;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("points")
    @Nullable
    private final List<BaseGradientPoint> points;
    @SerializedName("type")
    @Nullable
    private final Type type;
    @SerializedName("width")
    @Nullable
    private final Integer width;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/polls/dto/PollsBackground$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "GRADIENT", "TILE", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Type {
        GRADIENT("gradient"),
        TILE("tile");
        
        @NotNull
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public PollsBackground() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public PollsBackground(@Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable List<BaseImage> list, @Nullable List<BaseGradientPoint> list2, @Nullable Type type, @Nullable Integer num4) {
        this.angle = num;
        this.color = str;
        this.height = num2;
        this.f36053id = num3;
        this.name = str2;
        this.images = list;
        this.points = list2;
        this.type = type;
        this.width = num4;
    }

    @Nullable
    public final Integer component1() {
        return this.angle;
    }

    @Nullable
    public final String component2() {
        return this.color;
    }

    @Nullable
    public final Integer component3() {
        return this.height;
    }

    @Nullable
    public final Integer component4() {
        return this.f36053id;
    }

    @Nullable
    public final String component5() {
        return this.name;
    }

    @Nullable
    public final List<BaseImage> component6() {
        return this.images;
    }

    @Nullable
    public final List<BaseGradientPoint> component7() {
        return this.points;
    }

    @Nullable
    public final Type component8() {
        return this.type;
    }

    @Nullable
    public final Integer component9() {
        return this.width;
    }

    @NotNull
    public final PollsBackground copy(@Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable List<BaseImage> list, @Nullable List<BaseGradientPoint> list2, @Nullable Type type, @Nullable Integer num4) {
        return new PollsBackground(num, str, num2, num3, str2, list, list2, type, num4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PollsBackground) {
            PollsBackground pollsBackground = (PollsBackground) obj;
            return Intrinsics.areEqual(this.angle, pollsBackground.angle) && Intrinsics.areEqual(this.color, pollsBackground.color) && Intrinsics.areEqual(this.height, pollsBackground.height) && Intrinsics.areEqual(this.f36053id, pollsBackground.f36053id) && Intrinsics.areEqual(this.name, pollsBackground.name) && Intrinsics.areEqual(this.images, pollsBackground.images) && Intrinsics.areEqual(this.points, pollsBackground.points) && this.type == pollsBackground.type && Intrinsics.areEqual(this.width, pollsBackground.width);
        }
        return false;
    }

    @Nullable
    public final Integer getAngle() {
        return this.angle;
    }

    @Nullable
    public final String getColor() {
        return this.color;
    }

    @Nullable
    public final Integer getHeight() {
        return this.height;
    }

    @Nullable
    public final Integer getId() {
        return this.f36053id;
    }

    @Nullable
    public final List<BaseImage> getImages() {
        return this.images;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final List<BaseGradientPoint> getPoints() {
        return this.points;
    }

    @Nullable
    public final Type getType() {
        return this.type;
    }

    @Nullable
    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        Integer num = this.angle;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.color;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.height;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.f36053id;
        int hashCode4 = (hashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str2 = this.name;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<BaseImage> list = this.images;
        int hashCode6 = (hashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        List<BaseGradientPoint> list2 = this.points;
        int hashCode7 = (hashCode6 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Type type = this.type;
        int hashCode8 = (hashCode7 + (type == null ? 0 : type.hashCode())) * 31;
        Integer num4 = this.width;
        return hashCode8 + (num4 != null ? num4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.angle;
        String str = this.color;
        Integer num2 = this.height;
        Integer num3 = this.f36053id;
        String str2 = this.name;
        List<BaseImage> list = this.images;
        List<BaseGradientPoint> list2 = this.points;
        Type type = this.type;
        Integer num4 = this.width;
        return "PollsBackground(angle=" + num + ", color=" + str + ", height=" + num2 + ", id=" + num3 + ", name=" + str2 + ", images=" + list + ", points=" + list2 + ", type=" + type + ", width=" + num4 + ")";
    }

    public /* synthetic */ PollsBackground(Integer num, String str, Integer num2, Integer num3, String str2, List list, List list2, Type type, Integer num4, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : num2, (i9 & 8) != 0 ? null : num3, (i9 & 16) != 0 ? null : str2, (i9 & 32) != 0 ? null : list, (i9 & 64) != 0 ? null : list2, (i9 & 128) != 0 ? null : type, (i9 & 256) == 0 ? num4 : null);
    }
}
