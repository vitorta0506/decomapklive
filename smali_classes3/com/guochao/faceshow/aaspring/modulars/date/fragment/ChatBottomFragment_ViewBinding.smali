.class public Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d21

    const-string v2, "field \'tvVideo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->tvVideo:Landroid/widget/TextView;

    const v0, 0x7f0a0701

    const-string v1, "field \'llVideo\' and method \'onViewClicked\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llVideo\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVideo:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d25

    const-string v2, "field \'tvVoice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->tvVoice:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dec

    const-string v2, "field \'videoPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->videoPrice:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00e6

    const-string v2, "field \'audioPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->audioPrice:Landroid/widget/TextView;

    const v0, 0x7f0a0703

    const-string v1, "field \'llVoice\' and method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llVoice\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVoice:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c5d

    const-string v2, "field \'tvClose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->tvClose:Landroid/widget/TextView;

    const v0, 0x7f0a06c4

    const-string v1, "field \'llClose\' and method \'onViewClicked\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 17
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llClose\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llClose:Landroid/widget/LinearLayout;

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->e:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e02

    const-string v1, "field \'viewLine\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->viewLine:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->tvVideo:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVideo:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->tvVoice:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->videoPrice:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->audioPrice:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVoice:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->tvClose:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llClose:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->viewLine:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->c:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
