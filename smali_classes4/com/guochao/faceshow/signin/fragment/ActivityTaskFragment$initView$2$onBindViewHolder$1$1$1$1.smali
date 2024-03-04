.class final Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2$onBindViewHolder$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->onBindViewHolder$lambda-5$lambda-2(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2$onBindViewHolder$1$1$1$1;->this$0:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2$onBindViewHolder$1$1$1$1;->invoke(Lcom/guochao/faceshow/signin/bean/SigninResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/signin/bean/SigninResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/signin/bean/SigninResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2$onBindViewHolder$1$1$1$1;->this$0:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2$onBindViewHolder$1$1$1$1;->this$0:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.signin.activity.UserSigninCenterActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->updateSigninSuccess(Lcom/guochao/faceshow/signin/bean/SigninResponse;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2$onBindViewHolder$1$1$1$1;->this$0:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->access$requestNet(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;)V

    :cond_1
    return-void
.end method
