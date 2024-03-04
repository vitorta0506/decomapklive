.class public Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    .line 3
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a025b

    const-string v2, "field \'contentLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->contentLay:Landroid/view/ViewGroup;

    .line 4
    const-class v0, Lcom/guochao/faceshow/views/ObservableScrollView;

    const v1, 0x7f0a0a09

    const-string v2, "field \'scrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/ObservableScrollView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;

    .line 5
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0bbb

    const-string v2, "field \'titleLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->titleLay:Landroid/widget/FrameLayout;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d0b

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0148

    const-string v1, "field \'bindEmailWarn\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->bindEmailWarn:Landroid/view/View;

    const v0, 0x7f0a0dd1

    const-string v1, "field \'userQcode\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 9
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v2, v0, v1, v3}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userQcode:Landroid/widget/ImageView;

    .line 10
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->c:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$k;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0dd3

    const-string v1, "field \'userSetting\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 13
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v2, v0, v1, v3}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userSetting:Landroid/widget/ImageView;

    .line 14
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->d:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$p;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0d86

    const-string v1, "field \'userAvatar\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 17
    const-class v3, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-static {v2, v0, v1, v3}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 18
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->e:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$q;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dc5

    const-string v2, "field \'userName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userName:Landroid/widget/TextView;

    .line 21
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0da0

    const-string v2, "field \'userId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId:Landroid/widget/TextView;

    const v0, 0x7f0a0da2

    const-string v1, "field \'userIdLay\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userIdLay:Landroid/view/View;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0da1

    const-string v2, "field \'userId2\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId2:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d93

    const-string v2, "field \'userFollow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userFollow:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d90

    const-string v2, "field \'userFans\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userFans:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dc0

    const-string v2, "field \'userLike\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userLike:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0d88

    const-string v2, "field \'userCenterAgeLevel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userCenterAgeLevel:Landroid/view/ViewGroup;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0e17

    const-string v2, "field \'vipLookNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->vipLookNum:Landroid/widget/TextView;

    .line 29
    const-class v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v1, 0x7f0a0e14

    const-string v2, "field \'mVipIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mVipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v0, 0x7f0a07cd

    const-string v1, "field \'mvpLL\'"

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 31
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v2, v0, v1, v3}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mvpLL:Landroid/widget/LinearLayout;

    .line 32
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->f:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$r;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$r;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a07cb

    const-string v2, "field \'mvpIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mvpIV:Landroid/widget/ImageView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d0d

    const-string v2, "field \'tvToBeVip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->tvToBeVip:Landroid/widget/TextView;

    const v0, 0x7f0a0d94

    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->g:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$s;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0d91

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->h:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$t;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$t;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0a0dc1

    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 43
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->i:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$u;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$u;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f0a0bcf

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->j:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$v;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$v;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f0a0dbd

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 49
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->k:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$w;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$w;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f0a07e2

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 52
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->l:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x7f0a0d8f

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 55
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->m:Landroid/view/View;

    .line 56
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v0, 0x7f0a0dd8

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 58
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->n:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const v0, 0x7f0a0dc2

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 61
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->o:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const v0, 0x7f0a0dc8

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 64
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->p:Landroid/view/View;

    .line 65
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$e;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const v0, 0x7f0a02f8

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 67
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->q:Landroid/view/View;

    .line 68
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$f;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const v0, 0x7f0a0922

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 70
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->r:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$g;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const v0, 0x7f0a0bc0

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 73
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->s:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$h;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const v0, 0x7f0a07d9

    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 76
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->t:Landroid/view/View;

    .line 77
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$i;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    const v0, 0x7f0a0e16

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 79
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->u:Landroid/view/View;

    .line 80
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$j;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    const v0, 0x7f0a02f3

    .line 81
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 82
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->v:Landroid/view/View;

    .line 83
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$l;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    const v0, 0x7f0a03cd

    .line 84
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 85
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->w:Landroid/view/View;

    .line 86
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$m;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    const v0, 0x7f0a0a8a

    .line 87
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 88
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->x:Landroid/view/View;

    .line 89
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$n;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    const v0, 0x7f0a0647

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 91
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->y:Landroid/view/View;

    .line 92
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$o;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding$o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->contentLay:Landroid/view/ViewGroup;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->titleLay:Landroid/widget/FrameLayout;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->tvTitle:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->bindEmailWarn:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userQcode:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userSetting:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userName:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userIdLay:Landroid/view/View;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId2:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userFollow:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userFans:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userLike:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userCenterAgeLevel:Landroid/view/ViewGroup;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->vipLookNum:Landroid/widget/TextView;

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mVipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mvpLL:Landroid/widget/LinearLayout;

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mvpIV:Landroid/widget/ImageView;

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->tvToBeVip:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->c:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->d:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->e:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->f:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->g:Landroid/view/View;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->h:Landroid/view/View;

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->i:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->i:Landroid/view/View;

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->j:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->j:Landroid/view/View;

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->k:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->k:Landroid/view/View;

    .line 47
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->l:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->l:Landroid/view/View;

    .line 50
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->m:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->m:Landroid/view/View;

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->n:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->n:Landroid/view/View;

    .line 56
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->o:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->o:Landroid/view/View;

    .line 59
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->p:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->p:Landroid/view/View;

    .line 62
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->q:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->q:Landroid/view/View;

    .line 65
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->r:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->r:Landroid/view/View;

    .line 68
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->s:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->s:Landroid/view/View;

    .line 71
    :cond_c
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->t:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->t:Landroid/view/View;

    .line 74
    :cond_d
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->u:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->u:Landroid/view/View;

    .line 77
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->v:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->v:Landroid/view/View;

    .line 80
    :cond_f
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->w:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->w:Landroid/view/View;

    .line 83
    :cond_10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->x:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->x:Landroid/view/View;

    .line 86
    :cond_11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->y:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment_ViewBinding;->y:Landroid/view/View;

    :cond_12
    return-void

    .line 89
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
