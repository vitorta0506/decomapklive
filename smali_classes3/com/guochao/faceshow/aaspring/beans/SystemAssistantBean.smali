.class public Lcom/guochao/faceshow/aaspring/beans/SystemAssistantBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:I

.field private msg:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SystemAssistantBean;->code:I

    return v0
.end method

.method public getMsg()Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SystemAssistantBean;->msg:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemAssistantBean;->code:I

    return-void
.end method

.method public setMsg(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SystemAssistantBean;->msg:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;

    return-void
.end method
