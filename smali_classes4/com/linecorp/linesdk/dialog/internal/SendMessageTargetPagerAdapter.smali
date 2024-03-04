.class public Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->values()[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object p1

    aget-object p1, p1, p2

    .line 2
    sget-object p2, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;

    iget-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->a:Landroid/content/Context;

    sget v1, Lcom/linecorp/linesdk/R$string;->search_no_group:I

    iget-object v2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->b:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;

    invoke-direct {p1, p2, v1, v2}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;-><init>(Landroid/content/Context;ILcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;)V

    .line 4
    new-instance p2, Luc/a;

    invoke-direct {p2, p1}, Luc/a;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)V

    throw v0

    .line 5
    :cond_1
    new-instance p1, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;

    iget-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->a:Landroid/content/Context;

    sget v1, Lcom/linecorp/linesdk/R$string;->search_no_fiend:I

    iget-object v2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->b:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;

    invoke-direct {p1, p2, v1, v2}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;-><init>(Landroid/content/Context;ILcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;)V

    .line 6
    new-instance p2, Luc/a;

    invoke-direct {p2, p1}, Luc/a;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)V

    throw v0
.end method

.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->d()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$a;->a:[I

    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->values()[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->a:Landroid/content/Context;

    sget v0, Lcom/linecorp/linesdk/R$string;->select_tab_groups:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->a:Landroid/content/Context;

    sget v0, Lcom/linecorp/linesdk/R$string;->select_tab_friends:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
