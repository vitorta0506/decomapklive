.class Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$c;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$c;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$c;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->g:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$c;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;->onCameraClick(Landroid/view/View;)V

    return-void
.end method
