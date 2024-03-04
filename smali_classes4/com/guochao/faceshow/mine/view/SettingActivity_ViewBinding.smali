.class public Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/SettingActivity;

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


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/SettingActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/SettingActivity;

    const v0, 0x7f0a0283

    const-string v1, "field \'mCheckVersionText\' and method \'getEvent\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mCheckVersionText\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SettingActivity;->mCheckVersionText:Landroid/widget/TextView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$i;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$i;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0bfb

    const-string v2, "field \'tvAccountSafeEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SettingActivity;->tvAccountSafeEmail:Landroid/widget/ImageView;

    const v0, 0x7f0a0b44

    const-string v1, "field \'testGoogleSign\' and method \'getEvent\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 9
    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SettingActivity;->testGoogleSign:Landroid/view/View;

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 11
    new-instance v1, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$j;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$j;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a029d

    const-string v1, "field \'debugWindow\' and method \'getEvent\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SettingActivity;->debugWindow:Landroid/view/View;

    .line 14
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 15
    new-instance v1, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$k;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$k;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a088e

    const-string v1, "field \'pipFL\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SettingActivity;->pipFL:Landroid/view/View;

    const v0, 0x7f0a088f

    const-string v1, "field \'pipTV\' and method \'getEvent\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 18
    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SettingActivity;->pipTV:Landroid/view/View;

    .line 19
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 20
    new-instance v1, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$l;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$l;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0060

    const-string v1, "method \'getEvent\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->h:Landroid/view/View;

    .line 23
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$m;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$m;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c28

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->i:Landroid/view/View;

    .line 26
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$n;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$n;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c1a

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->j:Landroid/view/View;

    .line 29
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$o;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$o;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c29

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->k:Landroid/view/View;

    .line 32
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$p;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$p;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c34

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->l:Landroid/view/View;

    .line 35
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$q;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$q;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c27

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->m:Landroid/view/View;

    .line 38
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c08

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->n:Landroid/view/View;

    .line 41
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0172

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->o:Landroid/view/View;

    .line 44
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01a5

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->p:Landroid/view/View;

    .line 47
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$d;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01a6

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->q:Landroid/view/View;

    .line 50
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$e;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$e;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a090e

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->r:Landroid/view/View;

    .line 53
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$f;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$f;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a033f

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->s:Landroid/view/View;

    .line 56
    new-instance v2, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$g;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$g;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c1d

    .line 57
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 58
    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->t:Landroid/view/View;

    .line 59
    new-instance v0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding$h;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/SettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/SettingActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SettingActivity;->mCheckVersionText:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SettingActivity;->tvAccountSafeEmail:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SettingActivity;->testGoogleSign:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SettingActivity;->debugWindow:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SettingActivity;->pipFL:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SettingActivity;->pipTV:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->h:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->i:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->j:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->k:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->l:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->m:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->n:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->o:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->p:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->q:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->r:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->s:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity_ViewBinding;->t:Landroid/view/View;

    .line 43
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
