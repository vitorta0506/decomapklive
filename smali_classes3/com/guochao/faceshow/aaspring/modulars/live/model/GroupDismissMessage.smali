.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/GroupDismissMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field private groupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GroupDismissMessage;->groupId:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setRoomId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GroupDismissMessage;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GroupDismissMessage;->groupId:Ljava/lang/String;

    return-void
.end method
