.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/HelloMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lx8/c<",
        "*>;>",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;"
    }
.end annotation


# instance fields
.field mModel:Lx8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/HelloMessage;->mModel:Lx8/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic getWrappedMessage()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/HelloMessage;->getWrappedMessage()Lx8/c;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedMessage()Lx8/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/HelloMessage;->mModel:Lx8/c;

    return-object v0
.end method

.method public isOnlineMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
