.class Lcom/guochao/faceshow/push/PushSettingActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/push/PushSettingActivity;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/push/PushSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$m;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$m;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->systemInteraction:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "is_system_interaction"

    invoke-static {p1, v0, v2, v1}, Lcom/guochao/faceshow/push/PushSettingActivity;->d0(Lcom/guochao/faceshow/push/PushSettingActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method
