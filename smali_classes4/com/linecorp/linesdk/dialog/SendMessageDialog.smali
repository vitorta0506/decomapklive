.class public Lcom/linecorp/linesdk/dialog/SendMessageDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/dialog/SendMessageDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/viewpager/widget/ViewPager;

.field private b:Lcom/google/android/material/tabs/TabLayout;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/HorizontalScrollView;

.field private f:Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;

.field private g:Lcom/linecorp/linesdk/dialog/SendMessageDialog$a;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public static synthetic a(Lcom/linecorp/linesdk/dialog/SendMessageDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->a:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->f:Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 2
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->b:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 3
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->a:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Ltc/a;

    invoke-direct {v1, p0}, Ltc/a;-><init>(Lcom/linecorp/linesdk/dialog/SendMessageDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/linecorp/linesdk/R$layout;->dialog_send_message:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 4
    sget v0, Lcom/linecorp/linesdk/R$id;->viewPager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->a:Landroidx/viewpager/widget/ViewPager;

    .line 5
    sget v0, Lcom/linecorp/linesdk/R$id;->tabLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 6
    sget v0, Lcom/linecorp/linesdk/R$id;->buttonConfirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->c:Landroid/widget/Button;

    .line 7
    sget v0, Lcom/linecorp/linesdk/R$id;->linearLayoutTargetUserList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->d:Landroid/widget/LinearLayout;

    .line 8
    sget v0, Lcom/linecorp/linesdk/R$id;->horizontalScrollView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->e:Landroid/widget/HorizontalScrollView;

    .line 9
    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->c()V

    return-void
.end method

.method public setOnSendListener(Lcom/linecorp/linesdk/dialog/SendMessageDialog$a;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/dialog/SendMessageDialog$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->g:Lcom/linecorp/linesdk/dialog/SendMessageDialog$a;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->g:Lcom/linecorp/linesdk/dialog/SendMessageDialog$a;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OnSendListener is already taken and can not be replaced."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
