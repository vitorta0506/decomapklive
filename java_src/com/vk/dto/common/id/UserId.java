package com.vk.dto.common.id;

import android.os.Parcel;
import android.os.Parcelable;
import b7.b;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\n\u001a\u00020\u0006HÆ\u0003J\u0013\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\b\u0010\f\u001a\u00020\rH\u0016J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\rHÖ\u0001J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\rH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u001b"}, d2 = {"Lcom/vk/dto/common/id/UserId;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "value", "", "(J)V", "getValue", "()J", "component1", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "dest", "flags", "Companion", "GsonSerializer", "id_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserId implements Parcelable {
    private final long value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final UserId DEFAULT = new UserId(0);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<UserId> CREATOR = new Parcelable.Creator<UserId>() { // from class: com.vk.dto.common.id.UserId$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public UserId createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new UserId(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public UserId[] newArray(int i9) {
            return new UserId[i9];
        }
    };

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0007J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\fH\u0007J\b\u0010\r\u001a\u00020\u000eH\u0007J\u0016\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0011H\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/vk/dto/common/id/UserId$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/vk/dto/common/id/UserId;", "DEFAULT", "fromLegacyValue", "value", "", "fromLegacyValues", "", "", "removeLegacyGlobalObserver", "", "setLegacyGlobalObserver", "observer", "Lkotlin/Function0;", "id_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Deprecated(message = "don't use it in new code", replaceWith = @ReplaceWith(expression = "UserId()", imports = {"com.vk.dto.common.id.UserId"}))
        @JvmStatic
        @NotNull
        public final UserId fromLegacyValue(int i9) {
            UserIdKt.access$getLegacyObserver$p().invoke();
            return new UserId(i9);
        }

        @Deprecated(message = "don't use it in new code", replaceWith = @ReplaceWith(expression = "UserId()", imports = {"com.vk.dto.common.id.UserId"}))
        @JvmStatic
        @NotNull
        public final List<UserId> fromLegacyValues(@NotNull Collection<Integer> value) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(value, "value");
            UserIdKt.access$getLegacyObserver$p().invoke();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(value, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Number number : value) {
                arrayList.add(UserId.Companion.fromLegacyValue(number.intValue()));
            }
            return arrayList;
        }

        @Deprecated(message = "Only for debug usage")
        public final synchronized void removeLegacyGlobalObserver() {
            UserIdKt.access$setLegacyObserver$p(new Function0<Unit>() { // from class: com.vk.dto.common.id.UserId$Companion$removeLegacyGlobalObserver$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }
            });
        }

        @Deprecated(message = "Only for debug usage")
        public final synchronized void setLegacyGlobalObserver(@NotNull Function0<Unit> observer) {
            Intrinsics.checkNotNullParameter(observer, "observer");
            UserIdKt.access$setLegacyObserver$p(observer);
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0003B\u000f\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J(\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u000e\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0011H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/vk/dto/common/id/UserId$GsonSerializer;", "Lcom/google/gson/JsonSerializer;", "Lcom/vk/dto/common/id/UserId;", "Lcom/google/gson/JsonDeserializer;", "shiftByMaxInt", "", "(Z)V", "deserialize", "json", "Lcom/google/gson/JsonElement;", "typeOfT", "Ljava/lang/reflect/Type;", "context", "Lcom/google/gson/JsonDeserializationContext;", "serialize", "src", "typeOfSrc", "Lcom/google/gson/JsonSerializationContext;", "id_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class GsonSerializer implements JsonSerializer<UserId>, JsonDeserializer<UserId> {
        private final boolean shiftByMaxInt;

        public GsonSerializer() {
            this(false, 1, null);
        }

        public GsonSerializer(boolean z10) {
            this.shiftByMaxInt = z10;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.JsonDeserializer
        @Nullable
        public UserId deserialize(@Nullable JsonElement jsonElement, @Nullable Type type, @Nullable JsonDeserializationContext jsonDeserializationContext) {
            if (jsonElement == null || jsonElement.isJsonNull()) {
                return null;
            }
            long asLong = jsonElement.getAsLong();
            if (this.shiftByMaxInt) {
                boolean z10 = asLong < 0;
                long abs = Math.abs(asLong);
                if (abs >= 2147483647L) {
                    long j10 = abs - Integer.MAX_VALUE;
                    if (z10) {
                        j10 = -j10;
                    }
                    return new UserId(j10);
                }
                throw new IllegalStateException("abs of owner id should be >= MAX_INT");
            }
            return new UserId(asLong);
        }

        @Override // com.google.gson.JsonSerializer
        @NotNull
        public JsonElement serialize(@Nullable UserId userId, @Nullable Type type, @Nullable JsonSerializationContext jsonSerializationContext) {
            long value;
            if (userId == null) {
                value = -1;
            } else if (!this.shiftByMaxInt) {
                value = userId.getValue();
            } else if (userId.getValue() < 0) {
                value = userId.getValue() - Integer.MAX_VALUE;
            } else {
                value = userId.getValue() + Integer.MAX_VALUE;
            }
            return new JsonPrimitive(Long.valueOf(value));
        }

        public /* synthetic */ GsonSerializer(boolean z10, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this((i9 & 1) != 0 ? false : z10);
        }
    }

    public UserId(long j10) {
        this.value = j10;
    }

    public static /* synthetic */ UserId copy$default(UserId userId, long j10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            j10 = userId.value;
        }
        return userId.copy(j10);
    }

    @Deprecated(message = "don't use it in new code", replaceWith = @ReplaceWith(expression = "UserId()", imports = {"com.vk.dto.common.id.UserId"}))
    @JvmStatic
    @NotNull
    public static final UserId fromLegacyValue(int i9) {
        return Companion.fromLegacyValue(i9);
    }

    @Deprecated(message = "don't use it in new code", replaceWith = @ReplaceWith(expression = "UserId()", imports = {"com.vk.dto.common.id.UserId"}))
    @JvmStatic
    @NotNull
    public static final List<UserId> fromLegacyValues(@NotNull Collection<Integer> collection) {
        return Companion.fromLegacyValues(collection);
    }

    public final long component1() {
        return this.value;
    }

    @NotNull
    public final UserId copy(long j10) {
        return new UserId(j10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UserId) && this.value == ((UserId) obj).value;
    }

    public final long getValue() {
        return this.value;
    }

    public int hashCode() {
        return b.a(this.value);
    }

    @NotNull
    public String toString() {
        return String.valueOf(this.value);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i9) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeLong(this.value);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UserId(@NotNull Parcel parcel) {
        this(parcel.readLong());
        Intrinsics.checkNotNullParameter(parcel, "parcel");
    }
}
