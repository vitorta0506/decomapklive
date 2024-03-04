.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$initView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$initView$2",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "offsetY",
        "",
        "getOffsetY",
        "()I",
        "setOffsetY",
        "(I)V",
        "onScrolled",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "dx",
        "dy",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private offsetY:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOffsetY()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$initView$2;->offsetY:I

    return v0
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const/high16 p2, 0x44430000    # 780.0f

    mul-float p1, p1, p2

    const/16 p2, 0x438

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    const p2, 0x43be8000    # 381.0f

    mul-float p1, p1, p2

    const/16 p2, 0x30c

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$initView$2;->offsetY:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$initView$2;->offsetY:I

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$initView$2;->offsetY:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p2, p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->onOffsetChanged(Ljava/lang/Integer;I)V

    return-void
.end method

.method public final setOffsetY(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$initView$2;->offsetY:I

    return-void
.end method
