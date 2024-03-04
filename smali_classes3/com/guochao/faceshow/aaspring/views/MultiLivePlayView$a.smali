.class Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$a;->a:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$a;->a:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a(Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    return-void
.end method
