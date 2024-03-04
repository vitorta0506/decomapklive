.class Lcom/guochao/faceshow/systemassistant/adapter/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/adapter/b;->f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

.field final synthetic b:Lcom/guochao/faceshow/systemassistant/adapter/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/adapter/b;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$d;->b:Lcom/guochao/faceshow/systemassistant/adapter/b;

    iput-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$d;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$d;->b:Lcom/guochao/faceshow/systemassistant/adapter/b;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$d;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/systemassistant/adapter/b;->j(Lcom/guochao/faceshow/systemassistant/adapter/b;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    return-void
.end method
