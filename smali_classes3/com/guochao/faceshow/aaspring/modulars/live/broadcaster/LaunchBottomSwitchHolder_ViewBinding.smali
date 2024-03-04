.class public Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a067d

    const-string v2, "field \'liveBottomStart\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->liveBottomStart:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a067c

    const-string v2, "field \'liveBottomMiddle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->liveBottomMiddle:Landroid/widget/TextView;

    const v0, 0x7f0a0545

    const-string v1, "field \'indicatorBottomMiddle\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->indicatorBottomMiddle:Landroid/view/View;

    const v0, 0x7f0a0546

    const-string v1, "field \'indicatorBottomStart\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->indicatorBottomStart:Landroid/view/View;

    const v0, 0x7f0a0544

    const-string v1, "field \'indicatorBottomEnd\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->indicatorBottomEnd:Landroid/view/View;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a067a

    const-string v2, "field \'liveBottomEnd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->liveBottomEnd:Landroid/widget/TextView;

    .line 9
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;

    const v1, 0x7f0a015d

    const-string v2, "field \'bottomSwitchLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->bottomSwitchLay:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;

    const v0, 0x7f0a015c

    const-string v1, "method \'onViewClicked\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->c:Landroid/view/View;

    .line 12
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0155

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->d:Landroid/view/View;

    .line 15
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a015a

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->e:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->liveBottomStart:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->liveBottomMiddle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->indicatorBottomMiddle:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->indicatorBottomStart:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->indicatorBottomEnd:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->liveBottomEnd:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->bottomSwitchLay:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->c:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->d:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
