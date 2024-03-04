.class public final synthetic Lcom/guochao/faceshow/aaspring/base/fragment/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/d;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/d;->b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/d;->c:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/base/fragment/d;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/d;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/d;->b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/d;->c:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/d;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->P1(Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;Landroid/view/View;)V

    return-void
.end method
