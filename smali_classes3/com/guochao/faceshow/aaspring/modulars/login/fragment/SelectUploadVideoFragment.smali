.class public Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Z

.field d:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;

.field private e:I

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->a:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->b:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->c:Z

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->e:I

    return p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01d3

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "from"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->e:I

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeAllMedia(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;->U()Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->c:Z

    return-void
.end method
