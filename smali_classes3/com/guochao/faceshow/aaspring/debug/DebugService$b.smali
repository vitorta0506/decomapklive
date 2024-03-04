.class Lcom/guochao/faceshow/aaspring/debug/DebugService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/debug/DebugService;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/debug/DebugService;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/debug/DebugService;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$b;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$b;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$b;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$b;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->g:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$b;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$b;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->g:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
