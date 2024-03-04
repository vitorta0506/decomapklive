.class public final Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0019H\u0014J\u0008\u0010\u001d\u001a\u00020\u0019H\u0016J\u0008\u0010\u001e\u001a\u00020\u0019H\u0016J\u0008\u0010\t\u001a\u00020\u0019H\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\"\u0004\u0008\u0015\u0010\u0008\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
        "()V",
        "content",
        "Landroid/widget/TextView;",
        "getContent",
        "()Landroid/widget/TextView;",
        "setContent",
        "(Landroid/widget/TextView;)V",
        "removeSelf",
        "",
        "getRemoveSelf",
        "()Z",
        "setRemoveSelf",
        "(Z)V",
        "runnable",
        "Ljava/lang/Runnable;",
        "getRunnable",
        "()Ljava/lang/Runnable;",
        "title",
        "getTitle",
        "setTitle",
        "getLayoutId",
        "",
        "initView",
        "",
        "v",
        "Landroid/view/View;",
        "loadData",
        "onDetach",
        "onResume",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public content:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private removeSelf:Z

.field private final runnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/push/base/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->runnable$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->initView$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;Landroid/view/View;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v1, "clickFrom"

    const-string v2, "in_app_notification"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "it.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->checkWhereToGo(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final removeSelf()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static final runnable$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->removeSelf()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->removeSelf:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final getContent()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->content:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "content"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d019d

    return v0
.end method

.method public final getRemoveSelf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->removeSelf:Z

    return v0
.end method

.method public final getRunnable()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "title"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "type_id"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    const/16 v3, 0x8

    const v4, 0x7f0f0136

    const v5, 0x7f0a04ef

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x621

    const-string v8, "live_img"

    if-eq v6, v7, :cond_4

    const/16 v7, 0x6a3

    if-eq v6, v7, :cond_1

    const v7, 0xc20f

    if-eq v6, v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v6, "230"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_1
    const-string v6, "58"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->getContent()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    const v6, 0x7f1204f2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "nickName"

    .line 5
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 6
    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v2, Ljc/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Ljc/e;-><init>(Landroid/content/Context;I)V

    .line 10
    invoke-static {v1, v0, v4, v2}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    goto :goto_2

    :cond_4
    const-string v6, "12"

    .line 11
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->getContent()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v2, Ljc/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Ljc/e;-><init>(Landroid/content/Context;I)V

    .line 16
    invoke-static {v1, v0, v4, v2}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    goto :goto_2

    .line 17
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->getContent()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "icon"

    .line 19
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v2, Ljc/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Ljc/e;-><init>(Landroid/content/Context;I)V

    .line 21
    invoke-static {v1, v0, v4, v2}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    const v0, 0x7f0a0825

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/push/base/a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_8
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1b58

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->setNotificationShowing(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->removeSelf:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->removeSelf()V

    :cond_0
    return-void
.end method

.method public final setContent(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->content:Landroid/widget/TextView;

    return-void
.end method

.method public final setRemoveSelf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->removeSelf:Z

    return-void
.end method

.method public final setTitle(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;->title:Landroid/widget/TextView;

    return-void
.end method
