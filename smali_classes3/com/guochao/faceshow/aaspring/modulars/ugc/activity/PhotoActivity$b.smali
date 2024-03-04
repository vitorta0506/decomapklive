.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->rcvPhoto:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;->setOnItemClickListener(Lz9/a;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a(Ljava/util/List;)V

    return-void
.end method
