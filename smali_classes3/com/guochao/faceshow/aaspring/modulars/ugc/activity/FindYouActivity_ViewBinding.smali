.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    const v1, 0x7f0a09e1

    const-string v2, "field \'rsbYear\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rsbYear:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cbd

    const-string v2, "field \'tvMin\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvMin:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cba

    const-string v2, "field \'tvMax\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvMax:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05b8

    const-string v2, "field \'ivMan\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivMan:Landroid/widget/ImageView;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05fb

    const-string v2, "field \'ivWoman\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivWoman:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05f1

    const-string v2, "field \'ivUnlimited\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivUnlimited:Landroid/widget/ImageView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cea

    const-string v2, "field \'tvResidence\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvResidence:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c5c

    const-string v2, "field \'tvChooseLanguage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvChooseLanguage:Landroid/widget/TextView;

    const v0, 0x7f0a0198

    const-string v1, "field \'btnSearch\' and method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->btnSearch:Landroid/view/View;

    .line 13
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cb8

    const-string v2, "field \'tvMan\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvMan:Landroid/widget/TextView;

    .line 16
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d36

    const-string v2, "field \'tvWonam\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvWonam:Landroid/widget/TextView;

    .line 17
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d17

    const-string v2, "field \'tvUnlimited\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvUnlimited:Landroid/widget/TextView;

    const v0, 0x7f0a09bb

    const-string v1, "field \'rlChooseFriendSetting\' and method \'onViewClicked\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlChooseFriendSetting\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rlChooseFriendSetting:Landroid/widget/RelativeLayout;

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->e:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c8f

    const-string v2, "field \'tvFriendSetting\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvFriendSetting:Landroid/widget/TextView;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c5b

    const-string v2, "field \'ChooseFriendSetting\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ChooseFriendSetting:Landroid/widget/TextView;

    const v0, 0x7f0a09c8

    const-string v1, "field \'rlResidence\' and method \'onViewClicked\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 25
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlResidence\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rlResidence:Landroid/widget/RelativeLayout;

    .line 26
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->f:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a09bc

    const-string v1, "field \'rlChooseLanguage\' and method \'onViewClicked\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 29
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlChooseLanguage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rlChooseLanguage:Landroid/widget/RelativeLayout;

    .line 30
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->g:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06d5

    const-string v1, "method \'onViewClicked\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->h:Landroid/view/View;

    .line 34
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$e;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06d7

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->i:Landroid/view/View;

    .line 37
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$f;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06d6

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->j:Landroid/view/View;

    .line 40
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rsbYear:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvMin:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvMax:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivMan:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivWoman:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivUnlimited:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvResidence:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvChooseLanguage:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->btnSearch:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvMan:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvWonam:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvUnlimited:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rlChooseFriendSetting:Landroid/widget/RelativeLayout;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvFriendSetting:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ChooseFriendSetting:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rlResidence:Landroid/widget/RelativeLayout;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rlChooseLanguage:Landroid/widget/RelativeLayout;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->d:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->e:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->f:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->g:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->h:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->i:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity_ViewBinding;->j:Landroid/view/View;

    .line 34
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
