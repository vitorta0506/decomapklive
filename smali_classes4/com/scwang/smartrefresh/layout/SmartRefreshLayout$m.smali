.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwd/h;Z)Lwd/i;
    .locals 1
    .param p1    # Lwd/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e5:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f5:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_c

    .line 6
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 7
    :pswitch_4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_c

    .line 8
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 9
    :pswitch_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    goto/16 :goto_0

    .line 10
    :pswitch_6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    goto/16 :goto_0

    .line 11
    :pswitch_7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 14
    :pswitch_8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 17
    :pswitch_9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 20
    :pswitch_a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-nez v0, :cond_4

    .line 21
    :cond_3
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 23
    :pswitch_b
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 26
    :pswitch_c
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_7

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-nez v0, :cond_7

    .line 27
    :cond_6
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 28
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J()V

    goto/16 :goto_0

    .line 29
    :cond_7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 30
    :pswitch_d
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 32
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J()V

    goto :goto_0

    .line 33
    :cond_8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 34
    :pswitch_e
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v1, :cond_a

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v0, :cond_a

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-nez v0, :cond_a

    .line 35
    :cond_9
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 36
    :cond_a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 37
    :pswitch_f
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 38
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 39
    :cond_b
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 40
    :pswitch_10
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J()V

    :cond_c
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()Lwd/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_1

    .line 2
    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->g(IZ)Lwd/i;

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->d(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public d(I)Landroid/animation/ValueAnimator;
    .locals 4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/animation/Interpolator;

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Lwd/i;
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:I

    return-object p0
.end method

.method public f(Z)Lwd/i;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    new-instance p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m$a;

    invoke-direct {p1, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m$a;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;)V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->d(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    if-ne v0, v2, :cond_0

    .line 5
    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->d(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public g(IZ)Lwd/i;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-ne v3, v1, :cond_2

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v2}, Lwd/h;->j()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Lwd/h;->j()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v0

    .line 4
    :cond_2
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    iget v10, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    .line 6
    iput v1, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz p2, :cond_7

    .line 7
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a5:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v3, :cond_3

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz v2, :cond_7

    :cond_3
    int-to-float v2, v1

    .line 8
    iget v3, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    int-to-float v3, v3

    iget v4, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q4:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 9
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v2, v3, :cond_7

    .line 10
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    goto :goto_0

    :cond_4
    neg-int v2, v1

    int-to-float v2, v2

    .line 11
    iget v3, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    int-to-float v3, v3

    iget v4, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R4:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget-boolean v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-nez v2, :cond_5

    .line 12
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    goto :goto_0

    :cond_5
    if-gez v1, :cond_6

    .line 13
    iget-boolean v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-nez v2, :cond_6

    .line 14
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    goto :goto_0

    :cond_6
    if-lez v1, :cond_7

    .line 15
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    .line 16
    :cond_7
    :goto_0
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_14

    const/4 v3, 0x0

    if-ltz v1, :cond_9

    .line 17
    iget-object v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v4, :cond_9

    .line 18
    iget-boolean v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    invoke-virtual {v2, v5, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E(ZLwd/h;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 19
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_8
    if-gez v10, :cond_9

    .line 20
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_9
    :goto_1
    if-gtz v1, :cond_b

    .line 21
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v4, :cond_b

    .line 22
    iget-boolean v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    invoke-virtual {v2, v5, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E(ZLwd/h;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 23
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_a
    if-lez v10, :cond_b

    .line 24
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_b
    :goto_2
    if-eqz v3, :cond_14

    .line 25
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v6, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    iget v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    invoke-interface {v2, v4, v6, v5}, Lwd/e;->f(III)V

    .line 26
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-eqz v4, :cond_c

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v2, v4, :cond_c

    const/4 v2, 0x1

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_e

    .line 27
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c5:I

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v2, 0x1

    .line 28
    :goto_5
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    if-eqz v5, :cond_f

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v4, :cond_f

    invoke-interface {v4}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v4

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_11

    .line 29
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d5:I

    if-eqz v4, :cond_10

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v4, 0x1

    :goto_8
    if-eqz v2, :cond_12

    .line 30
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_13

    if-gtz v10, :cond_13

    :cond_12
    if-eqz v4, :cond_14

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_13

    if-gez v10, :cond_14

    .line 31
    :cond_13
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_14
    const/high16 v13, 0x3f800000    # 1.0f

    if-gez v1, :cond_15

    if-lez v10, :cond_1d

    .line 32
    :cond_15
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v2, :cond_1d

    .line 33
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 34
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v14, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    int-to-float v3, v14

    .line 35
    iget v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    mul-float v3, v3, v4

    float-to-int v15, v3

    int-to-float v3, v8

    mul-float v3, v3, v13

    if-nez v14, :cond_16

    const/4 v4, 0x1

    goto :goto_9

    :cond_16
    move v4, v14

    :goto_9
    int-to-float v4, v4

    div-float v16, v3, v4

    .line 36
    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_1c

    if-nez p2, :cond_1c

    .line 37
    :cond_17
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v10, v3, :cond_1a

    .line 38
    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v2}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v2, v3, :cond_18

    .line 39
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v2}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 40
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c5:I

    if-eqz v3, :cond_19

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V4:Landroid/graphics/Paint;

    if-eqz v3, :cond_19

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    iget-object v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-virtual {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E(ZLwd/h;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 41
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_a

    .line 42
    :cond_18
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v2}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v2, v3, :cond_19

    .line 43
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v2}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 44
    :cond_19
    :goto_a
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    move/from16 v3, p2

    move/from16 v4, v16

    move v5, v8

    move v6, v14

    move v7, v15

    invoke-interface/range {v2 .. v7}, Lwd/h;->o(ZFIII)V

    :cond_1a
    if-eqz p2, :cond_1c

    .line 45
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v2}, Lwd/h;->j()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 46
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    float-to-int v2, v2

    .line 47
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 48
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    if-nez v3, :cond_1b

    const/4 v6, 0x1

    goto :goto_b

    :cond_1b
    move v6, v3

    :goto_b
    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 49
    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v4, v5, v2, v3}, Lwd/h;->h(FII)V

    .line 50
    :cond_1c
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v10, v3, :cond_1d

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-eqz v3, :cond_1d

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    instance-of v4, v2, Lwd/g;

    if-eqz v4, :cond_1d

    .line 51
    move-object v4, v2

    check-cast v4, Lwd/g;

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p2

    move/from16 v5, v16

    move v6, v8

    move v7, v14

    move v8, v15

    invoke-interface/range {v2 .. v8}, Lzd/c;->n(Lwd/g;ZFIII)V

    :cond_1d
    if-lez v1, :cond_1e

    if-gez v10, :cond_26

    .line 52
    :cond_1e
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v2, :cond_26

    .line 53
    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v7, v1

    .line 54
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    int-to-float v2, v8

    .line 55
    iget v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P4:F

    mul-float v2, v2, v3

    float-to-int v12, v2

    int-to-float v2, v7

    mul-float v2, v2, v13

    if-nez v8, :cond_1f

    const/4 v3, 0x1

    goto :goto_c

    :cond_1f
    move v3, v8

    :goto_c
    int-to-float v3, v3

    div-float v13, v2, v3

    .line 56
    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_25

    if-nez p2, :cond_25

    .line 57
    :cond_20
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v10, v2, :cond_23

    .line 58
    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v1}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_21

    .line 59
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v1}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 60
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d5:I

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V4:Landroid/graphics/Paint;

    if-eqz v2, :cond_22

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    iget-object v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-virtual {v1, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E(ZLwd/h;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 61
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_d

    .line 62
    :cond_21
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v1}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_22

    .line 63
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v1}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 64
    :cond_22
    :goto_d
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    move/from16 v2, p2

    move v3, v13

    move v4, v7

    move v5, v8

    move v6, v12

    invoke-interface/range {v1 .. v6}, Lwd/h;->o(ZFIII)V

    :cond_23
    if-eqz p2, :cond_25

    .line 65
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v1}, Lwd/h;->j()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 66
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    float-to-int v1, v1

    .line 67
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 68
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    if-nez v2, :cond_24

    goto :goto_e

    :cond_24
    move v11, v2

    :goto_e
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 69
    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v3, v4, v1, v2}, Lwd/h;->h(FII)V

    .line 70
    :cond_25
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v10, v2, :cond_26

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-eqz v2, :cond_26

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    instance-of v3, v1, Lwd/f;

    if-eqz v3, :cond_26

    .line 71
    move-object v3, v1

    check-cast v3, Lwd/f;

    move-object v1, v2

    move-object v2, v3

    move/from16 v3, p2

    move v4, v13

    move v5, v7

    move v6, v8

    move v7, v12

    invoke-interface/range {v1 .. v7}, Lzd/c;->m(Lwd/f;ZFIII)V

    :cond_26
    return-object v0
.end method

.method public h(Lwd/h;Z)Lwd/i;
    .locals 2
    .param p1    # Lwd/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V1:Z

    if-nez v0, :cond_1

    .line 3
    iput-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V1:Z

    .line 4
    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a2:Z

    if-nez v0, :cond_1

    .line 7
    iput-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a2:Z

    .line 8
    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public i()Lwd/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    return-object v0
.end method

.method public j(Lwd/h;I)Lwd/i;
    .locals 2
    .param p1    # Lwd/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V4:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V4:Landroid/graphics/Paint;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c5:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d5:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public k()Lwd/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object v0
.end method
