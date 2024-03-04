.class public Lcom/guochao/faceshow/aaspring/beans/KitEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isAttention:Ljava/lang/String;

.field private isKit:Z

.field private roomId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/KitEvent;->roomId:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/KitEvent;->isKit:Z

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/beans/KitEvent;->isAttention:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIsAttention()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/KitEvent;->isAttention:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/KitEvent;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public isKit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/KitEvent;->isKit:Z

    return v0
.end method

.method public setIsAttention(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/KitEvent;->isAttention:Ljava/lang/String;

    return-void
.end method

.method public setKit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/KitEvent;->isKit:Z

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/KitEvent;->roomId:Ljava/lang/String;

    return-void
.end method
