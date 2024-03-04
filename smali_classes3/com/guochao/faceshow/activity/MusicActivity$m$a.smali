.class Lcom/guochao/faceshow/activity/MusicActivity$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicActivity$m;->a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/MusicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/guochao/faceshow/bean/MusicBean;

.field final synthetic c:Lcom/guochao/faceshow/activity/MusicActivity$m;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity$m;Landroid/widget/ImageView;Lcom/guochao/faceshow/bean/MusicBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$m$a;->c:Lcom/guochao/faceshow/activity/MusicActivity$m;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$m$a;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/guochao/faceshow/activity/MusicActivity$m$a;->b:Lcom/guochao/faceshow/bean/MusicBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$m$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$m$a;->c:Lcom/guochao/faceshow/activity/MusicActivity$m;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$m;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$m$a;->b:Lcom/guochao/faceshow/bean/MusicBean;

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MusicBean;->musicId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->i1(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;)V

    return-void
.end method
