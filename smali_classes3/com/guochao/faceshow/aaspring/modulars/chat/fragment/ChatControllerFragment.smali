.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/utils/f;
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/utils/OnFirstItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;,
        Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$i;
    }
.end annotation


# static fields
.field private static final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

.field g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/f;

.field public ivVideo:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field j:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/e;

.field k:Landroid/text/TextWatcher;

.field l:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/FaceShortCutFragment;

.field private m:Lcom/guochao/faceshow/views/e;

.field mCameraButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFaceButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGiftButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSendButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewExtra:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVoiceButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->o:Landroid/util/SparseArray;

    .line 2
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    const-class v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->b:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->c:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->d:Z

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->e:Z

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->h:Ljava/util/Map;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->k:Landroid/text/TextWatcher;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->n:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)Lcom/guochao/faceshow/views/e;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->m:Lcom/guochao/faceshow/views/e;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Lcom/guochao/faceshow/views/e;)Lcom/guochao/faceshow/views/e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->m:Lcom/guochao/faceshow/views/e;

    return-object p1
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->f:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    return-object p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->e:Z

    return p1
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->d:Z

    return p1
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->i2()V

    return-void
.end method

.method private X1(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;)V
    .locals 2

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getFriendshipManager()Lcom/tencent/imsdk/v2/V2TIMFriendshipManager;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$g;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;)V

    const/4 p2, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManager;->checkFriend(Ljava/util/List;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method private Y1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$i;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return v3

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 7
    :cond_3
    new-instance v3, Lcom/tbruyelle/rxpermissions2/a;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v3, v0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$i;)V

    invoke-virtual {v0, v2}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return v1
.end method

