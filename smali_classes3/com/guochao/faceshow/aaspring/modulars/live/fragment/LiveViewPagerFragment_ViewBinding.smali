.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v1, 0x7f0a0b26

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v0, 0x7f0a07df

    const-string v1, "field \'myRoomsBtn\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->myRoomsBtn:Landroid/view/View;

    .line 5
    const-class v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v1, 0x7f0a0af5

    const-string v2, "field \'svgaImageViewV2\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->svgaImageViewV2:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v0, 0x7f0a0d9c

    const-string v1, "field \'myRoomTips\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->myRoomTips:Landroid/view/View;

    .line 7
    const-class v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v1, 0x7f0a03e4

    const-string v2, "field \'firstRecharge\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->myRoomsBtn:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->svgaImageViewV2:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->myRoomTips:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
