.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->a(Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->g1(Lcom/guochao/faceshow/aaspring/beans/Comment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
