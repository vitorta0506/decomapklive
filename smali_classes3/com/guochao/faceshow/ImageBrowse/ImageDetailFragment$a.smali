.class Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/widget/ImageView;FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
