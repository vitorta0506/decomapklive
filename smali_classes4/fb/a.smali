.class public Lfb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;IIZ)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-direct {v0}, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    const/16 v1, 0xcb

    .line 3
    iput v1, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Type:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->ImageInfoArray:Ljava/util/List;

    .line 5
    new-instance v1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;

    invoke-direct {v1}, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;-><init>()V

    .line 6
    iput-object p0, v1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;->URL:Ljava/lang/String;

    .line 7
    iput p1, v1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;->Width:I

    .line 8
    iput p2, v1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;->Height:I

    const/4 p0, 0x1

    .line 9
    iput p0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->sendStatus:I

    .line 10
    iget-object p0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->ImageInfoArray:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    iput p0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgId:I

    .line 12
    iput-boolean p3, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->isSelf:Z

    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-direct {v0}, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    const/16 p0, 0xc9

    .line 3
    iput p0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Type:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgTimestamp:Ljava/lang/String;

    .line 5
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    iput p0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgId:I

    .line 6
    iput-boolean p1, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->isSelf:Z

    const/4 p0, 0x1

    .line 7
    iput p0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->sendStatus:I

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, "172"

    return-object v0
.end method

.method public static d(Landroid/widget/ImageView;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string/jumbo v1, "userHeadimg"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-boolean p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->isSelf:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0f0089

    .line 3
    invoke-static {p0, v0, p1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f03ae

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "admin"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "game_admin"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-10000"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "8485396"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "172"

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "10000190"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
