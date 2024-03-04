.class Lcom/guochao/faceshow/aaspring/debug/DebugService$a;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$a;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$a;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a(Lcom/guochao/faceshow/aaspring/debug/DebugService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$a;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
