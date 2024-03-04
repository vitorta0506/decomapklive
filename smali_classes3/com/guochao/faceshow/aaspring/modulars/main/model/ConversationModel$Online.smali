.class public final Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;
.super Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Online"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\t\"\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;",
        "onlineTimestamp",
        "",
        "userOnlineEnum",
        "",
        "requestTime",
        "(JLjava/lang/String;J)V",
        "getOnlineTimestamp",
        "()J",
        "getRequestTime",
        "setRequestTime",
        "(J)V",
        "getUserOnlineEnum",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final onlineTimestamp:J

.field private requestTime:J

.field private final userOnlineEnum:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->onlineTimestamp:J

    .line 5
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->userOnlineEnum:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->requestTime:J

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;-><init>(JLjava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;JLjava/lang/String;JILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->onlineTimestamp:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->userOnlineEnum:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-wide p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->requestTime:J

    :cond_2
    move-wide v4, p4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->copy(JLjava/lang/String;J)Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->onlineTimestamp:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->userOnlineEnum:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->requestTime:J

    return-wide v0
.end method

.method public final copy(JLjava/lang/String;J)Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;

    move-object v0, v6

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;-><init>(JLjava/lang/String;J)V

    return-object v6
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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;

    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->onlineTimestamp:J

    iget-wide v5, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->onlineTimestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->userOnlineEnum:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->userOnlineEnum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->requestTime:J

    iget-wide v5, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->requestTime:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOnlineTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->onlineTimestamp:J

    return-wide v0
.end method

.method public final getRequestTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->requestTime:J

    return-wide v0
.end method

.method public final getUserOnlineEnum()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->userOnlineEnum:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->onlineTimestamp:J

    invoke-static {v0, v1}, Lb7/b;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->userOnlineEnum:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->requestTime:J

    invoke-static {v1, v2}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setRequestTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->requestTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Online(onlineTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->onlineTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userOnlineEnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->userOnlineEnum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->requestTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
