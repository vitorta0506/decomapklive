.class Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->g2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->g:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->Q1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;->onSelect(Landroid/view/View;Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->U1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;I)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->reset()V

    return-void
.end method
