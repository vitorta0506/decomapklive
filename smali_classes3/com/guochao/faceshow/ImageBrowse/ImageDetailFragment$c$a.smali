.class Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->c(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;

    iget-object v0, v0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->T1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c$a;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;

    iget-object v1, v1, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->U1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->c(FFFZ)V

    return-void
.end method
