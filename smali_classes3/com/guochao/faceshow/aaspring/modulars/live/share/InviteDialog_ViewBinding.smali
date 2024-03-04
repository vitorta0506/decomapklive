.class public Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v1, 0x7f0a0b26

    const-string v2, "field \'tabs\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v0, 0x7f0a020e

    const-string v1, "field \'closeIV\' and method \'onViewClicked\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'closeIV\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->closeIV:Landroid/widget/ImageView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0b20

    const-string v2, "field \'tabLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->tabLay:Landroid/widget/LinearLayout;

    .line 9
    const-class v0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    const v1, 0x7f0a0e2e

    const-string v2, "field \'vpContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0186

    const-string v2, "field \'btnConfirm\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->btnConfirm:Landroid/widget/TextView;

    const v0, 0x7f0a0624

    const-string v1, "field \'confirmLay\' and method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->confirmLay:Landroid/view/View;

    .line 13
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0247

    const-string v1, "field \'confirmTip\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->confirmTip:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->closeIV:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->tabLay:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->btnConfirm:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->confirmLay:Landroid/view/View;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->confirmTip:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;->c:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
