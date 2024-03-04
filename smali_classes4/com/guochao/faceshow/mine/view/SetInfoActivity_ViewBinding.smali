.class public Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

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


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a080d

    const-string v2, "field \'mNickname\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mNickname:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0463

    const-string v2, "field \'mGender\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mGender:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00ee

    const-string v2, "field \'mAutograph\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mAutograph:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0200

    const-string v2, "field \'mCity\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mCity:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0831

    const-string v2, "field \'mOccupation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mOccupation:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a04d7

    const-string v2, "field \'mHobby\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mHobby:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a04c9

    const-string v2, "field \'mHeight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mHeight:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0e48

    const-string v2, "field \'mWeight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mWeight:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a073b

    const-string v2, "field \'mMainLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMainLayout:Landroid/widget/LinearLayout;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0149

    const-string v2, "field \'mBirthday\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mBirthday:Landroid/widget/TextView;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0322

    const-string v2, "field \'mEmotionalState\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mEmotionalState:Landroid/widget/TextView;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a044f

    const-string v2, "field \'mFriendshipIntention\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mFriendshipIntention:Landroid/widget/TextView;

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0747

    const-string v2, "field \'mMasteryOfLanguage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMasteryOfLanguage:Landroid/widget/TextView;

    const v0, 0x7f0a0300

    const-string v1, "field \'editAddress\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 17
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v2, v0, v1, v3}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->editAddress:Landroid/widget/LinearLayout;

    .line 18
    iput-object v2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->d:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$e;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0308

    const-string v1, "field \'editLanguage\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 21
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v2, v0, v1, v3}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->editLanguage:Landroid/widget/LinearLayout;

    .line 22
    iput-object v2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->e:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$f;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a024e

    const-string v2, "field \'constellation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->constellation:Landroid/widget/LinearLayout;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c61

    const-string v2, "field \'tvConstellation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvConstellation:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c62

    const-string v2, "field \'tvConstellationName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvConstellationName:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a00b0

    const-string v2, "field \'animal\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->animal:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01ee

    const-string v1, "field \'mCheckAvatarTips\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mCheckAvatarTips:Landroid/view/View;

    const v0, 0x7f0a0dfd

    const-string v1, "field \'viewConstellation\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewConstellation:Landroid/view/View;

    const v0, 0x7f0a0dfa

    const-string v1, "field \'viewAnimal\'"

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewAnimal:Landroid/view/View;

    const v0, 0x7f0a0df9

    const-string v1, "field \'viewAddress\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewAddress:Landroid/view/View;

    const v0, 0x7f0a0e01

    const-string v1, "field \'viewLanguage\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewLanguage:Landroid/view/View;

    const v0, 0x7f0a088b

    const-string v1, "field \'mAvatarIllegleTips\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mAvatarIllegleTips:Landroid/view/View;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c47

    const-string v2, "field \'tvAnimal\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvAnimal:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c48

    const-string v2, "field \'tvAnimalName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvAnimalName:Landroid/widget/TextView;

    const v0, 0x7f0a0302

    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->f:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$g;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$g;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0307

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->g:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$h;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$h;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0a0309

    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 43
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->h:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$i;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$i;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f0a0301

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->i:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$j;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$j;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f0a0303

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 49
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->j:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$k;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$k;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f0a0304

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 52
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->k:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$l;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$l;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x7f0a030a

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 55
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->l:Landroid/view/View;

    .line 56
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$m;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$m;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v0, 0x7f0a0306

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 58
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->m:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const v0, 0x7f0a030b

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 61
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->n:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const v0, 0x7f0a0305

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 64
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->o:Landroid/view/View;

    .line 65
    new-instance v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const v0, 0x7f0a0214

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 67
    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->p:Landroid/view/View;

    .line 68
    new-instance v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mNickname:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mGender:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mAutograph:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mCity:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mOccupation:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mHobby:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mHeight:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mWeight:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMainLayout:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mBirthday:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mEmotionalState:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mFriendshipIntention:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mMasteryOfLanguage:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->editAddress:Landroid/widget/LinearLayout;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->editLanguage:Landroid/widget/LinearLayout;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->constellation:Landroid/widget/LinearLayout;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvConstellation:Landroid/widget/TextView;

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvConstellationName:Landroid/widget/TextView;

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->animal:Landroid/widget/LinearLayout;

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mCheckAvatarTips:Landroid/view/View;

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewConstellation:Landroid/view/View;

    .line 24
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewAnimal:Landroid/view/View;

    .line 25
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewAddress:Landroid/view/View;

    .line 26
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->viewLanguage:Landroid/view/View;

    .line 27
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mAvatarIllegleTips:Landroid/view/View;

    .line 28
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvAnimal:Landroid/widget/TextView;

    .line 29
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->tvAnimalName:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->d:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->e:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->f:Landroid/view/View;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->g:Landroid/view/View;

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->h:Landroid/view/View;

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->i:Landroid/view/View;

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->j:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->j:Landroid/view/View;

    .line 49
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->k:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->k:Landroid/view/View;

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->l:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->l:Landroid/view/View;

    .line 55
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->m:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->m:Landroid/view/View;

    .line 58
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->n:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->n:Landroid/view/View;

    .line 61
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->o:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->o:Landroid/view/View;

    .line 64
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->p:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity_ViewBinding;->p:Landroid/view/View;

    .line 67
    :cond_a
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 68
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
