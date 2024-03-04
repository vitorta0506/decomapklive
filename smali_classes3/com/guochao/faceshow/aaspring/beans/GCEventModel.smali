.class public final Lcom/guochao/faceshow/aaspring/beans/GCEventModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "gc_event_model"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001d\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\t\u0010\"\u001a\u00020\u0008H\u00c6\u0003JB\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010(\u001a\u00020\u0008H\u00d6\u0001J\t\u0010)\u001a\u00020\u0005H\u00d6\u0001R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010\"\u0004\u0008\u0018\u0010\u0012R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006*"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/GCEventModel;",
        "",
        "id",
        "",
        "event",
        "",
        "recordTime",
        "targetUserId",
        "",
        "num",
        "(JLjava/lang/String;JLjava/lang/Integer;I)V",
        "getEvent",
        "()Ljava/lang/String;",
        "setEvent",
        "(Ljava/lang/String;)V",
        "getId",
        "()J",
        "setId",
        "(J)V",
        "getNum",
        "()I",
        "setNum",
        "(I)V",
        "getRecordTime",
        "setRecordTime",
        "getTargetUserId",
        "()Ljava/lang/Integer;",
        "setTargetUserId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(JLjava/lang/String;JLjava/lang/Integer;I)Lcom/guochao/faceshow/aaspring/beans/GCEventModel;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private event:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buryingCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private id:J
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private num:I

.field private recordTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pointTime"
    .end annotation
.end field

.field private targetUserId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;JLjava/lang/Integer;I)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->id:J

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->event:Ljava/lang/String;

    .line 4
    iput-wide p4, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->recordTime:J

    .line 5
    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->targetUserId:Ljava/lang/Integer;

    .line 6
    iput p7, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->num:I

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;JLjava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_1

    :cond_1
    move-wide v6, p4

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v5, p3

    .line 8
    invoke-direct/range {v2 .. v9}, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;-><init>(JLjava/lang/String;JLjava/lang/Integer;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/beans/GCEventModel;JLjava/lang/String;JLjava/lang/Integer;IILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/beans/GCEventModel;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->id:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->event:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->recordTime:J

    goto :goto_2

    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->targetUserId:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v6, p6

    :goto_3
    and-int/lit8 v7, p8, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->num:I

    goto :goto_4

    :cond_4
    move v7, p7

    :goto_4
    move-wide p1, v1

    move-object p3, v3

    move-wide p4, v4

    move-object p6, v6

    move p7, v7

    invoke-virtual/range {p0 .. p7}, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->copy(JLjava/lang/String;JLjava/lang/Integer;I)Lcom/guochao/faceshow/aaspring/beans/GCEventModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->event:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->recordTime:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->targetUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->num:I

    return v0
.end method

.method public final copy(JLjava/lang/String;JLjava/lang/Integer;I)Lcom/guochao/faceshow/aaspring/beans/GCEventModel;
    .locals 9
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "event"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;

    move-object v1, v0

    move-wide v2, p1

    move-wide v5, p4

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;-><init>(JLjava/lang/String;JLjava/lang/Integer;I)V

    return-object v0
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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;

    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->id:J

    iget-wide v5, p1, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->event:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->event:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->recordTime:J

    iget-wide v5, p1, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->recordTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->targetUserId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->targetUserId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->num:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->num:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getEvent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->event:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->id:J

    return-wide v0
.end method

.method public final getNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->num:I

    return v0
.end method

.method public final getRecordTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->recordTime:J

    return-wide v0
.end method

.method public final getTargetUserId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->targetUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->id:J

    invoke-static {v0, v1}, Lb7/b;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->event:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->recordTime:J

    invoke-static {v1, v2}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->targetUserId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->num:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->event:Ljava/lang/String;

    return-void
.end method

.method public final setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->id:J

    return-void
.end method

.method public final setNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->num:I

    return-void
.end method

.method public final setRecordTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->recordTime:J

    return-void
.end method

.method public final setTargetUserId(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->targetUserId:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GCEventModel(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recordTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->recordTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", targetUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->targetUserId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
