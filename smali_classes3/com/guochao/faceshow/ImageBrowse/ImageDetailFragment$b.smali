.class Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$b;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$b;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->P1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$b;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->Q1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
