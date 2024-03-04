.class public Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

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


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    const v0, 0x7f0a06a1

    const-string v1, "field \'liveLaunchDice\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'liveLaunchDice\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->liveLaunchDice:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0613

    const-string v2, "field \'launchLiveEdit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    const v0, 0x7f0a0b11

    const-string v1, "field \'syncDynamicLay\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicLay:Landroid/view/View;

    const v0, 0x7f0a0b10

    const-string v1, "field \'syncDynamicDivider\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicDivider:Landroid/view/View;

    const v0, 0x7f0a0687

    const-string v1, "field \'syncDynamicToggle\' and method \'onClick\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicToggle:Landroid/view/View;

    .line 12
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->d:Landroid/view/View;

    .line 13
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03bb

    const-string v1, "field \'faceBookShare\' and method \'onClick\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'faceBookShare\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0d5d

    const-string v1, "field \'twitterShare\' and method \'onClick\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'twitterShare\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->f:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e46

    const-string v1, "field \'weiboShare\' and method \'onClick\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 23
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'weiboShare\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weiboShare:Landroid/widget/ImageView;

    .line 24
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->g:Landroid/view/View;

    .line 25
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e47

    const-string v1, "field \'weichatShare\' and method \'onClick\'"

    .line 26
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 27
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'weichatShare\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    .line 28
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->h:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b0e

    const-string v1, "field \'switchPrivateLive\' and method \'onClick\'"

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 31
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'switchPrivateLive\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->switchPrivateLive:Landroid/widget/ImageView;

    .line 32
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->i:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0615

    const-string v1, "field \'mImageViewCover\' and method \'onClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImageViewCover\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mImageViewCover:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->j:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$i;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0616

    const-string v2, "field \'mPicTipsIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPicTipsIV:Landroid/widget/ImageView;

    const v0, 0x7f0a0614

    const-string v1, "field \'launchNextBtn\' and method \'onClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'launchNextBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->k:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$j;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0a66

    const-string v1, "field \'shareArea\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->shareArea:Landroid/view/View;

    const v0, 0x7f0a0ab7

    const-string v1, "field \'spaceArea\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->spaceArea:Landroid/view/View;

    .line 45
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0e20

    const-string v2, "field \'voiceRoomBackground\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomBackground:Landroid/widget/ImageView;

    const v0, 0x7f0a0153

    const-string v1, "field \'bottomButtonArea\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->bottomButtonArea:Landroid/view/View;

    const v0, 0x7f0a0617

    const-string v1, "method \'onClick\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 48
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->l:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->liveLaunchDice:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicLay:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicDivider:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->syncDynamicToggle:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->faceBookShare:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->twitterShare:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weiboShare:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->weichatShare:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->switchPrivateLive:Landroid/widget/ImageView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mImageViewCover:Landroid/widget/ImageView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mPicTipsIV:Landroid/widget/ImageView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->shareArea:Landroid/view/View;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->spaceArea:Landroid/view/View;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->voiceRoomBackground:Landroid/widget/ImageView;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->bottomButtonArea:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->c:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->d:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->e:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->f:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->g:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->h:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->i:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->j:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->k:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder_ViewBinding;->l:Landroid/view/View;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
