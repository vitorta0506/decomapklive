package com.vk.sdk.api.audio.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseImage;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/audio/dto/AudioPhotosByType;", "", "type", "", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "", "Lcom/vk/sdk/api/base/dto/BaseImage;", "(Ljava/lang/String;Ljava/util/List;)V", "getPhoto", "()Ljava/util/List;", "getType", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AudioPhotosByType {
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @NotNull
    private final List<BaseImage> photo;
    @SerializedName("type")
    @NotNull
    private final String type;

    public AudioPhotosByType(@NotNull String type, @NotNull List<BaseImage> photo) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(photo, "photo");
        this.type = type;
        this.photo = photo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AudioPhotosByType copy$default(AudioPhotosByType audioPhotosByType, String str, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = audioPhotosByType.type;
        }
        if ((i9 & 2) != 0) {
            list = audioPhotosByType.photo;
        }
        return audioPhotosByType.copy(str, list);
    }

    @NotNull
    public final String component1() {
        return this.type;
    }

    @NotNull
    public final List<BaseImage> component2() {
        return this.photo;
    }

    @NotNull
    public final AudioPhotosByType copy(@NotNull String type, @NotNull List<BaseImage> photo) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(photo, "photo");
        return new AudioPhotosByType(type, photo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AudioPhotosByType) {
            AudioPhotosByType audioPhotosByType = (AudioPhotosByType) obj;
            return Intrinsics.areEqual(this.type, audioPhotosByType.type) && Intrinsics.areEqual(this.photo, audioPhotosByType.photo);
        }
        return false;
    }

    @NotNull
    public final List<BaseImage> getPhoto() {
        return this.photo;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return (this.type.hashCode() * 31) + this.photo.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.type;
        List<BaseImage> list = this.photo;
        return "AudioPhotosByType(type=" + str + ", photo=" + list + ")";
    }
}
