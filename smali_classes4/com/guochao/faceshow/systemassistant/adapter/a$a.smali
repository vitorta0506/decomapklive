.class Lcom/guochao/faceshow/systemassistant/adapter/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/adapter/a;->f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;

.field final synthetic b:Lcom/guochao/faceshow/systemassistant/adapter/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/adapter/a;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/a$a;->b:Lcom/guochao/faceshow/systemassistant/adapter/a;

    iput-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/a$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/a$a;->b:Lcom/guochao/faceshow/systemassistant/adapter/a;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    const-class v1, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/a$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;->URL:Ljava/lang/String;

    const-string v1, "image_url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/a$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;

    iget v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;->Height:I

    const-string v1, "image_height"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/a$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;

    iget v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;->Width:I

    const-string v1, "image_width"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/a$a;->b:Lcom/guochao/faceshow/systemassistant/adapter/a;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
