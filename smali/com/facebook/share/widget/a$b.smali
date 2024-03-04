.class Lcom/facebook/share/widget/a$b;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/ShareContent<",
        "**>;",
        "Lcom/facebook/share/Sharer$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/widget/a;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/share/widget/a$b;->a:Lcom/facebook/share/widget/a;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/a;Lcom/facebook/share/widget/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/a$b;-><init>(Lcom/facebook/share/widget/a;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/share/widget/a;->canShow(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/a$b;->canShow(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
    .locals 3

    .line 2
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForMessage(Lcom/facebook/share/model/ShareContent;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/share/widget/a$b;->a:Lcom/facebook/share/widget/a;

    invoke-virtual {v0}, Lcom/facebook/share/widget/a;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/facebook/share/widget/a$b;->a:Lcom/facebook/share/widget/a;

    invoke-virtual {v1}, Lcom/facebook/share/widget/a;->getShouldFailOnDataError()Z

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/facebook/share/widget/a$b;->a:Lcom/facebook/share/widget/a;

    invoke-static {v2}, Lcom/facebook/share/widget/a;->a(Lcom/facebook/share/widget/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/facebook/share/widget/a;->b(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/AppCall;)V

    .line 6
    new-instance v2, Lcom/facebook/share/widget/a$b$a;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/facebook/share/widget/a$b$a;-><init>(Lcom/facebook/share/widget/a$b;Lcom/facebook/internal/AppCall;Lcom/facebook/share/model/ShareContent;Z)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/share/widget/a;->c(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object p1

    .line 8
    invoke-static {v0, v2, p1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForNativeDialog(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V

    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/a$b;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method
