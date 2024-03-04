.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->b(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$UserHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;->a(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$d$a;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
