.class public Lcom/guochao/faceshow/activity/OccupationActivity;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/activity/OccupationActivity$g;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/guochao/faceshow/utils/AAComAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/utils/AAComAdapter<",
            "Lcom/guochao/faceshow/bean/OccupationBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/guochao/faceshow/utils/AAComAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/utils/AAComAdapter<",
            "Lcom/guochao/faceshow/bean/OccupationChildBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/CheckedTextView;

.field private f:Landroid/widget/CheckedTextView;

.field private g:Landroid/widget/TextView;

.field h:Lcom/guochao/faceshow/activity/OccupationActivity$g;

.field private i:Landroid/os/Handler;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/OccupationBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/activity/OccupationActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/OccupationActivity$a;-><init>(Lcom/guochao/faceshow/activity/OccupationActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->k:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->l:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/activity/OccupationActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/activity/OccupationActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic R1(Lcom/guochao/faceshow/activity/OccupationActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->d:Lcom/guochao/faceshow/utils/AAComAdapter;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/activity/OccupationActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->c:Lcom/guochao/faceshow/utils/AAComAdapter;

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/activity/OccupationActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/activity/OccupationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic V1(Lcom/guochao/faceshow/activity/OccupationActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/activity/OccupationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic X1(Lcom/guochao/faceshow/activity/OccupationActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->k:I

    return p0
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/activity/OccupationActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->k:I

    return p1
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/widget/CheckedTextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->e:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic a2(Lcom/guochao/faceshow/activity/OccupationActivity;Landroid/widget/CheckedTextView;)Landroid/widget/CheckedTextView;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->e:Landroid/widget/CheckedTextView;

    return-object p1
.end method

.method static synthetic b2(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c2(Lcom/guochao/faceshow/activity/OccupationActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->l:I

    return p0
.end method

.method static synthetic d2(Lcom/guochao/faceshow/activity/OccupationActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->l:I

    return p1
.end method

.method static synthetic e2(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f2(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/widget/CheckedTextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->f:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic g2(Lcom/guochao/faceshow/activity/OccupationActivity;Landroid/widget/CheckedTextView;)Landroid/widget/CheckedTextView;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->f:Landroid/widget/CheckedTextView;

    return-object p1
.end method

.method public static h2(Ljava/lang/String;Lcom/guochao/faceshow/activity/OccupationActivity$g;)Lcom/guochao/faceshow/activity/OccupationActivity;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-direct {v0}, Lcom/guochao/faceshow/activity/OccupationActivity;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "language"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    iput-object p1, v0, Lcom/guochao/faceshow/activity/OccupationActivity;->h:Lcom/guochao/faceshow/activity/OccupationActivity$g;

    return-object v0
.end method


# virtual methods
.method protected getDialogStyle()I
    .locals 1

    const v0, 0x7f13012d

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0084

    return v0
.end method

.method public i2()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->jobInfoList:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/OccupationActivity$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/OccupationActivity$f;-><init>(Lcom/guochao/faceshow/activity/OccupationActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0830

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->a:Landroid/widget/ListView;

    const v0, 0x7f0a003a

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->b:Landroid/widget/ListView;

    const v0, 0x7f0a09f3

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f0a0d0b

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120194

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a020d

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/activity/OccupationActivity$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/activity/OccupationActivity$b;-><init>(Lcom/guochao/faceshow/activity/OccupationActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/activity/OccupationActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/OccupationActivity$c;-><init>(Lcom/guochao/faceshow/activity/OccupationActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance p1, Lcom/guochao/faceshow/activity/OccupationActivity$d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0224

    invoke-direct {p1, p0, v0, v1}, Lcom/guochao/faceshow/activity/OccupationActivity$d;-><init>(Lcom/guochao/faceshow/activity/OccupationActivity;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->c:Lcom/guochao/faceshow/utils/AAComAdapter;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    new-instance p1, Lcom/guochao/faceshow/activity/OccupationActivity$e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0223

    invoke-direct {p1, p0, v0, v1}, Lcom/guochao/faceshow/activity/OccupationActivity$e;-><init>(Lcom/guochao/faceshow/activity/OccupationActivity;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->d:Lcom/guochao/faceshow/utils/AAComAdapter;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/activity/OccupationActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/OccupationActivity;->i2()V

    return-void
.end method
