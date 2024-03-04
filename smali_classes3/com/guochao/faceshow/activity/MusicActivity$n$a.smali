.class Lcom/guochao/faceshow/activity/MusicActivity$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicActivity$n;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/bean/MusicType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/bean/MusicType;

.field final synthetic b:Lcom/guochao/faceshow/activity/MusicActivity$n;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity$n;Lcom/guochao/faceshow/bean/MusicType;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$n$a;->b:Lcom/guochao/faceshow/activity/MusicActivity$n;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$n$a;->a:Lcom/guochao/faceshow/bean/MusicType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$n$a;->b:Lcom/guochao/faceshow/activity/MusicActivity$n;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/MusicActivity$n;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    const-class v1, Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$n$a;->a:Lcom/guochao/faceshow/bean/MusicType;

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MusicType;->type_id:Ljava/lang/String;

    const-string v1, "type_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$n$a;->b:Lcom/guochao/faceshow/activity/MusicActivity$n;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/MusicActivity$n;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->m0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$n$a;->a:Lcom/guochao/faceshow/bean/MusicType;

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MusicType;->type_name:Ljava/lang/String;

    const-string v1, "type_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$n$a;->b:Lcom/guochao/faceshow/activity/MusicActivity$n;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/MusicActivity$n;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
