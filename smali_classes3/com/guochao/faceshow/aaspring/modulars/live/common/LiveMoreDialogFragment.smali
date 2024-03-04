.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$g;,
        Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;,
        Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;
    }
.end annotation


# static fields
.field public static final i:[Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

.field private static final j:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

.field private static final k:[Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;


# instance fields
.field private a:Landroidx/fragment/app/Fragment;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ld9/c;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$g;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field modelTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    const v2, 0x7f0f0359

    const v3, 0x7f12016b

    .line 1
    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const v4, 0x7f0f0391

    const v6, 0x7f0f0392

    const v7, 0x7f1204f3

    .line 2
    invoke-static {v4, v6, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v1, v9

    const v8, 0x7f0f035b

    const v10, 0x7f120197

    .line 3
    invoke-static {v8, v10}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v1, v12

    const v11, 0x7f0f035f

    const v13, 0x7f120492

    .line 4
    invoke-static {v11, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v1, v15

    const v14, 0x7f0f0367

    const v0, 0x7f0f038d

    const v11, 0x7f1205d6

    .line 5
    invoke-static {v14, v0, v11}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v1, v17

    const v0, 0x7f0f0355

    const v11, 0x7f120481

    .line 6
    invoke-static {v0, v11}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v18

    const/16 v19, 0x5

    aput-object v18, v1, v19

    const v0, 0x7f0f0364

    const v11, 0x7f12056f

    .line 7
    invoke-static {v0, v11}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v0

    const/4 v11, 0x6

    aput-object v0, v1, v11

    const v0, 0x7f0f036b

    const v11, 0x7f120514

    .line 8
    invoke-static {v0, v11}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v0

    const/4 v11, 0x7

    aput-object v0, v1, v11

    const v0, 0x7f0f0399

    const v11, 0x7f1204f4

    .line 9
    invoke-static {v0, v11}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v0

    const/16 v11, 0x8

    aput-object v0, v1, v11

    const v0, 0x7f0f0384

    const v11, 0x7f0f0385

    const v14, 0x7f1204c5

    .line 10
    invoke-static {v0, v11, v14}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v0

    const/16 v11, 0x9

    aput-object v0, v1, v11

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->i:[Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    const v0, 0x7f0802b6

    const v1, 0x7f0802b5

    const v11, 0x7f1209ca

    .line 11
    invoke-static {v0, v1, v11}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    .line 12
    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    aput-object v1, v0, v5

    .line 13
    invoke-static {v4, v6, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x7f0f038e

    const v2, 0x7f0f038f

    const v3, 0x7f1209c5

    .line 14
    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    aput-object v1, v0, v12

    .line 15
    invoke-static {v8, v10}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    aput-object v1, v0, v15

    const v1, 0x7f0f035f

    .line 16
    invoke-static {v1, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    aput-object v1, v0, v17

    const v1, 0x7f1205d6

    const v2, 0x7f0f038d

    const v3, 0x7f0f0367

    .line 17
    invoke-static {v3, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    aput-object v1, v0, v19

    const v1, 0x7f120481

    const v2, 0x7f0f0355

    .line 18
    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const v1, 0x7f0f0364

    const v2, 0x7f12056f

    .line 19
    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, 0x7f0f036b

    const v2, 0x7f120514

    .line 20
    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const v1, 0x7f0f0399

    const v2, 0x7f1204f4

    .line 21
    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const v1, 0x7f0f0384

    const v2, 0x7f0f0385

    const v3, 0x7f1204c5

    .line 22
    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const v1, 0x7f0f0381

    const v2, 0x7f0f0380

    const v3, 0x7f1204e8

    .line 23
    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->k:[Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->b:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->g:Z

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->f:I

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->f:I

    return p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->e:Z

    return p1
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ld9/c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    return-object p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->g:Z

    return p1
.end method

.method public static X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;-><init>(IILcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$a;)V

    return-object v0
.end method

.method public static Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;-><init>(IIILcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$a;)V

    return-object v0
.end method

.method public static Z1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "LiveSetType"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "Quality"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_6

    .line 3
    :sswitch_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->g:Z

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->g:Z

    .line 5
    iget-boolean p1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    xor-int/2addr p1, v3

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V

    invoke-interface {v0, p1, v1}, Ld9/g;->F(ZLd9/h;)V

    goto/16 :goto_6

    .line 7
    :sswitch_1
    iget-boolean p1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120483

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120484

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    iget-boolean p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    xor-int/2addr p2, v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v0, v2, v1}, Ld9/g;->p1(ZLjava/lang/String;Ljava/lang/String;Ld9/h;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_6

    .line 13
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_5

    instance-of p1, p1, Ld9/c;

    if-nez p1, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    iget-boolean p1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    if-nez p1, :cond_4

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1204ca

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast p1, Ld9/c;

    invoke-interface {p1, v3}, Ld9/c;->setMirror(Z)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1204cb

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast p1, Ld9/c;

    invoke-interface {p1, v2}, Ld9/c;->setMirror(Z)V

    .line 19
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_6

    :cond_5
    :goto_2
    return-void

    .line 21
    :sswitch_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->dismiss()V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_14

    instance-of p2, p1, Ld9/c;

    if-eqz p2, :cond_14

    .line 23
    check-cast p1, Ld9/c;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast v0, Ld9/c;

    invoke-static {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveRoomSetActivity;->b0(Landroid/content/Context;Ljava/lang/String;Ld9/c;)V

    goto/16 :goto_6

    .line 25
    :sswitch_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->dismiss()V

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_14

    instance-of p2, p1, Ld9/c;

    if-eqz p2, :cond_14

    .line 27
    check-cast p1, Ld9/c;

    invoke-interface {p1}, Ld9/c;->j0()V

    goto/16 :goto_6

    .line 28
    :sswitch_5
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string p2, "KEY_LIVE_CHAT_HELLO_DIALOG"

    invoke-virtual {p1, p2}, Lja/a;->e(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$g;

    if-eqz p1, :cond_6

    .line 30
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$g;->a()V

    .line 31
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->dismiss()V

    .line 32
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string p2, "click_hellostar_hello"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    invoke-interface {p2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveStartTimestamp()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "HelloGiftNewUserDialog"

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 34
    :sswitch_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->dismiss()V

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_14

    instance-of p1, p1, Ld9/c;

    if-eqz p1, :cond_14

    .line 36
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->S1()Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 37
    :sswitch_7
    iget-boolean p1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    if-eqz p1, :cond_7

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1204fe

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_3

    .line 39
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120500

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 40
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    iget-boolean p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v0, v2, v1}, Ld9/g;->L(ZLjava/lang/String;Ljava/lang/String;Ld9/h;)V

    .line 41
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 42
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_6

    .line 43
    :sswitch_8
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->e:Z

    if-eqz p1, :cond_8

    return-void

    .line 44
    :cond_8
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->e:Z

    const-string p1, "tokens/live/newLive/updateLiveInfo"

    .line 45
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "liveId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 46
    iget-boolean v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x2

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "microphoneMode"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto/16 :goto_6

    .line 48
    :sswitch_9
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;

    iget-boolean v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    xor-int/2addr v0, v3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$e;

    invoke-direct {v2, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->updateScreenshotsSwitch(Landroidx/fragment/app/Fragment;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;)V

    goto/16 :goto_6

    .line 49
    :sswitch_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_b

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 50
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getApplyPkState()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    return-void

    .line 51
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 52
    iget-boolean v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    const-string p2, "last_mic_status"

    if-eqz v0, :cond_d

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120487

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 54
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    invoke-interface {v0, v2}, Ld9/c;->setLinkMicEnabled(Z)V

    .line 55
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    if-nez p1, :cond_c

    .line 56
    invoke-static {p2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfInt2(Ljava/lang/String;I)V

    .line 57
    :cond_c
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLinkMicStatusChanged(Z)V

    goto :goto_5

    .line 58
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120488

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 59
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    invoke-interface {v0, v3}, Ld9/c;->setLinkMicEnabled(Z)V

    .line 60
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    if-nez p1, :cond_e

    .line 61
    invoke-static {p2, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfInt2(Ljava/lang/String;I)V

    .line 62
    :cond_e
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLinkMicStatusChanged(Z)V

    .line 63
    :goto_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 64
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_6

    .line 65
    :sswitch_b
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 66
    :cond_f
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_14

    instance-of p2, p1, Ld9/c;

    if-eqz p2, :cond_14

    .line 67
    check-cast p1, Ld9/c;

    invoke-interface {p1}, Ld9/g;->switchCamera()V

    .line 68
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 69
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_6

    .line 70
    :sswitch_c
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->dismiss()V

    .line 71
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_14

    instance-of p2, p1, Ld9/c;

    if-eqz p2, :cond_14

    .line 72
    check-cast p1, Ld9/c;

    invoke-interface {p1}, Ld9/c;->C()V

    goto/16 :goto_6

    .line 73
    :sswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 74
    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz p2, :cond_14

    .line 75
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 76
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveDebugFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveDebugFragment;-><init>()V

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "livedbug"

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 78
    :sswitch_e
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_10

    return-void

    .line 79
    :cond_10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-boolean p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-eqz p1, :cond_11

    return-void

    .line 80
    :cond_11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isPkingInLive()Z

    move-result p1

    if-eqz p1, :cond_12

    return-void

    .line 81
    :cond_12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->dismiss()V

    .line 82
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->f:I

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->P1(I)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;

    move-result-object p1

    .line 83
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 84
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->setOnQualityListener(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog$a;)V

    goto :goto_6

    .line 85
    :sswitch_f
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getIsBindMobile()I

    move-result p1

    if-nez p1, :cond_13

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/d;->e(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    .line 87
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->dismiss()V

    return-void

    .line 88
    :cond_13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->dismiss()V

    .line 89
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz p2, :cond_14

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 90
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0680

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 91
    :cond_14
    :goto_6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    const-string v0, "MenuIcons"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f12016b -> :sswitch_f
        0x7f120197 -> :sswitch_e
        0x7f1201f5 -> :sswitch_d
        0x7f120481 -> :sswitch_c
        0x7f120492 -> :sswitch_b
        0x7f1204c5 -> :sswitch_a
        0x7f1204c6 -> :sswitch_9
        0x7f1204e8 -> :sswitch_8
        0x7f1204f3 -> :sswitch_7
        0x7f1204f4 -> :sswitch_6
        0x7f120506 -> :sswitch_5
        0x7f120514 -> :sswitch_4
        0x7f12056f -> :sswitch_3
        0x7f1205d6 -> :sswitch_2
        0x7f1209c5 -> :sswitch_1
        0x7f1209ca -> :sswitch_0
    .end sparse-switch
.end method

.method public static b2()V
    .locals 5

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->i:[Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    iput-boolean v2, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->k:[Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 4
    iput-boolean v2, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$g;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$g;->onDismiss()V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d03b1

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "LiveSetType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->b:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Quality"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->f:I

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string v0, "MenuIcons"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$a;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06038c

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    const/16 v8, 0xa

    const/16 v9, 0xa

    new-array v10, v4, [I

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;III[I)V

    .line 11
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method

.method public loadData()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->canRequestLinkMic()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->b:I

    const v3, 0x7f1204c6

    const v4, 0x7f0f037b

    const v5, 0x7f0f037a

    const v6, 0x7f1205db

    const v7, 0x7f120506

    const v8, 0x7f0f037e

    const v9, 0x7f1204c5

    const/4 v10, 0x1

    if-eq v2, v10, :cond_7

    const/4 v11, 0x2

    if-eq v2, v11, :cond_1

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    sget-object v11, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->k:[Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    invoke-static {v2, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigSwitch()I

    move-result v11

    if-ne v11, v10, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getHelloAnchorSwitch()I

    move-result v2

    if-ne v2, v10, :cond_2

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    invoke-static {v8, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    .line 12
    iget v8, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    if-ne v9, v8, :cond_3

    xor-int/lit8 v8, v0, 0x1

    .line 13
    iput-boolean v8, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v2

    if-nez v2, :cond_6

    .line 16
    invoke-static {v5, v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v2

    .line 17
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getScreenShotSwitch()I

    move-result v0

    sget v3, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_ON:I

    if-ne v0, v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->modelTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 20
    :cond_7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    sget-object v11, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->i:[Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    invoke-static {v2, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 22
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    .line 23
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigSwitch()I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 24
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getHelloAnchorSwitch()I

    move-result v2

    if-ne v2, v10, :cond_8

    .line 25
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    invoke-static {v8, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->X1(II)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    .line 27
    iget v8, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    if-ne v9, v8, :cond_9

    xor-int/lit8 v8, v0, 0x1

    .line 28
    iput-boolean v8, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    goto :goto_2

    .line 29
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->canMakeVideoOrAudioCall()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    .line 31
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getVideoSwitch()I

    move-result v0

    if-ne v0, v10, :cond_b

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_c
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    .line 34
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v2

    if-nez v2, :cond_e

    .line 35
    invoke-static {v5, v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Y1(III)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    move-result-object v2

    .line 36
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getScreenShotSwitch()I

    move-result v0

    sget v3, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_ON:I

    if-ne v0, v3, :cond_d

    const/4 v1, 0x1

    :cond_d
    iput-boolean v1, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->modelTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 39
    :goto_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 40
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_f
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Ld9/c;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->d:Ld9/c;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const p1, 0x7f13012b

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$g;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$g;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$g;

    return-void
.end method
