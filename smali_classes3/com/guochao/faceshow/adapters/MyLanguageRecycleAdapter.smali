.class public Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/Activity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->e:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->c:Ljava/util/List;

    .line 4
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iput p2, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->a:I

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->d:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->b:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->e:Ljava/util/List;

    return-object v0
.end method

.method public d(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    .line 2
    iget-object v0, p1, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;->c:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;->c:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8
    :goto_0
    iget-object p1, p1, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;->c:Landroid/widget/CheckBox;

    new-instance v0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$a;-><init>(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->d:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->a:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->b:Landroid/view/View;

    .line 2
    new-instance p1, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;

    iget-object p2, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->b:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;-><init>(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->d(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->e(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;

    move-result-object p1

    return-object p1
.end method

.method public resetData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
