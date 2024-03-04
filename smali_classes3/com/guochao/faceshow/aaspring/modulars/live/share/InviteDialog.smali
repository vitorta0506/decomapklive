.class public Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$g;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;",
            ">;"
        }
    .end annotation
.end field

.field btnConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:[Ljava/lang/String;

.field closeIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field confirmLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field confirmTip:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$g;

.field tabLay:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->e:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->c:[Ljava/lang/String;

    return-object p0
.end method

.method private static R1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDecb942lrj0FoBeILmahxRKRMj57Za8JHmlkLgBo1X5tAS8iAwzSByk3Q5aXzMRynNPSrIRaXY0Eixb8mQVw/WChmO4N742o5WM2p7FSn+LnLli9hvIFrSP1F4wyHRNsAuiZhd503hMvmkD/UxRjr1BmSAChtNxbGK1NSsDnBaoQIDAQAB"

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/RsaUtils;->getRsaPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/RsaUtils;->encodeByPublicKey(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public static T1(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;II)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;IILcom/guochao/faceshow/aaspring/beans/LiveGameBean;)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    move-result-object p0

    return-object p0
.end method

.method public static U1(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;IILcom/guochao/faceshow/aaspring/beans/LiveGameBean;)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "position"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "mode"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "liveId"

    .line 5
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "game"

    .line 6
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static V1(Ljava/lang/String;II)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "position"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "mode"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "roomId"

    .line 5
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static W1()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$f;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$f;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "invite"

    const-string v2, "lastInvite"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static Y1(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->W1()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 5
    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->a(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;)Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;

    move-result-object v2

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v2, :cond_1

    .line 9
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->a(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;)Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v1, 0x64

    if-le p0, v1, :cond_5

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_5
    const-string p0, "invite"

    const-string v1, "lastInvite"

    .line 12
    invoke-static {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public S1()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->f2()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public X1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->h:Z

    return v0
.end method

.method public dismiss()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->h:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 6
    invoke-interface {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;->setSelect(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d012a

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 13

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->h:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->confirmLay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->f:I

    if-eqz v0, :cond_0

    const-string v1, "liveId"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->d:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    const-string v1, "position"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mode"

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->f:I

    const-string v2, "game"

    .line 8
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    const-string v2, "roomId"

    .line 9
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->f:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0x7f120821

    goto :goto_1

    :cond_1
    const v0, 0x7f1204b7

    .line 11
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->b:Ljava/util/List;

    .line 12
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;

    invoke-direct {v3, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;I)V

    const/4 v4, 0x1

    .line 13
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->d2(I)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    move-result-object v5

    .line 14
    invoke-virtual {v5, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->setOnSelectListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;)V

    const/4 v6, 0x4

    .line 15
    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->d2(I)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    move-result-object v7

    .line 16
    invoke-virtual {v7, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->setOnSelectListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;)V

    .line 17
    iget v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->f:I

    const v9, 0x7f1203ba

    const v10, 0x7f1204b9

    const/4 v11, 0x3

    if-eqz v8, :cond_3

    if-ne v8, v6, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    invoke-static {v2, v8}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->e2(II)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    move-result-object v5

    .line 19
    iget v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->f:I

    invoke-static {v11, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->e2(II)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    move-result-object v6

    .line 20
    invoke-virtual {v5, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->setOnSelectListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;)V

    .line 21
    invoke-virtual {v6, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->setOnSelectListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;)V

    new-array v2, v2, [Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 23
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->c:[Ljava/lang/String;

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->b:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->b:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_3
    :goto_2
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->d2(I)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    move-result-object v8

    .line 27
    invoke-static {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->d2(I)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    move-result-object v12

    .line 28
    invoke-virtual {v8, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->setOnSelectListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;)V

    .line 29
    invoke-virtual {v12, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->setOnSelectListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;)V

    new-array v3, v6, [Ljava/lang/String;

    const v6, 0x7f1204ba

    .line 30
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, p1

    .line 31
    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 32
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    const p1, 0x7f1202f7

    .line 33
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v11

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->c:[Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->b:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->b:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->b:Ljava/util/List;

    invoke-interface {p1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->b:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {p1, v11}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 40
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {p1, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    .line 41
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 42
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;I)V

    invoke-virtual {p1, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$g;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$g;->a(I)V

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a020e

    if-eq p1, v0, :cond_11

    const v0, 0x7f0a0624

    if-eq p1, v0, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->f:I

    if-nez p1, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->dismiss()V

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->S1()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    .line 8
    invoke-interface {v3}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    invoke-interface {v3}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v3}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    .line 13
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->d:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->from(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;

    move-result-object v0

    .line 15
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const p1, 0x7f1204bc

    .line 16
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto/16 :goto_8

    :cond_5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 18
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->d:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveShareMessage;->from(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveShareMessage;

    move-result-object v0

    .line 20
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const p1, 0x7f120825

    .line 21
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto/16 :goto_8

    :cond_7
    const/4 v3, 0x3

    if-eq v2, v3, :cond_f

    const/4 v7, 0x4

    if-ne v2, v7, :cond_8

    goto/16 :goto_7

    .line 23
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_9

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 25
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    if-eqz p1, :cond_a

    .line 26
    iget p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    :goto_3
    const-string v2, "{\"invitedUserIdList\":\"%s\",\"liveId\":\"%s\",\"selectAllType\":\"%s\"}"

    if-nez p1, :cond_b

    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->d:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->Y1(Ljava/util/List;)V

    goto :goto_6

    :cond_b
    new-array v1, v3, [Ljava/lang/Object;

    if-eq p1, v6, :cond_d

    if-ne p1, v5, :cond_c

    goto :goto_4

    :cond_c
    const-string v0, ""

    goto :goto_5

    .line 29
    :cond_d
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->d:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    if-ne p1, v5, :cond_e

    const/4 p1, 0x5

    :cond_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    .line 30
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    :goto_6
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tokens/live/invite/batchSave/V2?sesign="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->R1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$e;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 32
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->dismiss()V

    goto :goto_8

    .line 33
    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    :cond_10
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->Y1(Ljava/util/List;)V

    .line 36
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/live/voice/invite/add"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->g:Ljava/lang/String;

    const-string v2, "roomId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "userIds"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_8

    .line 39
    :cond_11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->dismiss()V

    :goto_8
    return-void
.end method

.method public setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$g;

    return-void
.end method
