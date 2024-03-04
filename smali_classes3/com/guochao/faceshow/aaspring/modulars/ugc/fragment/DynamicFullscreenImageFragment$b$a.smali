.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$b;->c(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->h:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v2, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->c(FFFZ)V

    return-void
.end method
