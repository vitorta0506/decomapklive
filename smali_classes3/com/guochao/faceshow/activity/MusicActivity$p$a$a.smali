.class Lcom/guochao/faceshow/activity/MusicActivity$p$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicActivity$p$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicActivity$p$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity$p$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a$a;->a:Lcom/guochao/faceshow/activity/MusicActivity$p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a$a;->a:Lcom/guochao/faceshow/activity/MusicActivity$p$a;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->B0(Lcom/guochao/faceshow/activity/MusicActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "music_url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a$a;->a:Lcom/guochao/faceshow/activity/MusicActivity$p$a;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->c:Lcom/guochao/faceshow/bean/MusicBean;

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MusicBean;->musicId:Ljava/lang/String;

    const-string v1, "musicId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a$a;->a:Lcom/guochao/faceshow/activity/MusicActivity$p$a;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->c:Lcom/guochao/faceshow/bean/MusicBean;

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MusicBean;->img:Ljava/lang/String;

    const-string v1, "musicImg"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a$a;->a:Lcom/guochao/faceshow/activity/MusicActivity$p$a;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a$a;->a:Lcom/guochao/faceshow/activity/MusicActivity$p$a;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
