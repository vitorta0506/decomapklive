.class public Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

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


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x1020016

    const-string v2, "field \'title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->title:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a042c

    const-string v2, "field \'titleBack\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->titleBack:Landroid/widget/FrameLayout;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0d86

    const-string v2, "field \'userAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userAvatar:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0d92

    const-string v2, "field \'userFlag\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userFlag:Landroid/widget/ImageView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dc5

    const-string v2, "field \'userName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userName:Landroid/widget/TextView;

    const v0, 0x7f0a0dbd

    const-string v1, "field \'userLay\' and method \'onViewClicked\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'userLay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userLay:Landroid/widget/RelativeLayout;

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0a12

    const-string v1, "field \'searchChatRecord\' and method \'onViewClicked\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'searchChatRecord\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->searchChatRecord:Landroid/widget/TextView;

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->e:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0513

    const-string v1, "field \'imDisturbToggle\' and method \'onViewClicked\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 17
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imDisturbToggle\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imDisturbToggle:Landroid/widget/ImageView;

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->f:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0516

    const-string v1, "field \'imStickyToggle\' and method \'onViewClicked\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 21
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imStickyToggle\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imStickyToggle:Landroid/widget/ImageView;

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->g:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01b6

    const-string v1, "field \'cancelSubscribe\' and method \'onViewClicked\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 25
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'cancelSubscribe\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->cancelSubscribe:Landroid/widget/TextView;

    .line 26
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->h:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0080

    const-string v1, "field \'addBlack\' and method \'onViewClicked\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 29
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'addBlack\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->addBlack:Landroid/widget/TextView;

    .line 30
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->i:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0971

    const-string v1, "field \'report\' and method \'onViewClicked\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'report\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->report:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->j:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$i;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0518

    const-string v1, "field \'imTranslateState\' and method \'onViewClicked\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 37
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imTranslateState\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imTranslateState:Landroid/widget/ImageView;

    .line 38
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->k:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$j;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0519

    const-string v1, "field \'imTrtcState\' and method \'onViewClicked\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 41
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imTrtcState\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imTrtcState:Landroid/widget/ImageView;

    .line 42
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->l:Landroid/view/View;

    .line 43
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$k;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d13

    const-string v2, "field \'tvTrtc\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->tvTrtc:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a04a2

    const-string v2, "field \'groupName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->groupName:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06fd

    const-string v2, "field \'llTrtc\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->llTrtc:Landroid/widget/LinearLayout;

    .line 47
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06fc

    const-string v2, "field \'llTranslate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->llTranslate:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0a63

    const-string v1, "field \'setGroup\' and method \'onViewClicked\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 49
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'setGroup\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->setGroup:Landroid/widget/RelativeLayout;

    .line 50
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->m:Landroid/view/View;

    .line 51
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0a5c

    const-string v1, "field \'sendChatRecord\' and method \'onViewClicked\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 53
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->sendChatRecord:Landroid/view/View;

    .line 54
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->n:Landroid/view/View;

    .line 55
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0824

    const-string v1, "field \'notFocusDivider\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->notFocusDivider:Landroid/view/View;

    const v0, 0x7f0a0434

    const-string v1, "field \'focusDivider\'"

    .line 57
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->focusDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->title:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->titleBack:Landroid/widget/FrameLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userAvatar:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userFlag:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userName:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userLay:Landroid/widget/RelativeLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->searchChatRecord:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imDisturbToggle:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imStickyToggle:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->cancelSubscribe:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->addBlack:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->report:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imTranslateState:Landroid/widget/ImageView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imTrtcState:Landroid/widget/ImageView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->tvTrtc:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->groupName:Landroid/widget/TextView;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->llTrtc:Landroid/widget/LinearLayout;

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->llTranslate:Landroid/widget/LinearLayout;

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->setGroup:Landroid/widget/RelativeLayout;

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->sendChatRecord:Landroid/view/View;

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->notFocusDivider:Landroid/view/View;

    .line 24
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->focusDivider:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->d:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->e:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->f:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->g:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->h:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->i:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->j:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->k:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->l:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->m:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity_ViewBinding;->n:Landroid/view/View;

    .line 47
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
