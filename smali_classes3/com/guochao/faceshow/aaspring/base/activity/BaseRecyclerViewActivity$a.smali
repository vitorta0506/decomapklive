.class Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity$a;->d:Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity$a;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity$a;->b:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity$a;->d:Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity$a;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity$a;->b:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity$a;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
