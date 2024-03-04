.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;

    const v0, 0x7f0a05ae

    const-string v1, "field \'ivHeaderImg\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const-string v3, "field \'ivHeaderImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->ivHeaderImg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dc5

    const-string v2, "field \'userName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->userName:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a01ea

    const-string v2, "field \'chatTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->chatTime:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d10

    const-string v2, "field \'tvTotalTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvTotalTime:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cdd

    const-string v2, "field \'tvReceiveGift\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvReceiveGift:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cf6

    const-string v2, "field \'tvSendGift\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvSendGift:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cb9

    const-string v2, "field \'tvMatchNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvMatchNum:Landroid/widget/TextView;

    .line 13
    const-class v0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    const v1, 0x7f0a009e

    const-string v2, "field \'userGenderAge\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->userGenderAge:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    .line 14
    const-class v0, Lcom/guochao/faceshow/aaspring/views/LevelView;

    const v1, 0x7f0a064a

    const-string v2, "field \'levelView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LevelView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 15
    const-class v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v1, 0x7f0a0e13

    const-string v2, "field \'vipIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->ivHeaderImg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->userName:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->chatTime:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvTotalTime:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvReceiveGift:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvSendGift:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvMatchNum:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->userGenderAge:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
