.class Lcom/facebook/share/widget/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/DialogPresenter$ParameterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/a$b;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/AppCall;

.field final synthetic b:Lcom/facebook/share/model/ShareContent;

.field final synthetic c:Z

.field final synthetic d:Lcom/facebook/share/widget/a$b;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/a$b;Lcom/facebook/internal/AppCall;Lcom/facebook/share/model/ShareContent;Z)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/widget/a$b$a;->d:Lcom/facebook/share/widget/a$b;

    iput-object p2, p0, Lcom/facebook/share/widget/a$b$a;->a:Lcom/facebook/internal/AppCall;

    iput-object p3, p0, Lcom/facebook/share/widget/a$b$a;->b:Lcom/facebook/share/model/ShareContent;

    iput-boolean p4, p0, Lcom/facebook/share/widget/a$b$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLegacyParameters()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/share/widget/a$b$a;->a:Lcom/facebook/internal/AppCall;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/share/widget/a$b$a;->b:Lcom/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lcom/facebook/share/widget/a$b$a;->c:Z

    .line 3
    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->create(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/share/widget/a$b$a;->a:Lcom/facebook/internal/AppCall;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/share/widget/a$b$a;->b:Lcom/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lcom/facebook/share/widget/a$b$a;->c:Z

    .line 3
    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
