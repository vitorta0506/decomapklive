.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05b0

    const-string v2, "field \'ivImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->ivImage:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c98

    const-string v2, "field \'tvHeadName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->tvHeadName:Landroid/widget/TextView;

    const v0, 0x7f0a065e

    const-string v1, "field \'lineView\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->lineView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->ivImage:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->tvHeadName:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$RecommendedViewHolder;->lineView:Landroid/view/View;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
