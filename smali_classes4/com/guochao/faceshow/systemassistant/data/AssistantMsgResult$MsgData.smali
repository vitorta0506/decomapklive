.class public Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgData"
.end annotation


# instance fields
.field public transient FromAccount:Ljava/lang/String;

.field public Id:I

.field public Image:Ljava/lang/String;

.field public ImageHeight:I

.field public ImageInfoArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public ImageWidth:I

.field public MsgId:I

.field public MsgTimestamp:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public PartakeTimes:I

.field public Status:Ljava/lang/String;

.field public Text:Ljava/lang/String;

.field public transient ToAccount:Ljava/lang/String;

.field public Type:I

.field public URL:Ljava/lang/String;

.field public Url:Ljava/lang/String;

.field public UserId:J

.field public transient assistantOfficialUser:Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

.field public transient isSelf:Z

.field public mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

.field public transient sendStatus:I

.field public shareable:Z

.field public transient titleIconResId:I

.field public translate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->isSelf:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->sendStatus:I

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->titleIconResId:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->shareable:Z

    return-void
.end method


# virtual methods
.method public getImgInfoArrayFirstItem()Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->ImageInfoArray:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->ImageInfoArray:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
