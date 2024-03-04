.class final Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteMoneyEnable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;->checkInviteMoneyEnable(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/lib_core/feature/Feature;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/guochao/lib_core/feature/Feature;",
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
.field final synthetic $listener:Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteMoneyEnable$1;->$listener:Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/lib_core/feature/Feature;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteMoneyEnable$1;->invoke(Lcom/guochao/lib_core/feature/Feature;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/lib_core/feature/Feature;)V
    .locals 2
    .param p1    # Lcom/guochao/lib_core/feature/Feature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$requireFeature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteMoneyEnable$1$1;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteMoneyEnable$1;->$listener:Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteMoneyEnable$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;)V

    invoke-static {p1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->onAvailable(Lcom/guochao/lib_core/feature/Feature;Lkotlin/jvm/functions/Function1;)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteMoneyEnable$1$2;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteMoneyEnable$1;->$listener:Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteMoneyEnable$1$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;)V

    invoke-static {p1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->onUnAvailable(Lcom/guochao/lib_core/feature/Feature;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
