.class final Lcom/guochao/component/mvp/activity/MVPActivity$initView$6$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/mvp/activity/MVPActivity;->initView$lambda-10$lambda-9$lambda-8(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/activity/MVPActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/component/mvp/activity/MVPActivity;


# direct methods
.method constructor <init>(Lcom/guochao/component/mvp/activity/MVPActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/mvp/activity/MVPActivity$initView$6$3$1$1;->this$0:Lcom/guochao/component/mvp/activity/MVPActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/component/mvp/activity/MVPActivity$initView$6$3$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/guochao/component/mvp/activity/MVPActivity$initView$6$3$1$1;->this$0:Lcom/guochao/component/mvp/activity/MVPActivity;

    invoke-static {p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->access$getMFragments$p(Lcom/guochao/component/mvp/activity/MVPActivity;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "null cannot be cast to non-null type com.guochao.component.mvp.fragment.MVPListFragment"

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/component/mvp/fragment/MVPListFragment;

    invoke-virtual {v0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getAll()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/component/mvp/activity/MVPActivity$initView$6$3$1$1;->this$0:Lcom/guochao/component/mvp/activity/MVPActivity;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/activity/MVPActivity;->checkGetAll()V

    return-void
.end method
