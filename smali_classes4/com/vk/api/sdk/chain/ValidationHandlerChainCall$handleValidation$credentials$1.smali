.class final synthetic Lcom/vk/api/sdk/chain/ValidationHandlerChainCall$handleValidation$credentials$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/api/sdk/chain/ValidationHandlerChainCall;->handleValidation(Lcom/vk/api/sdk/exceptions/VKApiExecutionException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/vk/api/sdk/VKApiValidationHandler;",
        "Ljava/lang/String;",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Callback<",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vk/api/sdk/chain/ValidationHandlerChainCall$handleValidation$credentials$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/api/sdk/chain/ValidationHandlerChainCall$handleValidation$credentials$1;

    invoke-direct {v0}, Lcom/vk/api/sdk/chain/ValidationHandlerChainCall$handleValidation$credentials$1;-><init>()V

    sput-object v0, Lcom/vk/api/sdk/chain/ValidationHandlerChainCall$handleValidation$credentials$1;->INSTANCE:Lcom/vk/api/sdk/chain/ValidationHandlerChainCall$handleValidation$credentials$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lcom/vk/api/sdk/VKApiValidationHandler;

    const/4 v1, 0x3

    const-string v3, "handleValidation"

    const-string v4, "handleValidation(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/api/sdk/VKApiValidationHandler;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/vk/api/sdk/VKApiValidationHandler$Callback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/api/sdk/chain/ValidationHandlerChainCall$handleValidation$credentials$1;->invoke(Lcom/vk/api/sdk/VKApiValidationHandler;Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/vk/api/sdk/VKApiValidationHandler;Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V
    .locals 1
    .param p1    # Lcom/vk/api/sdk/VKApiValidationHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vk/api/sdk/VKApiValidationHandler$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/VKApiValidationHandler;",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/VKApiValidationHandler$Callback<",
            "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/vk/api/sdk/VKApiValidationHandler;->handleValidation(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V

    return-void
.end method
