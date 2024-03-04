.class Lcom/guochao/faceshow/push/PushSettingActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/push/PushSettingActivity;->l0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/push/PushSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/push/PushSettingActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$h;->b:Lcom/guochao/faceshow/push/PushSettingActivity;

    iput p2, p0, Lcom/guochao/faceshow/push/PushSettingActivity$h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 3

    if-eqz p2, :cond_2

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/push/PushSettingActivity$h;->a:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/push/PushSettingActivity$h;->b:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object v1, p2, Lcom/guochao/faceshow/push/PushSettingActivity;->swFocusLive:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    xor-int/2addr v0, v2

    const-string v2, "is_anchor"

    invoke-static {p2, v1, v2, v0}, Lcom/guochao/faceshow/push/PushSettingActivity;->d0(Lcom/guochao/faceshow/push/PushSettingActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/push/PushSettingActivity$h;->b:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object v1, p2, Lcom/guochao/faceshow/push/PushSettingActivity;->newChatMsgStatues:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    xor-int/2addr v0, v2

    const-string v2, "chat_switch"

    invoke-static {p2, v1, v2, v0}, Lcom/guochao/faceshow/push/PushSettingActivity;->d0(Lcom/guochao/faceshow/push/PushSettingActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/push/PushSettingActivity$h;->b:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object v1, p2, Lcom/guochao/faceshow/push/PushSettingActivity;->swFocusVideo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    xor-int/2addr v0, v2

    const-string v2, "is_like_vide"

    invoke-static {p2, v1, v2, v0}, Lcom/guochao/faceshow/push/PushSettingActivity;->d0(Lcom/guochao/faceshow/push/PushSettingActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_1
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
