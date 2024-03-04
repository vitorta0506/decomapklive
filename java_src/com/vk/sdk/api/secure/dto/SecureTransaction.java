package com.vk.sdk.api.secure.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJJ\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\f\u0010\nR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\r\u0010\nR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u000e\u0010\nR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u000f\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/secure/dto/SecureTransaction;", "", "date", "", "id", "uidFrom", "uidTo", "votes", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "getUidFrom", "getUidTo", "getVotes", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/secure/dto/SecureTransaction;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class SecureTransaction {
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36072id;
    @SerializedName("uid_from")
    @Nullable
    private final Integer uidFrom;
    @SerializedName("uid_to")
    @Nullable
    private final Integer uidTo;
    @SerializedName("votes")
    @Nullable
    private final Integer votes;

    public SecureTransaction() {
        this(null, null, null, null, null, 31, null);
    }

    public SecureTransaction(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5) {
        this.date = num;
        this.f36072id = num2;
        this.uidFrom = num3;
        this.uidTo = num4;
        this.votes = num5;
    }

    public static /* synthetic */ SecureTransaction copy$default(SecureTransaction secureTransaction, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = secureTransaction.date;
        }
        if ((i9 & 2) != 0) {
            num2 = secureTransaction.f36072id;
        }
        Integer num6 = num2;
        if ((i9 & 4) != 0) {
            num3 = secureTransaction.uidFrom;
        }
        Integer num7 = num3;
        if ((i9 & 8) != 0) {
            num4 = secureTransaction.uidTo;
        }
        Integer num8 = num4;
        if ((i9 & 16) != 0) {
            num5 = secureTransaction.votes;
        }
        return secureTransaction.copy(num, num6, num7, num8, num5);
    }

    @Nullable
    public final Integer component1() {
        return this.date;
    }

    @Nullable
    public final Integer component2() {
        return this.f36072id;
    }

    @Nullable
    public final Integer component3() {
        return this.uidFrom;
    }

    @Nullable
    public final Integer component4() {
        return this.uidTo;
    }

    @Nullable
    public final Integer component5() {
        return this.votes;
    }

    @NotNull
    public final SecureTransaction copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5) {
        return new SecureTransaction(num, num2, num3, num4, num5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SecureTransaction) {
            SecureTransaction secureTransaction = (SecureTransaction) obj;
            return Intrinsics.areEqual(this.date, secureTransaction.date) && Intrinsics.areEqual(this.f36072id, secureTransaction.f36072id) && Intrinsics.areEqual(this.uidFrom, secureTransaction.uidFrom) && Intrinsics.areEqual(this.uidTo, secureTransaction.uidTo) && Intrinsics.areEqual(this.votes, secureTransaction.votes);
        }
        return false;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @Nullable
    public final Integer getId() {
        return this.f36072id;
    }

    @Nullable
    public final Integer getUidFrom() {
        return this.uidFrom;
    }

    @Nullable
    public final Integer getUidTo() {
        return this.uidTo;
    }

    @Nullable
    public final Integer getVotes() {
        return this.votes;
    }

    public int hashCode() {
        Integer num = this.date;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.f36072id;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.uidFrom;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.uidTo;
        int hashCode4 = (hashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.votes;
        return hashCode4 + (num5 != null ? num5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.date;
        Integer num2 = this.f36072id;
        Integer num3 = this.uidFrom;
        Integer num4 = this.uidTo;
        Integer num5 = this.votes;
        return "SecureTransaction(date=" + num + ", id=" + num2 + ", uidFrom=" + num3 + ", uidTo=" + num4 + ", votes=" + num5 + ")";
    }

    public /* synthetic */ SecureTransaction(Integer num, Integer num2, Integer num3, Integer num4, Integer num5, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : num3, (i9 & 8) != 0 ? null : num4, (i9 & 16) != 0 ? null : num5);
    }
}
