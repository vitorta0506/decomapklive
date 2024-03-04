.class public final Lcom/vk/dto/common/id/UserId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/dto/common/id/UserId$GsonSerializer;,
        Lcom/vk/dto/common/id/UserId$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\n\u001a\u00020\u0006H\u00c6\u0003J\u0013\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\rH\u00d6\u0001J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\rH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vk/dto/common/id/UserId;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "value",
        "",
        "(J)V",
        "getValue",
        "()J",
        "component1",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "dest",
        "flags",
        "Companion",
        "GsonSerializer",
        "id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/dto/common/id/UserId;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/vk/dto/common/id/UserId$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT:Lcom/vk/dto/common/id/UserId;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vk/dto/common/id/UserId$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/dto/common/id/UserId$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/dto/common/id/UserId;->Companion:Lcom/vk/dto/common/id/UserId$Companion;

    .line 1
    new-instance v0, Lcom/vk/dto/common/id/UserId;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/dto/common/id/UserId;-><init>(J)V

    sput-object v0, Lcom/vk/dto/common/id/UserId;->DEFAULT:Lcom/vk/dto/common/id/UserId;

    .line 2
    new-instance v0, Lcom/vk/dto/common/id/UserId$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/vk/dto/common/id/UserId$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/vk/dto/common/id/UserId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/vk/dto/common/id/UserId;->value:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/vk/dto/common/id/UserId;-><init>(J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/dto/common/id/UserId;JILjava/lang/Object;)Lcom/vk/dto/common/id/UserId;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/vk/dto/common/id/UserId;->value:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vk/dto/common/id/UserId;->copy(J)Lcom/vk/dto/common/id/UserId;

    move-result-object p0

    return-object p0
.end method

.method public static final fromLegacyValue(I)Lcom/vk/dto/common/id/UserId;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "don\'t use it in new code"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "UserId()"
            imports = {
                "com.vk.dto.common.id.UserId"
            }
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/vk/dto/common/id/UserId;->Companion:Lcom/vk/dto/common/id/UserId$Companion;

    invoke-virtual {v0, p0}, Lcom/vk/dto/common/id/UserId$Companion;->fromLegacyValue(I)Lcom/vk/dto/common/id/UserId;

    move-result-object p0

    return-object p0
.end method

.method public static final fromLegacyValues(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/vk/dto/common/id/UserId;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "don\'t use it in new code"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "UserId()"
            imports = {
                "com.vk.dto.common.id.UserId"
            }
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/vk/dto/common/id/UserId;->Companion:Lcom/vk/dto/common/id/UserId$Companion;

    invoke-virtual {v0, p0}, Lcom/vk/dto/common/id/UserId$Companion;->fromLegacyValues(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/vk/dto/common/id/UserId;->value:J

    return-wide v0
.end method

.method public final copy(J)Lcom/vk/dto/common/id/UserId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/vk/dto/common/id/UserId;

    invoke-direct {v0, p1, p2}, Lcom/vk/dto/common/id/UserId;-><init>(J)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vk/dto/common/id/UserId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/dto/common/id/UserId;

    iget-wide v3, p0, Lcom/vk/dto/common/id/UserId;->value:J

    iget-wide v5, p1, Lcom/vk/dto/common/id/UserId;->value:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/vk/dto/common/id/UserId;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/vk/dto/common/id/UserId;->value:J

    invoke-static {v0, v1}, Lb7/b;->a(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lcom/vk/dto/common/id/UserId;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/vk/dto/common/id/UserId;->value:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
