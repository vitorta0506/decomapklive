.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->onVideoLoading(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mImageViewAvatar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mImageViewAvatar:Landroid/widget/ImageView;

    const-string v1, "file:///android_asset/leave_bj01.png"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    return-void
.end method
