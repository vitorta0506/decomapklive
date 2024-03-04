.class public final Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001J\t\u0010#\u001a\u00020\u0006H\u00d6\u0001R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0004R\u001e\u0010\u0014\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0004R\u001a\u0010\u0017\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012\"\u0004\u0008\u0019\u0010\u0004R\u001a\u0010\u001a\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0008\"\u0004\u0008\u001c\u0010\n\u00a8\u0006$"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
        "",
        "messageType",
        "",
        "(I)V",
        "content",
        "",
        "getContent",
        "()Ljava/lang/String;",
        "setContent",
        "(Ljava/lang/String;)V",
        "contentDate",
        "",
        "getContentDate",
        "()J",
        "setContentDate",
        "(J)V",
        "getMessageType",
        "()I",
        "setMessageType",
        "typeId",
        "getTypeId",
        "setTypeId",
        "unreadCount",
        "getUnreadCount",
        "setUnreadCount",
        "userNickName",
        "getUserNickName",
        "setUserNickName",
        "component1",
        "copy",
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
.field private content:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private contentDate:J

.field private messageType:I

.field private typeId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "type"
        }
        value = "typeId"
    .end annotation
.end field

.field private unreadCount:I

.field private userNickName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->messageType:I

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->userNickName:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;-><init>(I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;IILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->messageType:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->copy(I)Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->messageType:I

    return v0
.end method

.method public final copy(I)Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->messageType:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->messageType:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentDate()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->contentDate:J

    return-wide v0
.end method

.method public final getMessageType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->messageType:I

    return v0
.end method

.method public final getTypeId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->typeId:I

    return v0
.end method

.method public final getUnreadCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->unreadCount:I

    return v0
.end method

.method public final getUserNickName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->userNickName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->messageType:I

    return v0
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public final setContentDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->contentDate:J

    return-void
.end method

.method public final setMessageType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->messageType:I

    return-void
.end method

.method public final setTypeId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->typeId:I

    return-void
.end method

.method public final setUnreadCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->unreadCount:I

    return-void
.end method

.method public final setUserNickName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->userNickName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemConversationMessage(messageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->messageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
