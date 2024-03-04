.class public final Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003Ja\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003H\u00c6\u0001J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u00d6\u0003J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001J\t\u0010%\u001a\u00020&H\u00d6\u0001J\u0019\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0003H\u00d6\u0001R\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\u00a8\u0006,"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;",
        "Landroid/os/Parcelable;",
        "page",
        "",
        "list",
        "",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
        "size",
        "owner",
        "admins",
        "memberMaxCount",
        "memberCount",
        "(ILjava/util/List;ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/util/List;II)V",
        "getAdmins",
        "()Ljava/util/List;",
        "getList",
        "getMemberCount",
        "()I",
        "getMemberMaxCount",
        "getOwner",
        "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
        "getPage",
        "getSize",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final admins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final memberCount:I

.field private final memberMaxCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "memberMaxCount"
    .end annotation
.end field

.field private final owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final page:I

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel$Creator;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/util/List;II)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            ">;I",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->page:I

    .line 3
    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->list:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->size:I

    .line 5
    iput-object p4, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    .line 6
    iput-object p5, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->admins:Ljava/util/List;

    .line 7
    iput p6, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberMaxCount:I

    .line 8
    iput p7, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberCount:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/util/List;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 10
    invoke-direct/range {v1 .. v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;-><init>(ILjava/util/List;ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/util/List;II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;ILjava/util/List;ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/util/List;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->page:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->list:Ljava/util/List;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->size:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->admins:Ljava/util/List;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberMaxCount:I

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget p7, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberCount:I

    :cond_6
    move v4, p7

    move-object p2, p0

    move p3, p1

    move-object p4, p9

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->copy(ILjava/util/List;ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/util/List;II)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->page:I

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->size:I

    return v0
.end method

.method public final component4()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->admins:Ljava/util/List;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberMaxCount:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberCount:I

    return v0
.end method

.method public final copy(ILjava/util/List;ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/util/List;II)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;
    .locals 9
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            ">;I",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            ">;II)",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;

    move-object v0, v8

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;-><init>(ILjava/util/List;ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/util/List;II)V

    return-object v8
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->page:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->page:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->list:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->list:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->size:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->size:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->admins:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->admins:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberMaxCount:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberMaxCount:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberCount:I

    iget p1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberCount:I

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAdmins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->admins:Ljava/util/List;

    return-object v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getMemberCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberCount:I

    return v0
.end method

.method public final getMemberMaxCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberMaxCount:I

    return v0
.end method

.method public final getOwner()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    return-object v0
.end method

.method public final getPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->page:I

    return v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->size:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->page:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->list:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->size:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->admins:Ljava/util/List;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberMaxCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRoomMemberPagedModel(page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", admins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->admins:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", memberMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", memberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->page:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->list:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    invoke-virtual {v3, p1, p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->admins:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    invoke-virtual {v1, p1, p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_4
    :goto_4
    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberMaxCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->memberCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
