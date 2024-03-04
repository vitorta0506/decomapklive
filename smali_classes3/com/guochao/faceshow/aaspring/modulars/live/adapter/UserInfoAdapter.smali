.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lz9/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->d:Lz9/a;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->c:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "1"

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move-object p1, v1

    .line 2
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(I)Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;I)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getCurrentUserId()Ljava/lang/String;

    const v0, 0x3faeeeef

    const v1, 0x3fb77777

    const/16 v2, 0x8

    const/high16 v3, 0x41e00000    # 28.0f

    if-eqz p2, :cond_6

    const/4 v4, 0x1

    if-eq p2, v4, :cond_3

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setAvatarSize(F)V

    .line 4
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp7/h;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v1, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->o(FFI)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->o(FFI)V

    .line 9
    :goto_0
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp7/h;

    const v0, 0x7f0f0387

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e(Lp7/h;I)V

    goto/16 :goto_3

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setAvatarSize(F)V

    .line 11
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp7/h;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    goto/16 :goto_3

    .line 12
    :cond_3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 13
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v1, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->o(FFI)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->o(FFI)V

    .line 16
    :goto_1
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp7/h;

    const v0, 0x7f0f0396

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e(Lp7/h;I)V

    goto :goto_3

    .line 17
    :cond_5
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setAvatarSize(F)V

    .line 18
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp7/h;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    goto :goto_3

    .line 19
    :cond_6
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 20
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 21
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v1, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->o(FFI)V

    goto :goto_2

    .line 22
    :cond_7
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->o(FFI)V

    .line 23
    :goto_2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp7/h;

    const v0, 0x7f0f0368

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e(Lp7/h;I)V

    goto :goto_3

    .line 24
    :cond_8
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setAvatarSize(F)V

    .line 25
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp7/h;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    :goto_3
    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0384

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->c(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->d:Lz9/a;

    const-string v2, "item"

    invoke-interface {v1, p1, v2, v0}, Lz9/a;->b(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->d(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter$a;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClickListener(Lz9/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->d:Lz9/a;

    return-void
.end method
