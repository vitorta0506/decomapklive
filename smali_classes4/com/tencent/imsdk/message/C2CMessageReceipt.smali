.class public Lcom/tencent/imsdk/message/C2CMessageReceipt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isPeerRead:Z

.field private messageID:Ljava/lang/String;

.field private receiptTimestamp:J

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/C2CMessageReceipt;->messageID:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/C2CMessageReceipt;->receiptTimestamp:J

    return-wide v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/C2CMessageReceipt;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public isPeerRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/C2CMessageReceipt;->isPeerRead:Z

    return v0
.end method

.method public setMessageID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/C2CMessageReceipt;->messageID:Ljava/lang/String;

    return-void
.end method

.method public setPeerRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/message/C2CMessageReceipt;->isPeerRead:Z

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/C2CMessageReceipt;->userID:Ljava/lang/String;

    return-void
.end method
