.class Lcom/facebook/login/widget/LoginButton$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/LoginButton$f;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/LoginManager;

.field final synthetic b:Lcom/facebook/login/widget/LoginButton$f;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/LoginButton$f;Lcom/facebook/login/LoginManager;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$f$a;->b:Lcom/facebook/login/widget/LoginButton$f;

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton$f$a;->a:Lcom/facebook/login/LoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton$f$a;->a:Lcom/facebook/login/LoginManager;

    invoke-virtual {p1}, Lcom/facebook/login/LoginManager;->logOut()V

    return-void
.end method
