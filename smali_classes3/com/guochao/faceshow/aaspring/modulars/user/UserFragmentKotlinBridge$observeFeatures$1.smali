.class final Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$observeFeatures$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;->observeFeatures(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/guochao/lib_core/feature/Feature;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
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


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$observeFeatures$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$observeFeatures$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$observeFeatures$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$observeFeatures$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$observeFeatures$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$observeFeatures$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/lib_core/feature/Feature;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$requireFeaturesCombinedOnLifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/lib_core/feature/Feature;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invite_earn_diamond"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invite_earn_money"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    goto :goto_0

    :cond_2
    return-void
.end method
