.class public Lcom/guochao/faceshow/activity/PushVideoActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static K:[Lcom/guochao/faceshow/bean/MyTopicAndName;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/MyTopicAndName;",
            ">;"
        }
    .end annotation
.end field

.field I:Ljava/lang/String;

.field J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/RelativeLayout;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/bean/TopicType;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field mImageViewSyncToDynamic:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/guochao/faceshow/bean/MyTopicAndName;

    sput-object v0, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->f:Ljava/util/ArrayList;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->g:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->h:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->i:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->k:Ljava/lang/String;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->p:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->G:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->H:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->J:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/PushVideoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/PushVideoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/PushVideoActivity;)Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/PushVideoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/PushVideoActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/PushVideoActivity;->s0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/PushVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/PushVideoActivity;->v0()V

    return-void
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/PushVideoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->G:Z

    return p1
.end method

.method static synthetic m0(Lcom/guochao/faceshow/activity/PushVideoActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->v:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/activity/PushVideoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/PushVideoActivity;->q0(Z)V

    return-void
.end method

.method private o0(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkTintColor: index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", s  = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zune"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p1, Lcom/guochao/faceshow/bean/MyTopicAndName;

    invoke-direct {p1}, Lcom/guochao/faceshow/bean/MyTopicAndName;-><init>()V

    const-string v0, "#"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 4
    iput v0, p1, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 5
    iput-object p2, p1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/activity/PushVideoActivity;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->H:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "@"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 9
    iput v0, p1, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 10
    iput-object p2, p1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    .line 12
    iget-object v1, p1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    .line 14
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->H:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    iput v1, p1, Lcom/guochao/faceshow/bean/MyTopicAndName;->type:I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->H:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private p0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->v:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->addInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private q0(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x96

    if-lt v0, v1, :cond_0

    goto/16 :goto_b

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->v:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->w:Landroid/widget/TextView;

    sget-object v1, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length v2, v1

    const/4 v3, 0x1

    const-string v4, ""

    if-lt v2, v3, :cond_3

    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    move-object v0, v4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->x:Landroid/widget/TextView;

    sget-object v0, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    aget-object v1, v0, v3

    if-eqz v1, :cond_5

    aget-object v1, v0, v3

    iget-object v1, v1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    :goto_2
    move-object v0, v4

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->y:Landroid/widget/TextView;

    sget-object v0, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length v1, v0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_7

    aget-object v1, v0, v2

    if-eqz v1, :cond_7

    aget-object v1, v0, v2

    iget-object v1, v1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    :goto_4
    move-object v0, v4

    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->z:Landroid/widget/TextView;

    sget-object v0, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_9

    aget-object v1, v0, v3

    if-eqz v1, :cond_9

    aget-object v1, v0, v3

    iget-object v1, v1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    :goto_6
    move-object v0, v4

    :goto_7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->A:Landroid/widget/TextView;

    sget-object v0, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length v1, v0

    const/4 v3, 0x5

    if-lt v1, v3, :cond_b

    aget-object v1, v0, v2

    if-eqz v1, :cond_b

    aget-object v1, v0, v2

    iget-object v1, v1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_8

    :cond_a
    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_b
    :goto_8
    move-object v0, v4

    :goto_9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->B:Landroid/widget/TextView;

    sget-object v0, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_d

    aget-object v1, v0, v3

    if-eqz v1, :cond_d

    aget-object v1, v0, v3

    iget-object v1, v1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    if-nez v1, :cond_c

    goto :goto_a

    :cond_c
    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_d
    :goto_a
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_b
    return-void
.end method

.method private r0(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->G:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->k:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->checkKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const p1, 0x7f1205a2

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->G:Z

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/activity/PushVideoActivity$a;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/activity/PushVideoActivity$a;-><init>(Lcom/guochao/faceshow/activity/PushVideoActivity;Z)V

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils;->getUgcAndVideoPermissions(Landroid/content/Context;ILcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;)V

    return-void
.end method

.method private s0()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@|#| "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_7

    .line 5
    aget-object v5, v1, v4

    const/16 v6, 0x200b

    .line 6
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-direct {p0, v4, v1}, Lcom/guochao/faceshow/activity/PushVideoActivity;->t0(I[Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    goto :goto_3

    .line 11
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 14
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_5

    add-int/lit8 v6, v6, -0x1

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    :cond_5
    invoke-direct {p0, v6, v5}, Lcom/guochao/faceshow/activity/PushVideoActivity;->o0(ILjava/lang/String;)V

    :goto_2
    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    .line 20
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 21
    :cond_7
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->H:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListAndJson: json = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zune "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private t0(I[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private u0(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, ""

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v5, 0x200b

    .line 2
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object p1, v4, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private v0()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "SHORT_VIDEO_UPLOAD"

    .line 2
    invoke-virtual {v0, v1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->l:Ljava/lang/String;

    const-string v2, "json"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v1, "content"

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->a:Ljava/lang/String;

    const-string v2, "imgPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->i:Ljava/lang/String;

    const-string v2, "isPrivate"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->I:Ljava/lang/String;

    const-string v2, "videoType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->b:Ljava/lang/String;

    const-string v2, "videoPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->h:Ljava/lang/String;

    const-string v2, "musicId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->D:Ljava/lang/String;

    const-string v2, "musicName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->n:I

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    iget v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->o:I

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->mImageViewSyncToDynamic:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v2, "sync_to_dynamic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->E:Ljava/lang/String;

    const-string v2, "1"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "isSource"

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_1
    const-string v1, "2"

    .line 16
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/PushVideoActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "frame"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/Tools;->deleteDirWihtFile(Ljava/io/File;)V

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d009c

    return v0
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f0a0362

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->setActivity(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->setIgnoreTopic(Z)V

    const v0, 0x7f0a027f

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a0310

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f0a08af

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0a0965

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f0a073b

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0bd9

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->t:Landroid/widget/ImageView;

    const v0, 0x7f0a044e

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->u:Landroid/widget/ImageView;

    const v0, 0x7f0a0bd8

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->v:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0bda

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0a0bdb

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f0a0bdc

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f0a0bdd

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f0a0bde

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f0a0bdf

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->B:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->a:Ljava/lang/String;

    const v2, 0x7f080220

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->mImageViewSyncToDynamic:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    new-instance v1, Lcom/guochao/faceshow/activity/PushVideoActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/PushVideoActivity$b;-><init>(Lcom/guochao/faceshow/activity/PushVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->setOnTextChangedListener(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xd

    if-ne p2, v0, :cond_1

    const-string v0, "coverpath"

    .line 2
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->d:Landroid/widget/ImageView;

    const v2, 0x7f080220

    const/4 v3, 0x6

    invoke-static {v1, v0, v2, v3}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-string v1, "key1"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->u(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    const/4 p1, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    sget-object v0, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length v0, v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/PushVideoActivity;->p0(I)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    sget-object v0, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length v0, v0

    if-ge v0, p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/activity/PushVideoActivity;->p0(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    sget-object p1, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length p1, p1

    if-ge p1, v3, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-direct {p0, v4}, Lcom/guochao/faceshow/activity/PushVideoActivity;->p0(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    sget-object p1, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length p1, p1

    if-ge p1, v4, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-direct {p0, v5}, Lcom/guochao/faceshow/activity/PushVideoActivity;->p0(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_4
    sget-object p1, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length p1, p1

    if-ge p1, v5, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/activity/PushVideoActivity;->p0(I)V

    goto :goto_0

    .line 12
    :pswitch_5
    sget-object p1, Lcom/guochao/faceshow/activity/PushVideoActivity;->K:[Lcom/guochao/faceshow/bean/MyTopicAndName;

    array-length p1, p1

    if-ge p1, v2, :cond_5

    return-void

    .line 13
    :cond_5
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/activity/PushVideoActivity;->p0(I)V

    goto :goto_0

    .line 14
    :pswitch_6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    .line 15
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/activity/PushVideoActivity;->q0(Z)V

    goto :goto_0

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 17
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 18
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/activity/PushVideoActivity;->r0(Z)V

    goto :goto_0

    .line 19
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/activity/PushVideoActivity;->r0(Z)V

    goto :goto_0

    .line 20
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/16 v0, 0x78

    if-lt p1, v0, :cond_7

    return-void

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 22
    :sswitch_4
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->p:Z

    if-eqz p1, :cond_8

    .line 23
    iput-boolean v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->p:Z

    .line 24
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->b:Ljava/lang/String;

    const-string v1, "videoPath"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->a:Ljava/lang/String;

    const-string v1, "imgPath"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x58

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_8
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a027f -> :sswitch_4
        0x7f0a0310 -> :sswitch_4
        0x7f0a044e -> :sswitch_3
        0x7f0a08af -> :sswitch_2
        0x7f0a0965 -> :sswitch_1
        0x7f0a0b12 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f0a0bd9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->C:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "coverpath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "musicId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "musicName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->D:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "titleName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->j:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->I:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tyPeName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->m:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->E:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->n:I

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->o:I

    .line 12
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120729

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->mImageViewSyncToDynamic:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "topic_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->g:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "topicName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->F:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->F:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->c:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->F:Ljava/lang/String;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->addInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "#%s "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    new-instance p1, Ljava/io/File;

    const-string p2, "frame"

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/utils/Tools;->deleteDirWihtFile(Ljava/io/File;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/PushVideoActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity;->p:Z

    return-void
.end method
