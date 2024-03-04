.class Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;

    iget-object v0, v0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->W1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->b2(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a$a;-><init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->X1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;Landroid/graphics/Bitmap;)V

    return-void
.end method
