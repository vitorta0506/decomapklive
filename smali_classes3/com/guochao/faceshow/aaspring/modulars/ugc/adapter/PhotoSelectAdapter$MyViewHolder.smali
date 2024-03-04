.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter$MyViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter$MyViewHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0529

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter$MyViewHolder;->a:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