.method private b2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a03b5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    if-eqz v1, :cond_2

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->f2()V

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static e2(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private g2(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mImageButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->k2()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->l2()V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->j2()V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->h2()V

    return-void
.end method

.method private k2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->f:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a03c8

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/FaceShortCutFragment;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/FaceShortCutFragment;-><init>()V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/FaceShortCutFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->W1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private r2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public W1(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsChatFirst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$h;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    .line 3
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "firstMeet"

    .line 4
    invoke-static {v3, v0, v2}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->n:I

    return-void
.end method

.method public Z1(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->a:Ljava/lang/String;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->X1(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;)V

    return-void
.end method

.method public a2()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method

.method public c2()Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->f:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    return-object v0
.end method

.method public d2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->c:I

    return v0
.end method

.method public f2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d019f

    return v0
.end method

.method public h2()V
    .locals 0

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mViewExtra:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0x8

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mFaceButton:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mGiftButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->d:Z

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->j2()V

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->ivVideo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$a;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/high16 v0, 0x42aa0000    # 85.0f

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-eqz p1, :cond_4

    .line 13
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, p1

    mul-double v4, v4, v2

    double-to-int p1, v4

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, p1

    mul-double v4, v4, v2

    double-to-int p1, v4

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mViewExtra:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mFaceButton:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mImageButton:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mVoiceButton:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mGiftButton:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mSendButton:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->k:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->f:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz p1, :cond_5

    .line 26
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->i2()V

    :cond_5
    return-void
.end method

.method public j2()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->c:I

    const v1, 0x7f0f021e

    const v2, 0x7f0f0236

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mImageButton:Landroid/widget/ImageView;

    const v1, 0x7f0f0234

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->d:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mImageButton:Landroid/widget/ImageView;

    const v1, 0x7f0f0235

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mCameraButton:Landroid/widget/ImageView;

    const v1, 0x7f0f021d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public l2()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->c:I

    const v1, 0x7f0f0241

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mVoiceButton:Landroid/widget/ImageView;

    const v1, 0x7f0f023f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->d:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mVoiceButton:Landroid/widget/ImageView;

    const v1, 0x7f0f0240

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public m2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/FaceShortCutFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/FaceShortCutFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->W1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->e:Z

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->h2()V

    return-void
.end method

.method public o2(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mSendButton:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity;

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    const/16 v1, 0x9

    invoke-virtual {p1, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/f;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/f;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/f;

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/e;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/e;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/e;

    :cond_1
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f120034

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 2
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    goto :goto_0

    .line 3
    :sswitch_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->d:Z

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    goto :goto_0

    .line 6
    :sswitch_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->d:Z

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->Y1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$i;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    goto :goto_0

    .line 10
    :sswitch_2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->e:Z

    if-nez v0, :cond_4

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->f:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-nez p1, :cond_3

    return-void

    :cond_3
    const p1, 0x7f12004a

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    :cond_4
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    goto :goto_0

    .line 14
    :sswitch_3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->r2()V

    .line 16
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    goto :goto_0

    .line 18
    :sswitch_4
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->d:Z

    if-nez v0, :cond_6

    .line 19
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 20
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->onCameraClick(Landroid/view/View;)V

    .line 22
    :cond_7
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->c:I

    if-eq v0, v2, :cond_8

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 24
    :cond_8
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->g2(Landroid/view/View;)V

    .line 25
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->i2()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a01ae -> :sswitch_4
        0x7f0a03b9 -> :sswitch_3
        0x7f0a0481 -> :sswitch_2
        0x7f0a0884 -> :sswitch_1
        0x7f0a0e87 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->a:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->a:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onFaceItemClick(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/f;->onFaceItemClick(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onFirstItemClick(Lcom/guochao/faceshow/aaspring/beans/TextMessageBean;Landroid/view/View;I)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/TextMessageBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TextMessageBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendText(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->m2()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p2(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->g:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public q2(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mFaceButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const v1, 0x7f0f023c

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0f0224

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->c:I

    const/4 v1, 0x3

    if-ne v0, p1, :cond_3

    if-eq p1, v1, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mViewExtra:Landroid/view/View;

    if-nez v2, :cond_4

    return-void

    :cond_4
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    if-eq p1, v3, :cond_5

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;

    invoke-interface {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;->onKeyboardHeightChanged(II)V

    .line 9
    :cond_5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->c:I

    .line 10
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-nez v4, :cond_8

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->a2()V

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->b2()V

    .line 14
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->h:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-nez v4, :cond_7

    if-ne p1, v1, :cond_6

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mViewExtra:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f13000b

    .line 16
    invoke-static {v0, v5, v8, v6}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getInstance(IIZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v6, "gift_pannel"

    invoke-virtual {v0, v4, v6}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    const v9, 0x7f0a03b5

    invoke-virtual {v6, v9, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 20
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->h:Ljava/util/Map;

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mViewExtra:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mViewExtra:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_8
    if-ne p1, v3, :cond_9

    .line 24
    invoke-direct {p0, v6}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->g2(Landroid/view/View;)V

    .line 25
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->b2()V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mViewExtra:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 27
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mViewExtra:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-ne p1, v1, :cond_a

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mGiftButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->g2(Landroid/view/View;)V

    goto :goto_2

    :cond_a
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mImageButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->g2(Landroid/view/View;)V

    goto :goto_2

    :cond_b
    if-ne p1, v5, :cond_c

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mVoiceButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->g2(Landroid/view/View;)V

    :cond_c
    :goto_2
    if-ne p1, v3, :cond_d

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mSendButton:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_3

    .line 33
    :cond_d
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mSendButton:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :goto_3
    if-eq p1, v2, :cond_e

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 36
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    if-eqz v1, :cond_e

    .line 37
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {v0, v8, v8}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->scrollToEnd(ZZ)V

    .line 38
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    if-eqz v0, :cond_f

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    .line 40
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->onChatInputModeChanged(I)V

    .line 41
    :cond_f
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->i2()V

    return-void
.end method

.method public send(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendText(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->m2()V

    :cond_0
    return-void
.end method
