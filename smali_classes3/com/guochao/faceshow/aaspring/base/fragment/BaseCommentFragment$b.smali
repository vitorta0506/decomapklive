.class Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->m0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$b;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$b;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    return-void
.end method
