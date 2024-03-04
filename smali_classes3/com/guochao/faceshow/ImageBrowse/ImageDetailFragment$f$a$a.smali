.class Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;

    iget-object v0, v0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;

    iget-object v0, v0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;

    iget-object v1, v1, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    const v2, 0x7f1207b6

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void
.end method
